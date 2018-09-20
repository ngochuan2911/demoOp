/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : demoOp

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2018-09-21 00:58:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for huannn_address
-- ----------------------------
DROP TABLE IF EXISTS `huannn_address`;
CREATE TABLE `huannn_address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(40) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  PRIMARY KEY (`address_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_address
-- ----------------------------
INSERT INTO `huannn_address` VALUES ('2', '2', 'Hùng', 'Hoàng', '', 'ha noi', '', 'ha noi', '', '230', '3776', '[]');

-- ----------------------------
-- Table structure for huannn_affiliate
-- ----------------------------
DROP TABLE IF EXISTS `huannn_affiliate`;
CREATE TABLE `huannn_affiliate` (
  `affiliate_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `company` varchar(40) NOT NULL,
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_affiliate
-- ----------------------------

-- ----------------------------
-- Table structure for huannn_affiliate_activity
-- ----------------------------
DROP TABLE IF EXISTS `huannn_affiliate_activity`;
CREATE TABLE `huannn_affiliate_activity` (
  `affiliate_activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `affiliate_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_activity_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_affiliate_activity
-- ----------------------------

-- ----------------------------
-- Table structure for huannn_affiliate_login
-- ----------------------------
DROP TABLE IF EXISTS `huannn_affiliate_login`;
CREATE TABLE `huannn_affiliate_login` (
  `affiliate_login_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`affiliate_login_id`),
  KEY `email` (`email`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_affiliate_login
-- ----------------------------

-- ----------------------------
-- Table structure for huannn_affiliate_transaction
-- ----------------------------
DROP TABLE IF EXISTS `huannn_affiliate_transaction`;
CREATE TABLE `huannn_affiliate_transaction` (
  `affiliate_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `affiliate_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_affiliate_transaction
-- ----------------------------

-- ----------------------------
-- Table structure for huannn_api
-- ----------------------------
DROP TABLE IF EXISTS `huannn_api`;
CREATE TABLE `huannn_api` (
  `api_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `key` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`api_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_api
-- ----------------------------
INSERT INTO `huannn_api` VALUES ('1', 'Default', 'ytZQeVSDrjOJcjefusnc40q7YKfKzMJErSvBcKd1rBlG8PnGsZI7qB56epmOCCsfs7mRzXFXxQzVNhU2vtssWpQhRfwOlheI6mRAY6Cu6qj8oCTndSWRVQwmwyYioI7s2BkVdS5PQKtdt8UjzzYRuIkNGzCTIWGU7XgufZLufio8isPZmAoTafPwjohWROLNQMnylwdSMh1VWvcnIKsECNzbC2y3mEUhooMlqAmn5P4JCZxBjMcYYlIzXp8cJJz4', '1', '2016-03-04 22:15:11', '2016-03-05 00:31:46');

-- ----------------------------
-- Table structure for huannn_api_ip
-- ----------------------------
DROP TABLE IF EXISTS `huannn_api_ip`;
CREATE TABLE `huannn_api_ip` (
  `api_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  PRIMARY KEY (`api_ip_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_api_ip
-- ----------------------------
INSERT INTO `huannn_api_ip` VALUES ('2', '1', '127.0.0.1');
INSERT INTO `huannn_api_ip` VALUES ('3', '1', '::1');
INSERT INTO `huannn_api_ip` VALUES ('4', '1', '112.78.2.101');

-- ----------------------------
-- Table structure for huannn_api_session
-- ----------------------------
DROP TABLE IF EXISTS `huannn_api_session`;
CREATE TABLE `huannn_api_session` (
  `api_session_id` int(11) NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `token` varchar(32) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `session_name` varchar(32) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`api_session_id`)
) ENGINE=MyISAM AUTO_INCREMENT=211 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_api_session
-- ----------------------------
INSERT INTO `huannn_api_session` VALUES ('161', '1', 'LcuAIS1LW8GZEFAK8vFhJpGKYp25HZDE', 'vp8cetsep6nrkc715ihkkrbcu4', 'temp_session_581a11f0894f8', '127.0.0.1', '2016-11-02 23:18:56', '2016-11-02 23:19:03');
INSERT INTO `huannn_api_session` VALUES ('160', '1', '8quR05VjjXyKMwAMkszgFhzjGjMTtiOI', 'vp8cetsep6nrkc715ihkkrbcu4', 'temp_session_581a11e75a409', '127.0.0.1', '2016-11-02 23:18:47', '2016-11-02 23:18:51');
INSERT INTO `huannn_api_session` VALUES ('159', '1', 'LAJWdF1XX3Mr1Og7Z5JxjYbvvXHZynTR', 'vp8cetsep6nrkc715ihkkrbcu4', 'temp_session_581a111c341df', '127.0.0.1', '2016-11-02 23:15:24', '2016-11-02 23:15:24');
INSERT INTO `huannn_api_session` VALUES ('158', '1', 'v3Fx3T3jidjUFQxmVbelhwllfCX88Nve', 'vp8cetsep6nrkc715ihkkrbcu4', 'temp_session_581a1112e62a0', '127.0.0.1', '2016-11-02 23:15:14', '2016-11-02 23:15:18');
INSERT INTO `huannn_api_session` VALUES ('162', '1', 'TOngXM9xhUMH2qVV71xgY2o0ScZiK2b2', 'vp8cetsep6nrkc715ihkkrbcu4', 'temp_session_581a11ffbc578', '127.0.0.1', '2016-11-02 23:19:11', '2016-11-02 23:19:15');
INSERT INTO `huannn_api_session` VALUES ('163', '1', 'auINErAyGeMhBWcu9Mzbzlzp32i0ygKF', 'vp8cetsep6nrkc715ihkkrbcu4', 'temp_session_581a12044f5bd', '127.0.0.1', '2016-11-02 23:19:16', '2016-11-02 23:19:18');
INSERT INTO `huannn_api_session` VALUES ('164', '1', 'wCh4NdO14XtOowiZGTCEuw8DCKxCCzkt', 'vp8cetsep6nrkc715ihkkrbcu4', 'temp_session_581a120715321', '127.0.0.1', '2016-11-02 23:19:19', '2016-11-02 23:19:19');
INSERT INTO `huannn_api_session` VALUES ('165', '1', '53pYXI6PY2UgHRhztBYwUbZD3opjj76V', 'vp8cetsep6nrkc715ihkkrbcu4', 'temp_session_581a122241ec6', '127.0.0.1', '2016-11-02 23:19:46', '2016-11-02 23:19:46');
INSERT INTO `huannn_api_session` VALUES ('166', '1', 'JL55kjA6U8migLjcnhWKj2TdAJQkimay', 'vp8cetsep6nrkc715ihkkrbcu4', 'temp_session_581a124a16eba', '127.0.0.1', '2016-11-02 23:20:26', '2016-11-02 23:20:26');
INSERT INTO `huannn_api_session` VALUES ('167', '1', 'qlpVNFxLjKCX2GVjZIuvQAvBrtf9qlCX', '0tigunqqgt896vdo79pncte3r0', 'temp_session_581a126748637', '127.0.0.1', '2016-11-02 23:20:55', '2016-11-02 23:20:55');
INSERT INTO `huannn_api_session` VALUES ('168', '1', 'UL8UgQFoNwpRjycGqDG5AAIyXdyE9pyy', '0tigunqqgt896vdo79pncte3r0', 'temp_session_581a12723f0e4', '127.0.0.1', '2016-11-02 23:21:06', '2016-11-02 23:21:14');
INSERT INTO `huannn_api_session` VALUES ('169', '1', 'QokgJsAO9jt6v22FzaXTE8EQ8xINuuct', '0tigunqqgt896vdo79pncte3r0', 'temp_session_581a13b724cc1', '127.0.0.1', '2016-11-02 23:26:31', '2016-11-02 23:26:35');
INSERT INTO `huannn_api_session` VALUES ('170', '1', 'gHEblwlbXtB1bu8Hh3ObdRG1OFyQKu0j', '0tigunqqgt896vdo79pncte3r0', 'temp_session_581a13bf23993', '127.0.0.1', '2016-11-02 23:26:39', '2016-11-02 23:26:41');
INSERT INTO `huannn_api_session` VALUES ('171', '1', 'T9kPc6zO4wl6sVaxEa9b60tnsjTyWlek', '0tigunqqgt896vdo79pncte3r0', 'temp_session_581a13c265413', '127.0.0.1', '2016-11-02 23:26:42', '2016-11-02 23:26:42');
INSERT INTO `huannn_api_session` VALUES ('172', '1', 'oEPDupwFnAno9sPeEsZZm3BcDVF69sXx', '0tigunqqgt896vdo79pncte3r0', 'temp_session_581a13e2aee5f', '127.0.0.1', '2016-11-02 23:27:14', '2016-11-02 23:27:14');
INSERT INTO `huannn_api_session` VALUES ('173', '1', 'lvh7zVKvSn2T5RJQ94s4mgr9hv1cINgs', '0tigunqqgt896vdo79pncte3r0', 'temp_session_581a13e5531db', '127.0.0.1', '2016-11-02 23:27:17', '2016-11-02 23:31:50');
INSERT INTO `huannn_api_session` VALUES ('174', '1', 'JKtAWSH6kncYUzm3e5aj7udn3Q3oACDT', 'vp8cetsep6nrkc715ihkkrbcu4', 'temp_session_581a15238d2ad', '127.0.0.1', '2016-11-02 23:32:35', '2016-11-02 23:32:35');
INSERT INTO `huannn_api_session` VALUES ('175', '1', '1S2U40dbNaU9YdN8MTHmLk7q5W4UxH27', 'vp8cetsep6nrkc715ihkkrbcu4', 'temp_session_581a15ce3bf09', '127.0.0.1', '2016-11-02 23:35:26', '2016-11-02 23:35:26');
INSERT INTO `huannn_api_session` VALUES ('176', '1', 'YmRBZOskW9jEkUFSIObb2cfveQuyLFew', 'vp8cetsep6nrkc715ihkkrbcu4', 'temp_session_581a1637d7064', '127.0.0.1', '2016-11-02 23:37:11', '2016-11-02 23:37:13');
INSERT INTO `huannn_api_session` VALUES ('177', '1', 'TH9Up78hAt88djh3Jser2SEV6UqpcUlG', 'vp8cetsep6nrkc715ihkkrbcu4', 'temp_session_581a164b2f0c6', '127.0.0.1', '2016-11-02 23:37:31', '2016-11-02 23:37:31');
INSERT INTO `huannn_api_session` VALUES ('178', '1', 'PjS7f1pY7ihxM2BiqvsuuQ4SEr1uApro', 'vp8cetsep6nrkc715ihkkrbcu4', 'temp_session_581a169400aa9', '127.0.0.1', '2016-11-02 23:38:44', '2016-11-02 23:38:51');
INSERT INTO `huannn_api_session` VALUES ('179', '1', 'W0N5R93HYh95DDjGdLKzzeluzNNsq9cc', 'vp8cetsep6nrkc715ihkkrbcu4', 'temp_session_581a169e4b607', '127.0.0.1', '2016-11-02 23:38:54', '2016-11-02 23:38:59');
INSERT INTO `huannn_api_session` VALUES ('180', '1', 'FATtjNnatcRSNCclXeRQm9P9ngQ5VyzT', 'vp8cetsep6nrkc715ihkkrbcu4', 'temp_session_581a16a47e4ed', '127.0.0.1', '2016-11-02 23:39:00', '2016-11-02 23:39:02');
INSERT INTO `huannn_api_session` VALUES ('181', '1', 'RJCJ7xF6aZ163oIed3GOkVmlDpn6yIHG', 'vp8cetsep6nrkc715ihkkrbcu4', 'temp_session_581a16a6ad5b9', '127.0.0.1', '2016-11-02 23:39:02', '2016-11-02 23:39:02');
INSERT INTO `huannn_api_session` VALUES ('182', '1', 'bMWc5Tlm3bjNB1jLES740qgZ50EVD6Mo', 'vp8cetsep6nrkc715ihkkrbcu4', 'temp_session_581a16c200c71', '127.0.0.1', '2016-11-02 23:39:30', '2016-11-02 23:39:30');
INSERT INTO `huannn_api_session` VALUES ('183', '1', '2cRHYjLxjRRRqw1QpQEKFNLKvt2BSR5T', 'vp8cetsep6nrkc715ihkkrbcu4', 'temp_session_581a16c44bc2b', '127.0.0.1', '2016-11-02 23:39:32', '2016-11-02 23:39:34');
INSERT INTO `huannn_api_session` VALUES ('184', '1', 'ZYhGGYXDkbytRw70Dykpo8z2auohP99B', 'vp8cetsep6nrkc715ihkkrbcu4', 'temp_session_581a16cb3f3aa', '127.0.0.1', '2016-11-02 23:39:39', '2016-11-02 23:39:39');
INSERT INTO `huannn_api_session` VALUES ('185', '1', '0BPFapeb1EbmzHZmrdxsyVPEHVE0ysEA', 'vp8cetsep6nrkc715ihkkrbcu4', 'temp_session_581a16eecc83c', '127.0.0.1', '2016-11-02 23:40:14', '2016-11-02 23:40:20');
INSERT INTO `huannn_api_session` VALUES ('186', '1', 'KoBdyXG8nDP6vG5bd9AwzDx9PIflP9Dq', 'vp8cetsep6nrkc715ihkkrbcu4', 'temp_session_581a16f771cf9', '127.0.0.1', '2016-11-02 23:40:23', '2016-11-02 23:40:23');
INSERT INTO `huannn_api_session` VALUES ('187', '1', 'DuWtLpQJhV0UNPdZWqdwbrPgGbzPzIrr', 'vp8cetsep6nrkc715ihkkrbcu4', 'temp_session_581a17125a1d0', '127.0.0.1', '2016-11-02 23:40:50', '2016-11-02 23:40:50');
INSERT INTO `huannn_api_session` VALUES ('188', '1', 'y8jGNxHJsMkMoFQJLk5WX5OfW3ygd7fu', 'vp8cetsep6nrkc715ihkkrbcu4', 'temp_session_581a1713ab460', '127.0.0.1', '2016-11-02 23:40:51', '2016-11-02 23:40:56');
INSERT INTO `huannn_api_session` VALUES ('189', '1', 'V2hJLWGLkYhXbU97kckoQ9gNUozhnpBC', 'vp8cetsep6nrkc715ihkkrbcu4', 'temp_session_581a171d65d18', '127.0.0.1', '2016-11-02 23:41:01', '2016-11-02 23:41:01');
INSERT INTO `huannn_api_session` VALUES ('190', '1', 'ZiqH2XDUfLmqvR4piDvtO4Hp7cZfVsbs', 'vp8cetsep6nrkc715ihkkrbcu4', 'temp_session_581a174246aaa', '127.0.0.1', '2016-11-02 23:41:38', '2016-11-02 23:41:42');
INSERT INTO `huannn_api_session` VALUES ('191', '1', 'pAdxvdVfSxXm6kdqtvxhNZIawwDM4qsO', 'vp8cetsep6nrkc715ihkkrbcu4', 'temp_session_581a174a49265', '127.0.0.1', '2016-11-02 23:41:46', '2016-11-02 23:41:46');
INSERT INTO `huannn_api_session` VALUES ('192', '1', 'taLy2QFH8rUaO22Cvo5tHNeXF1FWCG9S', 'vp8cetsep6nrkc715ihkkrbcu4', 'temp_session_581a175f10a1b', '127.0.0.1', '2016-11-02 23:42:07', '2016-11-02 23:42:07');
INSERT INTO `huannn_api_session` VALUES ('193', '1', 'QxceBrXaCdzGBDeSyXyDHVRWyg8ObXaQ', 'vp8cetsep6nrkc715ihkkrbcu4', 'temp_session_581a1760bae3b', '127.0.0.1', '2016-11-02 23:42:08', '2016-11-02 23:42:11');
INSERT INTO `huannn_api_session` VALUES ('194', '1', 'vXm44Ipj4vmXzQBCRVqsETncOPJp9Lt0', 'vp8cetsep6nrkc715ihkkrbcu4', 'temp_session_581a1767eee45', '127.0.0.1', '2016-11-02 23:42:15', '2016-11-02 23:42:15');
INSERT INTO `huannn_api_session` VALUES ('195', '1', '2B96Y8qkKu92Ovi4h51SwVzIziNv8NjQ', 'vp8cetsep6nrkc715ihkkrbcu4', 'temp_session_581a177601e6d', '127.0.0.1', '2016-11-02 23:42:30', '2016-11-02 23:42:36');
INSERT INTO `huannn_api_session` VALUES ('196', '1', 'dvrBl7xwEwhd6KcSsmWiA6GNizdl5NvK', 'vp8cetsep6nrkc715ihkkrbcu4', 'temp_session_581a177c84bb8', '127.0.0.1', '2016-11-02 23:42:36', '2016-11-02 23:42:37');
INSERT INTO `huannn_api_session` VALUES ('197', '1', '35SXngt9XcEFFXdHNURciz6JAwMcLSYJ', 'vp8cetsep6nrkc715ihkkrbcu4', 'temp_session_581a177e3ad17', '127.0.0.1', '2016-11-02 23:42:38', '2016-11-02 23:42:39');
INSERT INTO `huannn_api_session` VALUES ('198', '1', 'PbnccAGnuTadZM04VWcsjBcDCtub7Xi8', 'vp8cetsep6nrkc715ihkkrbcu4', 'temp_session_581a177fafd44', '127.0.0.1', '2016-11-02 23:42:39', '2016-11-02 23:42:39');
INSERT INTO `huannn_api_session` VALUES ('199', '1', 'GsMsJ9jvGXm0okAjKiszZ5BUFq8JWhfq', 'vp8cetsep6nrkc715ihkkrbcu4', 'temp_session_581a17a0a8e4b', '127.0.0.1', '2016-11-02 23:43:12', '2016-11-02 23:43:12');
INSERT INTO `huannn_api_session` VALUES ('200', '1', '1FgoySA4tVRcM5s3fOgXGdnOHxZp9adR', 'vp8cetsep6nrkc715ihkkrbcu4', 'temp_session_581a17cd8d85e', '127.0.0.1', '2016-11-02 23:43:57', '2016-11-02 23:43:57');
INSERT INTO `huannn_api_session` VALUES ('201', '1', 'sFPSfla2LtLPD5r3HUSjCalHwPwQAhfA', 'vp8cetsep6nrkc715ihkkrbcu4', 'temp_session_581a17d27882f', '127.0.0.1', '2016-11-02 23:44:02', '2016-11-02 23:44:02');
INSERT INTO `huannn_api_session` VALUES ('202', '1', 'YExYCYwww57Ga6O48Ix7b4Vcw4oN8SKn', 'vp8cetsep6nrkc715ihkkrbcu4', 'temp_session_581a182bdd99a', '127.0.0.1', '2016-11-02 23:45:31', '2016-11-02 23:45:31');
INSERT INTO `huannn_api_session` VALUES ('203', '1', 't1Nj6OnWZNIW7j9FnIV5tYz4J2tWdlDc', 'vp8cetsep6nrkc715ihkkrbcu4', 'temp_session_581a182f86e72', '127.0.0.1', '2016-11-02 23:45:35', '2016-11-02 23:45:38');
INSERT INTO `huannn_api_session` VALUES ('204', '1', 'GkPghzwAFqGIKvXhAcMsMQfhy2Bw0Gp2', 'vp8cetsep6nrkc715ihkkrbcu4', 'temp_session_581a18368d64b', '127.0.0.1', '2016-11-02 23:45:42', '2016-11-02 23:45:42');
INSERT INTO `huannn_api_session` VALUES ('205', '1', '1li8N62XunkNyICpwYGFYCbGb56nNyjF', 'vp8cetsep6nrkc715ihkkrbcu4', 'temp_session_581a183a5f489', '127.0.0.1', '2016-11-02 23:45:46', '2016-11-02 23:45:48');
INSERT INTO `huannn_api_session` VALUES ('206', '1', 'tca1pGB2AjpP1KT8IdIL64jF7a9mXgYB', 'vp8cetsep6nrkc715ihkkrbcu4', 'temp_session_581a183d1e0e9', '127.0.0.1', '2016-11-02 23:45:49', '2016-11-02 23:45:49');
INSERT INTO `huannn_api_session` VALUES ('207', '1', 'uWEoyDz1MnuQOfXihVkGsBA8tZhe9xly', 'e80031f47d01168841699ace24c801ed', 'temp_session_5821a97de0749', '112.78.2.101', '2016-11-08 17:31:25', '2016-11-08 17:31:25');
INSERT INTO `huannn_api_session` VALUES ('208', '1', 'G4iP93FRbXoDwAtGx9QweQKYuWHIlBe1', 'e80031f47d01168841699ace24c801ed', 'temp_session_5821a9bd591b3', '112.78.2.101', '2016-11-08 17:32:29', '2016-11-08 17:32:29');
INSERT INTO `huannn_api_session` VALUES ('209', '1', 'fcxLjOkZsByhX8i2lhldxNosoJHldoZm', 'e80031f47d01168841699ace24c801ed', 'temp_session_5821a9c004cd3', '112.78.2.101', '2016-11-08 17:32:32', '2016-11-08 17:32:32');
INSERT INTO `huannn_api_session` VALUES ('210', '1', 'ACUaHdDzBY7nndtzaVecyMlqHhaXhLxS', 'c641de6290b43e7870ab228393fcbe84', 'temp_session_58284bc439a50', '112.78.2.101', '2016-11-13 18:17:24', '2016-11-13 18:17:24');

-- ----------------------------
-- Table structure for huannn_attribute
-- ----------------------------
DROP TABLE IF EXISTS `huannn_attribute`;
CREATE TABLE `huannn_attribute` (
  `attribute_id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_attribute
-- ----------------------------

-- ----------------------------
-- Table structure for huannn_attribute_description
-- ----------------------------
DROP TABLE IF EXISTS `huannn_attribute_description`;
CREATE TABLE `huannn_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_attribute_description
-- ----------------------------

-- ----------------------------
-- Table structure for huannn_attribute_group
-- ----------------------------
DROP TABLE IF EXISTS `huannn_attribute_group`;
CREATE TABLE `huannn_attribute_group` (
  `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_attribute_group
-- ----------------------------

-- ----------------------------
-- Table structure for huannn_attribute_group_description
-- ----------------------------
DROP TABLE IF EXISTS `huannn_attribute_group_description`;
CREATE TABLE `huannn_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_attribute_group_description
-- ----------------------------

-- ----------------------------
-- Table structure for huannn_banner
-- ----------------------------
DROP TABLE IF EXISTS `huannn_banner`;
CREATE TABLE `huannn_banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_banner
-- ----------------------------
INSERT INTO `huannn_banner` VALUES ('7', 'Trang chủ Slideshow', '1');

-- ----------------------------
-- Table structure for huannn_banner_image
-- ----------------------------
DROP TABLE IF EXISTS `huannn_banner_image`;
CREATE TABLE `huannn_banner_image` (
  `banner_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`banner_image_id`)
) ENGINE=MyISAM AUTO_INCREMENT=151 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_banner_image
-- ----------------------------
INSERT INTO `huannn_banner_image` VALUES ('145', '7', '#', 'catalog/Slide4.jpg', '2');
INSERT INTO `huannn_banner_image` VALUES ('144', '7', '#', 'catalog/Slide1.jpg', '1');
INSERT INTO `huannn_banner_image` VALUES ('146', '7', '#', 'catalog/slide3.jpg', '0');
INSERT INTO `huannn_banner_image` VALUES ('147', '7', '#', 'catalog/Slide6.jpg', '0');
INSERT INTO `huannn_banner_image` VALUES ('148', '7', '#', 'catalog/slide2.jpg', '0');
INSERT INTO `huannn_banner_image` VALUES ('149', '7', '#', 'catalog/Slide7.jpg', '0');
INSERT INTO `huannn_banner_image` VALUES ('150', '7', '#', 'catalog/Slide5.jpg', '0');

-- ----------------------------
-- Table structure for huannn_banner_image_description
-- ----------------------------
DROP TABLE IF EXISTS `huannn_banner_image_description`;
CREATE TABLE `huannn_banner_image_description` (
  `banner_image_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  PRIMARY KEY (`banner_image_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_banner_image_description
-- ----------------------------
INSERT INTO `huannn_banner_image_description` VALUES ('145', '3', '7', 'banner2');
INSERT INTO `huannn_banner_image_description` VALUES ('145', '2', '7', 'banner2');
INSERT INTO `huannn_banner_image_description` VALUES ('144', '3', '7', 'banner1');
INSERT INTO `huannn_banner_image_description` VALUES ('144', '2', '7', 'banner1');
INSERT INTO `huannn_banner_image_description` VALUES ('146', '2', '7', 'banner3');
INSERT INTO `huannn_banner_image_description` VALUES ('146', '3', '7', 'banner3');
INSERT INTO `huannn_banner_image_description` VALUES ('147', '2', '7', 'banner4');
INSERT INTO `huannn_banner_image_description` VALUES ('147', '3', '7', 'banner4');
INSERT INTO `huannn_banner_image_description` VALUES ('148', '2', '7', 'banner5');
INSERT INTO `huannn_banner_image_description` VALUES ('148', '3', '7', 'banner5');
INSERT INTO `huannn_banner_image_description` VALUES ('149', '2', '7', 'banner6');
INSERT INTO `huannn_banner_image_description` VALUES ('149', '3', '7', 'banner6');
INSERT INTO `huannn_banner_image_description` VALUES ('150', '2', '7', 'banner6');
INSERT INTO `huannn_banner_image_description` VALUES ('150', '3', '7', 'banner6');

-- ----------------------------
-- Table structure for huannn_cart
-- ----------------------------
DROP TABLE IF EXISTS `huannn_cart`;
CREATE TABLE `huannn_cart` (
  `cart_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `quantity` int(5) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`cart_id`),
  KEY `cart_id` (`customer_id`,`session_id`,`product_id`,`recurring_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_cart
-- ----------------------------
INSERT INTO `huannn_cart` VALUES ('1', '2', 'el5k1qdjfk3a244qvs5rfajos3', '40', '0', '[]', '10', '2016-03-05 16:28:49');

-- ----------------------------
-- Table structure for huannn_category
-- ----------------------------
DROP TABLE IF EXISTS `huannn_category`;
CREATE TABLE `huannn_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`category_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=111 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_category
-- ----------------------------
INSERT INTO `huannn_category` VALUES ('98', 'catalog/betam_2.jpg', '0', '0', '1', '0', '1', '2016-09-05 16:02:53', '2016-11-11 11:03:03');
INSERT INTO `huannn_category` VALUES ('87', 'catalog/be-an-toan.jpg', '0', '0', '1', '0', '1', '2016-09-05 15:56:35', '2016-11-11 11:04:39');
INSERT INTO `huannn_category` VALUES ('88', '', '87', '0', '1', '0', '1', '2016-09-05 15:56:56', '2016-09-05 15:56:56');
INSERT INTO `huannn_category` VALUES ('89', '', '87', '0', '1', '0', '1', '2016-09-05 15:57:09', '2016-09-05 15:57:09');
INSERT INTO `huannn_category` VALUES ('90', '', '87', '0', '1', '0', '1', '2016-09-05 15:57:31', '2016-09-05 15:57:31');
INSERT INTO `huannn_category` VALUES ('91', 'catalog/bengu.jpg', '0', '0', '1', '0', '1', '2016-09-05 15:58:00', '2016-11-11 11:02:07');
INSERT INTO `huannn_category` VALUES ('92', '', '91', '0', '1', '0', '1', '2016-09-05 15:58:29', '2016-09-05 15:58:29');
INSERT INTO `huannn_category` VALUES ('93', '', '91', '0', '1', '0', '1', '2016-09-05 15:58:41', '2016-09-05 15:58:41');
INSERT INTO `huannn_category` VALUES ('94', '', '91', '0', '1', '0', '1', '2016-09-05 15:59:01', '2016-09-05 15:59:01');
INSERT INTO `huannn_category` VALUES ('95', 'catalog/icon-5-be-ra-ngoai.png', '0', '0', '1', '0', '1', '2016-09-05 15:59:22', '2016-11-11 10:19:31');
INSERT INTO `huannn_category` VALUES ('96', '', '95', '0', '1', '0', '1', '2016-09-05 15:59:39', '2016-09-05 15:59:39');
INSERT INTO `huannn_category` VALUES ('97', '', '95', '0', '1', '0', '1', '2016-09-05 16:01:13', '2016-09-05 16:01:13');
INSERT INTO `huannn_category` VALUES ('99', '', '98', '0', '1', '0', '1', '2016-09-05 16:03:24', '2016-09-05 16:03:24');
INSERT INTO `huannn_category` VALUES ('100', 'catalog/me-an-toan.jpg', '0', '0', '1', '0', '1', '2016-09-05 16:03:59', '2016-11-11 11:03:52');
INSERT INTO `huannn_category` VALUES ('101', '', '100', '0', '1', '0', '1', '2016-09-05 16:04:30', '2016-09-05 16:04:30');
INSERT INTO `huannn_category` VALUES ('102', '', '91', '0', '1', '0', '1', '2016-11-02 20:08:36', '2016-11-02 20:08:36');
INSERT INTO `huannn_category` VALUES ('103', '', '100', '0', '1', '0', '1', '2016-11-02 20:09:16', '2016-11-02 20:09:16');
INSERT INTO `huannn_category` VALUES ('104', 'catalog/icon-2-ve-sinh.png', '0', '0', '1', '0', '1', '2016-11-02 21:51:06', '2016-11-11 10:17:31');
INSERT INTO `huannn_category` VALUES ('105', '', '0', '0', '1', '0', '1', '2016-11-08 17:09:17', '2016-12-07 10:06:42');
INSERT INTO `huannn_category` VALUES ('106', 'catalog/icon-8-be-hoc-be-choi.png', '0', '0', '1', '0', '1', '2016-11-11 10:21:49', '2016-11-11 10:21:49');
INSERT INTO `huannn_category` VALUES ('107', 'catalog/icon-9-thoi-trang.png', '0', '0', '1', '0', '1', '2016-11-11 10:22:17', '2016-11-11 10:22:17');
INSERT INTO `huannn_category` VALUES ('108', 'catalog/icon-10-do-dung-gia-dinh.png', '0', '0', '1', '0', '1', '2016-11-11 10:22:44', '2016-11-11 10:22:44');
INSERT INTO `huannn_category` VALUES ('109', '', '87', '0', '1', '0', '1', '2016-11-13 19:48:41', '2016-11-13 19:48:41');
INSERT INTO `huannn_category` VALUES ('110', '', '87', '0', '1', '0', '1', '2016-11-13 19:52:29', '2016-11-13 19:52:29');

-- ----------------------------
-- Table structure for huannn_category_description
-- ----------------------------
DROP TABLE IF EXISTS `huannn_category_description`;
CREATE TABLE `huannn_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_category_description
-- ----------------------------
INSERT INTO `huannn_category_description` VALUES ('87', '2', 'Bé An Toàn', '', 'Set quà tặng', '', '');
INSERT INTO `huannn_category_description` VALUES ('88', '2', 'Làm đẹp mắt', '', 'Làm đẹp mắt', '', '');
INSERT INTO `huannn_category_description` VALUES ('89', '2', 'Trang điểm mặt', '', 'Trang điểm mặt', '', '');
INSERT INTO `huannn_category_description` VALUES ('90', '2', 'Son môi màu', '', 'Son môi màu', '', '');
INSERT INTO `huannn_category_description` VALUES ('91', '2', 'Bé Ngủ Ngon', '', 'Đồ dùng của mẹ', '', '');
INSERT INTO `huannn_category_description` VALUES ('92', '2', 'Kem dưỡng ẩm da', '', 'Kem dưỡng ẩm da', '', '');
INSERT INTO `huannn_category_description` VALUES ('93', '2', 'Kem dưỡng ban đêm', '', 'Kem dưỡng ban đêm', '', '');
INSERT INTO `huannn_category_description` VALUES ('94', '2', 'Kem dưỡng ban ngày', '', 'Kem dưỡng ban ngày', '', '');
INSERT INTO `huannn_category_description` VALUES ('96', '2', 'Kem dưỡng mùa hè', '', 'Kem dưỡng mùa hè', '', '');
INSERT INTO `huannn_category_description` VALUES ('97', '2', 'Kem dưỡng mùa đông', '', 'Kem dưỡng mùa đông', '', '');
INSERT INTO `huannn_category_description` VALUES ('98', '2', 'Bé Tăm - Bé Gội', '', 'Đồ dùng cho bé', '', '');
INSERT INTO `huannn_category_description` VALUES ('99', '2', 'Kem dưỡng ẩm', '', 'Kem dưỡng ẩm', '', '');
INSERT INTO `huannn_category_description` VALUES ('100', '2', 'Mẹ An Tâm', '', 'Thực phẩm', '', '');
INSERT INTO `huannn_category_description` VALUES ('101', '2', 'Dầu gội, xả, kem ủ tóc', '', 'Dầu gội, xả, kem ủ tóc', '', '');
INSERT INTO `huannn_category_description` VALUES ('102', '2', 'Kem dưỡng da', '', 'Kem dưỡng da', '', '');
INSERT INTO `huannn_category_description` VALUES ('103', '2', 'Thuốc nhuộm tóc', '', 'Thuốc nhuộm tóc', '', '');
INSERT INTO `huannn_category_description` VALUES ('104', '2', 'Vệ Sinh Cho bé', '', 'Khuyến mại', '', '');
INSERT INTO `huannn_category_description` VALUES ('109', '2', 'Chặn giường', '', 'chặn giường', '', '');
INSERT INTO `huannn_category_description` VALUES ('95', '2', 'Bé Ra Ngoài', '', 'Đồ chơi và quà tặng', '', '');
INSERT INTO `huannn_category_description` VALUES ('105', '3', 'Bé ăn - Bé uống1', '', 'Hàng Nhật', '', '');
INSERT INTO `huannn_category_description` VALUES ('106', '2', 'Bé Học - Bé Chơi', '', 'Bé Học - Bé Chơi', '', '');
INSERT INTO `huannn_category_description` VALUES ('107', '2', 'Quần Áo - Thời Trang', '', 'Quần Áo - Thời Trang', '', '');
INSERT INTO `huannn_category_description` VALUES ('108', '2', 'Đồ Dùng Gia Đình', '', 'Đồ Dùng Gia Đình', '', '');
INSERT INTO `huannn_category_description` VALUES ('110', '2', 'Bịt ổ điện', '', 'bịt ổ điện', '', '');
INSERT INTO `huannn_category_description` VALUES ('87', '3', 'Bé An Toàn', '', 'Set quà tặng', '', '');
INSERT INTO `huannn_category_description` VALUES ('88', '3', 'Làm đẹp mắt', '', 'Làm đẹp mắt', '', '');
INSERT INTO `huannn_category_description` VALUES ('89', '3', 'Trang điểm mặt', '', 'Trang điểm mặt', '', '');
INSERT INTO `huannn_category_description` VALUES ('90', '3', 'Son môi màu', '', 'Son môi màu', '', '');
INSERT INTO `huannn_category_description` VALUES ('91', '3', 'Bé Ngủ Ngon', '', 'Đồ dùng của mẹ', '', '');
INSERT INTO `huannn_category_description` VALUES ('92', '3', 'Kem dưỡng ẩm da', '', 'Kem dưỡng ẩm da', '', '');
INSERT INTO `huannn_category_description` VALUES ('93', '3', 'Kem dưỡng ban đêm', '', 'Kem dưỡng ban đêm', '', '');
INSERT INTO `huannn_category_description` VALUES ('94', '3', 'Kem dưỡng ban ngày', '', 'Kem dưỡng ban ngày', '', '');
INSERT INTO `huannn_category_description` VALUES ('96', '3', 'Kem dưỡng mùa hè', '', 'Kem dưỡng mùa hè', '', '');
INSERT INTO `huannn_category_description` VALUES ('97', '3', 'Kem dưỡng mùa đông', '', 'Kem dưỡng mùa đông', '', '');
INSERT INTO `huannn_category_description` VALUES ('98', '3', 'Bé Tăm - Bé Gội', '', 'Đồ dùng cho bé', '', '');
INSERT INTO `huannn_category_description` VALUES ('99', '3', 'Kem dưỡng ẩm', '', 'Kem dưỡng ẩm', '', '');
INSERT INTO `huannn_category_description` VALUES ('100', '3', 'Mẹ An Tâm', '', 'Thực phẩm', '', '');
INSERT INTO `huannn_category_description` VALUES ('101', '3', 'Dầu gội, xả, kem ủ tóc', '', 'Dầu gội, xả, kem ủ tóc', '', '');
INSERT INTO `huannn_category_description` VALUES ('102', '3', 'Kem dưỡng da', '', 'Kem dưỡng da', '', '');
INSERT INTO `huannn_category_description` VALUES ('103', '3', 'Thuốc nhuộm tóc', '', 'Thuốc nhuộm tóc', '', '');
INSERT INTO `huannn_category_description` VALUES ('104', '3', 'Vệ Sinh Cho bé', '', 'Khuyến mại', '', '');
INSERT INTO `huannn_category_description` VALUES ('109', '3', 'Chặn giường', '', 'chặn giường', '', '');
INSERT INTO `huannn_category_description` VALUES ('95', '3', 'Bé Ra Ngoài', '', 'Đồ chơi và quà tặng', '', '');
INSERT INTO `huannn_category_description` VALUES ('105', '2', 'Bé ăn - Bé uống', '', 'Hàng Nhật', '', '');
INSERT INTO `huannn_category_description` VALUES ('106', '3', 'Bé Học - Bé Chơi', '', 'Bé Học - Bé Chơi', '', '');
INSERT INTO `huannn_category_description` VALUES ('107', '3', 'Quần Áo - Thời Trang', '', 'Quần Áo - Thời Trang', '', '');
INSERT INTO `huannn_category_description` VALUES ('108', '3', 'Đồ Dùng Gia Đình', '', 'Đồ Dùng Gia Đình', '', '');
INSERT INTO `huannn_category_description` VALUES ('110', '3', 'Bịt ổ điện', '', 'bịt ổ điện', '', '');

-- ----------------------------
-- Table structure for huannn_category_filter
-- ----------------------------
DROP TABLE IF EXISTS `huannn_category_filter`;
CREATE TABLE `huannn_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_category_filter
-- ----------------------------

-- ----------------------------
-- Table structure for huannn_category_path
-- ----------------------------
DROP TABLE IF EXISTS `huannn_category_path`;
CREATE TABLE `huannn_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`path_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_category_path
-- ----------------------------
INSERT INTO `huannn_category_path` VALUES ('88', '88', '1');
INSERT INTO `huannn_category_path` VALUES ('95', '95', '0');
INSERT INTO `huannn_category_path` VALUES ('97', '95', '0');
INSERT INTO `huannn_category_path` VALUES ('89', '87', '0');
INSERT INTO `huannn_category_path` VALUES ('96', '95', '0');
INSERT INTO `huannn_category_path` VALUES ('97', '97', '1');
INSERT INTO `huannn_category_path` VALUES ('96', '96', '1');
INSERT INTO `huannn_category_path` VALUES ('92', '91', '0');
INSERT INTO `huannn_category_path` VALUES ('91', '91', '0');
INSERT INTO `huannn_category_path` VALUES ('88', '87', '0');
INSERT INTO `huannn_category_path` VALUES ('87', '87', '0');
INSERT INTO `huannn_category_path` VALUES ('92', '92', '1');
INSERT INTO `huannn_category_path` VALUES ('101', '101', '1');
INSERT INTO `huannn_category_path` VALUES ('98', '98', '0');
INSERT INTO `huannn_category_path` VALUES ('89', '89', '1');
INSERT INTO `huannn_category_path` VALUES ('90', '90', '1');
INSERT INTO `huannn_category_path` VALUES ('90', '87', '0');
INSERT INTO `huannn_category_path` VALUES ('101', '100', '0');
INSERT INTO `huannn_category_path` VALUES ('100', '100', '0');
INSERT INTO `huannn_category_path` VALUES ('99', '99', '1');
INSERT INTO `huannn_category_path` VALUES ('99', '98', '0');
INSERT INTO `huannn_category_path` VALUES ('94', '94', '1');
INSERT INTO `huannn_category_path` VALUES ('94', '91', '0');
INSERT INTO `huannn_category_path` VALUES ('93', '93', '1');
INSERT INTO `huannn_category_path` VALUES ('93', '91', '0');
INSERT INTO `huannn_category_path` VALUES ('102', '91', '0');
INSERT INTO `huannn_category_path` VALUES ('102', '102', '1');
INSERT INTO `huannn_category_path` VALUES ('103', '100', '0');
INSERT INTO `huannn_category_path` VALUES ('103', '103', '1');
INSERT INTO `huannn_category_path` VALUES ('104', '104', '0');
INSERT INTO `huannn_category_path` VALUES ('105', '105', '0');
INSERT INTO `huannn_category_path` VALUES ('106', '106', '0');
INSERT INTO `huannn_category_path` VALUES ('107', '107', '0');
INSERT INTO `huannn_category_path` VALUES ('108', '108', '0');
INSERT INTO `huannn_category_path` VALUES ('109', '87', '0');
INSERT INTO `huannn_category_path` VALUES ('109', '109', '1');
INSERT INTO `huannn_category_path` VALUES ('110', '87', '0');
INSERT INTO `huannn_category_path` VALUES ('110', '110', '1');

-- ----------------------------
-- Table structure for huannn_category_to_layout
-- ----------------------------
DROP TABLE IF EXISTS `huannn_category_to_layout`;
CREATE TABLE `huannn_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_category_to_layout
-- ----------------------------
INSERT INTO `huannn_category_to_layout` VALUES ('98', '0', '0');
INSERT INTO `huannn_category_to_layout` VALUES ('96', '0', '0');
INSERT INTO `huannn_category_to_layout` VALUES ('99', '0', '0');
INSERT INTO `huannn_category_to_layout` VALUES ('87', '0', '0');
INSERT INTO `huannn_category_to_layout` VALUES ('90', '0', '0');
INSERT INTO `huannn_category_to_layout` VALUES ('89', '0', '0');
INSERT INTO `huannn_category_to_layout` VALUES ('88', '0', '0');
INSERT INTO `huannn_category_to_layout` VALUES ('93', '0', '0');
INSERT INTO `huannn_category_to_layout` VALUES ('97', '0', '0');
INSERT INTO `huannn_category_to_layout` VALUES ('92', '0', '0');
INSERT INTO `huannn_category_to_layout` VALUES ('91', '0', '0');
INSERT INTO `huannn_category_to_layout` VALUES ('101', '0', '0');
INSERT INTO `huannn_category_to_layout` VALUES ('100', '0', '0');
INSERT INTO `huannn_category_to_layout` VALUES ('95', '0', '0');
INSERT INTO `huannn_category_to_layout` VALUES ('94', '0', '0');
INSERT INTO `huannn_category_to_layout` VALUES ('102', '0', '0');
INSERT INTO `huannn_category_to_layout` VALUES ('103', '0', '0');
INSERT INTO `huannn_category_to_layout` VALUES ('104', '0', '0');
INSERT INTO `huannn_category_to_layout` VALUES ('105', '0', '0');
INSERT INTO `huannn_category_to_layout` VALUES ('106', '0', '0');
INSERT INTO `huannn_category_to_layout` VALUES ('107', '0', '0');
INSERT INTO `huannn_category_to_layout` VALUES ('108', '0', '0');
INSERT INTO `huannn_category_to_layout` VALUES ('109', '0', '0');
INSERT INTO `huannn_category_to_layout` VALUES ('110', '0', '0');

-- ----------------------------
-- Table structure for huannn_category_to_store
-- ----------------------------
DROP TABLE IF EXISTS `huannn_category_to_store`;
CREATE TABLE `huannn_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_category_to_store
-- ----------------------------
INSERT INTO `huannn_category_to_store` VALUES ('87', '0');
INSERT INTO `huannn_category_to_store` VALUES ('88', '0');
INSERT INTO `huannn_category_to_store` VALUES ('89', '0');
INSERT INTO `huannn_category_to_store` VALUES ('90', '0');
INSERT INTO `huannn_category_to_store` VALUES ('91', '0');
INSERT INTO `huannn_category_to_store` VALUES ('92', '0');
INSERT INTO `huannn_category_to_store` VALUES ('93', '0');
INSERT INTO `huannn_category_to_store` VALUES ('94', '0');
INSERT INTO `huannn_category_to_store` VALUES ('95', '0');
INSERT INTO `huannn_category_to_store` VALUES ('96', '0');
INSERT INTO `huannn_category_to_store` VALUES ('97', '0');
INSERT INTO `huannn_category_to_store` VALUES ('98', '0');
INSERT INTO `huannn_category_to_store` VALUES ('99', '0');
INSERT INTO `huannn_category_to_store` VALUES ('100', '0');
INSERT INTO `huannn_category_to_store` VALUES ('101', '0');
INSERT INTO `huannn_category_to_store` VALUES ('102', '0');
INSERT INTO `huannn_category_to_store` VALUES ('103', '0');
INSERT INTO `huannn_category_to_store` VALUES ('104', '0');
INSERT INTO `huannn_category_to_store` VALUES ('105', '0');
INSERT INTO `huannn_category_to_store` VALUES ('106', '0');
INSERT INTO `huannn_category_to_store` VALUES ('107', '0');
INSERT INTO `huannn_category_to_store` VALUES ('108', '0');
INSERT INTO `huannn_category_to_store` VALUES ('109', '0');
INSERT INTO `huannn_category_to_store` VALUES ('110', '0');

-- ----------------------------
-- Table structure for huannn_cat_news
-- ----------------------------
DROP TABLE IF EXISTS `huannn_cat_news`;
CREATE TABLE `huannn_cat_news` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`category_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_cat_news
-- ----------------------------
INSERT INTO `huannn_cat_news` VALUES ('13', '', '0', '0', '1', '2016-11-02 22:12:05', '2016-12-16 23:12:00');
INSERT INTO `huannn_cat_news` VALUES ('14', 'catalog/kientruc.png', '0', '0', '1', '2016-12-07 10:08:38', '2016-12-18 19:57:17');
INSERT INTO `huannn_cat_news` VALUES ('15', 'catalog/noithat.png', '0', '0', '1', '2016-12-07 10:08:53', '2016-12-18 19:58:33');
INSERT INTO `huannn_cat_news` VALUES ('16', '', '0', '0', '1', '2016-12-07 10:09:08', '2016-12-16 23:13:06');
INSERT INTO `huannn_cat_news` VALUES ('17', 'catalog/congnang.png', '0', '0', '1', '2016-12-17 14:41:08', '2016-12-18 19:59:03');
INSERT INTO `huannn_cat_news` VALUES ('18', 'catalog/thicong.png', '0', '0', '1', '2016-12-17 14:41:33', '2016-12-18 19:59:16');
INSERT INTO `huannn_cat_news` VALUES ('19', '', '0', '0', '1', '2016-12-17 17:39:10', '2016-12-24 10:55:32');
INSERT INTO `huannn_cat_news` VALUES ('20', '', '0', '0', '1', '2016-12-17 19:44:19', '2016-12-17 19:44:19');
INSERT INTO `huannn_cat_news` VALUES ('21', '', '0', '0', '1', '2016-12-18 00:03:39', '2016-12-18 00:03:39');
INSERT INTO `huannn_cat_news` VALUES ('22', '', '0', '0', '1', '2016-12-18 19:20:18', '2016-12-18 19:20:18');
INSERT INTO `huannn_cat_news` VALUES ('23', '', '0', '0', '1', '2016-12-18 19:20:36', '2016-12-18 19:20:36');
INSERT INTO `huannn_cat_news` VALUES ('24', '', '0', '0', '1', '2016-12-18 19:21:01', '2016-12-18 19:21:01');
INSERT INTO `huannn_cat_news` VALUES ('25', '', '0', '0', '1', '2016-12-18 19:21:18', '2016-12-18 19:21:18');
INSERT INTO `huannn_cat_news` VALUES ('26', '', '0', '0', '1', '2016-12-18 19:21:38', '2016-12-18 19:21:38');
INSERT INTO `huannn_cat_news` VALUES ('27', '', '0', '0', '1', '2016-12-18 19:21:54', '2016-12-18 19:21:54');
INSERT INTO `huannn_cat_news` VALUES ('28', '', '0', '0', '1', '2016-12-18 19:22:07', '2016-12-18 19:22:07');
INSERT INTO `huannn_cat_news` VALUES ('29', '', '0', '0', '1', '2016-12-18 19:22:21', '2016-12-18 19:22:21');
INSERT INTO `huannn_cat_news` VALUES ('30', '', '0', '0', '1', '2016-12-18 19:22:46', '2016-12-18 19:22:46');
INSERT INTO `huannn_cat_news` VALUES ('31', '', '0', '0', '1', '2016-12-18 19:23:02', '2016-12-18 19:23:02');
INSERT INTO `huannn_cat_news` VALUES ('32', '', '0', '0', '1', '2016-12-18 19:23:19', '2016-12-18 19:23:19');
INSERT INTO `huannn_cat_news` VALUES ('33', '', '0', '0', '1', '2016-12-18 19:24:58', '2016-12-18 19:24:58');
INSERT INTO `huannn_cat_news` VALUES ('34', '', '0', '0', '1', '2016-12-18 19:25:16', '2016-12-18 19:25:16');
INSERT INTO `huannn_cat_news` VALUES ('35', '', '0', '0', '1', '2016-12-18 19:25:31', '2016-12-18 19:25:31');
INSERT INTO `huannn_cat_news` VALUES ('36', '', '0', '0', '1', '2016-12-18 19:25:46', '2016-12-18 19:25:46');

-- ----------------------------
-- Table structure for huannn_cat_news_description
-- ----------------------------
DROP TABLE IF EXISTS `huannn_cat_news_description`;
CREATE TABLE `huannn_cat_news_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_cat_news_description
-- ----------------------------
INSERT INTO `huannn_cat_news_description` VALUES ('13', '3', 'Thiết kế nội thất', '', 'Thiết kế nội thất', '', '');
INSERT INTO `huannn_cat_news_description` VALUES ('13', '2', 'Xây dựng công trình', '', 'Thiết kế nội thất', '', '');
INSERT INTO `huannn_cat_news_description` VALUES ('15', '2', 'Nội thất', '&lt;p&gt;&lt;span style=&quot;font-family:roboto slab,serif; font-size:14px&quot;&gt;Thiết kế 3D không gian nội thất, bổ kỹ thuật bản vẽ sản xuất, lựa chọn các loại vật liệu đưa ra sự tư vấn phù hợp cho khách hàng.&lt;/span&gt;&lt;/p&gt;\r\n', 'Công trình tiêu biểu', 'Thiết kế 3D không gian nội thất, bổ kỹ thuật bản vẽ sản xuất, lựa chọn các loại vật liệu đưa ra sự tư vấn phù hợp cho khách hàng', '');
INSERT INTO `huannn_cat_news_description` VALUES ('16', '3', 'Tin tức nổi bật', '', 'Tin tức nổi bật', '', '');
INSERT INTO `huannn_cat_news_description` VALUES ('16', '2', 'Tin tức', '', 'Tin tức nổi bật', '', '');
INSERT INTO `huannn_cat_news_description` VALUES ('14', '3', 'Thi công nội thất', '&lt;p&gt;&lt;span style=&quot;font-family:roboto slab,serif; font-size:14px&quot;&gt;Tư vấn thiết kế lập hồ sơ bản vẽ kiến trúc và xây dựng mới cho các loại công trình nhà dân dụng, thương mại như biệt thự, nhà ở, chung cư, khách sạn...&lt;/span&gt;&lt;/p&gt;\r\n', 'Thi công nội thất', '', '');
INSERT INTO `huannn_cat_news_description` VALUES ('17', '3', 'Công năng', '&lt;p&gt;&lt;span style=&quot;font-family:roboto slab,serif; font-size:14px&quot;&gt;Thiết kế mới hoặc cải tạo nội thất theo phân khu chức năng của các không gian trong công trình. Đưa ra các gói tư vấn thiết kế tùy theo yêu cầu của chủ đầu tư.&lt;/span&gt;&lt;/p&gt;\r\n', 'Công năng', '', '');
INSERT INTO `huannn_cat_news_description` VALUES ('15', '3', 'Nội thất', '&lt;p&gt;&lt;span style=&quot;font-family:roboto slab,serif; font-size:14px&quot;&gt;Thiết kế 3D không gian nội thất, bổ kỹ thuật bản vẽ sản xuất, lựa chọn các loại vật liệu đưa ra sự tư vấn phù hợp cho khách hàng.&lt;/span&gt;&lt;/p&gt;\r\n', 'Công trình tiêu biểu', '', '');
INSERT INTO `huannn_cat_news_description` VALUES ('18', '2', 'Thi công', '&lt;p&gt;&lt;span style=&quot;font-family:roboto slab,serif; font-size:14px&quot;&gt;Lập kế hoạch tổ chức thi công hoàn thiện, sản xuất theo bản vẽ thiết kế, lắp đặt bàn giao cho chủ đầu tư. Quản lý dự án kiến trúc, xây dựng, nội thất.&lt;/span&gt;&lt;/p&gt;\r\n', 'Thi công', 'Lập kế hoạch tổ chức thi công hoàn thiện, sản xuất theo bản vẽ thiết kế, lắp đặt bàn giao cho chủ đầu tư. Quản lý dự án kiến trúc, xây dựng, nội thất.', '');
INSERT INTO `huannn_cat_news_description` VALUES ('17', '2', 'Công năng', '&lt;p&gt;&lt;span style=&quot;font-family:roboto slab,serif; font-size:14px&quot;&gt;Thiết kế mới hoặc cải tạo nội thất theo phân khu chức năng của các không gian trong công trình. Đưa ra các gói tư vấn thiết kế tùy theo yêu cầu của chủ đầu tư.&lt;/span&gt;&lt;/p&gt;\r\n', 'Công năng', 'Thiết kế mới hoặc cải tạo nội thất theo phân khu chức năng của các không gian trong công trình. Đưa ra các gói tư vấn thiết kế tùy theo yêu cầu của chủ đầu tư.', '');
INSERT INTO `huannn_cat_news_description` VALUES ('19', '2', 'Dự án', '', 'Dự Án', '', '');
INSERT INTO `huannn_cat_news_description` VALUES ('19', '3', 'Project', '', 'Dự Án', '', '');
INSERT INTO `huannn_cat_news_description` VALUES ('20', '2', 'Tại sao bạn chọn công ty', '', 'Tại sao bạn chọn công ty', '', '');
INSERT INTO `huannn_cat_news_description` VALUES ('20', '3', 'Tại sao bạn chọn công ty', '', 'Tại sao bạn chọn công ty', '', '');
INSERT INTO `huannn_cat_news_description` VALUES ('21', '2', 'Tìm đối tác', '', 'Tìm đối tác', '', '');
INSERT INTO `huannn_cat_news_description` VALUES ('21', '3', 'Tìm đối tác', '', 'Tìm đối tác', '', '');
INSERT INTO `huannn_cat_news_description` VALUES ('22', '2', 'Biệt thự', '', 'Biệt thự', '', '');
INSERT INTO `huannn_cat_news_description` VALUES ('22', '3', 'Biệt thự', '', 'Biệt thự', '', '');
INSERT INTO `huannn_cat_news_description` VALUES ('23', '2', 'Văn phòng', '', 'Văn phòng', '', '');
INSERT INTO `huannn_cat_news_description` VALUES ('23', '3', 'Văn phòng', '', 'Văn phòng', '', '');
INSERT INTO `huannn_cat_news_description` VALUES ('24', '2', 'Nhà hàng', '', 'Nhà hàng', '', '');
INSERT INTO `huannn_cat_news_description` VALUES ('24', '3', 'Nhà hàng', '', 'Nhà hàng', '', '');
INSERT INTO `huannn_cat_news_description` VALUES ('25', '2', 'Cafe', '', 'Cafe', '', '');
INSERT INTO `huannn_cat_news_description` VALUES ('25', '3', 'Cafe', '', 'Cafe', '', '');
INSERT INTO `huannn_cat_news_description` VALUES ('26', '2', 'Karaoke', '', 'Karaoke', '', '');
INSERT INTO `huannn_cat_news_description` VALUES ('26', '3', 'Karaoke', '', 'Karaoke', '', '');
INSERT INTO `huannn_cat_news_description` VALUES ('27', '2', 'Vũ trường', '', 'Vũ trường', '', '');
INSERT INTO `huannn_cat_news_description` VALUES ('27', '3', 'Vũ trường', '', 'Vũ trường', '', '');
INSERT INTO `huannn_cat_news_description` VALUES ('28', '2', 'Spa', '', 'Spa', '', '');
INSERT INTO `huannn_cat_news_description` VALUES ('28', '3', 'Spa', '', 'Spa', '', '');
INSERT INTO `huannn_cat_news_description` VALUES ('29', '2', 'Showroom', '', 'Showroom', '', '');
INSERT INTO `huannn_cat_news_description` VALUES ('29', '3', 'Showroom', '', 'Showroom', '', '');
INSERT INTO `huannn_cat_news_description` VALUES ('30', '2', 'Nhà liền kề', '', 'Nhà liền kề', '', '');
INSERT INTO `huannn_cat_news_description` VALUES ('30', '3', 'Nhà liền kề', '', 'Nhà liền kề', '', '');
INSERT INTO `huannn_cat_news_description` VALUES ('31', '2', 'Nhà phố', '', 'Nhà phố', '', '');
INSERT INTO `huannn_cat_news_description` VALUES ('31', '3', 'Nhà phố', '', 'Nhà phố', '', '');
INSERT INTO `huannn_cat_news_description` VALUES ('32', '2', 'Sơn cảnh quan', '', 'Sơn cảnh quan', '', '');
INSERT INTO `huannn_cat_news_description` VALUES ('32', '3', 'Sơn cảnh quan', '', 'Sơn cảnh quan', '', '');
INSERT INTO `huannn_cat_news_description` VALUES ('33', '2', 'Nhà xưởng - nhà máy', '', 'Nhà xưởng - nhà máy', '', '');
INSERT INTO `huannn_cat_news_description` VALUES ('33', '3', 'Nhà xưởng - nhà máy', '', 'Nhà xưởng - nhà máy', '', '');
INSERT INTO `huannn_cat_news_description` VALUES ('34', '2', 'Showroom oto', '', 'Showroom oto', '', '');
INSERT INTO `huannn_cat_news_description` VALUES ('34', '3', 'Showroom oto', '', 'Showroom oto', '', '');
INSERT INTO `huannn_cat_news_description` VALUES ('35', '2', 'Trung tâm giải trí', '', 'Trung tâm giải trí', '', '');
INSERT INTO `huannn_cat_news_description` VALUES ('35', '3', 'Trung tâm giải trí', '', 'Trung tâm giải trí', '', '');
INSERT INTO `huannn_cat_news_description` VALUES ('36', '2', 'Khách hàng', '', 'Khách hàng', '', '');
INSERT INTO `huannn_cat_news_description` VALUES ('36', '3', 'Khách hàng', '', 'Khách hàng', '', '');
INSERT INTO `huannn_cat_news_description` VALUES ('14', '2', 'Kiến trúc', '&lt;p&gt;&lt;span style=&quot;font-family:roboto slab,serif; font-size:14px&quot;&gt;Tư vấn thiết kế lập hồ sơ bản vẽ kiến trúc và xây dựng mới cho các loại công trình nhà dân dụng, thương mại như biệt thự, nhà ở, chung cư, khách sạn...&lt;/span&gt;&lt;/p&gt;\r\n', 'Thi công nội thất', 'Tư vấn thiết kế lập hồ sơ bản vẽ kiến trúc và xây dựng mới cho các loại công trình nhà dân dụng, thương mại như biệt thự, nhà ở, chung cư, khách sạn', '');
INSERT INTO `huannn_cat_news_description` VALUES ('18', '3', 'Thi công', '', 'Thi công', '', '');

-- ----------------------------
-- Table structure for huannn_cat_news_path
-- ----------------------------
DROP TABLE IF EXISTS `huannn_cat_news_path`;
CREATE TABLE `huannn_cat_news_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`path_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_cat_news_path
-- ----------------------------
INSERT INTO `huannn_cat_news_path` VALUES ('13', '13', '0');
INSERT INTO `huannn_cat_news_path` VALUES ('14', '14', '0');
INSERT INTO `huannn_cat_news_path` VALUES ('15', '15', '0');
INSERT INTO `huannn_cat_news_path` VALUES ('16', '16', '0');
INSERT INTO `huannn_cat_news_path` VALUES ('17', '17', '0');
INSERT INTO `huannn_cat_news_path` VALUES ('18', '18', '0');
INSERT INTO `huannn_cat_news_path` VALUES ('19', '19', '0');
INSERT INTO `huannn_cat_news_path` VALUES ('20', '20', '0');
INSERT INTO `huannn_cat_news_path` VALUES ('21', '21', '0');
INSERT INTO `huannn_cat_news_path` VALUES ('22', '22', '0');
INSERT INTO `huannn_cat_news_path` VALUES ('23', '23', '0');
INSERT INTO `huannn_cat_news_path` VALUES ('24', '24', '0');
INSERT INTO `huannn_cat_news_path` VALUES ('25', '25', '0');
INSERT INTO `huannn_cat_news_path` VALUES ('26', '26', '0');
INSERT INTO `huannn_cat_news_path` VALUES ('27', '27', '0');
INSERT INTO `huannn_cat_news_path` VALUES ('28', '28', '0');
INSERT INTO `huannn_cat_news_path` VALUES ('29', '29', '0');
INSERT INTO `huannn_cat_news_path` VALUES ('30', '30', '0');
INSERT INTO `huannn_cat_news_path` VALUES ('31', '31', '0');
INSERT INTO `huannn_cat_news_path` VALUES ('32', '32', '0');
INSERT INTO `huannn_cat_news_path` VALUES ('33', '33', '0');
INSERT INTO `huannn_cat_news_path` VALUES ('34', '34', '0');
INSERT INTO `huannn_cat_news_path` VALUES ('35', '35', '0');
INSERT INTO `huannn_cat_news_path` VALUES ('36', '36', '0');

-- ----------------------------
-- Table structure for huannn_cat_news_to_layout
-- ----------------------------
DROP TABLE IF EXISTS `huannn_cat_news_to_layout`;
CREATE TABLE `huannn_cat_news_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_cat_news_to_layout
-- ----------------------------
INSERT INTO `huannn_cat_news_to_layout` VALUES ('13', '0', '0');
INSERT INTO `huannn_cat_news_to_layout` VALUES ('14', '0', '0');
INSERT INTO `huannn_cat_news_to_layout` VALUES ('15', '0', '0');
INSERT INTO `huannn_cat_news_to_layout` VALUES ('16', '0', '0');
INSERT INTO `huannn_cat_news_to_layout` VALUES ('17', '0', '0');
INSERT INTO `huannn_cat_news_to_layout` VALUES ('18', '0', '0');
INSERT INTO `huannn_cat_news_to_layout` VALUES ('19', '0', '0');
INSERT INTO `huannn_cat_news_to_layout` VALUES ('20', '0', '0');
INSERT INTO `huannn_cat_news_to_layout` VALUES ('21', '0', '0');
INSERT INTO `huannn_cat_news_to_layout` VALUES ('22', '0', '0');
INSERT INTO `huannn_cat_news_to_layout` VALUES ('23', '0', '0');
INSERT INTO `huannn_cat_news_to_layout` VALUES ('24', '0', '0');
INSERT INTO `huannn_cat_news_to_layout` VALUES ('25', '0', '0');
INSERT INTO `huannn_cat_news_to_layout` VALUES ('26', '0', '0');
INSERT INTO `huannn_cat_news_to_layout` VALUES ('27', '0', '0');
INSERT INTO `huannn_cat_news_to_layout` VALUES ('28', '0', '0');
INSERT INTO `huannn_cat_news_to_layout` VALUES ('29', '0', '0');
INSERT INTO `huannn_cat_news_to_layout` VALUES ('30', '0', '0');
INSERT INTO `huannn_cat_news_to_layout` VALUES ('31', '0', '0');
INSERT INTO `huannn_cat_news_to_layout` VALUES ('32', '0', '0');
INSERT INTO `huannn_cat_news_to_layout` VALUES ('33', '0', '0');
INSERT INTO `huannn_cat_news_to_layout` VALUES ('34', '0', '0');
INSERT INTO `huannn_cat_news_to_layout` VALUES ('35', '0', '0');
INSERT INTO `huannn_cat_news_to_layout` VALUES ('36', '0', '0');

-- ----------------------------
-- Table structure for huannn_cat_news_to_store
-- ----------------------------
DROP TABLE IF EXISTS `huannn_cat_news_to_store`;
CREATE TABLE `huannn_cat_news_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_cat_news_to_store
-- ----------------------------
INSERT INTO `huannn_cat_news_to_store` VALUES ('13', '0');
INSERT INTO `huannn_cat_news_to_store` VALUES ('14', '0');
INSERT INTO `huannn_cat_news_to_store` VALUES ('15', '0');
INSERT INTO `huannn_cat_news_to_store` VALUES ('16', '0');
INSERT INTO `huannn_cat_news_to_store` VALUES ('17', '0');
INSERT INTO `huannn_cat_news_to_store` VALUES ('18', '0');
INSERT INTO `huannn_cat_news_to_store` VALUES ('19', '0');
INSERT INTO `huannn_cat_news_to_store` VALUES ('20', '0');
INSERT INTO `huannn_cat_news_to_store` VALUES ('21', '0');
INSERT INTO `huannn_cat_news_to_store` VALUES ('22', '0');
INSERT INTO `huannn_cat_news_to_store` VALUES ('23', '0');
INSERT INTO `huannn_cat_news_to_store` VALUES ('24', '0');
INSERT INTO `huannn_cat_news_to_store` VALUES ('25', '0');
INSERT INTO `huannn_cat_news_to_store` VALUES ('26', '0');
INSERT INTO `huannn_cat_news_to_store` VALUES ('27', '0');
INSERT INTO `huannn_cat_news_to_store` VALUES ('28', '0');
INSERT INTO `huannn_cat_news_to_store` VALUES ('29', '0');
INSERT INTO `huannn_cat_news_to_store` VALUES ('30', '0');
INSERT INTO `huannn_cat_news_to_store` VALUES ('31', '0');
INSERT INTO `huannn_cat_news_to_store` VALUES ('32', '0');
INSERT INTO `huannn_cat_news_to_store` VALUES ('33', '0');
INSERT INTO `huannn_cat_news_to_store` VALUES ('34', '0');
INSERT INTO `huannn_cat_news_to_store` VALUES ('35', '0');
INSERT INTO `huannn_cat_news_to_store` VALUES ('36', '0');

-- ----------------------------
-- Table structure for huannn_comment
-- ----------------------------
DROP TABLE IF EXISTS `huannn_comment`;
CREATE TABLE `huannn_comment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `news_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `product_id` (`news_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_comment
-- ----------------------------

-- ----------------------------
-- Table structure for huannn_contact
-- ----------------------------
DROP TABLE IF EXISTS `huannn_contact`;
CREATE TABLE `huannn_contact` (
  `contact_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `email` varchar(64) NOT NULL,
  `enquiry` text NOT NULL,
  `viewed` tinyint(1) DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`contact_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_contact
-- ----------------------------
INSERT INTO `huannn_contact` VALUES ('5', '0', 'Hoàng Trọng Hùng', 'huannn2410@gmail.com', 'huannn2410@gmail.comhuannn2410@gmail.comhuannn2410@gmail.comhuannn2410@gmail.comhuannn2410@gmail.comhuannn2410@gmail.comhuannn2410@gmail.comhuannn2410@gmail.comhuannn2410@gmail.comhuannn2410@gmail.comhuannn2410@gmail.comhuannn2410@gmail.comhuannn2410@gmail.comhuannn2410@gmail.comhuannn2410@gmail.comhuannn2410@gmail.comhuannn2410@gmail.comhuannn2410@gmail.comhuannn2410@gmail.comhuannn2410@gmail.comhuannn2410@gmail.comhuannn2410@gmail.comhuannn2410@gmail.comhuannn2410@gmail.comhuannn2410@gmail.comhuannn2410@gmail.comhuannn2410@gmail.comhuannn2410@gmail.com', '1', '2015-10-27 21:03:53');
INSERT INTO `huannn_contact` VALUES ('6', '0', 'Hoàng Trọng Hùng', 'huannn2410@gmail.com', 'aegaeg aegaegaegaeg aegaegaegaeg aegaegaegaeg aegaegaegaeg aegaegaegaeg aegaegaegaeg aegaegaegaeg aegaeg', '1', '2016-02-12 19:17:31');

-- ----------------------------
-- Table structure for huannn_country
-- ----------------------------
DROP TABLE IF EXISTS `huannn_country`;
CREATE TABLE `huannn_country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=258 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_country
-- ----------------------------
INSERT INTO `huannn_country` VALUES ('1', 'Afghanistan', 'AF', 'AFG', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('2', 'Albania', 'AL', 'ALB', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('3', 'Algeria', 'DZ', 'DZA', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('4', 'American Samoa', 'AS', 'ASM', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('5', 'Andorra', 'AD', 'AND', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('6', 'Angola', 'AO', 'AGO', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('7', 'Anguilla', 'AI', 'AIA', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('8', 'Antarctica', 'AQ', 'ATA', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('9', 'Antigua and Barbuda', 'AG', 'ATG', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('10', 'Argentina', 'AR', 'ARG', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('11', 'Armenia', 'AM', 'ARM', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('12', 'Aruba', 'AW', 'ABW', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('13', 'Australia', 'AU', 'AUS', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('14', 'Austria', 'AT', 'AUT', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('15', 'Azerbaijan', 'AZ', 'AZE', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('16', 'Bahamas', 'BS', 'BHS', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('17', 'Bahrain', 'BH', 'BHR', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('18', 'Bangladesh', 'BD', 'BGD', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('19', 'Barbados', 'BB', 'BRB', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('20', 'Belarus', 'BY', 'BLR', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('21', 'Belgium', 'BE', 'BEL', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', '0', '1');
INSERT INTO `huannn_country` VALUES ('22', 'Belize', 'BZ', 'BLZ', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('23', 'Benin', 'BJ', 'BEN', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('24', 'Bermuda', 'BM', 'BMU', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('25', 'Bhutan', 'BT', 'BTN', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('26', 'Bolivia', 'BO', 'BOL', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('27', 'Bosnia and Herzegovina', 'BA', 'BIH', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('28', 'Botswana', 'BW', 'BWA', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('29', 'Bouvet Island', 'BV', 'BVT', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('30', 'Brazil', 'BR', 'BRA', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('31', 'British Indian Ocean Territory', 'IO', 'IOT', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('32', 'Brunei Darussalam', 'BN', 'BRN', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('33', 'Bulgaria', 'BG', 'BGR', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('34', 'Burkina Faso', 'BF', 'BFA', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('35', 'Burundi', 'BI', 'BDI', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('36', 'Cambodia', 'KH', 'KHM', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('37', 'Cameroon', 'CM', 'CMR', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('38', 'Canada', 'CA', 'CAN', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('39', 'Cape Verde', 'CV', 'CPV', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('40', 'Cayman Islands', 'KY', 'CYM', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('41', 'Central African Republic', 'CF', 'CAF', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('42', 'Chad', 'TD', 'TCD', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('43', 'Chile', 'CL', 'CHL', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('44', 'China', 'CN', 'CHN', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('45', 'Christmas Island', 'CX', 'CXR', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('46', 'Cocos (Keeling) Islands', 'CC', 'CCK', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('47', 'Colombia', 'CO', 'COL', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('48', 'Comoros', 'KM', 'COM', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('49', 'Congo', 'CG', 'COG', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('50', 'Cook Islands', 'CK', 'COK', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('51', 'Costa Rica', 'CR', 'CRI', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('52', 'Cote D\'Ivoire', 'CI', 'CIV', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('53', 'Croatia', 'HR', 'HRV', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('54', 'Cuba', 'CU', 'CUB', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('55', 'Cyprus', 'CY', 'CYP', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('56', 'Czech Republic', 'CZ', 'CZE', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('57', 'Denmark', 'DK', 'DNK', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('58', 'Djibouti', 'DJ', 'DJI', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('59', 'Dominica', 'DM', 'DMA', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('60', 'Dominican Republic', 'DO', 'DOM', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('61', 'East Timor', 'TL', 'TLS', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('62', 'Ecuador', 'EC', 'ECU', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('63', 'Egypt', 'EG', 'EGY', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('64', 'El Salvador', 'SV', 'SLV', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('65', 'Equatorial Guinea', 'GQ', 'GNQ', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('66', 'Eritrea', 'ER', 'ERI', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('67', 'Estonia', 'EE', 'EST', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('68', 'Ethiopia', 'ET', 'ETH', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('69', 'Falkland Islands (Malvinas)', 'FK', 'FLK', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('70', 'Faroe Islands', 'FO', 'FRO', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('71', 'Fiji', 'FJ', 'FJI', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('72', 'Finland', 'FI', 'FIN', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('74', 'France, Metropolitan', 'FR', 'FRA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', '1', '1');
INSERT INTO `huannn_country` VALUES ('75', 'French Guiana', 'GF', 'GUF', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('76', 'French Polynesia', 'PF', 'PYF', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('77', 'French Southern Territories', 'TF', 'ATF', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('78', 'Gabon', 'GA', 'GAB', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('79', 'Gambia', 'GM', 'GMB', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('80', 'Georgia', 'GE', 'GEO', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('81', 'Germany', 'DE', 'DEU', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', '1', '1');
INSERT INTO `huannn_country` VALUES ('82', 'Ghana', 'GH', 'GHA', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('83', 'Gibraltar', 'GI', 'GIB', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('84', 'Greece', 'GR', 'GRC', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('85', 'Greenland', 'GL', 'GRL', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('86', 'Grenada', 'GD', 'GRD', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('87', 'Guadeloupe', 'GP', 'GLP', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('88', 'Guam', 'GU', 'GUM', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('89', 'Guatemala', 'GT', 'GTM', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('90', 'Guinea', 'GN', 'GIN', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('91', 'Guinea-Bissau', 'GW', 'GNB', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('92', 'Guyana', 'GY', 'GUY', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('93', 'Haiti', 'HT', 'HTI', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('94', 'Heard and Mc Donald Islands', 'HM', 'HMD', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('95', 'Honduras', 'HN', 'HND', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('96', 'Hong Kong', 'HK', 'HKG', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('97', 'Hungary', 'HU', 'HUN', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('98', 'Iceland', 'IS', 'ISL', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('99', 'India', 'IN', 'IND', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('100', 'Indonesia', 'ID', 'IDN', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('101', 'Iran (Islamic Republic of)', 'IR', 'IRN', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('102', 'Iraq', 'IQ', 'IRQ', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('103', 'Ireland', 'IE', 'IRL', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('104', 'Israel', 'IL', 'ISR', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('105', 'Italy', 'IT', 'ITA', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('106', 'Jamaica', 'JM', 'JAM', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('107', 'Japan', 'JP', 'JPN', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('108', 'Jordan', 'JO', 'JOR', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('109', 'Kazakhstan', 'KZ', 'KAZ', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('110', 'Kenya', 'KE', 'KEN', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('111', 'Kiribati', 'KI', 'KIR', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('112', 'North Korea', 'KP', 'PRK', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('113', 'South Korea', 'KR', 'KOR', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('114', 'Kuwait', 'KW', 'KWT', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('115', 'Kyrgyzstan', 'KG', 'KGZ', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('116', 'Lao People\'s Democratic Republic', 'LA', 'LAO', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('117', 'Latvia', 'LV', 'LVA', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('118', 'Lebanon', 'LB', 'LBN', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('119', 'Lesotho', 'LS', 'LSO', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('120', 'Liberia', 'LR', 'LBR', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('121', 'Libyan Arab Jamahiriya', 'LY', 'LBY', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('122', 'Liechtenstein', 'LI', 'LIE', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('123', 'Lithuania', 'LT', 'LTU', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('124', 'Luxembourg', 'LU', 'LUX', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('125', 'Macau', 'MO', 'MAC', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('126', 'FYROM', 'MK', 'MKD', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('127', 'Madagascar', 'MG', 'MDG', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('128', 'Malawi', 'MW', 'MWI', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('129', 'Malaysia', 'MY', 'MYS', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('130', 'Maldives', 'MV', 'MDV', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('131', 'Mali', 'ML', 'MLI', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('132', 'Malta', 'MT', 'MLT', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('133', 'Marshall Islands', 'MH', 'MHL', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('134', 'Martinique', 'MQ', 'MTQ', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('135', 'Mauritania', 'MR', 'MRT', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('136', 'Mauritius', 'MU', 'MUS', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('137', 'Mayotte', 'YT', 'MYT', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('138', 'Mexico', 'MX', 'MEX', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('139', 'Micronesia, Federated States of', 'FM', 'FSM', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('140', 'Moldova, Republic of', 'MD', 'MDA', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('141', 'Monaco', 'MC', 'MCO', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('142', 'Mongolia', 'MN', 'MNG', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('143', 'Montserrat', 'MS', 'MSR', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('144', 'Morocco', 'MA', 'MAR', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('145', 'Mozambique', 'MZ', 'MOZ', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('146', 'Myanmar', 'MM', 'MMR', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('147', 'Namibia', 'NA', 'NAM', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('148', 'Nauru', 'NR', 'NRU', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('149', 'Nepal', 'NP', 'NPL', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('150', 'Netherlands', 'NL', 'NLD', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('151', 'Netherlands Antilles', 'AN', 'ANT', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('152', 'New Caledonia', 'NC', 'NCL', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('153', 'New Zealand', 'NZ', 'NZL', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('154', 'Nicaragua', 'NI', 'NIC', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('155', 'Niger', 'NE', 'NER', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('156', 'Nigeria', 'NG', 'NGA', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('157', 'Niue', 'NU', 'NIU', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('158', 'Norfolk Island', 'NF', 'NFK', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('159', 'Northern Mariana Islands', 'MP', 'MNP', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('160', 'Norway', 'NO', 'NOR', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('161', 'Oman', 'OM', 'OMN', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('162', 'Pakistan', 'PK', 'PAK', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('163', 'Palau', 'PW', 'PLW', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('164', 'Panama', 'PA', 'PAN', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('165', 'Papua New Guinea', 'PG', 'PNG', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('166', 'Paraguay', 'PY', 'PRY', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('167', 'Peru', 'PE', 'PER', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('168', 'Philippines', 'PH', 'PHL', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('169', 'Pitcairn', 'PN', 'PCN', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('170', 'Poland', 'PL', 'POL', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('171', 'Portugal', 'PT', 'PRT', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('172', 'Puerto Rico', 'PR', 'PRI', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('173', 'Qatar', 'QA', 'QAT', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('174', 'Reunion', 'RE', 'REU', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('175', 'Romania', 'RO', 'ROM', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('176', 'Russian Federation', 'RU', 'RUS', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('177', 'Rwanda', 'RW', 'RWA', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('178', 'Saint Kitts and Nevis', 'KN', 'KNA', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('179', 'Saint Lucia', 'LC', 'LCA', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('180', 'Saint Vincent and the Grenadines', 'VC', 'VCT', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('181', 'Samoa', 'WS', 'WSM', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('182', 'San Marino', 'SM', 'SMR', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('183', 'Sao Tome and Principe', 'ST', 'STP', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('184', 'Saudi Arabia', 'SA', 'SAU', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('185', 'Senegal', 'SN', 'SEN', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('186', 'Seychelles', 'SC', 'SYC', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('187', 'Sierra Leone', 'SL', 'SLE', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('188', 'Singapore', 'SG', 'SGP', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('189', 'Slovak Republic', 'SK', 'SVK', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city} {postcode}\r\n{zone}\r\n{country}', '0', '1');
INSERT INTO `huannn_country` VALUES ('190', 'Slovenia', 'SI', 'SVN', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('191', 'Solomon Islands', 'SB', 'SLB', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('192', 'Somalia', 'SO', 'SOM', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('193', 'South Africa', 'ZA', 'ZAF', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('194', 'South Georgia &amp; South Sandwich Islands', 'GS', 'SGS', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('195', 'Spain', 'ES', 'ESP', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('196', 'Sri Lanka', 'LK', 'LKA', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('197', 'St. Helena', 'SH', 'SHN', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('198', 'St. Pierre and Miquelon', 'PM', 'SPM', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('199', 'Sudan', 'SD', 'SDN', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('200', 'Suriname', 'SR', 'SUR', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('201', 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('202', 'Swaziland', 'SZ', 'SWZ', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('203', 'Sweden', 'SE', 'SWE', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', '1', '1');
INSERT INTO `huannn_country` VALUES ('204', 'Switzerland', 'CH', 'CHE', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('205', 'Syrian Arab Republic', 'SY', 'SYR', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('206', 'Taiwan', 'TW', 'TWN', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('207', 'Tajikistan', 'TJ', 'TJK', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('208', 'Tanzania, United Republic of', 'TZ', 'TZA', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('209', 'Thailand', 'TH', 'THA', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('210', 'Togo', 'TG', 'TGO', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('211', 'Tokelau', 'TK', 'TKL', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('212', 'Tonga', 'TO', 'TON', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('213', 'Trinidad and Tobago', 'TT', 'TTO', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('214', 'Tunisia', 'TN', 'TUN', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('215', 'Turkey', 'TR', 'TUR', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('216', 'Turkmenistan', 'TM', 'TKM', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('217', 'Turks and Caicos Islands', 'TC', 'TCA', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('218', 'Tuvalu', 'TV', 'TUV', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('219', 'Uganda', 'UG', 'UGA', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('220', 'Ukraine', 'UA', 'UKR', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('221', 'United Arab Emirates', 'AE', 'ARE', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('222', 'United Kingdom', 'GB', 'GBR', '', '1', '1');
INSERT INTO `huannn_country` VALUES ('223', 'United States', 'US', 'USA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '0', '1');
INSERT INTO `huannn_country` VALUES ('224', 'United States Minor Outlying Islands', 'UM', 'UMI', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('225', 'Uruguay', 'UY', 'URY', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('226', 'Uzbekistan', 'UZ', 'UZB', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('227', 'Vanuatu', 'VU', 'VUT', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('228', 'Vatican City State (Holy See)', 'VA', 'VAT', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('229', 'Venezuela', 'VE', 'VEN', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('230', 'Viet Nam', 'VN', 'VNM', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('231', 'Virgin Islands (British)', 'VG', 'VGB', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('232', 'Virgin Islands (U.S.)', 'VI', 'VIR', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('233', 'Wallis and Futuna Islands', 'WF', 'WLF', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('234', 'Western Sahara', 'EH', 'ESH', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('235', 'Yemen', 'YE', 'YEM', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('237', 'Democratic Republic of Congo', 'CD', 'COD', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('238', 'Zambia', 'ZM', 'ZMB', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('239', 'Zimbabwe', 'ZW', 'ZWE', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('242', 'Montenegro', 'ME', 'MNE', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('243', 'Serbia', 'RS', 'SRB', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('244', 'Aaland Islands', 'AX', 'ALA', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('245', 'Bonaire, Sint Eustatius and Saba', 'BQ', 'BES', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('246', 'Curacao', 'CW', 'CUW', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('247', 'Palestinian Territory, Occupied', 'PS', 'PSE', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('248', 'South Sudan', 'SS', 'SSD', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('249', 'St. Barthelemy', 'BL', 'BLM', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('250', 'St. Martin (French part)', 'MF', 'MAF', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('251', 'Canary Islands', 'IC', 'ICA', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('252', 'Ascension Island (British)', 'AC', 'ASC', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('253', 'Kosovo, Republic of', 'XK', 'UNK', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('254', 'Isle of Man', 'IM', 'IMN', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('255', 'Tristan da Cunha', 'TA', 'SHN', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('256', 'Guernsey', 'GG', 'GGY', '', '0', '1');
INSERT INTO `huannn_country` VALUES ('257', 'Jersey', 'JE', 'JEY', '', '0', '1');

-- ----------------------------
-- Table structure for huannn_coupon
-- ----------------------------
DROP TABLE IF EXISTS `huannn_coupon`;
CREATE TABLE `huannn_coupon` (
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
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_coupon
-- ----------------------------
INSERT INTO `huannn_coupon` VALUES ('4', '-10% Discount', '2222', 'P', '10.0000', '0', '0', '0.0000', '2014-01-01', '2020-01-01', '10', '10', '0', '2009-01-27 13:55:03');
INSERT INTO `huannn_coupon` VALUES ('5', 'Free Shipping', '3333', 'P', '0.0000', '0', '1', '100.0000', '2014-01-01', '2014-02-01', '10', '10', '0', '2009-03-14 21:13:53');
INSERT INTO `huannn_coupon` VALUES ('6', '-10.00 Discount', '1111', 'F', '10.0000', '0', '0', '10.0000', '2014-01-01', '2020-01-01', '100000', '10000', '0', '2009-03-14 21:15:18');

-- ----------------------------
-- Table structure for huannn_coupon_category
-- ----------------------------
DROP TABLE IF EXISTS `huannn_coupon_category`;
CREATE TABLE `huannn_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_coupon_category
-- ----------------------------

-- ----------------------------
-- Table structure for huannn_coupon_history
-- ----------------------------
DROP TABLE IF EXISTS `huannn_coupon_history`;
CREATE TABLE `huannn_coupon_history` (
  `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_coupon_history
-- ----------------------------

-- ----------------------------
-- Table structure for huannn_coupon_product
-- ----------------------------
DROP TABLE IF EXISTS `huannn_coupon_product`;
CREATE TABLE `huannn_coupon_product` (
  `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_coupon_product
-- ----------------------------

-- ----------------------------
-- Table structure for huannn_currency
-- ----------------------------
DROP TABLE IF EXISTS `huannn_currency`;
CREATE TABLE `huannn_currency` (
  `currency_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` float(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`currency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_currency
-- ----------------------------
INSERT INTO `huannn_currency` VALUES ('4', 'VNĐ', 'VND', '', 'VNĐ', '', '1.00000000', '1', '2016-08-06 02:28:58');

-- ----------------------------
-- Table structure for huannn_customer
-- ----------------------------
DROP TABLE IF EXISTS `huannn_customer`;
CREATE TABLE `huannn_customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_group_id` int(11) NOT NULL,
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
  `custom_field` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` text NOT NULL,
  `code` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_customer
-- ----------------------------
INSERT INTO `huannn_customer` VALUES ('2', '1', '0', 'Hùng', 'Hoàng', 'hoangnam535@gmail.com', '0943912410', 'admin', '72c9274cd68b2ecf79bca175b4d425a4ce7c30a2', 'I51UAvBnZ', null, null, '0', '2', '[]', '127.0.0.1', '1', '1', '0', '', '', '2016-03-04 22:50:53');

-- ----------------------------
-- Table structure for huannn_customer_activity
-- ----------------------------
DROP TABLE IF EXISTS `huannn_customer_activity`;
CREATE TABLE `huannn_customer_activity` (
  `customer_activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_activity_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_customer_activity
-- ----------------------------
INSERT INTO `huannn_customer_activity` VALUES ('1', '1', 'login', '{\"customer_id\":\"1\",\"name\":\" \"}', '127.0.0.1', '2016-03-04 22:50:37');
INSERT INTO `huannn_customer_activity` VALUES ('2', '2', 'register', '{\"customer_id\":2,\"name\":\"H\\u00f9ng Ho\\u00e0ng\"}', '127.0.0.1', '2016-03-04 22:50:54');
INSERT INTO `huannn_customer_activity` VALUES ('3', '2', 'login', '{\"customer_id\":\"2\",\"name\":\"H\\u00f9ng Ho\\u00e0ng\"}', '127.0.0.1', '2016-03-04 22:50:54');
INSERT INTO `huannn_customer_activity` VALUES ('4', '2', 'login', '{\"customer_id\":\"2\",\"name\":\"H\\u00f9ng Ho\\u00e0ng\"}', '127.0.0.1', '2016-03-04 23:39:46');
INSERT INTO `huannn_customer_activity` VALUES ('5', '2', 'login', '{\"customer_id\":\"2\",\"name\":\"H\\u00f9ng Ho\\u00e0ng\"}', '127.0.0.1', '2016-03-05 16:28:34');
INSERT INTO `huannn_customer_activity` VALUES ('6', '0', 'order_guest', '{\"name\":\"H\\u00f9ng Ho\\u00e0ng\",\"order_id\":2}', '127.0.0.1', '2016-03-11 17:33:08');
INSERT INTO `huannn_customer_activity` VALUES ('7', '2', 'login', '{\"customer_id\":\"2\",\"name\":\"H\\u00f9ng Ho\\u00e0ng\"}', '127.0.0.1', '2016-03-13 22:53:30');

-- ----------------------------
-- Table structure for huannn_customer_group
-- ----------------------------
DROP TABLE IF EXISTS `huannn_customer_group`;
CREATE TABLE `huannn_customer_group` (
  `customer_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`customer_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_customer_group
-- ----------------------------
INSERT INTO `huannn_customer_group` VALUES ('1', '0', '1');

-- ----------------------------
-- Table structure for huannn_customer_group_description
-- ----------------------------
DROP TABLE IF EXISTS `huannn_customer_group_description`;
CREATE TABLE `huannn_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`customer_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_customer_group_description
-- ----------------------------
INSERT INTO `huannn_customer_group_description` VALUES ('1', '2', 'Default', 'test');
INSERT INTO `huannn_customer_group_description` VALUES ('1', '3', 'Default', 'test');

-- ----------------------------
-- Table structure for huannn_customer_history
-- ----------------------------
DROP TABLE IF EXISTS `huannn_customer_history`;
CREATE TABLE `huannn_customer_history` (
  `customer_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_customer_history
-- ----------------------------

-- ----------------------------
-- Table structure for huannn_customer_ip
-- ----------------------------
DROP TABLE IF EXISTS `huannn_customer_ip`;
CREATE TABLE `huannn_customer_ip` (
  `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_customer_ip
-- ----------------------------
INSERT INTO `huannn_customer_ip` VALUES ('2', '2', '127.0.0.1', '2016-03-04 22:50:54');

-- ----------------------------
-- Table structure for huannn_customer_login
-- ----------------------------
DROP TABLE IF EXISTS `huannn_customer_login`;
CREATE TABLE `huannn_customer_login` (
  `customer_login_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`customer_login_id`),
  KEY `email` (`email`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_customer_login
-- ----------------------------
INSERT INTO `huannn_customer_login` VALUES ('2', '', '127.0.0.1', '1', '2016-03-13 19:08:54', '2016-03-13 19:08:54');
INSERT INTO `huannn_customer_login` VALUES ('3', '', '112.78.2.101', '1', '2016-03-28 14:55:03', '2016-03-28 14:55:03');

-- ----------------------------
-- Table structure for huannn_customer_online
-- ----------------------------
DROP TABLE IF EXISTS `huannn_customer_online`;
CREATE TABLE `huannn_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_customer_online
-- ----------------------------

-- ----------------------------
-- Table structure for huannn_customer_reward
-- ----------------------------
DROP TABLE IF EXISTS `huannn_customer_reward`;
CREATE TABLE `huannn_customer_reward` (
  `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_reward_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_customer_reward
-- ----------------------------

-- ----------------------------
-- Table structure for huannn_customer_transaction
-- ----------------------------
DROP TABLE IF EXISTS `huannn_customer_transaction`;
CREATE TABLE `huannn_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_customer_transaction
-- ----------------------------

-- ----------------------------
-- Table structure for huannn_customer_wishlist
-- ----------------------------
DROP TABLE IF EXISTS `huannn_customer_wishlist`;
CREATE TABLE `huannn_customer_wishlist` (
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_customer_wishlist
-- ----------------------------
INSERT INTO `huannn_customer_wishlist` VALUES ('2', '40', '2016-03-05 16:28:43');

-- ----------------------------
-- Table structure for huannn_custom_field
-- ----------------------------
DROP TABLE IF EXISTS `huannn_custom_field`;
CREATE TABLE `huannn_custom_field` (
  `custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `validation` varchar(255) NOT NULL,
  `location` varchar(7) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_custom_field
-- ----------------------------

-- ----------------------------
-- Table structure for huannn_custom_field_customer_group
-- ----------------------------
DROP TABLE IF EXISTS `huannn_custom_field_customer_group`;
CREATE TABLE `huannn_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_custom_field_customer_group
-- ----------------------------

-- ----------------------------
-- Table structure for huannn_custom_field_description
-- ----------------------------
DROP TABLE IF EXISTS `huannn_custom_field_description`;
CREATE TABLE `huannn_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_custom_field_description
-- ----------------------------

-- ----------------------------
-- Table structure for huannn_custom_field_value
-- ----------------------------
DROP TABLE IF EXISTS `huannn_custom_field_value`;
CREATE TABLE `huannn_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_custom_field_value
-- ----------------------------

-- ----------------------------
-- Table structure for huannn_custom_field_value_description
-- ----------------------------
DROP TABLE IF EXISTS `huannn_custom_field_value_description`;
CREATE TABLE `huannn_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_custom_field_value_description
-- ----------------------------

-- ----------------------------
-- Table structure for huannn_download
-- ----------------------------
DROP TABLE IF EXISTS `huannn_download`;
CREATE TABLE `huannn_download` (
  `download_id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(160) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`download_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_download
-- ----------------------------

-- ----------------------------
-- Table structure for huannn_download_description
-- ----------------------------
DROP TABLE IF EXISTS `huannn_download_description`;
CREATE TABLE `huannn_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`download_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_download_description
-- ----------------------------

-- ----------------------------
-- Table structure for huannn_event
-- ----------------------------
DROP TABLE IF EXISTS `huannn_event`;
CREATE TABLE `huannn_event` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(32) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_event
-- ----------------------------
INSERT INTO `huannn_event` VALUES ('1', 'voucher', 'catalog/model/checkout/order/addHistory/after', 'total/voucher/send');

-- ----------------------------
-- Table structure for huannn_extension
-- ----------------------------
DROP TABLE IF EXISTS `huannn_extension`;
CREATE TABLE `huannn_extension` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  PRIMARY KEY (`extension_id`)
) ENGINE=MyISAM AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_extension
-- ----------------------------
INSERT INTO `huannn_extension` VALUES ('1', 'payment', 'cod');
INSERT INTO `huannn_extension` VALUES ('2', 'total', 'shipping');
INSERT INTO `huannn_extension` VALUES ('3', 'total', 'sub_total');
INSERT INTO `huannn_extension` VALUES ('4', 'total', 'tax');
INSERT INTO `huannn_extension` VALUES ('5', 'total', 'total');
INSERT INTO `huannn_extension` VALUES ('8', 'total', 'credit');
INSERT INTO `huannn_extension` VALUES ('9', 'shipping', 'flat');
INSERT INTO `huannn_extension` VALUES ('10', 'total', 'handling');
INSERT INTO `huannn_extension` VALUES ('11', 'total', 'low_order_fee');
INSERT INTO `huannn_extension` VALUES ('12', 'total', 'coupon');
INSERT INTO `huannn_extension` VALUES ('13', 'module', 'category');
INSERT INTO `huannn_extension` VALUES ('15', 'total', 'reward');
INSERT INTO `huannn_extension` VALUES ('16', 'total', 'voucher');
INSERT INTO `huannn_extension` VALUES ('17', 'payment', 'free_checkout');
INSERT INTO `huannn_extension` VALUES ('65', 'module', 'menu_main');
INSERT INTO `huannn_extension` VALUES ('73', 'module', 'facebook_page');
INSERT INTO `huannn_extension` VALUES ('20', 'theme', 'theme_default');
INSERT INTO `huannn_extension` VALUES ('33', 'captcha', 'basic_captcha');
INSERT INTO `huannn_extension` VALUES ('62', 'module', 'responsiveslide');
INSERT INTO `huannn_extension` VALUES ('75', 'module', 'featured');
INSERT INTO `huannn_extension` VALUES ('72', 'module', 'product_by_category');
INSERT INTO `huannn_extension` VALUES ('53', 'module', 'payment');
INSERT INTO `huannn_extension` VALUES ('57', 'analytics', 'google_analytics');
INSERT INTO `huannn_extension` VALUES ('69', 'module', 'banner');
INSERT INTO `huannn_extension` VALUES ('71', 'module', 'new_by_category');
INSERT INTO `huannn_extension` VALUES ('76', 'module', 'manufacturer_featured');
INSERT INTO `huannn_extension` VALUES ('77', 'module', 'menu_custom');
INSERT INTO `huannn_extension` VALUES ('79', 'module', 'manager_footer');
INSERT INTO `huannn_extension` VALUES ('80', 'module', 'product_related');
INSERT INTO `huannn_extension` VALUES ('82', 'module', 'category_home');
INSERT INTO `huannn_extension` VALUES ('83', 'module', 'category_duan');
INSERT INTO `huannn_extension` VALUES ('84', 'module', 'category_introduce');
INSERT INTO `huannn_extension` VALUES ('85', 'module', 'category_news');
INSERT INTO `huannn_extension` VALUES ('86', 'module', 'modules_footer');
INSERT INTO `huannn_extension` VALUES ('87', 'module', 'category_cate');
INSERT INTO `huannn_extension` VALUES ('88', 'module', 'user_home');

-- ----------------------------
-- Table structure for huannn_filter
-- ----------------------------
DROP TABLE IF EXISTS `huannn_filter`;
CREATE TABLE `huannn_filter` (
  `filter_id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_filter
-- ----------------------------

-- ----------------------------
-- Table structure for huannn_filter_description
-- ----------------------------
DROP TABLE IF EXISTS `huannn_filter_description`;
CREATE TABLE `huannn_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_filter_description
-- ----------------------------

-- ----------------------------
-- Table structure for huannn_filter_group
-- ----------------------------
DROP TABLE IF EXISTS `huannn_filter_group`;
CREATE TABLE `huannn_filter_group` (
  `filter_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_filter_group
-- ----------------------------

-- ----------------------------
-- Table structure for huannn_filter_group_description
-- ----------------------------
DROP TABLE IF EXISTS `huannn_filter_group_description`;
CREATE TABLE `huannn_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_filter_group_description
-- ----------------------------

-- ----------------------------
-- Table structure for huannn_geo_zone
-- ----------------------------
DROP TABLE IF EXISTS `huannn_geo_zone`;
CREATE TABLE `huannn_geo_zone` (
  `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_modified` datetime NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`geo_zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_geo_zone
-- ----------------------------
INSERT INTO `huannn_geo_zone` VALUES ('3', 'UK VAT Zone', 'UK VAT', '2010-02-26 22:33:24', '2009-01-06 23:26:25');
INSERT INTO `huannn_geo_zone` VALUES ('4', 'UK Shipping', 'UK Shipping Zones', '2010-12-15 15:18:13', '2009-06-23 01:14:53');

-- ----------------------------
-- Table structure for huannn_information
-- ----------------------------
DROP TABLE IF EXISTS `huannn_information`;
CREATE TABLE `huannn_information` (
  `information_id` int(11) NOT NULL AUTO_INCREMENT,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`information_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_information
-- ----------------------------
INSERT INTO `huannn_information` VALUES ('3', '1', '3', '1');
INSERT INTO `huannn_information` VALUES ('4', '1', '1', '1');
INSERT INTO `huannn_information` VALUES ('5', '1', '4', '1');

-- ----------------------------
-- Table structure for huannn_information_description
-- ----------------------------
DROP TABLE IF EXISTS `huannn_information_description`;
CREATE TABLE `huannn_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`information_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_information_description
-- ----------------------------
INSERT INTO `huannn_information_description` VALUES ('4', '2', 'Giới thiệu', '&lt;p&gt;Tuy nhiên, những người hâm mộ lại không thể dùng mạng xã hội để đưa ra bình luận như vẫn làm bởi tình trạng kiểm duyệt mạng trong suốt thời gian diễn ra hội nghị.&lt;/p&gt;\r\n\r\n&lt;p&gt;Theo chỉ số đánh giá mức độ kiểm duyệt Weiboscope do Đại học Hong Kong đưa ra, ngày 4/9 có thể nói là ngày Trung Quốc siết kiểm duyệt mạng chặt nhất kể từ tháng 8/2015 - thời điểm xảy ra hai vụ nổ lớn tại thành phố cảng Thiên Tân.&lt;/p&gt;\r\n\r\n&lt;p&gt;Cụ thể, khoảng 18 bài viết trong số hàng chục nghìn bài viết trên mạng xã hội Weibo hôm qua đã bị kiểm duyệt. Những từ khóa như “đất nước”, “hội nghị”, “sân bay” và Hàng Châu đều bị kiểm duyệt.&lt;/p&gt;\r\n\r\n&lt;p&gt;Trước đây, những bộ váy của bà Bành thường có hàng chục nghìn bình luận trên các mạng xã hội của Trung Quốc, ca ngợi vẻ đẹp của đệ nhất phu nhân.&lt;/p&gt;\r\n\r\n&lt;p&gt;Tuy nhiên, cho đến sáng nay 5/9, bàn luận về bộ váy của bà Bành dường như không xuất hiện trên mạng xã hội nổi tiếng nhất Trung Quốc là Weibo. Kiểm duyệt được thực hiện gắt gao trên Internet vì hội nghị thượng đỉnh G20.&lt;/p&gt;\r\n\r\n&lt;p&gt;Từ trước đến nay, các váy dạ tiệc của bà Bành đều nhận được hàng chục nghìn bình luận trên mạng Weibo của Trung Quốc. Tuy nhiên, cho đến tận sáng nay 5/9, những bài viết, những tranh luận về trang phục của bà Bành tại yến tiệc chiêu đãi lãnh đạo G20 vẫn hiếm hoi trên Weibo hay truyền thông.&lt;/p&gt;\r\n\r\n&lt;div class=&quot;VCSortableInPreviewMode IMSCurrentEditorEditObject&quot;&gt;\r\n&lt;div&gt;&lt;img alt=&quot;\r\nĐệ nhất phu nhân Mỹ và Trung Quốc. (Ảnh: Reuters)\r\n&quot; id=&quot;img_e131c470-734d-11e6-b939-01b8b69b7923&quot; src=&quot;https://dantri4.vcmedia.vn/thumb_w/640/2016/capture-1473068899226.png&quot; style=&quot;max-width:100%&quot; /&gt;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;PhotoCMS_Caption&quot;&gt;\r\n&lt;p style=&quot;text-align:center&quot;&gt;Đệ nhất phu nhân Mỹ và Trung Quốc. (Ảnh: Reuters)&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;p&gt;Bà Bành Lệ Viên và Michelle Obama có thể coi là 2 Đệ nhất phu nhân nổi tiếng với phong cách ăn mặc thời trang. Bà Bành đã chinh phục trái tim của nhiều người ủng hộ vì sự tự tin và gu thời trang, khác hẳn với các phu nhân Chủ tịch Trung Quốc tiền nhiệm.&lt;/p&gt;\r\n\r\n&lt;p&gt;Không để người hâm mộ thất vọng, trong yến tiệc, bà Bành đã lựa chọn một chiếc đầm sườn xám cách tân màu xanh sapphire với họa tiết thêu hoa văn nhẹ nhàng, trong khi tay cầm chiếc xắc nhỏ cùng tông màu và đi đôi giày màu đen cổ điển.&lt;/p&gt;\r\n\r\n&lt;p&gt;“Thật tuyệt. Chiếc sườn xám thật ấn tượng. Tôi cho 8/10 điểm”, William Tang, một trong những nhà thiết kế thời trang nổi tiếng nhất Hong Kong, nhận định. Tuy nhiên, nhà thiết kế này cũng cho rằng, chiếc váy may cách tân nên nó “quá ngắn”, nên để dài thêm 15cm.&lt;/p&gt;\r\n', 'Giới thiệu', '', '');
INSERT INTO `huannn_information_description` VALUES ('5', '2', 'Điều khoản và điều kiện', '&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;\r\n', 'Terms &amp; Conditions', '', '');
INSERT INTO `huannn_information_description` VALUES ('3', '2', 'Chính sách riêng tư', '&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;\r\n', 'Privacy Policy', '', '');
INSERT INTO `huannn_information_description` VALUES ('4', '3', 'Giới thiệu', '&lt;p&gt;Tuy nhiên, những người hâm mộ lại không thể dùng mạng xã hội để đưa ra bình luận như vẫn làm bởi tình trạng kiểm duyệt mạng trong suốt thời gian diễn ra hội nghị.&lt;/p&gt;\r\n\r\n&lt;p&gt;Theo chỉ số đánh giá mức độ kiểm duyệt Weiboscope do Đại học Hong Kong đưa ra, ngày 4/9 có thể nói là ngày Trung Quốc siết kiểm duyệt mạng chặt nhất kể từ tháng 8/2015 - thời điểm xảy ra hai vụ nổ lớn tại thành phố cảng Thiên Tân.&lt;/p&gt;\r\n\r\n&lt;p&gt;Cụ thể, khoảng 18 bài viết trong số hàng chục nghìn bài viết trên mạng xã hội Weibo hôm qua đã bị kiểm duyệt. Những từ khóa như “đất nước”, “hội nghị”, “sân bay” và Hàng Châu đều bị kiểm duyệt.&lt;/p&gt;\r\n\r\n&lt;p&gt;Trước đây, những bộ váy của bà Bành thường có hàng chục nghìn bình luận trên các mạng xã hội của Trung Quốc, ca ngợi vẻ đẹp của đệ nhất phu nhân.&lt;/p&gt;\r\n\r\n&lt;p&gt;Tuy nhiên, cho đến sáng nay 5/9, bàn luận về bộ váy của bà Bành dường như không xuất hiện trên mạng xã hội nổi tiếng nhất Trung Quốc là Weibo. Kiểm duyệt được thực hiện gắt gao trên Internet vì hội nghị thượng đỉnh G20.&lt;/p&gt;\r\n\r\n&lt;p&gt;Từ trước đến nay, các váy dạ tiệc của bà Bành đều nhận được hàng chục nghìn bình luận trên mạng Weibo của Trung Quốc. Tuy nhiên, cho đến tận sáng nay 5/9, những bài viết, những tranh luận về trang phục của bà Bành tại yến tiệc chiêu đãi lãnh đạo G20 vẫn hiếm hoi trên Weibo hay truyền thông.&lt;/p&gt;\r\n\r\n&lt;div class=&quot;VCSortableInPreviewMode IMSCurrentEditorEditObject&quot;&gt;\r\n&lt;div&gt;&lt;img alt=&quot;\r\nĐệ nhất phu nhân Mỹ và Trung Quốc. (Ảnh: Reuters)\r\n&quot; id=&quot;img_e131c470-734d-11e6-b939-01b8b69b7923&quot; src=&quot;https://dantri4.vcmedia.vn/thumb_w/640/2016/capture-1473068899226.png&quot; style=&quot;max-width:100%&quot; /&gt;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;PhotoCMS_Caption&quot;&gt;\r\n&lt;p style=&quot;text-align:center&quot;&gt;Đệ nhất phu nhân Mỹ và Trung Quốc. (Ảnh: Reuters)&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;p&gt;Bà Bành Lệ Viên và Michelle Obama có thể coi là 2 Đệ nhất phu nhân nổi tiếng với phong cách ăn mặc thời trang. Bà Bành đã chinh phục trái tim của nhiều người ủng hộ vì sự tự tin và gu thời trang, khác hẳn với các phu nhân Chủ tịch Trung Quốc tiền nhiệm.&lt;/p&gt;\r\n\r\n&lt;p&gt;Không để người hâm mộ thất vọng, trong yến tiệc, bà Bành đã lựa chọn một chiếc đầm sườn xám cách tân màu xanh sapphire với họa tiết thêu hoa văn nhẹ nhàng, trong khi tay cầm chiếc xắc nhỏ cùng tông màu và đi đôi giày màu đen cổ điển.&lt;/p&gt;\r\n\r\n&lt;p&gt;“Thật tuyệt. Chiếc sườn xám thật ấn tượng. Tôi cho 8/10 điểm”, William Tang, một trong những nhà thiết kế thời trang nổi tiếng nhất Hong Kong, nhận định. Tuy nhiên, nhà thiết kế này cũng cho rằng, chiếc váy may cách tân nên nó “quá ngắn”, nên để dài thêm 15cm.&lt;/p&gt;\r\n', 'Giới thiệu', '', '');
INSERT INTO `huannn_information_description` VALUES ('5', '3', 'Điều khoản và điều kiện', '&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;\r\n', 'Terms &amp; Conditions', '', '');
INSERT INTO `huannn_information_description` VALUES ('3', '3', 'Chính sách riêng tư', '&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;\r\n', 'Privacy Policy', '', '');

-- ----------------------------
-- Table structure for huannn_information_to_layout
-- ----------------------------
DROP TABLE IF EXISTS `huannn_information_to_layout`;
CREATE TABLE `huannn_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_information_to_layout
-- ----------------------------
INSERT INTO `huannn_information_to_layout` VALUES ('5', '0', '0');
INSERT INTO `huannn_information_to_layout` VALUES ('3', '0', '0');
INSERT INTO `huannn_information_to_layout` VALUES ('4', '0', '0');

-- ----------------------------
-- Table structure for huannn_information_to_store
-- ----------------------------
DROP TABLE IF EXISTS `huannn_information_to_store`;
CREATE TABLE `huannn_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_information_to_store
-- ----------------------------
INSERT INTO `huannn_information_to_store` VALUES ('3', '0');
INSERT INTO `huannn_information_to_store` VALUES ('4', '0');
INSERT INTO `huannn_information_to_store` VALUES ('5', '0');

-- ----------------------------
-- Table structure for huannn_language
-- ----------------------------
DROP TABLE IF EXISTS `huannn_language`;
CREATE TABLE `huannn_language` (
  `language_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_language
-- ----------------------------
INSERT INTO `huannn_language` VALUES ('2', 'Việt Nam', 'vn-gb', '', '', '', '4', '1');
INSERT INTO `huannn_language` VALUES ('3', 'English', 'en-gb', '', '', '', '1', '1');

-- ----------------------------
-- Table structure for huannn_layout
-- ----------------------------
DROP TABLE IF EXISTS `huannn_layout`;
CREATE TABLE `huannn_layout` (
  `layout_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_layout
-- ----------------------------
INSERT INTO `huannn_layout` VALUES ('1', 'Trang chủ');
INSERT INTO `huannn_layout` VALUES ('2', 'Chi tiết sản phẩm');
INSERT INTO `huannn_layout` VALUES ('3', 'Danh mục sản phẩm');
INSERT INTO `huannn_layout` VALUES ('4', 'Mặc định');
INSERT INTO `huannn_layout` VALUES ('5', 'Hãng sản xuất');
INSERT INTO `huannn_layout` VALUES ('6', 'Tài khoản');
INSERT INTO `huannn_layout` VALUES ('7', 'Giỏ hàng');
INSERT INTO `huannn_layout` VALUES ('8', 'Liên hệ');
INSERT INTO `huannn_layout` VALUES ('9', 'Sitemap');
INSERT INTO `huannn_layout` VALUES ('10', 'Liên kết tiếp thị (Affiliate)');
INSERT INTO `huannn_layout` VALUES ('11', 'Thông tin');
INSERT INTO `huannn_layout` VALUES ('12', 'So sánh sản phẩm');
INSERT INTO `huannn_layout` VALUES ('13', 'Tìm kiếm sản phẩm');
INSERT INTO `huannn_layout` VALUES ('14', 'Danh mục tin tức');
INSERT INTO `huannn_layout` VALUES ('15', 'Chi tiết tin tức');
INSERT INTO `huannn_layout` VALUES ('16', 'Sản phẩm');
INSERT INTO `huannn_layout` VALUES ('18', 'Trang hãng sản xuất');
INSERT INTO `huannn_layout` VALUES ('19', 'Danh sách hãng sản xuất');

-- ----------------------------
-- Table structure for huannn_layout_module
-- ----------------------------
DROP TABLE IF EXISTS `huannn_layout_module`;
CREATE TABLE `huannn_layout_module` (
  `layout_module_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(30) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`layout_module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=884 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_layout_module
-- ----------------------------
INSERT INTO `huannn_layout_module` VALUES ('663', '3', 'menu_main', 'content_maintop', '1');
INSERT INTO `huannn_layout_module` VALUES ('803', '2', 'menu_main', 'content_maintop', '1');
INSERT INTO `huannn_layout_module` VALUES ('791', '5', 'menu_main', 'content_maintop', '1');
INSERT INTO `huannn_layout_module` VALUES ('662', '3', 'banner.57', 'column_left', '2');
INSERT INTO `huannn_layout_module` VALUES ('790', '5', 'facebook_page', 'column_left', '2');
INSERT INTO `huannn_layout_module` VALUES ('667', '16', 'banner.57', 'column_left', '2');
INSERT INTO `huannn_layout_module` VALUES ('668', '16', 'menu_main', 'content_maintop', '1');
INSERT INTO `huannn_layout_module` VALUES ('669', '16', 'facebook_page', 'column_left', '3');
INSERT INTO `huannn_layout_module` VALUES ('704', '13', 'menu_main', 'content_maintop', '1');
INSERT INTO `huannn_layout_module` VALUES ('707', '7', 'menu_main', 'content_maintop', '1');
INSERT INTO `huannn_layout_module` VALUES ('882', '1', 'category_news.72', 'content_maintop', '7');
INSERT INTO `huannn_layout_module` VALUES ('802', '2', 'new_by_category.60', 'column_left', '2');
INSERT INTO `huannn_layout_module` VALUES ('703', '13', 'new_by_category.60', 'column_left', '2');
INSERT INTO `huannn_layout_module` VALUES ('666', '16', 'new_by_category.60', 'column_left', '2');
INSERT INTO `huannn_layout_module` VALUES ('661', '3', 'new_by_category.60', 'column_left', '2');
INSERT INTO `huannn_layout_module` VALUES ('706', '7', 'new_by_category.60', 'column_left', '2');
INSERT INTO `huannn_layout_module` VALUES ('867', '15', 'menu_main', 'content_maintop', '1');
INSERT INTO `huannn_layout_module` VALUES ('864', '14', 'responsiveslide.47', 'content_maintop', '2');
INSERT INTO `huannn_layout_module` VALUES ('675', '11', 'facebook_page', 'column_left', '3');
INSERT INTO `huannn_layout_module` VALUES ('674', '11', 'new_by_category.60', 'column_left', '2');
INSERT INTO `huannn_layout_module` VALUES ('866', '15', 'responsiveslide.47', 'content_maintop', '2');
INSERT INTO `huannn_layout_module` VALUES ('801', '2', 'category', 'column_left', '1');
INSERT INTO `huannn_layout_module` VALUES ('865', '15', 'category_cate.74', 'column_right', '1');
INSERT INTO `huannn_layout_module` VALUES ('660', '3', 'category', 'column_left', '1');
INSERT INTO `huannn_layout_module` VALUES ('862', '14', 'new_by_category.60', 'column_right', '3');
INSERT INTO `huannn_layout_module` VALUES ('861', '14', 'category_cate.74', 'column_right', '1');
INSERT INTO `huannn_layout_module` VALUES ('705', '7', 'category', 'column_left', '1');
INSERT INTO `huannn_layout_module` VALUES ('665', '16', 'category', 'column_left', '1');
INSERT INTO `huannn_layout_module` VALUES ('702', '13', 'category', 'column_left', '1');
INSERT INTO `huannn_layout_module` VALUES ('664', '3', 'facebook_page', 'column_left', '3');
INSERT INTO `huannn_layout_module` VALUES ('673', '11', 'category', 'column_left', '1');
INSERT INTO `huannn_layout_module` VALUES ('676', '11', 'menu_main', 'content_maintop', '1');
INSERT INTO `huannn_layout_module` VALUES ('883', '1', 'manufacturer_featured.67', 'content_maintop', '8');
INSERT INTO `huannn_layout_module` VALUES ('881', '1', 'user_home.75', 'content_maintop', '6');
INSERT INTO `huannn_layout_module` VALUES ('863', '14', 'menu_main', 'content_maintop', '1');
INSERT INTO `huannn_layout_module` VALUES ('792', '18', 'menu_main', 'content_maintop', '1');
INSERT INTO `huannn_layout_module` VALUES ('789', '5', 'category', 'column_left', '1');
INSERT INTO `huannn_layout_module` VALUES ('793', '18', 'category', 'column_left', '1');
INSERT INTO `huannn_layout_module` VALUES ('794', '18', 'facebook_page', 'column_left', '2');
INSERT INTO `huannn_layout_module` VALUES ('868', '8', 'menu_main', 'content_maintop', '1');
INSERT INTO `huannn_layout_module` VALUES ('804', '2', 'product_related.68', 'column_left', '2');
INSERT INTO `huannn_layout_module` VALUES ('880', '1', 'category_introduce.71', 'content_maintop', '5');
INSERT INTO `huannn_layout_module` VALUES ('879', '1', 'category_duan.70', 'content_maintop', '4');
INSERT INTO `huannn_layout_module` VALUES ('878', '1', 'category_home.69', 'content_maintop', '3');
INSERT INTO `huannn_layout_module` VALUES ('877', '1', 'responsiveslide.47', 'content_maintop', '2');
INSERT INTO `huannn_layout_module` VALUES ('876', '1', 'menu_main', 'content_maintop', '1');

-- ----------------------------
-- Table structure for huannn_layout_route
-- ----------------------------
DROP TABLE IF EXISTS `huannn_layout_route`;
CREATE TABLE `huannn_layout_route` (
  `layout_route_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(255) NOT NULL,
  PRIMARY KEY (`layout_route_id`)
) ENGINE=MyISAM AUTO_INCREMENT=269 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_layout_route
-- ----------------------------
INSERT INTO `huannn_layout_route` VALUES ('97', '6', '0', 'account/%');
INSERT INTO `huannn_layout_route` VALUES ('93', '10', '0', 'affiliate/%');
INSERT INTO `huannn_layout_route` VALUES ('222', '3', '0', 'product/category');
INSERT INTO `huannn_layout_route` VALUES ('268', '1', '0', 'common/home');
INSERT INTO `huannn_layout_route` VALUES ('255', '2', '0', 'product/product');
INSERT INTO `huannn_layout_route` VALUES ('225', '11', '0', 'information/information');
INSERT INTO `huannn_layout_route` VALUES ('234', '7', '0', 'checkout/%');
INSERT INTO `huannn_layout_route` VALUES ('266', '8', '0', 'information/contact');
INSERT INTO `huannn_layout_route` VALUES ('95', '9', '0', 'information/sitemap');
INSERT INTO `huannn_layout_route` VALUES ('131', '4', '0', '');
INSERT INTO `huannn_layout_route` VALUES ('251', '5', '0', 'product/manufacturer');
INSERT INTO `huannn_layout_route` VALUES ('158', '12', '0', 'product/compare');
INSERT INTO `huannn_layout_route` VALUES ('233', '13', '0', 'product/search');
INSERT INTO `huannn_layout_route` VALUES ('264', '14', '0', 'news/category');
INSERT INTO `huannn_layout_route` VALUES ('265', '15', '0', 'news/news');
INSERT INTO `huannn_layout_route` VALUES ('223', '16', '0', 'product/productall');
INSERT INTO `huannn_layout_route` VALUES ('252', '18', '0', 'product/manufacturer/info');

-- ----------------------------
-- Table structure for huannn_length_class
-- ----------------------------
DROP TABLE IF EXISTS `huannn_length_class`;
CREATE TABLE `huannn_length_class` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL,
  PRIMARY KEY (`length_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_length_class
-- ----------------------------
INSERT INTO `huannn_length_class` VALUES ('1', '1.00000000');
INSERT INTO `huannn_length_class` VALUES ('2', '10.00000000');
INSERT INTO `huannn_length_class` VALUES ('3', '0.39370000');

-- ----------------------------
-- Table structure for huannn_length_class_description
-- ----------------------------
DROP TABLE IF EXISTS `huannn_length_class_description`;
CREATE TABLE `huannn_length_class_description` (
  `length_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`length_class_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_length_class_description
-- ----------------------------
INSERT INTO `huannn_length_class_description` VALUES ('1', '2', 'Centimeter', 'cm');
INSERT INTO `huannn_length_class_description` VALUES ('2', '2', 'Millimeter', 'mm');
INSERT INTO `huannn_length_class_description` VALUES ('3', '2', 'Inch', 'in');
INSERT INTO `huannn_length_class_description` VALUES ('1', '3', 'Centimeter', 'cm');
INSERT INTO `huannn_length_class_description` VALUES ('2', '3', 'Millimeter', 'mm');
INSERT INTO `huannn_length_class_description` VALUES ('3', '3', 'Inch', 'in');

-- ----------------------------
-- Table structure for huannn_lienhe
-- ----------------------------
DROP TABLE IF EXISTS `huannn_lienhe`;
CREATE TABLE `huannn_lienhe` (
  `lienhe_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `email` varchar(64) NOT NULL,
  `enquiry` text NOT NULL,
  `viewed` tinyint(1) DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`lienhe_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_lienhe
-- ----------------------------

-- ----------------------------
-- Table structure for huannn_link_external
-- ----------------------------
DROP TABLE IF EXISTS `huannn_link_external`;
CREATE TABLE `huannn_link_external` (
  `link_external_id` int(11) NOT NULL AUTO_INCREMENT,
  `route` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`link_external_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_link_external
-- ----------------------------
INSERT INTO `huannn_link_external` VALUES ('1', 'http://hunggalaxy.net/', '1', '1');

-- ----------------------------
-- Table structure for huannn_link_external_description
-- ----------------------------
DROP TABLE IF EXISTS `huannn_link_external_description`;
CREATE TABLE `huannn_link_external_description` (
  `link_external_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`link_external_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_link_external_description
-- ----------------------------
INSERT INTO `huannn_link_external_description` VALUES ('1', '2', 'Hunggalaxy Website');
INSERT INTO `huannn_link_external_description` VALUES ('1', '1', 'Hunggalaxy Website');

-- ----------------------------
-- Table structure for huannn_link_internal
-- ----------------------------
DROP TABLE IF EXISTS `huannn_link_internal`;
CREATE TABLE `huannn_link_internal` (
  `link_internal_id` int(11) NOT NULL AUTO_INCREMENT,
  `route` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`link_internal_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_link_internal
-- ----------------------------
INSERT INTO `huannn_link_internal` VALUES ('6', 'common/home', '1', '1');
INSERT INTO `huannn_link_internal` VALUES ('8', 'product/productall', '2', '1');
INSERT INTO `huannn_link_internal` VALUES ('11', 'information/contact', '3', '1');
INSERT INTO `huannn_link_internal` VALUES ('12', 'product/manufacturer', '5', '1');

-- ----------------------------
-- Table structure for huannn_link_internal_description
-- ----------------------------
DROP TABLE IF EXISTS `huannn_link_internal_description`;
CREATE TABLE `huannn_link_internal_description` (
  `link_internal_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`link_internal_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_link_internal_description
-- ----------------------------
INSERT INTO `huannn_link_internal_description` VALUES ('6', '1', 'Home');
INSERT INTO `huannn_link_internal_description` VALUES ('6', '2', 'Trang chủ');
INSERT INTO `huannn_link_internal_description` VALUES ('8', '2', 'Sản phẩm');
INSERT INTO `huannn_link_internal_description` VALUES ('11', '2', 'Liên hệ');
INSERT INTO `huannn_link_internal_description` VALUES ('12', '2', 'Nhãn hiệu');

-- ----------------------------
-- Table structure for huannn_location
-- ----------------------------
DROP TABLE IF EXISTS `huannn_location`;
CREATE TABLE `huannn_location` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `geocode` varchar(32) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_location
-- ----------------------------

-- ----------------------------
-- Table structure for huannn_manufacturer
-- ----------------------------
DROP TABLE IF EXISTS `huannn_manufacturer`;
CREATE TABLE `huannn_manufacturer` (
  `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_manufacturer
-- ----------------------------
INSERT INTO `huannn_manufacturer` VALUES ('11', 'Baby Arau', 'catalog/hang-sx/arau_baby.png', '1');
INSERT INTO `huannn_manufacturer` VALUES ('12', 'Lovi', 'catalog/hang-sx/canpollovi.png', '2');
INSERT INTO `huannn_manufacturer` VALUES ('13', 'Merries', 'catalog/hang-sx/merries.png', '3');
INSERT INTO `huannn_manufacturer` VALUES ('14', 'Capol Babies', 'catalog/hang-sx/canpolbabies.png', '4');
INSERT INTO `huannn_manufacturer` VALUES ('15', 'Aprica', 'catalog/hang-sx/aprica.png', '5');
INSERT INTO `huannn_manufacturer` VALUES ('16', 'Padio Flyer', 'catalog/hang-sx/radio_flyer.png', '6');

-- ----------------------------
-- Table structure for huannn_manufacturer_to_store
-- ----------------------------
DROP TABLE IF EXISTS `huannn_manufacturer_to_store`;
CREATE TABLE `huannn_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`manufacturer_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_manufacturer_to_store
-- ----------------------------
INSERT INTO `huannn_manufacturer_to_store` VALUES ('11', '0');
INSERT INTO `huannn_manufacturer_to_store` VALUES ('12', '0');
INSERT INTO `huannn_manufacturer_to_store` VALUES ('13', '0');
INSERT INTO `huannn_manufacturer_to_store` VALUES ('14', '0');
INSERT INTO `huannn_manufacturer_to_store` VALUES ('15', '0');
INSERT INTO `huannn_manufacturer_to_store` VALUES ('16', '0');

-- ----------------------------
-- Table structure for huannn_marketing
-- ----------------------------
DROP TABLE IF EXISTS `huannn_marketing`;
CREATE TABLE `huannn_marketing` (
  `marketing_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`marketing_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_marketing
-- ----------------------------

-- ----------------------------
-- Table structure for huannn_menu
-- ----------------------------
DROP TABLE IF EXISTS `huannn_menu`;
CREATE TABLE `huannn_menu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_group_id` int(11) NOT NULL,
  `name_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `menu_type_id` int(3) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`menu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=116 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of huannn_menu
-- ----------------------------
INSERT INTO `huannn_menu` VALUES ('69', '2', '22', '3', '66', '', '1', '0', '1', '2016-11-02 21:56:57', '2016-12-18 19:26:31');
INSERT INTO `huannn_menu` VALUES ('70', '2', '13', '3', '0', '', '4', '0', '1', '2016-11-02 21:57:13', '2016-12-07 10:09:57');
INSERT INTO `huannn_menu` VALUES ('68', '2', '24', '3', '66', '', '3', '0', '1', '2016-11-02 21:56:47', '2016-12-18 19:27:10');
INSERT INTO `huannn_menu` VALUES ('67', '2', '23', '3', '66', '', '2', '0', '1', '2016-11-02 21:56:26', '2016-12-18 19:26:55');
INSERT INTO `huannn_menu` VALUES ('66', '2', '15', '3', '0', '', '2', '0', '1', '2016-11-02 21:56:15', '2016-12-07 10:11:05');
INSERT INTO `huannn_menu` VALUES ('62', '2', '16', '3', '0', '', '5', '0', '1', '2016-11-02 21:55:37', '2016-12-07 10:11:19');
INSERT INTO `huannn_menu` VALUES ('71', '2', '33', '3', '70', '', '1', '0', '1', '2016-11-02 21:57:27', '2016-12-18 19:41:51');
INSERT INTO `huannn_menu` VALUES ('72', '2', '34', '3', '70', '', '2', '0', '1', '2016-11-02 21:57:39', '2016-12-18 19:42:11');
INSERT INTO `huannn_menu` VALUES ('108', '2', '27', '3', '66', '', '6', '0', '1', '2016-12-18 19:28:06', '2016-12-18 19:28:06');
INSERT INTO `huannn_menu` VALUES ('76', '5', '8', '5', '0', 'catalog/san_pham_moi_avatar.jpg', '1', '0', '1', '2016-11-02 22:11:33', '2016-11-02 22:11:33');
INSERT INTO `huannn_menu` VALUES ('77', '5', '104', '1', '0', 'catalog/san_pham_khuyen_mai_avatar.jpg', '2', '0', '1', '2016-11-02 22:11:50', '2016-11-02 22:11:50');
INSERT INTO `huannn_menu` VALUES ('78', '5', '13', '3', '0', 'catalog/socandbrothers_club.jpg', '3', '0', '1', '2016-11-02 22:12:21', '2016-11-02 22:12:21');
INSERT INTO `huannn_menu` VALUES ('107', '2', '26', '3', '66', '', '5', '0', '1', '2016-12-18 19:27:49', '2016-12-18 19:27:49');
INSERT INTO `huannn_menu` VALUES ('80', '6', '14', '3', '0', '', '1', '0', '1', '2016-11-02 22:56:58', '2016-12-18 11:49:44');
INSERT INTO `huannn_menu` VALUES ('81', '6', '15', '3', '0', '', '2', '0', '1', '2016-11-02 22:57:05', '2016-12-18 11:49:57');
INSERT INTO `huannn_menu` VALUES ('82', '6', '66', '4', '0', '', '3', '0', '1', '2016-11-02 22:57:13', '2016-12-18 11:50:17');
INSERT INTO `huannn_menu` VALUES ('83', '6', '69', '4', '0', '', '4', '0', '1', '2016-11-02 22:57:20', '2016-12-18 11:50:31');
INSERT INTO `huannn_menu` VALUES ('84', '6', '67', '4', '0', '', '5', '0', '1', '2016-11-02 22:57:31', '2016-12-18 11:50:42');
INSERT INTO `huannn_menu` VALUES ('85', '6', '68', '4', '0', '', '6', '0', '1', '2016-11-02 22:57:39', '2016-12-18 11:50:58');
INSERT INTO `huannn_menu` VALUES ('109', '2', '28', '3', '66', '', '7', '0', '1', '2016-12-18 19:28:27', '2016-12-18 19:28:27');
INSERT INTO `huannn_menu` VALUES ('106', '2', '25', '3', '66', '', '4', '0', '1', '2016-12-18 19:27:31', '2016-12-18 19:27:31');
INSERT INTO `huannn_menu` VALUES ('105', '7', '87', '1', '0', '', '1', '0', '1', '2016-12-17 19:52:58', '2016-12-17 22:05:42');
INSERT INTO `huannn_menu` VALUES ('104', '7', '87', '1', '0', '', '1', '0', '1', '2016-12-17 19:52:40', '2016-12-17 22:05:21');
INSERT INTO `huannn_menu` VALUES ('103', '7', '87', '1', '0', '', '1', '0', '1', '2016-12-17 19:52:28', '2016-12-17 19:52:28');
INSERT INTO `huannn_menu` VALUES ('102', '7', '87', '1', '0', '', '1', '0', '1', '2016-12-17 19:52:12', '2016-12-17 19:52:12');
INSERT INTO `huannn_menu` VALUES ('96', '2', '11', '5', '0', '', '7', '0', '1', '2016-11-08 17:09:41', '2016-12-07 10:12:48');
INSERT INTO `huannn_menu` VALUES ('98', '2', '6', '5', '0', '', '1', '0', '1', '2016-11-11 10:25:56', '2016-12-07 10:12:26');
INSERT INTO `huannn_menu` VALUES ('99', '2', '14', '3', '0', '', '3', '0', '1', '2016-11-11 10:26:32', '2016-12-07 10:10:51');
INSERT INTO `huannn_menu` VALUES ('110', '2', '29', '3', '66', '', '8', '0', '1', '2016-12-18 19:28:41', '2016-12-18 19:28:41');
INSERT INTO `huannn_menu` VALUES ('111', '2', '30', '3', '99', '', '1', '0', '1', '2016-12-18 19:29:23', '2016-12-18 19:29:23');
INSERT INTO `huannn_menu` VALUES ('112', '2', '31', '3', '99', '', '2', '0', '1', '2016-12-18 19:29:37', '2016-12-18 19:29:37');
INSERT INTO `huannn_menu` VALUES ('113', '2', '32', '3', '99', '', '3', '0', '1', '2016-12-18 19:29:53', '2016-12-18 19:29:53');
INSERT INTO `huannn_menu` VALUES ('114', '2', '35', '3', '70', '', '3', '0', '1', '2016-12-18 19:42:29', '2016-12-18 19:42:29');
INSERT INTO `huannn_menu` VALUES ('115', '2', '36', '3', '0', '', '5', '0', '1', '2016-12-18 19:42:53', '2016-12-18 19:42:53');

-- ----------------------------
-- Table structure for huannn_menu_description
-- ----------------------------
DROP TABLE IF EXISTS `huannn_menu_description`;
CREATE TABLE `huannn_menu_description` (
  `menu_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`menu_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_menu_description
-- ----------------------------
INSERT INTO `huannn_menu_description` VALUES ('1', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('35', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('3', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('3', '1', '', '');
INSERT INTO `huannn_menu_description` VALUES ('2', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('4', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('5', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('5', '1', '', '');
INSERT INTO `huannn_menu_description` VALUES ('6', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('7', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('8', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('9', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('10', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('11', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('12', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('13', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('14', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('15', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('16', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('17', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('18', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('19', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('20', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('21', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('22', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('23', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('24', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('25', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('26', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('27', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('28', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('29', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('30', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('31', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('32', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('33', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('34', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('36', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('37', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('38', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('39', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('40', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('41', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('42', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('43', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('44', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('45', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('46', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('47', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('48', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('49', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('50', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('51', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('52', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('53', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('54', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('55', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('56', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('57', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('58', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('59', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('60', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('61', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('62', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('63', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('64', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('65', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('66', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('67', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('68', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('69', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('70', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('71', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('72', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('73', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('74', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('75', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('76', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('77', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('78', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('79', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('80', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('81', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('82', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('83', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('84', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('85', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('86', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('87', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('88', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('89', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('90', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('91', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('92', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('93', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('94', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('95', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('96', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('97', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('98', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('99', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('100', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('101', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('70', '3', '', '');
INSERT INTO `huannn_menu_description` VALUES ('99', '3', '', '');
INSERT INTO `huannn_menu_description` VALUES ('66', '3', '', '');
INSERT INTO `huannn_menu_description` VALUES ('62', '3', '', '');
INSERT INTO `huannn_menu_description` VALUES ('98', '3', '', '');
INSERT INTO `huannn_menu_description` VALUES ('96', '3', '', '');
INSERT INTO `huannn_menu_description` VALUES ('102', '2', 'Mr Thành:	094 468 3000', '');
INSERT INTO `huannn_menu_description` VALUES ('102', '3', '', '');
INSERT INTO `huannn_menu_description` VALUES ('103', '2', 'Mr Cường:	0912 684 877', '');
INSERT INTO `huannn_menu_description` VALUES ('103', '3', 'Mr Cường:	0912 684 877', '');
INSERT INTO `huannn_menu_description` VALUES ('104', '3', 'Mr An(SG): 0927 339 927', '');
INSERT INTO `huannn_menu_description` VALUES ('104', '2', 'Mr An(SG): 0927 339 927', '');
INSERT INTO `huannn_menu_description` VALUES ('105', '3', 'Tel: 04 6680 3111', '');
INSERT INTO `huannn_menu_description` VALUES ('105', '2', 'Tel: 04 6680 3111', '');
INSERT INTO `huannn_menu_description` VALUES ('80', '3', '', '');
INSERT INTO `huannn_menu_description` VALUES ('81', '3', '', '');
INSERT INTO `huannn_menu_description` VALUES ('82', '3', '', '');
INSERT INTO `huannn_menu_description` VALUES ('83', '3', '', '');
INSERT INTO `huannn_menu_description` VALUES ('84', '3', '', '');
INSERT INTO `huannn_menu_description` VALUES ('85', '3', '', '');
INSERT INTO `huannn_menu_description` VALUES ('69', '3', '', '');
INSERT INTO `huannn_menu_description` VALUES ('67', '3', '', '');
INSERT INTO `huannn_menu_description` VALUES ('68', '3', '', '');
INSERT INTO `huannn_menu_description` VALUES ('106', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('106', '3', '', '');
INSERT INTO `huannn_menu_description` VALUES ('107', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('107', '3', '', '');
INSERT INTO `huannn_menu_description` VALUES ('108', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('108', '3', '', '');
INSERT INTO `huannn_menu_description` VALUES ('109', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('109', '3', '', '');
INSERT INTO `huannn_menu_description` VALUES ('110', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('110', '3', '', '');
INSERT INTO `huannn_menu_description` VALUES ('111', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('111', '3', '', '');
INSERT INTO `huannn_menu_description` VALUES ('112', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('112', '3', '', '');
INSERT INTO `huannn_menu_description` VALUES ('113', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('113', '3', '', '');
INSERT INTO `huannn_menu_description` VALUES ('71', '3', '', '');
INSERT INTO `huannn_menu_description` VALUES ('72', '3', '', '');
INSERT INTO `huannn_menu_description` VALUES ('114', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('114', '3', '', '');
INSERT INTO `huannn_menu_description` VALUES ('115', '2', '', '');
INSERT INTO `huannn_menu_description` VALUES ('115', '3', '', '');

-- ----------------------------
-- Table structure for huannn_menu_group
-- ----------------------------
DROP TABLE IF EXISTS `huannn_menu_group`;
CREATE TABLE `huannn_menu_group` (
  `menu_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`menu_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_menu_group
-- ----------------------------
INSERT INTO `huannn_menu_group` VALUES ('2', '1');
INSERT INTO `huannn_menu_group` VALUES ('5', '0');
INSERT INTO `huannn_menu_group` VALUES ('6', '0');
INSERT INTO `huannn_menu_group` VALUES ('7', '0');

-- ----------------------------
-- Table structure for huannn_menu_group_description
-- ----------------------------
DROP TABLE IF EXISTS `huannn_menu_group_description`;
CREATE TABLE `huannn_menu_group_description` (
  `menu_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`menu_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_menu_group_description
-- ----------------------------
INSERT INTO `huannn_menu_group_description` VALUES ('2', '1', 'Main menu', 'description main menu');
INSERT INTO `huannn_menu_group_description` VALUES ('2', '2', 'Menu chính', 'mô tả menu chính');
INSERT INTO `huannn_menu_group_description` VALUES ('5', '2', 'Menu dưới slide trang chủ', '');
INSERT INTO `huannn_menu_group_description` VALUES ('6', '2', 'Menu hướng dẫn chân trang', '');
INSERT INTO `huannn_menu_group_description` VALUES ('7', '2', 'Liên Hệ', 'Liên Hệ');
INSERT INTO `huannn_menu_group_description` VALUES ('7', '3', 'Liên Hệ', 'Liên Hệ');

-- ----------------------------
-- Table structure for huannn_menu_type
-- ----------------------------
DROP TABLE IF EXISTS `huannn_menu_type`;
CREATE TABLE `huannn_menu_type` (
  `menu_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `route` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`menu_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of huannn_menu_type
-- ----------------------------
INSERT INTO `huannn_menu_type` VALUES ('1', 'Danh mục sản phẩm', 'cat_product', '0', '1', '2015-08-12 00:09:45', '2015-08-12 00:33:46');
INSERT INTO `huannn_menu_type` VALUES ('2', 'Sản phẩm', 'product', '1', '1', '2015-08-12 00:40:12', '2015-08-12 00:40:12');
INSERT INTO `huannn_menu_type` VALUES ('3', 'Danh mục tin tức', 'cat_news', '2', '1', '2015-08-12 00:40:29', '2015-08-12 00:40:29');
INSERT INTO `huannn_menu_type` VALUES ('4', 'Tin tức', 'news', '3', '1', '2015-08-12 00:40:50', '2015-08-12 00:40:50');
INSERT INTO `huannn_menu_type` VALUES ('5', 'Liên kết nội', 'internal', '4', '1', '2015-08-12 00:41:12', '2015-08-12 00:41:12');
INSERT INTO `huannn_menu_type` VALUES ('6', 'Liên kết ngoại', 'external', '5', '1', '2015-08-12 00:41:43', '2015-08-12 00:41:43');
INSERT INTO `huannn_menu_type` VALUES ('7', 'Thông tin & Chính sách', 'information', '6', '1', '2015-08-12 00:41:43', '2015-08-12 00:41:43');
INSERT INTO `huannn_menu_type` VALUES ('8', 'Hãng sản xuất', 'manufacturer', '7', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for huannn_modification
-- ----------------------------
DROP TABLE IF EXISTS `huannn_modification`;
CREATE TABLE `huannn_modification` (
  `modification_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`modification_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_modification
-- ----------------------------

-- ----------------------------
-- Table structure for huannn_module
-- ----------------------------
DROP TABLE IF EXISTS `huannn_module`;
CREATE TABLE `huannn_module` (
  `module_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_module
-- ----------------------------
INSERT INTO `huannn_module` VALUES ('47', 'Slide Home', 'responsiveslide', '{\"name\":\"Slide Home\",\"banner_id\":\"7\",\"width\":\"1170\",\"height\":\"380\",\"status\":\"1\"}');
INSERT INTO `huannn_module` VALUES ('63', 'Chăm sóc thân thể', 'product_by_category', '{\"name\":\"Ch\\u0103m s\\u00f3c th\\u00e2n th\\u1ec3\",\"category_id\":\"98\",\"limit\":\"3\",\"width\":\"200\",\"height\":\"200\",\"status\":\"1\",\"color\":\"#fbb04c\"}');
INSERT INTO `huannn_module` VALUES ('62', 'Chăm sóc da mặt', 'product_by_category', '{\"name\":\"Ch\\u0103m s\\u00f3c da m\\u1eb7t\",\"category_id\":\"91\",\"limit\":\"3\",\"width\":\"200\",\"height\":\"200\",\"status\":\"1\",\"color\":\"#a2dadb\"}');
INSERT INTO `huannn_module` VALUES ('57', 'banner trang sp', 'banner', '{\"name\":\"banner trang sp\",\"banner_id\":\"10\",\"width\":\"400\",\"height\":\"601\",\"status\":\"1\"}');
INSERT INTO `huannn_module` VALUES ('61', 'Chăm sóc tóc', 'product_by_category', '{\"name\":\"Ch\\u0103m s\\u00f3c t\\u00f3c\",\"category_id\":\"100\",\"limit\":\"3\",\"width\":\"200\",\"height\":\"200\",\"status\":\"1\",\"color\":\"#dca8c3\"}');
INSERT INTO `huannn_module` VALUES ('60', 'Tin tức', 'new_by_category', '{\"name\":\"Tin t\\u1ee9c\",\"category_id\":\"11\",\"limit\":\"10\",\"width\":\"200\",\"height\":\"200\",\"status\":\"1\"}');
INSERT INTO `huannn_module` VALUES ('65', 'Mỹ phẩm makeup', 'product_by_category', '{\"name\":\"M\\u1ef9 ph\\u1ea9m makeup\",\"category_id\":\"87\",\"limit\":\"3\",\"width\":\"200\",\"height\":\"200\",\"status\":\"1\",\"color\":\"#f5c5d1\"}');
INSERT INTO `huannn_module` VALUES ('67', 'Danh sách hãng sản xuất', 'manufacturer_featured', '{\"name\":\"Danh s\\u00e1ch h\\u00e3ng s\\u1ea3n xu\\u1ea5t\",\"manufacturer_name\":\"\",\"manufacturer\":[\"12\",\"14\",\"11\",\"13\",\"16\"],\"limit\":\"100\",\"width\":\"200\",\"height\":\"200\",\"status\":\"1\"}');
INSERT INTO `huannn_module` VALUES ('66', 'Sản phẩm bán chạy', 'featured', '{\"name\":\"S\\u1ea3n ph\\u1ea9m b\\u00e1n ch\\u1ea1y\",\"product_name\":\"\",\"product\":[\"102\",\"94\",\"103\",\"100\",\"101\",\"98\",\"99\",\"97\"],\"limit\":\"20\",\"width\":\"200\",\"height\":\"200\",\"status\":\"1\"}');
INSERT INTO `huannn_module` VALUES ('68', 'Sản phẩm liên quan', 'product_related', '{\"name\":\"S\\u1ea3n ph\\u1ea9m li\\u00ean quan\",\"limit\":\"2\",\"width\":\"200\",\"height\":\"200\",\"status\":\"1\"}');
INSERT INTO `huannn_module` VALUES ('69', 'Danh mục dưới slide', 'category_home', '{\"name\":\"Danh m\\u1ee5c d\\u01b0\\u1edbi slide\",\"new_category_name\":\"\",\"category_id\":[\"14\",\"15\",\"17\",\"18\"],\"status\":\"1\"}');
INSERT INTO `huannn_module` VALUES ('70', 'Danh mục dự án', 'category_duan', '{\"name\":\"Danh m\\u1ee5c d\\u1ef1 \\u00e1n\",\"new_category_name\":\"\",\"category_id\":[\"19\"],\"status\":\"1\"}');
INSERT INTO `huannn_module` VALUES ('71', 'Về Chúng tôi', 'category_introduce', '{\"name\":\"V\\u1ec1 Ch\\u00fang t\\u00f4i\",\"menu_id\":\"7\",\"new_introduce_id\":\"86\",\"new_produce_id\":\"87\",\"category_id\":\"20\",\"text_introduce\":\"CENTA l\\u00e0 c\\u00f4ng ty T\\u01b0 v\\u1ea5n Thi\\u1ebft k\\u1ebf, Thi c\\u00f4ng Ki\\u1ebfn tr\\u00fac &amp; N\\u1ed9i th\\u1ea5t chuy\\u00ean nghi\\u1ec7p. Ch\\u00fang t\\u00f4i h\\u01b0\\u1edbng \\u0111\\u1ebfn d\\u1ecbch v\\u1ee5 tr\\u1ecdn g\\u00f3i v\\u1ec1 T\\u01b0 v\\u1ea5n gi\\u1ea3i ph\\u00e1p Thi c\\u00f4ng ho\\u00e0n thi\\u1ec7n v\\u00e0 s\\u1ea3n xu\\u1ea5t \\u0111\\u1ed3 N\\u1ed9i th\\u1ea5t ch\\u1ea5t l\\u01b0\\u1ee3ng cao. CENTA cam k\\u1ebft v\\u1ec1 ch\\u1ea5t l\\u01b0\\u1ee3ng s\\u1ea3n ph\\u1ea9m t\\u1ed1t v\\u00e0 b\\u00e0n giao c\\u00f4ng tr\\u00ecnh \\u0111\\u00fang h\\u1eb9n.\",\"status\":\"1\"}');
INSERT INTO `huannn_module` VALUES ('72', 'Tin tức', 'category_news', '{\"name\":\"Tin t\\u1ee9c\",\"new_category_name\":\"\",\"category_left_id\":[\"17\",\"19\",\"14\",\"15\",\"18\",\"20\",\"13\",\"16\"],\"category_right_id\":\"21\",\"status\":\"1\"}');
INSERT INTO `huannn_module` VALUES ('73', 'Module footer', 'modules_footer', '{\"name\":\"Module footer\",\"text_footer_1\":\"C\\u00f4ng ty TNHH AC MI\\u1ec0N B\\u1eaeC | VPGD: S\\u1ed1 101 Kh\\u00e2m Thi\\u00ean, \\u0110\\u1ed1ng \\u0110a, H\\u00e0 N\\u1ed9i\",\"text_footer_2\":\"Mr Th\\u00e0nh: 094 468 3000 | thanh.centa@gmail.com Mr C\\u01b0\\u1eddng 0912 684 877 | cuong.centa@gmail.com\",\"text_footer_3\":\"\\u0110C: S\\u1ed1 14\\/76 Linh Lang, P. C\\u1ed1ng V\\u1ecb, Q. Ba \\u0110\\u00ecnh, HN. Gi\\u00e1m \\u0111\\u1ed1c: Nguy\\u1ec5n \\u0110\\u1ee9c Th\\u00e0nh. MST:\",\"text_footer_4\":\"0106806103 c\\u1ea5p b\\u1edfi S\\u1edf KH\\u0110T TP. H\\u00e0 N\\u1ed9i ng\\u00e0y 31\\/03\\/15 Sitemap | Ch\\u00ednh s\\u00e1ch b\\u1ea3o m\\u1eadt\",\"status\":\"1\"}');
INSERT INTO `huannn_module` VALUES ('74', 'Tìm đối tác', 'category_cate', '{\"name\":\"T\\u00ecm \\u0111\\u1ed1i t\\u00e1c\",\"category_id\":\"21\",\"status\":\"1\"}');
INSERT INTO `huannn_module` VALUES ('75', 'NHÂN SỰ CÔNG TY', 'user_home', '{\"name\":\"NH\\u00c2N S\\u1ef0 C\\u00d4NG TY\",\"user_id_1\":\"2\",\"user_id_2\":\"3\",\"user_id_3\":\"4\",\"text_introduce\":\"L\\u1eddi gi\\u1edbi thi\\u1ec7u\",\"status\":\"1\"}');

-- ----------------------------
-- Table structure for huannn_news
-- ----------------------------
DROP TABLE IF EXISTS `huannn_news`;
CREATE TABLE `huannn_news` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `viewed` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`news_id`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_news
-- ----------------------------
INSERT INTO `huannn_news` VALUES ('59', '', '0000-00-00', '1', '1', '1', '2016-11-02 22:29:48', '0000-00-00 00:00:00');
INSERT INTO `huannn_news` VALUES ('60', '', '0000-00-00', '1', '1', '0', '2016-11-02 22:30:02', '0000-00-00 00:00:00');
INSERT INTO `huannn_news` VALUES ('61', '', '0000-00-00', '1', '1', '0', '2016-11-02 22:30:16', '0000-00-00 00:00:00');
INSERT INTO `huannn_news` VALUES ('62', '', '0000-00-00', '1', '1', '2', '2016-11-02 22:30:53', '0000-00-00 00:00:00');
INSERT INTO `huannn_news` VALUES ('63', '', '0000-00-00', '1', '1', '0', '2016-11-02 22:31:23', '0000-00-00 00:00:00');
INSERT INTO `huannn_news` VALUES ('64', '', '0000-00-00', '1', '1', '2', '2016-11-02 22:31:41', '0000-00-00 00:00:00');
INSERT INTO `huannn_news` VALUES ('65', '', '0000-00-00', '1', '1', '0', '2016-12-17 14:39:11', '2018-09-20 23:38:19');
INSERT INTO `huannn_news` VALUES ('66', 'catalog/ban-muon-thiet-ke-vu-truong-quan-bar-dep-3-121x71.jpg', '0000-00-00', '1', '1', '4', '2016-12-17 14:39:33', '2018-09-20 23:46:12');
INSERT INTO `huannn_news` VALUES ('67', '', '0000-00-00', '1', '1', '2', '2016-12-17 14:39:54', '2018-09-20 23:34:39');
INSERT INTO `huannn_news` VALUES ('68', '', '0000-00-00', '1', '1', '0', '2016-12-17 14:40:17', '0000-00-00 00:00:00');
INSERT INTO `huannn_news` VALUES ('69', 'catalog/Khong-gian-phong-khach-chung-cu-cao-cap.jpg', '0000-00-00', '1', '1', '0', '2016-12-17 17:39:46', '2016-12-18 18:21:37');
INSERT INTO `huannn_news` VALUES ('70', 'catalog/Khong-gian-phong-khach.jpg', '0000-00-00', '1', '1', '0', '2016-12-17 17:40:05', '2016-12-18 18:21:29');
INSERT INTO `huannn_news` VALUES ('71', 'catalog/Khong-gian.jpg', '0000-00-00', '1', '1', '0', '2016-12-17 17:40:23', '2016-12-18 18:21:19');
INSERT INTO `huannn_news` VALUES ('72', 'catalog/phoi-canh-san-vuon-3d-nha-mau-biet-thu-pandora.jpg', '0000-00-00', '1', '1', '0', '2016-12-17 17:41:40', '2016-12-18 18:21:10');
INSERT INTO `huannn_news` VALUES ('73', 'catalog/Khong-gian-phong-khach.jpg', '0000-00-00', '1', '1', '0', '2016-12-17 17:44:03', '2016-12-18 18:21:01');
INSERT INTO `huannn_news` VALUES ('74', 'catalog/Khong-gian-phong-khach.jpg', '0000-00-00', '1', '1', '0', '2016-12-17 17:44:23', '2016-12-18 18:19:54');
INSERT INTO `huannn_news` VALUES ('75', 'catalog/Khong-gian.jpg', '0000-00-00', '1', '1', '0', '2016-12-17 17:44:44', '2016-12-18 18:20:31');
INSERT INTO `huannn_news` VALUES ('76', 'catalog/phoi-canh-san-vuon-3d-nha-mau-biet-thu-pandora.jpg', '0000-00-00', '1', '1', '0', '2016-12-17 17:45:06', '2016-12-18 18:20:39');
INSERT INTO `huannn_news` VALUES ('77', 'catalog/Khong-gian.jpg', '0000-00-00', '1', '1', '19', '2016-12-17 18:14:27', '2016-12-18 18:20:48');
INSERT INTO `huannn_news` VALUES ('78', 'catalog/thiet-ke-noi-that-van-phong-chuyen-nghiep-cot-loi-lam-nen-su-phat-trien-cua-doanh-nghiep-1-121x71.jpg', '0000-00-00', '1', '1', '0', '2016-12-17 19:44:56', '2018-09-20 23:47:30');
INSERT INTO `huannn_news` VALUES ('79', '', '0000-00-00', '1', '1', '0', '2016-12-17 19:45:18', '2016-12-17 23:52:33');
INSERT INTO `huannn_news` VALUES ('80', '', '0000-00-00', '1', '1', '0', '2016-12-17 19:45:34', '0000-00-00 00:00:00');
INSERT INTO `huannn_news` VALUES ('81', '', '0000-00-00', '1', '1', '0', '2016-12-17 19:46:04', '0000-00-00 00:00:00');
INSERT INTO `huannn_news` VALUES ('82', '', '0000-00-00', '1', '1', '0', '2016-12-17 19:46:25', '0000-00-00 00:00:00');
INSERT INTO `huannn_news` VALUES ('83', '', '0000-00-00', '1', '1', '0', '2016-12-17 19:46:42', '2016-12-17 22:42:57');
INSERT INTO `huannn_news` VALUES ('84', '', '0000-00-00', '1', '1', '0', '2016-12-17 19:46:57', '0000-00-00 00:00:00');
INSERT INTO `huannn_news` VALUES ('85', '', '0000-00-00', '1', '1', '0', '2016-12-17 19:47:13', '0000-00-00 00:00:00');
INSERT INTO `huannn_news` VALUES ('86', 'catalog/gioithieu.jpg', '0000-00-00', '1', '1', '0', '2016-12-17 19:48:23', '0000-00-00 00:00:00');
INSERT INTO `huannn_news` VALUES ('87', '', '0000-00-00', '1', '1', '1', '2016-12-17 19:48:50', '2016-12-17 21:57:55');
INSERT INTO `huannn_news` VALUES ('88', 'catalog/Khong-gian-phong-khach-chung-cu-cao-cap.jpg', '0000-00-00', '1', '1', '0', '2016-12-18 00:03:59', '2016-12-18 15:42:28');
INSERT INTO `huannn_news` VALUES ('89', 'catalog/Khong-gian-phong-khach-chung-cu-cao-cap.jpg', '0000-00-00', '1', '1', '0', '2016-12-18 00:04:15', '2016-12-18 15:23:06');
INSERT INTO `huannn_news` VALUES ('90', '', '0000-00-00', '1', '1', '0', '2016-12-18 00:04:29', '0000-00-00 00:00:00');
INSERT INTO `huannn_news` VALUES ('91', '', '0000-00-00', '1', '1', '0', '2016-12-18 00:04:46', '0000-00-00 00:00:00');
INSERT INTO `huannn_news` VALUES ('92', '', '0000-00-00', '1', '1', '0', '2016-12-18 19:44:39', '2018-09-20 23:33:28');
INSERT INTO `huannn_news` VALUES ('93', '', '0000-00-00', '1', '1', '1', '2016-12-18 19:45:16', '2018-09-20 23:36:31');
INSERT INTO `huannn_news` VALUES ('94', '', '0000-00-00', '1', '1', '0', '2016-12-18 19:45:38', '0000-00-00 00:00:00');
INSERT INTO `huannn_news` VALUES ('95', '', '0000-00-00', '1', '1', '0', '2016-12-18 19:46:03', '0000-00-00 00:00:00');
INSERT INTO `huannn_news` VALUES ('96', '', '0000-00-00', '1', '1', '0', '2016-12-18 19:46:42', '2018-09-20 23:37:21');
INSERT INTO `huannn_news` VALUES ('97', '', '0000-00-00', '1', '1', '0', '2016-12-18 19:47:09', '0000-00-00 00:00:00');
INSERT INTO `huannn_news` VALUES ('98', '', '0000-00-00', '1', '1', '0', '2016-12-18 19:47:28', '2018-09-20 23:41:39');
INSERT INTO `huannn_news` VALUES ('99', '', '0000-00-00', '1', '1', '0', '2016-12-18 19:47:52', '0000-00-00 00:00:00');
INSERT INTO `huannn_news` VALUES ('100', '', '0000-00-00', '1', '1', '0', '2016-12-18 19:48:15', '2018-09-20 23:40:13');

-- ----------------------------
-- Table structure for huannn_newsletters
-- ----------------------------
DROP TABLE IF EXISTS `huannn_newsletters`;
CREATE TABLE `huannn_newsletters` (
  `newsletters_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(64) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`newsletters_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_newsletters
-- ----------------------------

-- ----------------------------
-- Table structure for huannn_news_description
-- ----------------------------
DROP TABLE IF EXISTS `huannn_news_description`;
CREATE TABLE `huannn_news_description` (
  `news_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`news_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_news_description
-- ----------------------------
INSERT INTO `huannn_news_description` VALUES ('59', '2', 'Phương thức thanh toán', '', '', 'Phương thức thanh toán', 'CENTA chuyên tư vấn thiết kế kiến trúc biệt thự đẹp theo phong cách hiện đại thể hiện sự đẳng cấp của gia...', '');
INSERT INTO `huannn_news_description` VALUES ('60', '2', 'Hình thức giao nhận', '', '', 'Hình thức giao nhận', 'CENTA chuyên tư vấn thiết kế kiến trúc biệt thự đẹp theo phong cách hiện đại thể hiện sự đẳng cấp của gia...', '');
INSERT INTO `huannn_news_description` VALUES ('61', '2', 'Điều khoản sử dụng', '', '', 'Điều khoản sử dụng', 'CENTA chuyên tư vấn thiết kế kiến trúc biệt thự đẹp theo phong cách hiện đại thể hiện sự đẳng cấp của gia...', '');
INSERT INTO `huannn_news_description` VALUES ('62', '2', 'Chính sách bảo mật thông tin', '', '', 'Chính sách bảo mật thông tin', 'CENTA chuyên tư vấn thiết kế kiến trúc biệt thự đẹp theo phong cách hiện đại thể hiện sự đẳng cấp của gia...', '');
INSERT INTO `huannn_news_description` VALUES ('63', '2', 'Chính sách đổi trả hàng và hoàn tiền', '', '', 'Chính sách đổi trả hàng và hoàn tiền', 'CENTA chuyên tư vấn thiết kế kiến trúc biệt thự đẹp theo phong cách hiện đại thể hiện sự đẳng cấp của gia...', '');
INSERT INTO `huannn_news_description` VALUES ('64', '2', 'Chính sách bảo hành', '', '', 'Chính sách bảo hành', 'CENTA chuyên tư vấn thiết kế kiến trúc biệt thự đẹp theo phong cách hiện đại thể hiện sự đẳng cấp của gia...', '');
INSERT INTO `huannn_news_description` VALUES ('68', '2', 'Thiết kế nội thất tân cổ điển', '', '', 'Thiết kế nội thất tân cổ điển', 'CENTA chuyên tư vấn thiết kế kiến trúc biệt thự đẹp theo phong cách hiện đại thể hiện sự đẳng cấp của gia...', '');
INSERT INTO `huannn_news_description` VALUES ('68', '3', 'Thiết kế nội thất tân cổ điển', '', '', 'Thiết kế nội thất tân cổ điển', 'CENTA chuyên tư vấn thiết kế kiến trúc biệt thự đẹp theo phong cách hiện đại thể hiện sự đẳng cấp của gia...', '');
INSERT INTO `huannn_news_description` VALUES ('69', '3', 'Thiết kế nội thất biệt thự Pháp tại Mỹ Đình - Hà Nội', '', '', 'Thiết kế nội thất biệt thự Pháp tại Mỹ Đình - Hà Nội', 'CENTA chuyên tư vấn thiết kế kiến trúc biệt thự đẹp theo phong cách hiện đại thể hiện sự đẳng cấp của gia...', '');
INSERT INTO `huannn_news_description` VALUES ('70', '3', 'Thiết kế nội thất biệt thự Pháp tại Mỹ Đình - Hà Nội', '', '', 'Thiết kế nội thất biệt thự Pháp tại Mỹ Đình - Hà Nội', 'CENTA chuyên tư vấn thiết kế kiến trúc biệt thự đẹp theo phong cách hiện đại thể hiện sự đẳng cấp của gia...', '');
INSERT INTO `huannn_news_description` VALUES ('71', '3', 'Thiết kế nội thất biệt thự Pháp tại Mỹ Đình - Hà Nội', '', '', 'Thiết kế nội thất biệt thự Pháp tại Mỹ Đình - Hà Nội', 'CENTA chuyên tư vấn thiết kế kiến trúc biệt thự đẹp theo phong cách hiện đại thể hiện sự đẳng cấp của gia...', '');
INSERT INTO `huannn_news_description` VALUES ('79', '3', 'Kiến trúc sư có kinh nghiệm', '', '', 'Kiến trúc sư có kinh nghiệm', 'CENTA chuyên tư vấn thiết kế kiến trúc biệt thự đẹp theo phong cách hiện đại thể hiện sự đẳng cấp của gia...', '');
INSERT INTO `huannn_news_description` VALUES ('80', '2', 'Làm việc có quy trình', '', '', 'Làm việc có quy trình', 'CENTA chuyên tư vấn thiết kế kiến trúc biệt thự đẹp theo phong cách hiện đại thể hiện sự đẳng cấp của gia...', '');
INSERT INTO `huannn_news_description` VALUES ('80', '3', 'Làm việc có quy trình', '', '', 'Làm việc có quy trình', 'CENTA chuyên tư vấn thiết kế kiến trúc biệt thự đẹp theo phong cách hiện đại thể hiện sự đẳng cấp của gia...', '');
INSERT INTO `huannn_news_description` VALUES ('81', '2', 'Tư vấn tốt', '', '', 'Tư vấn tốt', 'CENTA chuyên tư vấn thiết kế kiến trúc biệt thự đẹp theo phong cách hiện đại thể hiện sự đẳng cấp của gia...', 'Tư vấn tốt');
INSERT INTO `huannn_news_description` VALUES ('81', '3', 'Tư vấn tốt', '', '', 'Tư vấn tốt', 'CENTA chuyên tư vấn thiết kế kiến trúc biệt thự đẹp theo phong cách hiện đại thể hiện sự đẳng cấp của gia...', '');
INSERT INTO `huannn_news_description` VALUES ('82', '2', 'Biết lắng nghe khách hàng', '', '', 'Biết lắng nghe khách hàng', 'CENTA chuyên tư vấn thiết kế kiến trúc biệt thự đẹp theo phong cách hiện đại thể hiện sự đẳng cấp của gia...', '');
INSERT INTO `huannn_news_description` VALUES ('82', '3', 'Biết lắng nghe khách hàng', '', '', 'Biết lắng nghe khách hàng', 'CENTA chuyên tư vấn thiết kế kiến trúc biệt thự đẹp theo phong cách hiện đại thể hiện sự đẳng cấp của gia...', '');
INSERT INTO `huannn_news_description` VALUES ('83', '3', 'Kiến trúc sư có kinh nghiệm', '', '', 'Kiến trúc sư có kinh nghiệm', 'CENTA chuyên tư vấn thiết kế kiến trúc biệt thự đẹp theo phong cách hiện đại thể hiện sự đẳng cấp của gia...', '');
INSERT INTO `huannn_news_description` VALUES ('83', '2', 'Kiến trúc sư có kinh nghiệm', '', '', 'Kiến trúc sư có kinh nghiệm', 'CENTA chuyên tư vấn thiết kế kiến trúc biệt thự đẹp theo phong cách hiện đại thể hiện sự đẳng cấp của gia...', '');
INSERT INTO `huannn_news_description` VALUES ('84', '2', 'Làm việc có quy trình', '', '', 'Làm việc có quy trình', 'CENTA chuyên tư vấn thiết kế kiến trúc biệt thự đẹp theo phong cách hiện đại thể hiện sự đẳng cấp của gia...', '');
INSERT INTO `huannn_news_description` VALUES ('84', '3', 'Làm việc có quy trình', '', '', 'Làm việc có quy trình', 'CENTA chuyên tư vấn thiết kế kiến trúc biệt thự đẹp theo phong cách hiện đại thể hiện sự đẳng cấp của gia...', '');
INSERT INTO `huannn_news_description` VALUES ('85', '2', 'Tư vấn tốt', '', '', 'Tư vấn tốt', 'CENTA chuyên tư vấn thiết kế kiến trúc biệt thự đẹp theo phong cách hiện đại thể hiện sự đẳng cấp của gia...', '');
INSERT INTO `huannn_news_description` VALUES ('85', '3', 'Tư vấn tốt', '', '', 'Tư vấn tốt', 'CENTA chuyên tư vấn thiết kế kiến trúc biệt thự đẹp theo phong cách hiện đại thể hiện sự đẳng cấp của gia...', '');
INSERT INTO `huannn_news_description` VALUES ('86', '2', 'Giới thiệu', '', '', 'Giới thiệu', 'CENTA là nơi dành cho các Kiến trúc sư, các Nhà thiết kế, các Kỹ sư thể hiện chuyên môn và tài năng của mình trong tất cả các khâu từ sáng tạo.', '');
INSERT INTO `huannn_news_description` VALUES ('86', '3', 'Giới thiệu', '', '', 'Giới thiệu', 'CENTA là nơi dành cho các Kiến trúc sư, các Nhà thiết kế, các Kỹ sư thể hiện chuyên môn và tài năng của mình trong tất cả các khâu từ sáng tạo.', '');
INSERT INTO `huannn_news_description` VALUES ('87', '3', 'Xưởng sản xuất', '', '', 'Xưởng sản xuất', 'Với hệ thống máy móc hiện đại và quy trình quản lý chất lượng tốt, CENTA xin cam kết về chất lượng Sản phẩm tốt nhất cho Khách hàng', '');
INSERT INTO `huannn_news_description` VALUES ('87', '2', 'Xưởng sản xuất', '', '', 'Xưởng sản xuất', 'CENTA chuyên tư vấn thiết kế kiến trúc biệt thự đẹp theo phong cách hiện đại thể hiện sự đẳng cấp của gia...', '');
INSERT INTO `huannn_news_description` VALUES ('65', '3', 'Thiết kế lâu đài', '', '', 'Thiết kế lâu đài', 'CENTA chuyên tư vấn thiết kế kiến trúc biệt thự đẹp theo phong cách hiện đại thể hiện sự đẳng cấp của gia...', '');
INSERT INTO `huannn_news_description` VALUES ('65', '2', 'Thiết kế nội thất và những điều cần biết', '&lt;p style=&quot;text-align:justify&quot;&gt;&lt;a href=&quot;https://www.actmienbac.vn/&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: windowtext; text-decoration-line: none;&quot;&gt;&lt;strong&gt;Thiết kế nội thất&lt;/strong&gt;&lt;/a&gt;&amp;nbsp;có rất nhiều phong cách, mỗi phong cách sẽ có một đặc trưng; bản chất và xu hướng riêng, nhưng tất cả đều hướng đến mục đích chung nhất là tạo nên tính thẩm mỹ hoàn hảo cho không gian sống, làm việc, vui chơi giải trí. Nếu ví đôi mắt là cửa sổ tâm hồn thì nội thất là trái tim; là linh hồn của một khu vực công năng; tiện nghi nói chung. Chính vì thế, chúng ta cần phải biết cách&amp;nbsp;&lt;a href=&quot;https://www.actmienbac.vn/thiet-ke-noi-that-va-nhung-dieu-can-biet.html#&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: windowtext; text-decoration-line: none;&quot;&gt;thiết kế nội thất&lt;/a&gt;&amp;nbsp;đẹp để tạo nên sự hấp dẫn, nét hiện đại và sang trọng; thân thiện cho tổng thể không gian bên trong công trình bất kỳ nào. Để làm được điều này chúng ta cần dung hòa, phối hợp “ăn ý” rất nhiều yếu tố như ánh sáng, màu sắc, đồ nội thất,…&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:center&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;https://www.actmienbac.vn/huannn-image/catalog/Thiet%20Ke%20Noi%20That/thiet-ke-noi-that-va-nhung-dieu-can-biet.jpg&quot; style=&quot;border:0px; box-sizing:border-box; display:block; height:auto; margin:15px auto; max-width:100%; vertical-align:middle; width:750px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:center&quot;&gt;&lt;span style=&quot;font-size:12px&quot;&gt;&lt;em&gt;&lt;a href=&quot;https://www.actmienbac.vn/thiet-ke-noi-that-va-nhung-dieu-can-biet.html#&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: windowtext; text-decoration-line: none;&quot;&gt;Thiết kế nội thất&lt;/a&gt;&amp;nbsp;tạo ra tính thẩm mỹ hoàn hảo cho không gian sống&lt;/em&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;&lt;span style=&quot;font-size:16px&quot;&gt;&lt;strong&gt;&lt;a href=&quot;https://www.actmienbac.vn/thiet-ke-noi-that-va-nhung-dieu-can-biet.html#&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: windowtext; text-decoration-line: none;&quot;&gt;Thiết kế nội thất là gì&lt;/a&gt;? Tầm quan trọng của&amp;nbsp;&lt;a href=&quot;https://www.actmienbac.vn/thiet-ke-noi-that-va-nhung-dieu-can-biet.html#&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: windowtext; text-decoration-line: none;&quot;&gt;thiết kế nội thất&lt;/a&gt;?&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;Là công việc mang tính khoa học và nghệ thuật, nao gồm cách tổ chức không gian bên trong một ngôi nhà, phòng làm việc, showroom, nhà hàng,…&amp;nbsp;&lt;em&gt;&lt;strong&gt;&lt;a href=&quot;https://www.actmienbac.vn/thiet-ke-noi-that-va-nhung-dieu-can-biet.html#&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: windowtext; text-decoration-line: none;&quot;&gt;thiết kế nội thất&lt;/a&gt;&amp;nbsp;độc đáo&lt;/strong&gt;&lt;/em&gt;&amp;nbsp;giúp gia chủ hoặc khách hàng có những trải nghiệm tuyệt vời nhất trong không gian ấy. Phong cách thiết kế hiện đại và sự chỉnh chu trong việc bài trí; sắp xếp nội thất hợp lý, bố cục cân xứng nhằm thỏa mãn các yêu cầu cơ bản về thẩm mỹ, tính bền vững bền theo thời gian,… Với các giải pháp thiết kế khác nhau, sự sáng tạo cho không gian công trình với mục đích không chỉ đẹp mà phải thân thiện, gần gũi và tạo được cái nhìn thiện cảm với những người đối diện luôn đem lại nhiều giá trị tốt cho chất lượng cuộc sống hoặc giúp doanh nghiệp phát triển lên tầm cao mới.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;&lt;a href=&quot;https://www.actmienbac.vn/thiet-ke-noi-that&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: windowtext; text-decoration-line: none;&quot;&gt;&lt;strong&gt;Thiết kế thi công nội thất&lt;/strong&gt;&lt;/a&gt;&amp;nbsp;đẹp, độc đáo và ấn tượng luôn tạo nên nhiều lợi ích, không những mang đến nguồn sức khỏe và tâm lý tốt cho gia chủ mà song song với đó sẽ là tạo thiện cảm; thu hút sự chú ý và quan tâm của khách hàng nếu công trình đó là nhà hàng, bar cà phê,…&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:center&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;https://www.actmienbac.vn/huannn-image/catalog/Thiet%20Ke%20Noi%20That/thiet-ke-noi-that-va-nhung-dieu-can-biet-1.jpg&quot; style=&quot;border:0px; box-sizing:border-box; display:block; height:auto; margin:15px auto; max-width:100%; vertical-align:middle; width:750px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:center&quot;&gt;&lt;span style=&quot;font-size:12px&quot;&gt;&lt;em&gt;Không gian nội thất không chỉ đẹp mà còn thân thiện&lt;/em&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;&lt;span style=&quot;font-size:16px&quot;&gt;&lt;strong&gt;Các yếu tố trong&amp;nbsp;&lt;a href=&quot;https://www.actmienbac.vn/thiet-ke-noi-that-va-nhung-dieu-can-biet.html#&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: windowtext; text-decoration-line: none;&quot;&gt;thiết kế nội thất&lt;/a&gt;&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;&lt;a href=&quot;https://www.actmienbac.vn/thiet-ke-noi-that-va-nhung-dieu-can-biet.html#&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: windowtext; text-decoration-line: none;&quot;&gt;Thiết kế nội thất&lt;/a&gt;&amp;nbsp;có rất nhiều dạng:&amp;nbsp;&lt;a href=&quot;https://www.actmienbac.vn/van-phong&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: windowtext; text-decoration-line: none;&quot;&gt;&lt;strong&gt;thiết kế nội thất văn phòng&lt;/strong&gt;&lt;/a&gt;,&amp;nbsp;&lt;a href=&quot;https://www.actmienbac.vn/showroom&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: windowtext; text-decoration-line: none;&quot;&gt;&lt;strong&gt;thiết kế nội thất showroom&lt;/strong&gt;&lt;/a&gt;. Được cấu thành từ những yếu tố: màu sắc, đồ nội thất, các vật dụng trang trí,… chính vì thế tất cả chúng cần phải kết hợp hài hòa với nhau nhằm mục đích mang lại vẻ đẹp và tính hiệu quả cho từng không gian công trình. Quá trình tư vấn&amp;nbsp;&lt;a href=&quot;https://www.actmienbac.vn/thiet-ke-noi-that-va-nhung-dieu-can-biet.html#&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: windowtext; text-decoration-line: none;&quot;&gt;thiết kế nội thất&lt;/a&gt;&amp;nbsp;sẽ thể hiện được tính sáng tạo, chuyên nghiệp và trình độ làm việc của kiến trúc sư bởi tất cả các công việc từ lựa chọn màu sắc, sắp xếp và bố trí nội thất đều cần có sự tỉ mỉ, kỹ lưỡng và con mắt thẩm mỹ, khối ốc “chế tác” điêu luyện.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:center&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;https://www.actmienbac.vn/huannn-image/catalog/Thiet%20Ke%20Noi%20That/thiet-ke-noi-that-va-nhung-dieu-can-biet-3.jpg&quot; style=&quot;border:0px; box-sizing:border-box; display:block; height:auto; margin:15px auto; max-width:100%; vertical-align:middle; width:750px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:center&quot;&gt;&lt;span style=&quot;font-size:12px&quot;&gt;&lt;em&gt;Chọn màu sắc, sắp xếp và bố trí nội thất tỉ mỉ&lt;/em&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;Mỗi không gian, mỗi công trình khác nhau sẽ có phương án thiết kế riêng, do đó sự linh hoạt và sáng tạo là rất cần thiết để làm nên vẻ đẹp hoàn hảo cho từng khu vực công năng. Thực tế đã chúng minh rằng nếu không có&amp;nbsp;thiết kế&amp;nbsp;sẽ không tạo ra sự hoàn mỹ cho toàn bộ kiến trúc. ACT Miền Bắc là&amp;nbsp;&lt;a href=&quot;https://www.actmienbac.vn/cong-ty-thiet-ke-noi-that-chuyen-nghiep.html&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: windowtext; text-decoration-line: none;&quot;&gt;&lt;strong&gt;công ty thiết kế nội thất chuyên nghiệp&lt;/strong&gt;&lt;/a&gt;; uy tín tại Hà Nội, với chất lượng dịch vụ tốt, giá cả cạnh tranh và luôn đưa ra các phương án thiết kế rất sáng tạo, chắc chắn mọi khách hàng sẽ rất hài lòng khi đã tin tưởng và lựa chọn sử dụng dịch vụ của ACT Miền Bắc.&lt;/p&gt;\r\n', '', 'Thiết kế lâu đài', 'CENTA chuyên tư vấn thiết kế kiến trúc biệt thự đẹp theo phong cách hiện đại thể hiện sự đẳng cấp của gia...', '');
INSERT INTO `huannn_news_description` VALUES ('66', '3', 'Thiết kế biệt thự', '', '', 'Thiết kế biệt thự', 'CENTA chuyên tư vấn thiết kế kiến trúc biệt thự đẹp theo phong cách hiện đại thể hiện sự đẳng cấp của gia...', '');
INSERT INTO `huannn_news_description` VALUES ('66', '2', '3 Yếu tố quan trọng làm nên nét sang trọng, thân thiện của phương án thiết kế văn phòng đẹp', '&lt;h1&gt;Thiết kế kiến trúc nội thất đẹp và những lợi ích đạt được&lt;/h1&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;&lt;a href=&quot;https://www.actmienbac.vn/thiet-ke-kien-truc&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: windowtext; text-decoration-line: none;&quot;&gt;&lt;strong&gt;Thiết kế kiến trúc nội thất&lt;/strong&gt;&lt;/a&gt;&amp;nbsp;là phần công việc được thực hiện sau khi đã hoàn thành xong phần kiến trúcngoại thất và cảnh quan công trình, đây là công đoạn khá quan trọng để làm nên sự hoàn mỹ cho tổng thể một công năng bất kỳ nào đó. Sự hoàn hảo của một không gian công trình từ nhà ở đến văn phòng làm việc, nhà hàng, showroom,… đều cần phải được kết hợp hài hòa rất nhiều yếu tố như: màu sắc; ánh sáng; chất liệu nội thất; cách bài trí; xếp đặt, như thế mới đảm bảo được tính thẩm mỹ.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:center&quot;&gt;&lt;img alt=&quot;thiet-ke-kien-truc-noi-that-dep-va-nhung-loi-ich-dat-duoc&quot; src=&quot;https://www.actmienbac.vn/huannn-image/catalog/Thiet%20Ke%20Kien%20Truc/thiet-ke-kien-truc-noi-that-dep-va-nhung-loi-ich-dat-duoc.jpg&quot; style=&quot;border:0px; box-sizing:border-box; display:block; height:auto; margin:15px auto; max-width:100%; vertical-align:middle; width:750px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:center&quot;&gt;&lt;em&gt;&lt;span style=&quot;font-size:12px&quot;&gt;Thiết kế kiến trúc nội thất rất quan trọng&lt;/span&gt;&lt;/em&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;&lt;span style=&quot;font-size:16px&quot;&gt;&lt;strong&gt;Tại sao cần phải thiết kế kiến trúc nội thất đẹp?&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;&lt;a href=&quot;https://www.actmienbac.vn/&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: windowtext; text-decoration-line: none;&quot;&gt;&lt;strong&gt;Thiết kế kiến trúc nội thất đẹp&lt;/strong&gt;&lt;/a&gt;&amp;nbsp;thật sự rất cần thiết, bởi lẽ bất kỳ công trình nào cũng cần phải đảm bảo sự tinh tế, hiện đại và sang trọng cho không gian bên trong nó. Không những thế, nội thất trang nhã; bài trí sinh động và hấp dẫn sẽ làm xao xuyến, rung động tim người đối diện, hoặc gây kích thích; tò mò nếu công trình của bạn là nơi dành cho kinh doanh, buôn bán hay trưng bày sản phẩm.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;Sự chỉnh chu trong cách&amp;nbsp;&lt;a href=&quot;https://www.actmienbac.vn/thiet-ke-noi-that&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: windowtext; text-decoration-line: none;&quot;&gt;&lt;strong&gt;thiết kế nội thất&lt;/strong&gt;&lt;/a&gt;, bài trí có tính trật tự khoa học, bố cục hài hòa và cân xứng với tất cả các yếu tố có trong không gian, tất cả sẽ tạo nên vẻ đẹp hoàn mỹ, chinh phục và “đốn ngã” hàng vạn con tim. Việc sắp xếp đồ đạc, nội thất hợp lý đem đến sự gọn gàng; ngăn nắp và tăng tính tiện lợi; thuận tiện. Nếu được tính toán ngay từ lúc khởi đầu, chúng ta có thể tận dụng được tối đa diện tích và đưa ra được mức chi phí hợp lý nhất cho việc thiết kế ngay từ ban đầu.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:center&quot;&gt;&lt;img alt=&quot;thiet-ke-kien-truc-noi-that-dep-va-nhung-loi-ich-dat-duoc-1&quot; src=&quot;https://www.actmienbac.vn/huannn-image/catalog/Thiet%20Ke%20Kien%20Truc/thiet-ke-kien-truc-noi-that-dep-va-nhung-loi-ich-dat-duoc-1.jpg&quot; style=&quot;border:0px; box-sizing:border-box; display:block; height:auto; margin:15px auto; max-width:100%; vertical-align:middle; width:750px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:center&quot;&gt;&lt;span style=&quot;font-size:12px&quot;&gt;&lt;em&gt;Cách bài trí nội thất hiện đại&lt;/em&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;&lt;span style=&quot;font-size:16px&quot;&gt;&lt;strong&gt;Vì sao cần phải thuê một đơn vị thiết kế nội thất chuyên nghiệp?&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;&lt;strong&gt;&lt;a href=&quot;https://www.actmienbac.vn/&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: windowtext; text-decoration-line: none;&quot;&gt;Tư vấn thiết kế kiến trúc nội thất&lt;/a&gt;&amp;nbsp;&lt;/strong&gt;&amp;nbsp;là cả một quá trình kỳ công, không chỉ đơn thuần là lên phương án sắp xếp không gian hợp lý, mà còn cần phải đảm bảo sự hài hòa về mặt thẩm mỹ của rất nhiều yếu tố. Do đó việc lựa chọn một nhà thầu, đơn vị thiết kế xây dựng uy tín là rất cần thiết bởi các kiến trúc sư sẽ thay thế bạn làm nên vẻ đẹp thật hoàn mỹ và đáp ứng mọi yêu cầu của bạn.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;Một công trình đẹp cần được tư vấn, chọn&amp;nbsp;&lt;em&gt;&lt;strong&gt;phong cách thiết kế nội thất&lt;/strong&gt;&lt;/em&gt;&amp;nbsp;phù hợp, với vô vàn các mẫu thiết kế đa dạng trên thị trường hiện nay, các kiến trúc sư của nhà thầu sẽ giúp bạn lựa chọn được ý tưởng, phong cách thiết kế nội thất phù hợp với niềm mong mỏi và khát khao của bạn. Một&amp;nbsp;&lt;em&gt;&lt;strong&gt;đơn vị thiết kế nội thất chuyên nghiệp&lt;/strong&gt;&lt;/em&gt;sẽ nhanh chóng nắm bắt được nhu cầu, mong muốn của bạn và thể hiện chính xác chúng ngay trên mẫu thiết kế, điều này sẽ giúp bạn tiết kiệm được thời gian; tiền bạc và công sức.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:center&quot;&gt;&lt;img alt=&quot;thiet-ke-kien-truc-noi-that-dep-va-nhung-loi-ich-dat-duoc-2&quot; src=&quot;https://www.actmienbac.vn/huannn-image/catalog/Thiet%20Ke%20Kien%20Truc/thiet-ke-kien-truc-noi-that-dep-va-nhung-loi-ich-dat-duoc-2.jpg&quot; style=&quot;border:0px; box-sizing:border-box; display:block; height:auto; margin:15px auto; max-width:100%; vertical-align:middle; width:750px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:center&quot;&gt;&lt;span style=&quot;font-size:12px&quot;&gt;&lt;em&gt;Phong cách thiết kế nội thất chuyên nghiệp&lt;/em&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;Là&amp;nbsp;&lt;a href=&quot;https://www.actmienbac.vn/lua-chon-cong-ty-thiet-ke-noi-that-uy-tin-tai-ha-noi.html&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: windowtext; text-decoration-line: none;&quot;&gt;&lt;strong&gt;công ty thiết kế nội thất tại Hà Nội&lt;/strong&gt;&lt;/a&gt;, ACT Miền Bắc với nhiều năm kinh nghiệm, đội ngũ nhân viên làm việc nhiệt tình; hăng hái và đam mê sẽ mang đến cho quý khách hàng những giải pháp&amp;nbsp;&lt;em&gt;&lt;strong&gt;thiết kế kiến trúc nội thất hiện đại&lt;/strong&gt;&lt;/em&gt;&amp;nbsp;phù hợp với yêu cầu, độc đáo nhất. Bằng sự nỗ lực, khẳng định chất lượng dịch vụ và thái độ phục vụ, phong cách thiết kế riêng biệt và đa dạng; giúp hiện thực hóa các ý tưởng thiết kế sáng tạo, ACT Miền Bắc cam kết sẽ đem lại cho tất cả các khách hàng sự trải nghiệm thú vị nhất từ những việc nhỏ nhất.&lt;/p&gt;\r\n', '', 'Thiết kế biệt thự', 'CENTA chuyên tư vấn thiết kế kiến trúc biệt thự đẹp theo phong cách hiện đại thể hiện sự đẳng cấp của gia...', '');
INSERT INTO `huannn_news_description` VALUES ('67', '3', 'Thiết kế nội thất cổ điển', '', '', 'Thiết kế nội thất cổ điển', 'CENTA chuyên tư vấn thiết kế kiến trúc biệt thự đẹp theo phong cách hiện đại thể hiện sự đẳng cấp của gia...', '');
INSERT INTO `huannn_news_description` VALUES ('67', '2', 'Lựa chọn công ty thiết kế nội thất uy tín tại Hà Nội', '&lt;p style=&quot;text-align:justify&quot;&gt;Để tìm được một&amp;nbsp;&lt;a href=&quot;https://www.actmienbac.vn/&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: windowtext; text-decoration-line: none;&quot;&gt;&lt;span style=&quot;color:rgb(255, 0, 102)&quot;&gt;&lt;strong&gt;công ty thiết kế nội thất&lt;/strong&gt;&lt;/span&gt;&lt;/a&gt;&amp;nbsp;và thi công uy tín là không hề dễ, đặc biệt khi giao căn nhà của mình để họ thiết kế thật sự làm các gia chủ khá là băn khoăn, vì không biết rằng liệu có đáp ứng những gì mong đợi hay không? Do đó, việc tìm kiếm và lựa chọn được một&amp;nbsp;&lt;a href=&quot;https://www.actmienbac.vn/lua-chon-cong-ty-thiet-ke-noi-that-uy-tin-tai-ha-noi.html#&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: windowtext; text-decoration-line: none;&quot;&gt;công ty thiết kế nội thất uy tín&lt;/a&gt;&amp;nbsp;giống như “mò kim đáy bể” với khách hàng. Chính vì vậy, trước khi đặt bút ký hợp đồng với một công ty nào đó, hãy cân nhắc và xem xét họ dựa trên các tiêu chí sau:&lt;/p&gt;\r\n\r\n&lt;h2&gt;&lt;span style=&quot;font-size:16px&quot;&gt;&lt;strong&gt;1. Dịch vụ thiết kế đa dạng, phong phú không.&lt;/strong&gt;&lt;/span&gt;&lt;/h2&gt;\r\n\r\n&lt;p style=&quot;text-align:center&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;https://www.actmienbac.vn/huannn-image/catalog/Tin%20Tuc/cong-ty-thiet-ke-noi-that.jpg&quot; style=&quot;border:0px; box-sizing:border-box; display:block; height:auto; margin:15px auto; max-width:100%; vertical-align:middle; width:750px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:center&quot;&gt;&lt;span style=&quot;font-size:12px&quot;&gt;&lt;em&gt;ACT Miền Bắc chuyên thiết kế nội thất&lt;/em&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;Với những&amp;nbsp;&lt;a href=&quot;https://www.actmienbac.vn/lua-chon-cong-ty-thiet-ke-noi-that-uy-tin-tai-ha-noi.html#&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: windowtext; text-decoration-line: none;&quot;&gt;công ty thiết kế nội thất uy tín&lt;/a&gt;, họ thường cung cấp các dịch vụ thiết kế khá đa dạng cho tất cả các công trình từ, biệt thự, hay các căn hộ nhà phố,&amp;nbsp;&lt;a href=&quot;https://www.actmienbac.vn/nha-lien-ke&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: windowtext; text-decoration-line: none;&quot;&gt;&lt;span style=&quot;color:rgb(255, 0, 102)&quot;&gt;&lt;strong&gt;nhà liền kề&lt;/strong&gt;&lt;/span&gt;&lt;/a&gt;, tới các spa, showroom, văn phòng... Bạn có thể tham khảo các mẫu nội thất trên website của từng&amp;nbsp;&lt;em&gt;công ty thiết kế nội thất&lt;/em&gt;, tuy nhiên chỉ riêng tiêu chí này thì chúng ta cần xem xét thêm để lựa chọn cho mình đơn vị hợp tác uy tín nhất.&lt;/p&gt;\r\n\r\n&lt;h2&gt;&lt;span style=&quot;font-size:16px&quot;&gt;&lt;strong&gt;2. Kinh nghiệm thiết kế của họ như thế nào&lt;/strong&gt;&lt;/span&gt;&lt;/h2&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;Các cụ ta vẫn có câu “gừng càng già càng cay” và với những công ty thiết kế nội thất cũng vậy. Những công ty có thâm niên hoạt động nhiều năm, chứng tỏ họ có rất nhiều kinh nghiệm và có uy tín lớn với khách hàng nên mới có thể tồn tại lâu như vậy được. Hơn nữa, với những kinh nghiệm tích lũy được đó, họ sẽ biết cách thiết kế từng không gian sao cho hợp lý nhất, tối ưu nhất.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;https://www.actmienbac.vn/huannn-image/catalog/Tin%20Tuc/cong-ty-thiet-ke-noi-that-1.jpg&quot; style=&quot;border:0px; box-sizing:border-box; display:block; height:auto; margin:15px auto; max-width:100%; vertical-align:middle; width:750px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:center&quot;&gt;&lt;span style=&quot;font-size:12px&quot;&gt;&lt;em&gt;Tư vấn thiết kế nội thất chuyên nghiệp tại Hà Nội&lt;/em&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h2&gt;&lt;span style=&quot;font-size:16px&quot;&gt;&lt;strong&gt;3. Ý tưởng thiết kế ra sao&lt;/strong&gt;&lt;/span&gt;&lt;/h2&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;Đây sẽ là điều mà bạn tự cảm nhận được sau khi đơn vị thiết kế nội thất trao đổi, tư vấn và đưa ra ý tưởng thiết kế cho bạn. Nếu họ có nhiều ý tưởng hay, nhiều giải pháp thiết kế tốt, chứng tỏ họ rất sáng tạo và có vốn kinh nghiệm thiết kế đa dạng, phong phú.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:center&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;https://www.actmienbac.vn/huannn-image/catalog/Tin%20Tuc/cong-ty-thiet-ke-noi-that-2.jpg&quot; style=&quot;border:0px; box-sizing:border-box; display:block; height:auto; margin:15px auto; max-width:100%; vertical-align:middle; width:750px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:center&quot;&gt;&lt;span style=&quot;font-size:12px&quot;&gt;&lt;em&gt;Thiết kế nội thất biệt thự tân cổ điển&lt;/em&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h2&gt;&lt;span style=&quot;font-size:16px&quot;&gt;&lt;strong&gt;4. Tham khảo ý kiến những người có kinh nghiệm&lt;/strong&gt;&lt;/span&gt;&lt;/h2&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;Việc tham khảo ý kiến mọi người, đặc biệt là những người đã từng trải qua việc&amp;nbsp;&lt;a href=&quot;https://www.actmienbac.vn/&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: windowtext; text-decoration-line: none;&quot;&gt;&lt;span style=&quot;color:rgb(255, 0, 102)&quot;&gt;&lt;strong&gt;thiết kế nội thất&lt;/strong&gt;&lt;/span&gt;&lt;/a&gt;&amp;nbsp;cho không gian sống của mình là việc làm cần thiết. Họ sẽ đưa ra cho bạn những lời khuyên hữu ích trong việc lựa chọn&amp;nbsp;&lt;em&gt;&lt;strong&gt;&lt;a href=&quot;https://www.actmienbac.vn/lua-chon-cong-ty-thiet-ke-noi-that-uy-tin-tai-ha-noi.html#&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: windowtext; text-decoration-line: none;&quot;&gt;công ty thiết kế nội thất uy tín&lt;/a&gt;&lt;/strong&gt;&lt;/em&gt;&amp;nbsp;nào để cùng hợp tác.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:center&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;https://www.actmienbac.vn/huannn-image/catalog/Tin%20Tuc/cong-ty-thiet-ke-noi-that-3.jpg&quot; style=&quot;border:0px; box-sizing:border-box; display:block; height:auto; margin:15px auto; max-width:100%; vertical-align:middle; width:750px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:center&quot;&gt;&lt;a href=&quot;https://www.actmienbac.vn/bi-quyet-trang-tri-san-vuon-canh-quan-dep-va-doc-dao.html&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: windowtext; text-decoration-line: none;&quot;&gt;&lt;span style=&quot;font-size:12px&quot;&gt;&lt;em&gt;Trang trí sân vườn cảnh quan đẹp&lt;/em&gt;&lt;/span&gt;&lt;/a&gt;&lt;/p&gt;\r\n\r\n&lt;h2&gt;&lt;span style=&quot;font-size:16px&quot;&gt;&lt;strong&gt;5. Lựa chọn đúng công ty để cùng hợp tác&lt;/strong&gt;&lt;/span&gt;&lt;/h2&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;Sau khi đã cân nhắc kỹ lưỡng, tham khảo kinh nghiệm từ rất nhiều nguồn khác nhau, bạn hãy đưa ra cho mình một lựa chọn sáng suốt nhất, một&amp;nbsp;&lt;a href=&quot;https://www.actmienbac.vn/lua-chon-cong-ty-thiet-ke-noi-that-uy-tin-tai-ha-noi.html#&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: windowtext; text-decoration-line: none;&quot;&gt;công ty thiết kế nội thất uy tín&lt;/a&gt;&amp;nbsp;nhất để cùng hợp tác. Hãy xem xét cách thức thanh toán mà họ áp dụng với bạn là như thế nào: trả một đợt hay thanh toán nhiều đợt theo tiến độ thực hiện công việc. Thông thường những công ty thiết kế nội thất lớn, chuyên nghiệp thường cho phép khách hàng của mình thanh toán thành nhiều đợt khác nhau sau khi kí kết hợp đồng.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:center&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;https://www.actmienbac.vn/huannn-image/catalog/Tin%20Tuc/cong-ty-thiet-ke-noi-that-4.jpg&quot; style=&quot;border:0px; box-sizing:border-box; display:block; height:auto; margin:15px auto; max-width:100%; vertical-align:middle; width:750px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:center&quot;&gt;&lt;a href=&quot;https://www.actmienbac.vn/so-huu-nha-dep-voi-phuong-an-hoan-thien-nha-lien-ke-tot-nhat.html&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: windowtext; text-decoration-line: none;&quot;&gt;&lt;span style=&quot;font-size:12px&quot;&gt;&lt;em&gt;Hoàn thiện nhà liền kề đẹp&lt;/em&gt;&lt;/span&gt;&lt;/a&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;Và nếu như bạn vẫn chưa tìm được đơn vị nào xứng tầm hợp tác với mình, hãy cân nhắc và liên hệ với ACT Miền Bắc - đơn vị thiết kế nội thất hàng đầu tại Việt Nam hiện nay để tìm hiểu về đơn vị này nhé. Chắc chắn bạn sẽ có được câu trả lời phù hợp nhất.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;Mọi chi tiết xin vui lòng liên hệ:&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;&lt;span style=&quot;font-size:16px&quot;&gt;&lt;strong&gt;Công ty cổ phần Thương mại và Dịch vụ ACT Miền Bắc&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;&lt;strong&gt;Hotline: 0904 172 437 - 0904 148 832&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;&lt;strong&gt;Đ/C: 12A11 - CT1 - KĐT Văn Khê - Tố Hữu - Hà Nội&lt;/strong&gt;&lt;/p&gt;\r\n', '', 'Thiết kế nội thất cổ điển', 'CENTA chuyên tư vấn thiết kế kiến trúc biệt thự đẹp theo phong cách hiện đại thể hiện sự đẳng cấp của gia...', '');
INSERT INTO `huannn_news_description` VALUES ('92', '2', 'Chọn công ty xây dựng nhà phố chuyên nghiệp để được làm chủ ngôi nhà đẹp', '&lt;h1&gt;Chọn công ty&amp;nbsp;&lt;a href=&quot;https://www.actmienbac.vn/chon-cong-ty-xay-dung-nha-pho-chuyen-nghiep-de-duoc-lam-chu-ngoi-nha-dep.html#&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: windowtext; text-decoration-line: none;&quot;&gt;xây dựng nhà phố chuyên nghiệp&lt;/a&gt;&amp;nbsp;để được làm chủ ngôi nhà đẹp&lt;/h1&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;Nhịp sống hối hả của xã hội hiện đại, cùng những lo toan cho cuộc sống thường nhật khiến bạn cảm thấy vô cùng mệt mỏi. Bạn muốn được nghỉ ngơi trong một không gian thật thoải mái? Bạn muốn sum vầy bên những bữa cơm đầm ấp cùng gia đình sau giờ làm việc? Và,… bạn muốn có một chốn về an yên và thật gần gũi. Nhà –nơi khởi nguồn của hạnh phúc bất tận, nơi bạn có thể gạc bỏ mọi lo toan để tìm lại chính mình trong tiếng cười thật giòn giã.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;Với sự phát triển nhanh chóng của xã hội, con người không chỉ có nhu cầu về ăn uống, vui chơi giải trí, mà họ còn có nhu cầu sở hữu một căn nhà phố đẹp và thật sang trọng. Hiểu được nhu cầu của khách hàng,&amp;nbsp;&lt;a href=&quot;https://www.actmienbac.vn/chon-cong-ty-xay-dung-nha-pho-chuyen-nghiep-de-duoc-lam-chu-ngoi-nha-dep.html#&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: windowtext; text-decoration-line: none;&quot;&gt;Act Miền Bắc&lt;/a&gt;&amp;nbsp;xin được mang đến cho quý khách hàng cơ hội trải nghiệm dịch vụ&amp;nbsp;&lt;a href=&quot;https://www.actmienbac.vn/&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: windowtext; text-decoration-line: none;&quot;&gt;&lt;span style=&quot;color:rgb(255, 0, 102)&quot;&gt;&lt;strong&gt;xây dựng nhà phố chuyên nghiệp&lt;/strong&gt;&lt;/span&gt;&lt;/a&gt;&amp;nbsp;và chất lượng của chúng tôi. Với đội ngũ nhân viên giỏi, giàu kinh nghiệm trong quá trình thi công&amp;nbsp;&lt;a href=&quot;https://www.actmienbac.vn/nha-pho&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: windowtext; text-decoration-line: none;&quot;&gt;&lt;span style=&quot;color:rgb(255, 0, 102)&quot;&gt;&lt;strong&gt;xây dựng nhà phố&lt;/strong&gt;&lt;/span&gt;&lt;/a&gt;, bạn sẽ là chủ nhân của một ngôi nhà sang trọng và “hợp thời”.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;https://www.actmienbac.vn/huannn-image/catalog/Nha%20Pho/thiet-ke-thi-cong-nha-pho.jpg&quot; style=&quot;border:0px; box-sizing:border-box; display:block; height:auto; margin:15px auto; max-width:100%; vertical-align:middle; width:750px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:center&quot;&gt;&lt;span style=&quot;font-size:12px&quot;&gt;&lt;em&gt;Tư vấn thiết kế nhà phố chuyên nghiệp&lt;/em&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h2&gt;&lt;span style=&quot;font-size:16px&quot;&gt;&lt;strong&gt;Xây dựng nhà phố - xu hướng nhà ở thời hiện đại&lt;/strong&gt;&lt;/span&gt;&lt;/h2&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;Khi tốc độ xã hội ngày càng phát triển nhanh chóng, thì tiêu chí chọn nơi “an cư lạc nghiệp” của chúng ta cũng dần thay đổi. Nằm ở vị trí trung tâm, cơ sở hạ tầng và giao thông tương đối thuận lợi, giúp tiết kiệm thời gian di chuyển, nhà phố đang là lựa chọn hàng đầu của phần lớn mọi người.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;Xây nhà là một trong ba việc quan trọng nhất của đời người, vì thế khi&amp;nbsp;&lt;strong&gt;xây dựng nhà phố&lt;/strong&gt;, các yếu tố cần phải đạt được đó chính là tính thẩm mỹ, tính kinh tế, tính bền vững và phải hội tụ đầy đủ công năng sử dụng của ngôi nhà hoàn hảo.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:center&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;https://www.actmienbac.vn/huannn-image/catalog/Nha%20Pho/thiet-ke-thi-cong-nha-pho-2.jpg&quot; style=&quot;border:0px; box-sizing:border-box; display:block; height:auto; margin:15px auto; max-width:100%; vertical-align:middle; width:750px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:center&quot;&gt;&lt;span style=&quot;font-size:12px&quot;&gt;&lt;em&gt;Mẫu nhà phố hiện đại&lt;/em&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h2&gt;&lt;span style=&quot;font-size:16px&quot;&gt;&lt;strong&gt;Vậy trong quá trình thi công xây dựng nhà phố, chúng ta cần chú ý những gì?&lt;/strong&gt;&lt;/span&gt;&lt;/h2&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;Khi&amp;nbsp;&lt;strong&gt;xây dựng nhà phố&lt;/strong&gt;, ngoài việc đảm bảo sự thông thoáng cần thiết cho ngôi nhà, thì cần tuân thủ theo nguyên tắc phong thủy ở mức khoa học như : nên đặt giường tránh hướng ra cửa vì nó khiến cho giấc ngủ bạn không được ngon, cầu thang nên đặt ở vị trí đầu nhà hoặc đầu phòng; ví dụ như đầu phòng khách, điều này giúp mang đến tài lộc cho bạn. Hoặc cửa chính của ngôi nhà nên ưu tiên chọn hướng tốt; hợp với tuổi của gia chủ nhằm mang lại sự may mắn và thuận lợi về vấn đề sức khỏe, công danh sự nghiệp,….&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;Ngoài ra, nếu bạn là chủ nhân của một ngôi nhà phố trong tương lai, khi&amp;nbsp;&lt;strong&gt;xây dựng nhà phố&lt;/strong&gt;, bạn cần phải chú ý những điểm sau:&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;&lt;strong&gt;*&lt;/strong&gt;&amp;nbsp;Cần có kế hoạch xây nhà cụ thể, rõ ràng&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;&lt;strong&gt;*&amp;nbsp;&lt;/strong&gt;Chọn công ty tư vấn thiết kế&amp;nbsp;&lt;strong&gt;xây dựng nhà phố uy tín&lt;/strong&gt;, chất lượng&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;&lt;strong&gt;*&amp;nbsp;&lt;/strong&gt;Hoàn thiện hồ sơ, các thủ tục chuẩn bị khởi công làm nhà&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;&lt;strong&gt;*&amp;nbsp;&lt;/strong&gt;Chuẩn bị mặt bằng thi công&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;&lt;strong&gt;*&amp;nbsp;&lt;/strong&gt;Khi nhà đã hoàn thiện xong phần thô, bạn cần&amp;nbsp;&lt;a href=&quot;https://www.actmienbac.vn/so-huu-nha-dep-voi-phuong-an-hoan-thien-nha-lien-ke-tot-nhat.html&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: windowtext; text-decoration-line: none;&quot;&gt;&lt;span style=&quot;color:rgb(255, 0, 102)&quot;&gt;&lt;strong&gt;hoàn thiện nội thất&lt;/strong&gt;&lt;/span&gt;&lt;/a&gt;, vật dụng trang trí&amp;nbsp; phù hợp với tổng thể ngôi nhà, và phải hợp với phong thủy nữa nhé.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;Để ngôi nhà của bạn được hoàn thiện tốt nhất, bạn cần chọn nhà thầu&amp;nbsp;&lt;em&gt;xây dựng nhà phố&lt;/em&gt;&amp;nbsp;có trình độ chuyên môn sâu để hỗ trợ trong quá trình xây dựng nhà. Đây là khâu vô cùng quan trọng, quyết định chất lượng công trình, vì thế bạn cần có lựa chọn đúng nhà thầu uy tín.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;&lt;a href=&quot;https://www.actmienbac.vn/chon-cong-ty-xay-dung-nha-pho-chuyen-nghiep-de-duoc-lam-chu-ngoi-nha-dep.html#&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: windowtext; text-decoration-line: none;&quot;&gt;ACT Miền Bắc&lt;/a&gt;&amp;nbsp;với nhiều năm kinh nghiệm chuyên sâu trong lĩnh vực&amp;nbsp;xây dựng&lt;strong&gt;,&lt;/strong&gt;&amp;nbsp;chắc chắn sẽ mang đến sự hài lòng nhất cho tất cả mọi khách hàng. Trong quá trình thi công, chúng tôi luôn giám sát chặt chẽ, và có phương án tối ưu nhất giúp tiết kiệm chi phí xây dựng, bạn sẽ được sở hữu một căn nhà phố hoàn hảo với đầy nét đẹp sang trọng; hiện đại.&lt;/p&gt;\r\n', '', 'Thiết kế biệt thự', '', '');
INSERT INTO `huannn_news_description` VALUES ('72', '3', 'Thiết kế nội thất biệt thự Pháp tại Mỹ Đình - Hà Nội', '', '', 'Thiết kế nội thất biệt thự Pháp tại Mỹ Đình - Hà Nội', 'CENTA chuyên tư vấn thiết kế kiến trúc biệt thự đẹp theo phong cách hiện đại thể hiện sự đẳng cấp của gia...   ', '');
INSERT INTO `huannn_news_description` VALUES ('73', '3', 'Thiết kế nội thất biệt thự Pháp tại Mỹ Đình - Hà Nội', '', '', 'Thiết kế nội thất biệt thự Pháp tại Mỹ Đình - Hà Nội', 'CENTA chuyên tư vấn thiết kế kiến trúc biệt thự đẹp theo phong cách hiện đại thể hiện sự đẳng cấp của gia...', '');
INSERT INTO `huannn_news_description` VALUES ('74', '3', 'Thiết kế nội thất biệt thự Pháp tại Mỹ Đình - Hà Nội', '', '', 'Thiết kế nội thất biệt thự Pháp tại Mỹ Đình - Hà Nội', 'CENTA chuyên tư vấn thiết kế kiến trúc biệt thự đẹp theo phong cách hiện đại thể hiện sự đẳng cấp của gia...', '');
INSERT INTO `huannn_news_description` VALUES ('75', '3', 'Thiết kế nội thất biệt thự Pháp tại Mỹ Đình - Hà Nội', '', '', 'Thiết kế nội thất biệt thự Pháp tại Mỹ Đình - Hà Nội', 'CENTA chuyên tư vấn thiết kế kiến trúc biệt thự đẹp theo phong cách hiện đại thể hiện sự đẳng cấp của gia...', '');
INSERT INTO `huannn_news_description` VALUES ('76', '3', 'Thiết kế nội thất biệt thự Pháp tại Mỹ Đình - Hà Nội', '', '', 'Thiết kế nội thất biệt thự Pháp tại Mỹ Đình - Hà Nội', 'CENTA chuyên tư vấn thiết kế kiến trúc biệt thự đẹp theo phong cách hiện đại thể hiện sự đẳng cấp của gia...', '');
INSERT INTO `huannn_news_description` VALUES ('77', '3', 'Thiết kế nội thất biệt thự Pháp tại Mỹ Đình - Hà Nội', '', '', 'Thiết kế nội thất biệt thự Pháp tại Mỹ Đình - Hà Nội', 'CENTA chuyên tư vấn thiết kế kiến trúc biệt thự đẹp theo phong cách hiện đại thể hiện sự đẳng cấp của gia...', '');
INSERT INTO `huannn_news_description` VALUES ('78', '3', 'Biết lắng nghe khách hàng', '', '', 'Biết lắng nghe khách hàng', 'CENTA chuyên tư vấn thiết kế kiến trúc biệt thự đẹp theo phong cách hiện đại thể hiện sự đẳng cấp của gia...', '');
INSERT INTO `huannn_news_description` VALUES ('78', '2', 'Biết lắng nghe khách hàng', '', '', 'Biết lắng nghe khách hàng', 'CENTA chuyên tư vấn thiết kế kiến trúc biệt thự đẹp theo phong cách hiện đại thể hiện sự đẳng cấp của gia...', '');
INSERT INTO `huannn_news_description` VALUES ('79', '2', 'Kiến trúc sư có kinh nghiệm', '', '', 'Kiến trúc sư có kinh nghiệm', 'CENTA chuyên tư vấn thiết kế kiến trúc biệt thự đẹp theo phong cách hiện đại thể hiện sự đẳng cấp của gia...', '');
INSERT INTO `huannn_news_description` VALUES ('88', '3', 'Tìm Nhà thầu phụ thi công xây dựng, thi công Nội thất', '', '', 'Tìm Nhà thầu phụ thi công xây dựng, thi công Nội thất', '', '');
INSERT INTO `huannn_news_description` VALUES ('88', '2', 'Tìm Nhà thầu phụ thi công xây dựng, thi công Nội thất', '', '', 'Tìm Nhà thầu phụ thi công xây dựng, thi công Nội thất', '', '');
INSERT INTO `huannn_news_description` VALUES ('89', '3', 'Tìm đối tác cung ứng vật tư, thiết bị trong thi công Xây dựng &amp; Nội thất', '', '', 'Tìm đối tác cung ứng vật tư, thiết bị trong thi công Xây dựng &amp; Nội thất', '', '');
INSERT INTO `huannn_news_description` VALUES ('89', '2', 'Tìm đối tác cung ứng vật tư, thiết bị trong thi công Xây dựng &amp; Nội thất', '', '', 'Tìm đối tác cung ứng vật tư, thiết bị trong thi công Xây dựng &amp; Nội thất', '', '');
INSERT INTO `huannn_news_description` VALUES ('90', '2', 'Nhận sinh viên thực tập Thiết kế Kiến trúc, Nội thất', '', '', 'Nhận sinh viên thực tập Thiết kế Kiến trúc, Nội thất', '', '');
INSERT INTO `huannn_news_description` VALUES ('90', '3', 'Nhận sinh viên thực tập Thiết kế Kiến trúc, Nội thất', '', '', 'Nhận sinh viên thực tập Thiết kế Kiến trúc, Nội thất', '', '');
INSERT INTO `huannn_news_description` VALUES ('91', '2', 'Tuyển Kiến trúc sư Thiết kế Nội thất (01 người)', '', '', 'Tuyển Kiến trúc sư Thiết kế Nội thất (01 người)', '', '');
INSERT INTO `huannn_news_description` VALUES ('91', '3', 'Tuyển Kiến trúc sư Thiết kế Nội thất (01 người)', '', '', 'Tuyển Kiến trúc sư Thiết kế Nội thất (01 người)', '', '');
INSERT INTO `huannn_news_description` VALUES ('69', '2', 'Thiết kế nội thất biệt thự Pháp tại Mỹ Đình - Hà Nội', '&lt;p&gt;Công Ty CENTA thực hiện thi công Kiến trúc lâu đài theo phong cách Tân cổ điển cho gia đình A. Tiến tại Mộc Châu - TP. Sơn La. Ngôi biêt thự có quy mô 2 tầng có mái vòm với tổng diện tích sàn là 550m2&lt;/p&gt;\r\n\r\n&lt;p&gt;Tên Công trình : Thi công Kiến trúc Tân cổ điển Lâu đài Mộc Châu - Sơn La Chủ Đầu tư: A. Trần Công Tiến Địa điểm XD: Đông Sang - Mộc Châu - Sơn La&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;http://localhost/dev.baby/huannn-image/catalog/Slide1.jpg&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;http://localhost/dev.baby/huannn-image/catalog/slide2.jpg&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Đội ngũ thi công cùng KTS Nguyễn Đức Thành và KTS Trần Minh Cường tại công trình ở Mộc Châu- Sơn La&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;http://localhost/dev.baby/huannn-image/catalog/slide3.jpg&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;http://localhost/dev.baby/huannn-image/catalog/Slide6.jpg&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Tại sao bạn lại chọn CENTA là Đối tác: - Với phong cách thiết kế chuyên nghiệp, luôn luôn cập nhật và sáng tạo các phong cách thiết kế độc đáo nhằm đáp ứng nhu cầu ngày càng cao của khách hàng. - CENTA luôn đem đến cho khách hàng những bản thiết kế nội thất có phong cách khác biệt, đẳng cấp...đồng thời sẵn sàng thực hiện các đơn đặt hàng thi công trọn gói cho căn hộ chung cư, nhà lô phố, biệt thự...đúng theo bản vẽ thiết kế đã được khách hàng phê duyệt. - Chúng tôi dành trọn tâm huyết, thời gian để tập hợp, nghiên cứu những kiến thức, các phong cách thiết kế nội thất quý giá bậc nhất trên thế giới. Và đã qua kinh nghiệm thiết kế, thi công hàng trăm công trình lớn nhỏ. - Chúng tôi luôn tìm kiếm và áp dụng những vật tư, thiết bị, công nghệ kỹ thuật cao ứng dụng vào trong các dự án của mình. - Với uy tín, kinh nghiệm trong lĩnh vực thiết kế nội thất, CENTA hoàn toàn có đủ năng lực tạo sự uy tín đối với khách hàng có nhu cầu về thiết kế thi công Kiến trúc và kết cấu. - Ngôi nhà của bạn được thi công xay dựng bởi đội ngũ kĩ thuật lành nghề và đội giám sát thi công chuyên nghiệp để đảm bảo chất lượng tốt nhất, tiến độ đúng cam kết.&lt;/p&gt;\r\n', '', 'Thiết kế nội thất biệt thự Pháp tại Mỹ Đình - Hà Nội', 'CENTA chuyên tư vấn thiết kế kiến trúc biệt thự đẹp theo phong cách hiện đại thể hiện sự đẳng cấp của gia...', '');
INSERT INTO `huannn_news_description` VALUES ('70', '2', 'Thiết kế nội thất biệt thự Pháp tại Mỹ Đình - Hà Nội', '&lt;p&gt;Công Ty CENTA thực hiện thi công Kiến trúc lâu đài theo phong cách Tân cổ điển cho gia đình A. Tiến tại Mộc Châu - TP. Sơn La. Ngôi biêt thự có quy mô 2 tầng có mái vòm với tổng diện tích sàn là 550m2&lt;/p&gt;\r\n\r\n&lt;p&gt;Tên Công trình : Thi công Kiến trúc Tân cổ điển Lâu đài Mộc Châu - Sơn La Chủ Đầu tư: A. Trần Công Tiến Địa điểm XD: Đông Sang - Mộc Châu - Sơn La&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;http://localhost/dev.baby/huannn-image/catalog/Slide1.jpg&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;http://localhost/dev.baby/huannn-image/catalog/slide2.jpg&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Đội ngũ thi công cùng KTS Nguyễn Đức Thành và KTS Trần Minh Cường tại công trình ở Mộc Châu- Sơn La&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;http://localhost/dev.baby/huannn-image/catalog/slide3.jpg&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;http://localhost/dev.baby/huannn-image/catalog/Slide6.jpg&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Tại sao bạn lại chọn CENTA là Đối tác: - Với phong cách thiết kế chuyên nghiệp, luôn luôn cập nhật và sáng tạo các phong cách thiết kế độc đáo nhằm đáp ứng nhu cầu ngày càng cao của khách hàng. - CENTA luôn đem đến cho khách hàng những bản thiết kế nội thất có phong cách khác biệt, đẳng cấp...đồng thời sẵn sàng thực hiện các đơn đặt hàng thi công trọn gói cho căn hộ chung cư, nhà lô phố, biệt thự...đúng theo bản vẽ thiết kế đã được khách hàng phê duyệt. - Chúng tôi dành trọn tâm huyết, thời gian để tập hợp, nghiên cứu những kiến thức, các phong cách thiết kế nội thất quý giá bậc nhất trên thế giới. Và đã qua kinh nghiệm thiết kế, thi công hàng trăm công trình lớn nhỏ. - Chúng tôi luôn tìm kiếm và áp dụng những vật tư, thiết bị, công nghệ kỹ thuật cao ứng dụng vào trong các dự án của mình. - Với uy tín, kinh nghiệm trong lĩnh vực thiết kế nội thất, CENTA hoàn toàn có đủ năng lực tạo sự uy tín đối với khách hàng có nhu cầu về thiết kế thi công Kiến trúc và kết cấu. - Ngôi nhà của bạn được thi công xay dựng bởi đội ngũ kĩ thuật lành nghề và đội giám sát thi công chuyên nghiệp để đảm bảo chất lượng tốt nhất, tiến độ đúng cam kết.&lt;/p&gt;\r\n', '', 'Thiết kế nội thất biệt thự Pháp tại Mỹ Đình - Hà Nội', 'CENTA chuyên tư vấn thiết kế kiến trúc biệt thự đẹp theo phong cách hiện đại thể hiện sự đẳng cấp của gia...', '');
INSERT INTO `huannn_news_description` VALUES ('71', '2', 'Thiết kế nội thất biệt thự Pháp tại Mỹ Đình - Hà Nội', '&lt;p&gt;Công Ty CENTA thực hiện thi công Kiến trúc lâu đài theo phong cách Tân cổ điển cho gia đình A. Tiến tại Mộc Châu - TP. Sơn La. Ngôi biêt thự có quy mô 2 tầng có mái vòm với tổng diện tích sàn là 550m2&lt;/p&gt;\r\n\r\n&lt;p&gt;Tên Công trình : Thi công Kiến trúc Tân cổ điển Lâu đài Mộc Châu - Sơn La Chủ Đầu tư: A. Trần Công Tiến Địa điểm XD: Đông Sang - Mộc Châu - Sơn La&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;http://localhost/dev.baby/huannn-image/catalog/Slide1.jpg&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;http://localhost/dev.baby/huannn-image/catalog/slide2.jpg&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Đội ngũ thi công cùng KTS Nguyễn Đức Thành và KTS Trần Minh Cường tại công trình ở Mộc Châu- Sơn La&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;http://localhost/dev.baby/huannn-image/catalog/slide3.jpg&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;http://localhost/dev.baby/huannn-image/catalog/Slide6.jpg&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Tại sao bạn lại chọn CENTA là Đối tác: - Với phong cách thiết kế chuyên nghiệp, luôn luôn cập nhật và sáng tạo các phong cách thiết kế độc đáo nhằm đáp ứng nhu cầu ngày càng cao của khách hàng. - CENTA luôn đem đến cho khách hàng những bản thiết kế nội thất có phong cách khác biệt, đẳng cấp...đồng thời sẵn sàng thực hiện các đơn đặt hàng thi công trọn gói cho căn hộ chung cư, nhà lô phố, biệt thự...đúng theo bản vẽ thiết kế đã được khách hàng phê duyệt. - Chúng tôi dành trọn tâm huyết, thời gian để tập hợp, nghiên cứu những kiến thức, các phong cách thiết kế nội thất quý giá bậc nhất trên thế giới. Và đã qua kinh nghiệm thiết kế, thi công hàng trăm công trình lớn nhỏ. - Chúng tôi luôn tìm kiếm và áp dụng những vật tư, thiết bị, công nghệ kỹ thuật cao ứng dụng vào trong các dự án của mình. - Với uy tín, kinh nghiệm trong lĩnh vực thiết kế nội thất, CENTA hoàn toàn có đủ năng lực tạo sự uy tín đối với khách hàng có nhu cầu về thiết kế thi công Kiến trúc và kết cấu. - Ngôi nhà của bạn được thi công xay dựng bởi đội ngũ kĩ thuật lành nghề và đội giám sát thi công chuyên nghiệp để đảm bảo chất lượng tốt nhất, tiến độ đúng cam kết.&lt;/p&gt;\r\n', '', 'Thiết kế nội thất biệt thự Pháp tại Mỹ Đình - Hà Nội', 'CENTA chuyên tư vấn thiết kế kiến trúc biệt thự đẹp theo phong cách hiện đại thể hiện sự đẳng cấp của gia...', '');
INSERT INTO `huannn_news_description` VALUES ('72', '2', 'Thiết kế nội thất biệt thự Pháp tại Mỹ Đình - Hà Nội', '&lt;p&gt;Công Ty CENTA thực hiện thi công Kiến trúc lâu đài theo phong cách Tân cổ điển cho gia đình A. Tiến tại Mộc Châu - TP. Sơn La. Ngôi biêt thự có quy mô 2 tầng có mái vòm với tổng diện tích sàn là 550m2&lt;/p&gt;\r\n\r\n&lt;p&gt;Tên Công trình : Thi công Kiến trúc Tân cổ điển Lâu đài Mộc Châu - Sơn La Chủ Đầu tư: A. Trần Công Tiến Địa điểm XD: Đông Sang - Mộc Châu - Sơn La&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;http://localhost/dev.baby/huannn-image/catalog/Slide1.jpg&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;http://localhost/dev.baby/huannn-image/catalog/slide2.jpg&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Đội ngũ thi công cùng KTS Nguyễn Đức Thành và KTS Trần Minh Cường tại công trình ở Mộc Châu- Sơn La&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;http://localhost/dev.baby/huannn-image/catalog/slide3.jpg&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;http://localhost/dev.baby/huannn-image/catalog/Slide6.jpg&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Tại sao bạn lại chọn CENTA là Đối tác: - Với phong cách thiết kế chuyên nghiệp, luôn luôn cập nhật và sáng tạo các phong cách thiết kế độc đáo nhằm đáp ứng nhu cầu ngày càng cao của khách hàng. - CENTA luôn đem đến cho khách hàng những bản thiết kế nội thất có phong cách khác biệt, đẳng cấp...đồng thời sẵn sàng thực hiện các đơn đặt hàng thi công trọn gói cho căn hộ chung cư, nhà lô phố, biệt thự...đúng theo bản vẽ thiết kế đã được khách hàng phê duyệt. - Chúng tôi dành trọn tâm huyết, thời gian để tập hợp, nghiên cứu những kiến thức, các phong cách thiết kế nội thất quý giá bậc nhất trên thế giới. Và đã qua kinh nghiệm thiết kế, thi công hàng trăm công trình lớn nhỏ. - Chúng tôi luôn tìm kiếm và áp dụng những vật tư, thiết bị, công nghệ kỹ thuật cao ứng dụng vào trong các dự án của mình. - Với uy tín, kinh nghiệm trong lĩnh vực thiết kế nội thất, CENTA hoàn toàn có đủ năng lực tạo sự uy tín đối với khách hàng có nhu cầu về thiết kế thi công Kiến trúc và kết cấu. - Ngôi nhà của bạn được thi công xay dựng bởi đội ngũ kĩ thuật lành nghề và đội giám sát thi công chuyên nghiệp để đảm bảo chất lượng tốt nhất, tiến độ đúng cam kết.&lt;/p&gt;\r\n', '', 'Thiết kế nội thất biệt thự Pháp tại Mỹ Đình - Hà Nội', 'CENTA chuyên tư vấn thiết kế kiến trúc biệt thự đẹp theo phong cách hiện đại thể hiện sự đẳng cấp của gia...', '');
INSERT INTO `huannn_news_description` VALUES ('73', '2', 'Thiết kế nội thất biệt thự Pháp tại Mỹ Đình - Hà Nội', '&lt;p&gt;Công Ty CENTA thực hiện thi công Kiến trúc lâu đài theo phong cách Tân cổ điển cho gia đình A. Tiến tại Mộc Châu - TP. Sơn La. Ngôi biêt thự có quy mô 2 tầng có mái vòm với tổng diện tích sàn là 550m2&lt;/p&gt;\r\n\r\n&lt;p&gt;Tên Công trình : Thi công Kiến trúc Tân cổ điển Lâu đài Mộc Châu - Sơn La Chủ Đầu tư: A. Trần Công Tiến Địa điểm XD: Đông Sang - Mộc Châu - Sơn La&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;http://localhost/dev.baby/huannn-image/catalog/Slide1.jpg&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;http://localhost/dev.baby/huannn-image/catalog/slide2.jpg&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Đội ngũ thi công cùng KTS Nguyễn Đức Thành và KTS Trần Minh Cường tại công trình ở Mộc Châu- Sơn La&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;http://localhost/dev.baby/huannn-image/catalog/slide3.jpg&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;http://localhost/dev.baby/huannn-image/catalog/Slide6.jpg&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Tại sao bạn lại chọn CENTA là Đối tác: - Với phong cách thiết kế chuyên nghiệp, luôn luôn cập nhật và sáng tạo các phong cách thiết kế độc đáo nhằm đáp ứng nhu cầu ngày càng cao của khách hàng. - CENTA luôn đem đến cho khách hàng những bản thiết kế nội thất có phong cách khác biệt, đẳng cấp...đồng thời sẵn sàng thực hiện các đơn đặt hàng thi công trọn gói cho căn hộ chung cư, nhà lô phố, biệt thự...đúng theo bản vẽ thiết kế đã được khách hàng phê duyệt. - Chúng tôi dành trọn tâm huyết, thời gian để tập hợp, nghiên cứu những kiến thức, các phong cách thiết kế nội thất quý giá bậc nhất trên thế giới. Và đã qua kinh nghiệm thiết kế, thi công hàng trăm công trình lớn nhỏ. - Chúng tôi luôn tìm kiếm và áp dụng những vật tư, thiết bị, công nghệ kỹ thuật cao ứng dụng vào trong các dự án của mình. - Với uy tín, kinh nghiệm trong lĩnh vực thiết kế nội thất, CENTA hoàn toàn có đủ năng lực tạo sự uy tín đối với khách hàng có nhu cầu về thiết kế thi công Kiến trúc và kết cấu. - Ngôi nhà của bạn được thi công xay dựng bởi đội ngũ kĩ thuật lành nghề và đội giám sát thi công chuyên nghiệp để đảm bảo chất lượng tốt nhất, tiến độ đúng cam kết.&lt;/p&gt;\r\n', '', 'Thiết kế nội thất biệt thự Pháp tại Mỹ Đình - Hà Nội', 'CENTA chuyên tư vấn thiết kế kiến trúc biệt thự đẹp theo phong cách hiện đại thể hiện sự đẳng cấp của gia...', '');
INSERT INTO `huannn_news_description` VALUES ('74', '2', 'Thiết kế nội thất biệt thự Pháp tại Mỹ Đình - Hà Nội', '&lt;p&gt;Công Ty CENTA thực hiện thi công Kiến trúc lâu đài theo phong cách Tân cổ điển cho gia đình A. Tiến tại Mộc Châu - TP. Sơn La. Ngôi biêt thự có quy mô 2 tầng có mái vòm với tổng diện tích sàn là 550m2&lt;/p&gt;\r\n\r\n&lt;p&gt;Tên Công trình : Thi công Kiến trúc Tân cổ điển Lâu đài Mộc Châu - Sơn La Chủ Đầu tư: A. Trần Công Tiến Địa điểm XD: Đông Sang - Mộc Châu - Sơn La&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;http://localhost/dev.baby/huannn-image/catalog/Slide1.jpg&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;http://localhost/dev.baby/huannn-image/catalog/slide2.jpg&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Đội ngũ thi công cùng KTS Nguyễn Đức Thành và KTS Trần Minh Cường tại công trình ở Mộc Châu- Sơn La&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;http://localhost/dev.baby/huannn-image/catalog/slide3.jpg&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;http://localhost/dev.baby/huannn-image/catalog/Slide6.jpg&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Tại sao bạn lại chọn CENTA là Đối tác: - Với phong cách thiết kế chuyên nghiệp, luôn luôn cập nhật và sáng tạo các phong cách thiết kế độc đáo nhằm đáp ứng nhu cầu ngày càng cao của khách hàng. - CENTA luôn đem đến cho khách hàng những bản thiết kế nội thất có phong cách khác biệt, đẳng cấp...đồng thời sẵn sàng thực hiện các đơn đặt hàng thi công trọn gói cho căn hộ chung cư, nhà lô phố, biệt thự...đúng theo bản vẽ thiết kế đã được khách hàng phê duyệt. - Chúng tôi dành trọn tâm huyết, thời gian để tập hợp, nghiên cứu những kiến thức, các phong cách thiết kế nội thất quý giá bậc nhất trên thế giới. Và đã qua kinh nghiệm thiết kế, thi công hàng trăm công trình lớn nhỏ. - Chúng tôi luôn tìm kiếm và áp dụng những vật tư, thiết bị, công nghệ kỹ thuật cao ứng dụng vào trong các dự án của mình. - Với uy tín, kinh nghiệm trong lĩnh vực thiết kế nội thất, CENTA hoàn toàn có đủ năng lực tạo sự uy tín đối với khách hàng có nhu cầu về thiết kế thi công Kiến trúc và kết cấu. - Ngôi nhà của bạn được thi công xay dựng bởi đội ngũ kĩ thuật lành nghề và đội giám sát thi công chuyên nghiệp để đảm bảo chất lượng tốt nhất, tiến độ đúng cam kết.&lt;/p&gt;\r\n', '', 'Thiết kế nội thất biệt thự Pháp tại Mỹ Đình - Hà Nội', 'CENTA chuyên tư vấn thiết kế kiến trúc biệt thự đẹp theo phong cách hiện đại thể hiện sự đẳng cấp của gia...', '');
INSERT INTO `huannn_news_description` VALUES ('75', '2', 'Thiết kế nội thất biệt thự Pháp tại Mỹ Đình - Hà Nội', '&lt;p&gt;Công Ty CENTA thực hiện thi công Kiến trúc lâu đài theo phong cách Tân cổ điển cho gia đình A. Tiến tại Mộc Châu - TP. Sơn La. Ngôi biêt thự có quy mô 2 tầng có mái vòm với tổng diện tích sàn là 550m2&lt;/p&gt;\r\n\r\n&lt;p&gt;Tên Công trình : Thi công Kiến trúc Tân cổ điển Lâu đài Mộc Châu - Sơn La Chủ Đầu tư: A. Trần Công Tiến Địa điểm XD: Đông Sang - Mộc Châu - Sơn La&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;http://localhost/dev.baby/huannn-image/catalog/Slide1.jpg&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;http://localhost/dev.baby/huannn-image/catalog/slide2.jpg&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Đội ngũ thi công cùng KTS Nguyễn Đức Thành và KTS Trần Minh Cường tại công trình ở Mộc Châu- Sơn La&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;http://localhost/dev.baby/huannn-image/catalog/slide3.jpg&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;http://localhost/dev.baby/huannn-image/catalog/Slide6.jpg&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Tại sao bạn lại chọn CENTA là Đối tác: - Với phong cách thiết kế chuyên nghiệp, luôn luôn cập nhật và sáng tạo các phong cách thiết kế độc đáo nhằm đáp ứng nhu cầu ngày càng cao của khách hàng. - CENTA luôn đem đến cho khách hàng những bản thiết kế nội thất có phong cách khác biệt, đẳng cấp...đồng thời sẵn sàng thực hiện các đơn đặt hàng thi công trọn gói cho căn hộ chung cư, nhà lô phố, biệt thự...đúng theo bản vẽ thiết kế đã được khách hàng phê duyệt. - Chúng tôi dành trọn tâm huyết, thời gian để tập hợp, nghiên cứu những kiến thức, các phong cách thiết kế nội thất quý giá bậc nhất trên thế giới. Và đã qua kinh nghiệm thiết kế, thi công hàng trăm công trình lớn nhỏ. - Chúng tôi luôn tìm kiếm và áp dụng những vật tư, thiết bị, công nghệ kỹ thuật cao ứng dụng vào trong các dự án của mình. - Với uy tín, kinh nghiệm trong lĩnh vực thiết kế nội thất, CENTA hoàn toàn có đủ năng lực tạo sự uy tín đối với khách hàng có nhu cầu về thiết kế thi công Kiến trúc và kết cấu. - Ngôi nhà của bạn được thi công xay dựng bởi đội ngũ kĩ thuật lành nghề và đội giám sát thi công chuyên nghiệp để đảm bảo chất lượng tốt nhất, tiến độ đúng cam kết.&lt;/p&gt;\r\n', '', 'Thiết kế nội thất biệt thự Pháp tại Mỹ Đình - Hà Nội', 'CENTA chuyên tư vấn thiết kế kiến trúc biệt thự đẹp theo phong cách hiện đại thể hiện sự đẳng cấp của gia...', '');
INSERT INTO `huannn_news_description` VALUES ('76', '2', 'Thiết kế nội thất biệt thự Pháp tại Mỹ Đình - Hà Nội', '&lt;p&gt;Công Ty CENTA thực hiện thi công Kiến trúc lâu đài theo phong cách Tân cổ điển cho gia đình A. Tiến tại Mộc Châu - TP. Sơn La. Ngôi biêt thự có quy mô 2 tầng có mái vòm với tổng diện tích sàn là 550m2&lt;/p&gt;\r\n\r\n&lt;p&gt;Tên Công trình : Thi công Kiến trúc Tân cổ điển Lâu đài Mộc Châu - Sơn La Chủ Đầu tư: A. Trần Công Tiến Địa điểm XD: Đông Sang - Mộc Châu - Sơn La&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;http://localhost/dev.baby/huannn-image/catalog/Slide1.jpg&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;http://localhost/dev.baby/huannn-image/catalog/slide2.jpg&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Đội ngũ thi công cùng KTS Nguyễn Đức Thành và KTS Trần Minh Cường tại công trình ở Mộc Châu- Sơn La&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;http://localhost/dev.baby/huannn-image/catalog/slide3.jpg&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;http://localhost/dev.baby/huannn-image/catalog/Slide6.jpg&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Tại sao bạn lại chọn CENTA là Đối tác: - Với phong cách thiết kế chuyên nghiệp, luôn luôn cập nhật và sáng tạo các phong cách thiết kế độc đáo nhằm đáp ứng nhu cầu ngày càng cao của khách hàng. - CENTA luôn đem đến cho khách hàng những bản thiết kế nội thất có phong cách khác biệt, đẳng cấp...đồng thời sẵn sàng thực hiện các đơn đặt hàng thi công trọn gói cho căn hộ chung cư, nhà lô phố, biệt thự...đúng theo bản vẽ thiết kế đã được khách hàng phê duyệt. - Chúng tôi dành trọn tâm huyết, thời gian để tập hợp, nghiên cứu những kiến thức, các phong cách thiết kế nội thất quý giá bậc nhất trên thế giới. Và đã qua kinh nghiệm thiết kế, thi công hàng trăm công trình lớn nhỏ. - Chúng tôi luôn tìm kiếm và áp dụng những vật tư, thiết bị, công nghệ kỹ thuật cao ứng dụng vào trong các dự án của mình. - Với uy tín, kinh nghiệm trong lĩnh vực thiết kế nội thất, CENTA hoàn toàn có đủ năng lực tạo sự uy tín đối với khách hàng có nhu cầu về thiết kế thi công Kiến trúc và kết cấu. - Ngôi nhà của bạn được thi công xay dựng bởi đội ngũ kĩ thuật lành nghề và đội giám sát thi công chuyên nghiệp để đảm bảo chất lượng tốt nhất, tiến độ đúng cam kết.&lt;/p&gt;\r\n', '', 'Thiết kế nội thất biệt thự Pháp tại Mỹ Đình - Hà Nội', 'CENTA chuyên tư vấn thiết kế kiến trúc biệt thự đẹp theo phong cách hiện đại thể hiện sự đẳng cấp của gia...', '');
INSERT INTO `huannn_news_description` VALUES ('77', '2', 'Thiết kế nội thất biệt thự Pháp tại Mỹ Đình - Hà Nội', '&lt;p&gt;Công Ty CENTA thực hiện thi công Kiến trúc lâu đài theo phong cách Tân cổ điển cho gia đình A. Tiến tại Mộc Châu - TP. Sơn La. Ngôi biêt thự có quy mô 2 tầng có mái vòm với tổng diện tích sàn là 550m2&lt;/p&gt;\r\n\r\n&lt;p&gt;Tên Công trình : Thi công Kiến trúc Tân cổ điển Lâu đài Mộc Châu - Sơn La Chủ Đầu tư: A. Trần Công Tiến Địa điểm XD: Đông Sang - Mộc Châu - Sơn La&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;http://localhost/dev.baby/huannn-image/catalog/Slide1.jpg&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;http://localhost/dev.baby/huannn-image/catalog/slide2.jpg&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Đội ngũ thi công cùng KTS Nguyễn Đức Thành và KTS Trần Minh Cường tại công trình ở Mộc Châu- Sơn La&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;http://localhost/dev.baby/huannn-image/catalog/slide3.jpg&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;http://localhost/dev.baby/huannn-image/catalog/Slide6.jpg&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Tại sao bạn lại chọn CENTA là Đối tác: - Với phong cách thiết kế chuyên nghiệp, luôn luôn cập nhật và sáng tạo các phong cách thiết kế độc đáo nhằm đáp ứng nhu cầu ngày càng cao của khách hàng. - CENTA luôn đem đến cho khách hàng những bản thiết kế nội thất có phong cách khác biệt, đẳng cấp...đồng thời sẵn sàng thực hiện các đơn đặt hàng thi công trọn gói cho căn hộ chung cư, nhà lô phố, biệt thự...đúng theo bản vẽ thiết kế đã được khách hàng phê duyệt. - Chúng tôi dành trọn tâm huyết, thời gian để tập hợp, nghiên cứu những kiến thức, các phong cách thiết kế nội thất quý giá bậc nhất trên thế giới. Và đã qua kinh nghiệm thiết kế, thi công hàng trăm công trình lớn nhỏ. - Chúng tôi luôn tìm kiếm và áp dụng những vật tư, thiết bị, công nghệ kỹ thuật cao ứng dụng vào trong các dự án của mình. - Với uy tín, kinh nghiệm trong lĩnh vực thiết kế nội thất, CENTA hoàn toàn có đủ năng lực tạo sự uy tín đối với khách hàng có nhu cầu về thiết kế thi công Kiến trúc và kết cấu. - Ngôi nhà của bạn được thi công xay dựng bởi đội ngũ kĩ thuật lành nghề và đội giám sát thi công chuyên nghiệp để đảm bảo chất lượng tốt nhất, tiến độ đúng cam kết.&lt;/p&gt;\r\n', '', 'Thiết kế nội thất biệt thự Pháp tại Mỹ Đình - Hà Nội', 'CENTA chuyên tư vấn thiết kế kiến trúc biệt thự đẹp theo phong cách hiện đại thể hiện sự đẳng cấp của gia...', '');
INSERT INTO `huannn_news_description` VALUES ('92', '3', 'Thiết kế biệt thự', '&lt;p&gt;Công Ty CENTA thực hiện thi công Kiến trúc lâu đài theo phong cách Tân cổ điển cho gia đình A. Tiến tại Mộc Châu - TP. Sơn La. Ngôi biêt thự có quy mô 2 tầng có mái vòm với tổng diện tích sàn là 550m2&lt;/p&gt;\r\n\r\n&lt;p&gt;Tên Công trình : Thi công Kiến trúc Tân cổ điển Lâu đài Mộc Châu - Sơn La Chủ Đầu tư: A. Trần Công Tiến Địa điểm XD: Đông Sang - Mộc Châu - Sơn La&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;http://localhost/dev.baby/huannn-image/catalog/Slide1.jpg&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;http://localhost/dev.baby/huannn-image/catalog/slide2.jpg&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Đội ngũ thi công cùng KTS Nguyễn Đức Thành và KTS Trần Minh Cường tại công trình ở Mộc Châu- Sơn La&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;http://localhost/dev.baby/huannn-image/catalog/slide3.jpg&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;http://localhost/dev.baby/huannn-image/catalog/Slide6.jpg&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Tại sao bạn lại chọn CENTA là Đối tác: - Với phong cách thiết kế chuyên nghiệp, luôn luôn cập nhật và sáng tạo các phong cách thiết kế độc đáo nhằm đáp ứng nhu cầu ngày càng cao của khách hàng. - CENTA luôn đem đến cho khách hàng những bản thiết kế nội thất có phong cách khác biệt, đẳng cấp...đồng thời sẵn sàng thực hiện các đơn đặt hàng thi công trọn gói cho căn hộ chung cư, nhà lô phố, biệt thự...đúng theo bản vẽ thiết kế đã được khách hàng phê duyệt. - Chúng tôi dành trọn tâm huyết, thời gian để tập hợp, nghiên cứu những kiến thức, các phong cách thiết kế nội thất quý giá bậc nhất trên thế giới. Và đã qua kinh nghiệm thiết kế, thi công hàng trăm công trình lớn nhỏ. - Chúng tôi luôn tìm kiếm và áp dụng những vật tư, thiết bị, công nghệ kỹ thuật cao ứng dụng vào trong các dự án của mình. - Với uy tín, kinh nghiệm trong lĩnh vực thiết kế nội thất, CENTA hoàn toàn có đủ năng lực tạo sự uy tín đối với khách hàng có nhu cầu về thiết kế thi công Kiến trúc và kết cấu. - Ngôi nhà của bạn được thi công xay dựng bởi đội ngũ kĩ thuật lành nghề và đội giám sát thi công chuyên nghiệp để đảm bảo chất lượng tốt nhất, tiến độ đúng cam kết.&lt;/p&gt;\r\n', '', 'Thiết kế biệt thự', '', '');
INSERT INTO `huannn_news_description` VALUES ('93', '2', 'Thiết kế nội thất phòng họp đẹp hiện đại và chuyên nghiệp', '&lt;p style=&quot;text-align:justify&quot;&gt;Thiết kế nội thất phòng họp, chuyên trang trí thiết kế các phòng họp. Thiết kế phòng họp hiện đại, chi phí thấp. Phong cách thiết kế Châu Âu sẽ được ACT Miền Bắc đưa vào các dự án cho khách hàng.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;&lt;a href=&quot;https://www.actmienbac.vn/thiet-ke-noi-that-phong-hop.html&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: windowtext; text-decoration-line: none;&quot;&gt;&lt;span style=&quot;color:rgb(255, 0, 102)&quot;&gt;&lt;strong&gt;Thiết kế nội thất phòng họp&lt;/strong&gt;&lt;/span&gt;&lt;/a&gt;&amp;nbsp;đóng một vai trò hết sức quan trọng trong quá trình xây dựng công ty, phòng họp là nơi đưa ra những ý tưởng, những định hướng cho công việc của mọi người, đây là nơi mọi người có thể đề xuất ý kiến của bản thân mình. Vì vậy, phòng họp thường được các công ty đặc biệt quan tâm, vậy làm thế nào để có được một không gian làm việc thoải mái và hiệu quả.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;https://www.actmienbac.vn/huannn-image/catalog/V%C4%83n%20Ph%C3%B2ng/ban%20hop%20dep.jpg&quot; style=&quot;border:0px; box-sizing:border-box; display:block; height:auto; margin:15px auto; max-width:100%; vertical-align:middle; width:750px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;Việc lựa chọn và bố trí nội thất cho phòng họp sao cho phù hợp và hợp phong thủy là việc không hề dễ. Thêm vào đó, khi&amp;nbsp;&lt;strong&gt;thiết kế&lt;/strong&gt;&amp;nbsp;&lt;strong&gt;phòng họp&lt;/strong&gt;&amp;nbsp;cần để dành chỗ cho những phương tiện, công cụ được sử dụng trong quá trình đàm phán, ví dụ như màn hình chiếu, loa, âm thanh. Đây đều là những nhân tố phụ trợ nâng cao khả năng thành công của đàm phán kinh doanh.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;https://www.actmienbac.vn/huannn-image/catalog/V%C4%83n%20Ph%C3%B2ng/ban%20phong%20hop.jpg&quot; style=&quot;border:0px; box-sizing:border-box; display:block; height:auto; margin:15px auto; max-width:100%; vertical-align:middle; width:750px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;Trong thi công nội thất văn phòng nhất là đối với việc&amp;nbsp;&lt;strong&gt;&lt;em&gt;thiết kế phòng họp&lt;/em&gt;&amp;nbsp;&lt;/strong&gt;cao cấp&amp;nbsp;phải căn cứ vào độ rộng hẹp của không gian, sự hợp lý về mặt hình dáng để sắp xếp tạo hình, kích thước, số lượng chỗ ngồi của bàn hội nghị.&amp;nbsp;Ngoài ra còn phải tính toán đến việc bố trí bàn ghế như thế nào để có không gian lưu thông bốn mặt xung quanh.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;https://www.actmienbac.vn/huannn-image/catalog/V%C4%83n%20Ph%C3%B2ng/thiet%20ke%20noi%20that%20phong%20hop.jpg&quot; style=&quot;border:0px; box-sizing:border-box; display:block; height:auto; margin:15px auto; max-width:100%; vertical-align:middle; width:750px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;Với mỗi kiểu dáng của bàn họp và số lượng nhân viên trong công ty mà lựa chọn kiểu ghế phòng họp là khác nhau. Tuy nhiên, ghế phòng họp phải được lựa chọn sao cho tạo cảm giác thoải mái, đỡ căng thẳng cho người tham gia cuộc họp.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;Tiêu chí quan trọng để&amp;nbsp;&lt;a href=&quot;https://www.actmienbac.vn/van-phong/thiet-ke-noi-that-phong-hop.html&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: windowtext; text-decoration-line: none;&quot;&gt;&lt;span style=&quot;color:rgb(255, 0, 102)&quot;&gt;&lt;strong&gt;thiết kế nội thất phòng họp&lt;/strong&gt;&lt;/span&gt;&lt;/a&gt;&amp;nbsp;hiện đại, đó là hướng đến sự hài hòa giữa công năng sử dụng và hình ảnh thẩm mỹ. Đây cũng là một xu hướng chung cho các công trình thiết kế nội thất hiện nay.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;https://www.actmienbac.vn/huannn-image/catalog/V%C4%83n%20Ph%C3%B2ng/act-mien-bac-cong-ty-thiet-ke-noi-that-van-phong-dep-tai-ha-noi.jpg&quot; style=&quot;border:0px; box-sizing:border-box; display:block; height:auto; margin:15px auto; max-width:100%; vertical-align:middle; width:750px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;Mục đích chính của một&amp;nbsp;&lt;strong&gt;&lt;a href=&quot;https://www.actmienbac.vn/thiet-ke-noi-that&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: windowtext; text-decoration-line: none;&quot;&gt;&lt;span style=&quot;color:rgb(255, 0, 102)&quot;&gt;thiết kế thi công nội thất&lt;/span&gt;&lt;/a&gt;&lt;span style=&quot;color:rgb(255, 0, 102)&quot;&gt;&amp;nbsp;phòng họp&lt;/span&gt;&lt;/strong&gt;, chính là phục vụ nhu cầu sử dụng của con người. Chính vì thế mà tiêu chí đầu tiên mà một thiết kế nội thất phòng họp cần chú trọng, đó là tối ưu hóa công năng nội thất. Nội thất được lựa chọn sử dụng và trang trí trong không gian cần được chọn lọc tỉ mỉ tương ứng với chức năng cần thiết. đồng thời không nên quá rườm rà trong cách bố trí và trang trí, tạo nên sự tiện lợi tốt nhất khi sử dụng…&lt;br /&gt;\r\nTrong khi thiết kế không gian nội thất phòng họp phải căn cứ vào độ rộng hẹp của không gian, sự hợp lý về mặt hình dàng để sắp xếp tạo hình, kích thước, số lượng chỗ ngồi của bàn hội nghị.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;https://www.actmienbac.vn/huannn-image/catalog/V%C4%83n%20Ph%C3%B2ng/phong-hop.jpg&quot; style=&quot;border:0px; box-sizing:border-box; display:block; height:auto; margin:15px auto; max-width:100%; vertical-align:middle; width:750px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;Ngoài ra còn phải tính toán đến việc bố trí bàn ghế như thế nào để có không gian lưu thông bốn mặt xung quanh. Các bạn sẽ nắm rõ hơn khi tham khảo bài viết:&amp;nbsp;&lt;u&gt;&lt;a href=&quot;https://www.actmienbac.vn/thiet-ke-noi-that-van-phong-chuyen-nghiep-cot-loi-lam-nen-su-phat-trien-cua-doanh-nghiep.html&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: windowtext; text-decoration-line: none;&quot;&gt;&lt;strong&gt;thiết kế nội thất phòng làm việc chuyên nghiệp&lt;/strong&gt;&lt;/a&gt;.&lt;/u&gt;&lt;br /&gt;\r\nYếu tố cần phải chú ý trong trang trí nội thất với phòng họp sang trọng đó là hình ảnh thẩm mỹ. Một phòng họp đẹp, tiện nghi, trước hết phải được sắp xếp khoa học và gọn gàng về mặt nội thất. Bên cạnh đó, sự phổi hợp giữa nội thất và cấu trúc không gian nên được bố trí hài hòa. Phòng họp nên được trang trí với các tông màu nhẹ nhàng, tươi sáng, với đầy đủ ánh sáng, để mang lại cảm giác thoải mái, dễ chịu cho những người tham gia.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;https://www.actmienbac.vn/huannn-image/catalog/V%C4%83n%20Ph%C3%B2ng/thiet-ke-noi-that-van-phong-dep-hop-xu-huong-3.jpg&quot; style=&quot;border:0px; box-sizing:border-box; display:block; height:auto; margin:15px auto; max-width:100%; vertical-align:middle; width:750px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;Là một vấn đề nhỏ, nhưng quan trọng trong các thiết kế nội thất phòng họp hợp phong thủy mà bạn cần chú ý.&amp;nbsp;&lt;a href=&quot;https://www.actmienbac.vn/phong-thuy-trong-thiet-ke-noi-that-van-phong.html&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: windowtext; text-decoration-line: none;&quot;&gt;&lt;span style=&quot;color:rgb(255, 0, 102)&quot;&gt;&lt;strong&gt;Phong thủy văn phòng&lt;/strong&gt;&lt;/span&gt;&lt;/a&gt;&amp;nbsp;tốt sẽ mang đến sự thịnh vượng và trôi chảy cho các công việc và hoạt động của cơ quan, công ty. Với phòng họp, nên chú ý sử dụng các màu sắc trung tính, ánh sáng tươi sáng để tạo nên bầu không khí hài hòa, giảm bớt đi tính chất căng thẳng của không gian. Mặt khác, các nội thất nên được chọn lựa tỉ mỉ để giảm bớt tính đối kháng trong phòng họp.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;https://www.actmienbac.vn/huannn-image/catalog/V%C4%83n%20Ph%C3%B2ng/thiet-ke-noi-that-phong-hop-12.jpg&quot; style=&quot;border:0px; box-sizing:border-box; display:block; height:auto; margin:15px auto; max-width:100%; vertical-align:middle; width:750px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;Không gian phòng họp nhỏ nhưng vô cùng sang trọng, hiện đại và bắt mắt bằng cách kết hợp màu sắc bàn ghế phòng họp với trang trí phòng họp.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;Nhu cầu&amp;nbsp;&lt;em&gt;&lt;strong&gt;thiết kế nội thất phòng họp cao cấp&lt;/strong&gt;&lt;/em&gt;, sang trọng ngày càng được các chủ doanh nghiệp đầu tư nhiều hơn để mang lại không gian phòng họp đảm bảo đúng chức năng và tính thẩm mỹ cao. Thiết kế nội thất phòng họp đẹp để làm sao vừa tạo được một không gian giao tiếp hiệu quả nhất vừa hợp sang trọng, hiện đại, hợp phong thủy nhằm tạo ra nét riêng biệt, đặc sắc cho mỗi doanh nghiệp...&amp;nbsp;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;Phòng họp là nơi trao đổi bàn bạc các vấn đề quan trọng liên quan tới phương hướng phát triển của công ty. Do đó khi&amp;nbsp;&lt;a href=&quot;https://www.actmienbac.vn/van-phong&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: windowtext; text-decoration-line: none;&quot;&gt;&lt;span style=&quot;color:rgb(255, 0, 102)&quot;&gt;&lt;strong&gt;thiết kế nội thất văn phòng&lt;/strong&gt;&lt;/span&gt;&lt;/a&gt;&amp;nbsp;thì cần phải tư vấn&amp;nbsp;&lt;em&gt;&lt;strong&gt;thiết kế phòng họp chuyên nghiệp&lt;/strong&gt;&lt;/em&gt;&amp;nbsp;cho chủ đầu tư để tạo ra không gian nội thất cởi mở, tiện nghi, cảm giác thoải mái, nâng cao hiệu quả cao cho các cuộc họp.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;https://www.actmienbac.vn/huannn-image/catalog/V%C4%83n%20Ph%C3%B2ng/thiet-ke-noi-that-phong-hop-13.jpg&quot; style=&quot;border:0px; box-sizing:border-box; display:block; height:auto; margin:15px auto; max-width:100%; vertical-align:middle; width:750px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;Với thiết kế nội thất phòng họp sang trọng thì việc lựa chọn và sắp đặt đồ nội thất là rất quan trọng. Một chiếc bàn với kiểu dáng độc đáo, chất liệu gỗ cao cấp sẽ khiến cho căn phòng họp của bạn trở nên sang trọng đẳng cấp hơn. Một chiếc ghế dạng xoay với thiết kế mới lạ, bọc da cao cấp mang lại sự thoải mái trong suốt quá trình họp. Đối với cửa sổ, thiết kế trong suốt và có thể mở rộng để đón ánh nắng mặt trời giúp tạo không gian mở, thoáng đãng giảm căng thẳng cho cuộc họp.&lt;br /&gt;\r\nACT Miền Bắc với đội ngũ nhân viên tư vấn, thiết kế có trình độ chuyên môn cao, luôn sáng tạo với ý tưởng độc đáo cùng đội ngũ&amp;nbsp;thi công thiết kế chuyên nghiệp&amp;nbsp;và giàu kinh nghiệm đã, đang phục vụ và làm hài lòng hàng triệu khách hàng có nhu cầu&amp;nbsp;&lt;u&gt;&lt;strong&gt;tư vấn thiết kế phòng họp&lt;/strong&gt;&lt;/u&gt;.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;https://www.actmienbac.vn/huannn-image/catalog/V%C4%83n%20Ph%C3%B2ng/thiet-ke-noi-that-phong-hop-15.jpg&quot; style=&quot;border:0px; box-sizing:border-box; display:block; height:auto; margin:15px auto; max-width:100%; vertical-align:middle; width:750px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;Nhận thấy phòng họp có vai trò quan trọng để bàn bạc và đưa ra các quyết định có tính chiến lược cho sự phát triển của công ty nên chúng tôi luôn thiết kế phòng họp cao cấp đảm bảo tiêu chí hiện đại, sang trọng và kín đáo. Tùy theo diện tích căn phòng mà có thể bố trí&amp;nbsp;&lt;em&gt;thiết kế nội thất phòng họp&lt;/em&gt;&amp;nbsp;giá rẻ sao cho vừa hợp lý vừa tiết kiệm chi phí nhất có thể. Trong phòng có thể bố trí thêm chậu cây xanh, lọ hoa để tạo cảm giác mới mẻ cho căn phòng.&lt;/p&gt;\r\n\r\n&lt;div id=&quot;___plus_0&quot; style=&quot;box-sizing: border-box; font-family: &amp;quot;Roboto Slab&amp;quot;, serif; background: transparent; margin: 0px; padding: 0px; border-style: none; float: none; line-height: normal; font-size: 1px; vertical-align: baseline; display: inline-block; width: 59px; height: 20px;&quot;&gt;&lt;iframe frameborder=&quot;0&quot; id=&quot;I0_1537461327005&quot; name=&quot;I0_1537461327005&quot; scrolling=&quot;no&quot; src=&quot;https://apis.google.com/se/0/_/+1/sharebutton?plusShare=true&amp;amp;usegapi=1&amp;amp;action=share&amp;amp;origin=https%3A%2F%2Fwww.actmienbac.vn&amp;amp;url=https%3A%2F%2Fwww.actmienbac.vn%2Fthiet-ke-noi-that-phong-hop.html&amp;amp;gsrc=3p&amp;amp;ic=1&amp;amp;jsh=m%3B%2F_%2Fscs%2Fapps-static%2F_%2Fjs%2Fk%3Doz.gapi.en_US.e6M76vkJvxk.O%2Fam%3DwQ%2Frt%3Dj%2Fd%3D1%2Frs%3DAGLTcCOesjqMGXigh5Qj5K64-UjIUlhBaQ%2Fm%3D__features__#_methods=onPlusOne%2C_ready%2C_close%2C_open%2C_resizeMe%2C_renderstart%2Concircled%2Cdrefresh%2Cerefresh&amp;amp;id=I0_1537461327005&amp;amp;_gfid=I0_1537461327005&amp;amp;parent=https%3A%2F%2Fwww.actmienbac.vn&amp;amp;pfname=&amp;amp;rpctoken=30170413&quot; style=&quot;box-sizing: border-box; position: static; top: 0px; width: 59px; margin: 0px; border-style: none; left: 0px; visibility: visible; height: 20px;&quot; title=&quot;G+&quot; width=&quot;100%&quot;&gt;&lt;/iframe&gt;&lt;iframe frameborder=&quot;0&quot; id=&quot;I1_1537461337703&quot; name=&quot;I1_1537461337703&quot; scrolling=&quot;no&quot; src=&quot;https://apis.google.com/u/0/se/0/_/+1/sharebutton?plusShare=true&amp;amp;usegapi=1&amp;amp;action=share&amp;amp;origin=https%3A%2F%2Fwww.actmienbac.vn&amp;amp;url=https%3A%2F%2Fwww.actmienbac.vn%2Fthiet-ke-noi-that-phong-hop.html&amp;amp;gsrc=3p&amp;amp;jsh=m%3B%2F_%2Fscs%2Fapps-static%2F_%2Fjs%2Fk%3Doz.gapi.en_US.e6M76vkJvxk.O%2Fam%3DwQ%2Frt%3Dj%2Fd%3D1%2Frs%3DAGLTcCOesjqMGXigh5Qj5K64-UjIUlhBaQ%2Fm%3D__features__#_methods=onPlusOne%2C_ready%2C_close%2C_open%2C_resizeMe%2C_renderstart%2Concircled%2Cdrefresh%2Cerefresh&amp;amp;id=I1_1537461337703&amp;amp;_gfid=I1_1537461337703&amp;amp;parent=https%3A%2F%2Fwww.actmienbac.vn&amp;amp;pfname=&amp;amp;rpctoken=34592156&quot; style=&quot;box-sizing: border-box; position: absolute; top: -10000px; width: 450px; margin: 0px; border-style: none;&quot; width=&quot;100%&quot;&gt;&lt;/iframe&gt;&lt;/div&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;font-family:roboto slab,serif; font-size:14px&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;div class=&quot;fb-like pull-right&quot; style=&quot;box-sizing: border-box; float: right; font-family: &amp;quot;Roboto Slab&amp;quot;, serif; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;div class=&quot;fb-comments&quot; style=&quot;box-sizing: border-box; font-family: &amp;quot;Roboto Slab&amp;quot;, serif; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;row&quot; style=&quot;box-sizing: border-box; margin-right: -15px; margin-left: -15px; font-family: &amp;quot;Roboto Slab&amp;quot;, serif; font-size: 14px;&quot;&gt;\r\n&lt;div class=&quot;col-sm-12&quot; style=&quot;box-sizing: border-box; position: relative; min-height: 1px; padding-right: 15px; padding-left: 15px; float: left; width: 780px;&quot;&gt;\r\n&lt;div class=&quot;tinmoi&quot; style=&quot;box-sizing: border-box; margin-bottom: 15px;&quot;&gt;\r\n&lt;h3&gt;Tin mới&lt;/h3&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;&lt;a href=&quot;https://www.actmienbac.vn/cach-tao-an-tuong-cho-mau-thiet-ke-showroom-ban-dang-can.html&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: windowtext; text-decoration-line: none;&quot; title=&quot;Cách Tạo Ấn Tượng Cho Mẫu Thiết Kế Showroom Bạn Đang Cần&quot;&gt;Cách Tạo Ấn Tượng Cho Mẫu Thiết Kế Showroom Bạn Đang Cần&lt;/a&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;tinmoi&quot; style=&quot;box-sizing: border-box; margin-bottom: 15px;&quot;&gt;\r\n&lt;h3&gt;Các tin khác&lt;/h3&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;&lt;a href=&quot;https://www.actmienbac.vn/thiet-ke-noi-that-bar-cafe-dep-me-man.html&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: windowtext; text-decoration-line: none;&quot; title=&quot;Thiết kế nội thất bar cafe đẹp mê mẩn&quot;&gt;Thiết kế nội thất bar cafe đẹp mê mẩn&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;https://www.actmienbac.vn/thiet-ke-noi-that-van-phong-dep-sang-trong-va-hop-xu-huong.html&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: windowtext; text-decoration-line: none;&quot; title=&quot;Cách thiết kế nội thất văn phòng làm việc đẹp sang trọng và hợp xu hướng hiện nay&quot;&gt;Cách thiết kế nội thất văn phòng làm việc đẹp sang trọng và hợp xu hướng hiện nay&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;https://www.actmienbac.vn/cach-tao-an-tuong-cho-mau-thiet-ke-showroom-ban-dang-can.html&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: windowtext; text-decoration-line: none;&quot; title=&quot;Cách Tạo Ấn Tượng Cho Mẫu Thiết Kế Showroom Bạn Đang Cần&quot;&gt;Cách Tạo Ấn Tượng Cho Mẫu Thiết Kế Showroom Bạn Đang Cần&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;https://www.actmienbac.vn/thiet-ke-noi-that-van-phong-chuyen-nghiep-cot-loi-lam-nen-su-phat-trien-cua-doanh-nghiep.html&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: windowtext; text-decoration-line: none;&quot; title=&quot;Thiết kế nội thất văn phòng chuyên nghiệp – cốt lõi làm nên sự phát triển “thần tốc” của doanh nghiệp&quot;&gt;Thiết kế nội thất văn phòng chuyên nghiệp – cốt lõi làm nên sự phát triển “thần tốc” của doanh nghiệp&lt;/a&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;tinmoi&quot; style=&quot;box-sizing: border-box; margin-bottom: 15px;&quot;&gt;\r\n&lt;h3&gt;Tin cùng chủ đề&lt;/h3&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;&lt;a href=&quot;https://www.actmienbac.vn/yeu-to-quan-trong-cua-phuong-an-thiet-ke-van-phong-dep.html&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: windowtext; text-decoration-line: none;&quot; title=&quot;3 Yếu tố quan trọng làm nên nét sang trọng, thân thiện của phương án thiết kế văn phòng đẹp&quot;&gt;3 Yếu tố quan trọng làm nên nét sang trọng, thân thiện của phương án thiết kế văn phòng đẹp&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;https://www.actmienbac.vn/chon-cong-ty-xay-dung-nha-pho-chuyen-nghiep-de-duoc-lam-chu-ngoi-nha-dep.html&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: windowtext; text-decoration-line: none;&quot; title=&quot;Chọn công ty xây dựng nhà phố chuyên nghiệp để được làm chủ ngôi nhà đẹp&quot;&gt;Chọn công ty xây dựng nhà phố chuyên nghiệp để được làm chủ ngôi nhà đẹp&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;https://www.actmienbac.vn/kien-tao-khong-gian-song-dang-cap-voi-bi-quyet-thiet-ke-noi-that-biet-thu-dep.html&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: windowtext; text-decoration-line: none;&quot; title=&quot;Kiến tạo không gian sống đẳng cấp với bí quyết thiết kế nội thất biệt thự đẹp&quot;&gt;Kiến tạo không gian sống đẳng cấp với bí quyết thiết kế nội thất biệt thự đẹp&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;https://www.actmienbac.vn/thiet-ke-kien-truc-noi-that-dep-va-nhung-loi-ich-dat-duoc.html&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: windowtext; text-decoration-line: none;&quot; title=&quot;Thiết kế kiến trúc nội thất đẹp và những lợi ích đạt được&quot;&gt;Thiết kế kiến trúc nội thất đẹp và những lợi ích đạt được&lt;/a&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n', '', 'Thiết kế biệt thự Pháp', '', '');
INSERT INTO `huannn_news_description` VALUES ('93', '3', 'Thiết kế biệt thự Pháp', '', '', 'Thiết kế biệt thự Pháp', '', '');
INSERT INTO `huannn_news_description` VALUES ('94', '2', 'Thiết kế nhà vườn', '&lt;p&gt;Công Ty CENTA thực hiện thi công Kiến trúc lâu đài theo phong cách Tân cổ điển cho gia đình A. Tiến tại Mộc Châu - TP. Sơn La. Ngôi biêt thự có quy mô 2 tầng có mái vòm với tổng diện tích sàn là 550m2&lt;/p&gt;\r\n\r\n&lt;p&gt;Tên Công trình : Thi công Kiến trúc Tân cổ điển Lâu đài Mộc Châu - Sơn La Chủ Đầu tư: A. Trần Công Tiến Địa điểm XD: Đông Sang - Mộc Châu - Sơn La&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;http://localhost/dev.baby/huannn-image/catalog/Slide1.jpg&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;http://localhost/dev.baby/huannn-image/catalog/slide2.jpg&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Đội ngũ thi công cùng KTS Nguyễn Đức Thành và KTS Trần Minh Cường tại công trình ở Mộc Châu- Sơn La&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;http://localhost/dev.baby/huannn-image/catalog/slide3.jpg&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;http://localhost/dev.baby/huannn-image/catalog/Slide6.jpg&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Tại sao bạn lại chọn CENTA là Đối tác: - Với phong cách thiết kế chuyên nghiệp, luôn luôn cập nhật và sáng tạo các phong cách thiết kế độc đáo nhằm đáp ứng nhu cầu ngày càng cao của khách hàng. - CENTA luôn đem đến cho khách hàng những bản thiết kế nội thất có phong cách khác biệt, đẳng cấp...đồng thời sẵn sàng thực hiện các đơn đặt hàng thi công trọn gói cho căn hộ chung cư, nhà lô phố, biệt thự...đúng theo bản vẽ thiết kế đã được khách hàng phê duyệt. - Chúng tôi dành trọn tâm huyết, thời gian để tập hợp, nghiên cứu những kiến thức, các phong cách thiết kế nội thất quý giá bậc nhất trên thế giới. Và đã qua kinh nghiệm thiết kế, thi công hàng trăm công trình lớn nhỏ. - Chúng tôi luôn tìm kiếm và áp dụng những vật tư, thiết bị, công nghệ kỹ thuật cao ứng dụng vào trong các dự án của mình. - Với uy tín, kinh nghiệm trong lĩnh vực thiết kế nội thất, CENTA hoàn toàn có đủ năng lực tạo sự uy tín đối với khách hàng có nhu cầu về thiết kế thi công Kiến trúc và kết cấu. - Ngôi nhà của bạn được thi công xay dựng bởi đội ngũ kĩ thuật lành nghề và đội giám sát thi công chuyên nghiệp để đảm bảo chất lượng tốt nhất, tiến độ đúng cam kết.&lt;/p&gt;\r\n', '', 'Thiết kế nhà vườn', '', '');
INSERT INTO `huannn_news_description` VALUES ('94', '3', 'Thiết kế nhà vườn', '', '', 'Thiết kế nhà vườn', '', '');
INSERT INTO `huannn_news_description` VALUES ('95', '2', 'Thiết kế nhà ống', '&lt;p&gt;Công Ty CENTA thực hiện thi công Kiến trúc lâu đài theo phong cách Tân cổ điển cho gia đình A. Tiến tại Mộc Châu - TP. Sơn La. Ngôi biêt thự có quy mô 2 tầng có mái vòm với tổng diện tích sàn là 550m2&lt;/p&gt;\r\n\r\n&lt;p&gt;Tên Công trình : Thi công Kiến trúc Tân cổ điển Lâu đài Mộc Châu - Sơn La Chủ Đầu tư: A. Trần Công Tiến Địa điểm XD: Đông Sang - Mộc Châu - Sơn La&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;http://localhost/dev.baby/huannn-image/catalog/Slide1.jpg&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;http://localhost/dev.baby/huannn-image/catalog/slide2.jpg&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Đội ngũ thi công cùng KTS Nguyễn Đức Thành và KTS Trần Minh Cường tại công trình ở Mộc Châu- Sơn La&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;http://localhost/dev.baby/huannn-image/catalog/slide3.jpg&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;http://localhost/dev.baby/huannn-image/catalog/Slide6.jpg&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Tại sao bạn lại chọn CENTA là Đối tác: - Với phong cách thiết kế chuyên nghiệp, luôn luôn cập nhật và sáng tạo các phong cách thiết kế độc đáo nhằm đáp ứng nhu cầu ngày càng cao của khách hàng. - CENTA luôn đem đến cho khách hàng những bản thiết kế nội thất có phong cách khác biệt, đẳng cấp...đồng thời sẵn sàng thực hiện các đơn đặt hàng thi công trọn gói cho căn hộ chung cư, nhà lô phố, biệt thự...đúng theo bản vẽ thiết kế đã được khách hàng phê duyệt. - Chúng tôi dành trọn tâm huyết, thời gian để tập hợp, nghiên cứu những kiến thức, các phong cách thiết kế nội thất quý giá bậc nhất trên thế giới. Và đã qua kinh nghiệm thiết kế, thi công hàng trăm công trình lớn nhỏ. - Chúng tôi luôn tìm kiếm và áp dụng những vật tư, thiết bị, công nghệ kỹ thuật cao ứng dụng vào trong các dự án của mình. - Với uy tín, kinh nghiệm trong lĩnh vực thiết kế nội thất, CENTA hoàn toàn có đủ năng lực tạo sự uy tín đối với khách hàng có nhu cầu về thiết kế thi công Kiến trúc và kết cấu. - Ngôi nhà của bạn được thi công xay dựng bởi đội ngũ kĩ thuật lành nghề và đội giám sát thi công chuyên nghiệp để đảm bảo chất lượng tốt nhất, tiến độ đúng cam kết.&lt;/p&gt;\r\n', '', 'Thiết kế nhà ống', '', '');
INSERT INTO `huannn_news_description` VALUES ('95', '3', 'Thiết kế nhà ống', '', '', 'Thiết kế nhà ống', '', '');
INSERT INTO `huannn_news_description` VALUES ('96', '2', 'Thiết kế kiến trúc nội thất đẹp và những lợi ích đạt được', '&lt;p style=&quot;text-align:justify&quot;&gt;&lt;a href=&quot;https://www.actmienbac.vn/thiet-ke-kien-truc&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: windowtext; text-decoration-line: none;&quot;&gt;&lt;strong&gt;Thiết kế kiến trúc nội thất&lt;/strong&gt;&lt;/a&gt;&amp;nbsp;là phần công việc được thực hiện sau khi đã hoàn thành xong phần kiến trúcngoại thất và cảnh quan công trình, đây là công đoạn khá quan trọng để làm nên sự hoàn mỹ cho tổng thể một công năng bất kỳ nào đó. Sự hoàn hảo của một không gian công trình từ nhà ở đến văn phòng làm việc, nhà hàng, showroom,… đều cần phải được kết hợp hài hòa rất nhiều yếu tố như: màu sắc; ánh sáng; chất liệu nội thất; cách bài trí; xếp đặt, như thế mới đảm bảo được tính thẩm mỹ.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:center&quot;&gt;&lt;img alt=&quot;thiet-ke-kien-truc-noi-that-dep-va-nhung-loi-ich-dat-duoc&quot; src=&quot;https://www.actmienbac.vn/huannn-image/catalog/Thiet%20Ke%20Kien%20Truc/thiet-ke-kien-truc-noi-that-dep-va-nhung-loi-ich-dat-duoc.jpg&quot; style=&quot;border:0px; box-sizing:border-box; display:block; height:auto; margin:15px auto; max-width:100%; vertical-align:middle; width:750px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:center&quot;&gt;&lt;em&gt;&lt;span style=&quot;font-size:12px&quot;&gt;&lt;a href=&quot;https://www.actmienbac.vn/thiet-ke-kien-truc-noi-that-dep-va-nhung-loi-ich-dat-duoc.html#&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: windowtext; text-decoration-line: none;&quot;&gt;Thiết kế kiến trúc nội thất&lt;/a&gt;&amp;nbsp;rất quan trọng&lt;/span&gt;&lt;/em&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;&lt;span style=&quot;font-size:16px&quot;&gt;&lt;strong&gt;Tại sao cần phải&amp;nbsp;&lt;a href=&quot;https://www.actmienbac.vn/thiet-ke-kien-truc-noi-that-dep-va-nhung-loi-ich-dat-duoc.html#&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: windowtext; text-decoration-line: none;&quot;&gt;thiết kế kiến trúc nội thất&lt;/a&gt;&amp;nbsp;đẹp?&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;&lt;a href=&quot;https://www.actmienbac.vn/&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: windowtext; text-decoration-line: none;&quot;&gt;&lt;strong&gt;Thiết kế kiến trúc nội thất đẹp&lt;/strong&gt;&lt;/a&gt;&amp;nbsp;thật sự rất cần thiết, bởi lẽ bất kỳ công trình nào cũng cần phải đảm bảo sự tinh tế, hiện đại và sang trọng cho không gian bên trong nó. Không những thế, nội thất trang nhã; bài trí sinh động và hấp dẫn sẽ làm xao xuyến, rung động tim người đối diện, hoặc gây kích thích; tò mò nếu công trình của bạn là nơi dành cho kinh doanh, buôn bán hay trưng bày sản phẩm.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;Sự chỉnh chu trong cách&amp;nbsp;&lt;a href=&quot;https://www.actmienbac.vn/thiet-ke-noi-that&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: windowtext; text-decoration-line: none;&quot;&gt;&lt;strong&gt;thiết kế nội thất&lt;/strong&gt;&lt;/a&gt;, bài trí có tính trật tự khoa học, bố cục hài hòa và cân xứng với tất cả các yếu tố có trong không gian, tất cả sẽ tạo nên vẻ đẹp hoàn mỹ, chinh phục và “đốn ngã” hàng vạn con tim. Việc sắp xếp đồ đạc, nội thất hợp lý đem đến sự gọn gàng; ngăn nắp và tăng tính tiện lợi; thuận tiện. Nếu được tính toán ngay từ lúc khởi đầu, chúng ta có thể tận dụng được tối đa diện tích và đưa ra được mức chi phí hợp lý nhất cho việc thiết kế ngay từ ban đầu.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:center&quot;&gt;&lt;img alt=&quot;thiet-ke-kien-truc-noi-that-dep-va-nhung-loi-ich-dat-duoc-1&quot; src=&quot;https://www.actmienbac.vn/huannn-image/catalog/Thiet%20Ke%20Kien%20Truc/thiet-ke-kien-truc-noi-that-dep-va-nhung-loi-ich-dat-duoc-1.jpg&quot; style=&quot;border:0px; box-sizing:border-box; display:block; height:auto; margin:15px auto; max-width:100%; vertical-align:middle; width:750px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:center&quot;&gt;&lt;span style=&quot;font-size:12px&quot;&gt;&lt;em&gt;Cách bài trí nội thất hiện đại&lt;/em&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;&lt;span style=&quot;font-size:16px&quot;&gt;&lt;strong&gt;Vì sao cần phải thuê một đơn vị thiết kế nội thất chuyên nghiệp?&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;&lt;strong&gt;&lt;a href=&quot;https://www.actmienbac.vn/&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: windowtext; text-decoration-line: none;&quot;&gt;Tư vấn thiết kế kiến trúc nội thất&lt;/a&gt;&amp;nbsp;&lt;/strong&gt;&amp;nbsp;là cả một quá trình kỳ công, không chỉ đơn thuần là lên phương án sắp xếp không gian hợp lý, mà còn cần phải đảm bảo sự hài hòa về mặt thẩm mỹ của rất nhiều yếu tố. Do đó việc lựa chọn một nhà thầu, đơn vị thiết kế xây dựng uy tín là rất cần thiết bởi các kiến trúc sư sẽ thay thế bạn làm nên vẻ đẹp thật hoàn mỹ và đáp ứng mọi yêu cầu của bạn.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;Một công trình đẹp cần được tư vấn, chọn&amp;nbsp;&lt;em&gt;&lt;strong&gt;phong cách thiết kế nội thất&lt;/strong&gt;&lt;/em&gt;&amp;nbsp;phù hợp, với vô vàn các mẫu thiết kế đa dạng trên thị trường hiện nay, các kiến trúc sư của nhà thầu sẽ giúp bạn lựa chọn được ý tưởng, phong cách thiết kế nội thất phù hợp với niềm mong mỏi và khát khao của bạn. Một&amp;nbsp;&lt;em&gt;&lt;strong&gt;đơn vị thiết kế nội thất chuyên nghiệp&lt;/strong&gt;&lt;/em&gt;sẽ nhanh chóng nắm bắt được nhu cầu, mong muốn của bạn và thể hiện chính xác chúng ngay trên mẫu thiết kế, điều này sẽ giúp bạn tiết kiệm được thời gian; tiền bạc và công sức.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:center&quot;&gt;&lt;img alt=&quot;thiet-ke-kien-truc-noi-that-dep-va-nhung-loi-ich-dat-duoc-2&quot; src=&quot;https://www.actmienbac.vn/huannn-image/catalog/Thiet%20Ke%20Kien%20Truc/thiet-ke-kien-truc-noi-that-dep-va-nhung-loi-ich-dat-duoc-2.jpg&quot; style=&quot;border:0px; box-sizing:border-box; display:block; height:auto; margin:15px auto; max-width:100%; vertical-align:middle; width:750px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:center&quot;&gt;&lt;span style=&quot;font-size:12px&quot;&gt;&lt;em&gt;Phong cách thiết kế nội thất chuyên nghiệp&lt;/em&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;Là&amp;nbsp;&lt;a href=&quot;https://www.actmienbac.vn/lua-chon-cong-ty-thiet-ke-noi-that-uy-tin-tai-ha-noi.html&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: windowtext; text-decoration-line: none;&quot;&gt;&lt;strong&gt;công ty thiết kế nội thất tại Hà Nội&lt;/strong&gt;&lt;/a&gt;, ACT Miền Bắc với nhiều năm kinh nghiệm, đội ngũ nhân viên làm việc nhiệt tình; hăng hái và đam mê sẽ mang đến cho quý khách hàng những giải pháp&amp;nbsp;&lt;em&gt;&lt;strong&gt;&lt;a href=&quot;https://www.actmienbac.vn/thiet-ke-kien-truc-noi-that-dep-va-nhung-loi-ich-dat-duoc.html#&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: windowtext; text-decoration-line: none;&quot;&gt;thiết kế kiến trúc nội thất&lt;/a&gt;hiện đại&lt;/strong&gt;&lt;/em&gt;&amp;nbsp;phù hợp với yêu cầu, độc đáo nhất. Bằng sự nỗ lực, khẳng định chất lượng dịch vụ và thái độ phục vụ, phong cách thiết kế riêng biệt và đa dạng; giúp hiện thực hóa các ý tưởng thiết kế sáng tạo, ACT Miền Bắc cam kết sẽ đem lại cho tất cả các khách hàng sự trải nghiệm thú vị nhất từ những việc nhỏ nhất.&lt;/p&gt;\r\n', '', 'Thiết kế khách sạn', '', '');
INSERT INTO `huannn_news_description` VALUES ('96', '3', 'Thiết kế khách sạn', '', '', 'Thiết kế khách sạn', '', '');
INSERT INTO `huannn_news_description` VALUES ('97', '2', 'Thiết kế nhà hàng', '&lt;p&gt;Công Ty CENTA thực hiện thi công Kiến trúc lâu đài theo phong cách Tân cổ điển cho gia đình A. Tiến tại Mộc Châu - TP. Sơn La. Ngôi biêt thự có quy mô 2 tầng có mái vòm với tổng diện tích sàn là 550m2&lt;/p&gt;\r\n\r\n&lt;p&gt;Tên Công trình : Thi công Kiến trúc Tân cổ điển Lâu đài Mộc Châu - Sơn La Chủ Đầu tư: A. Trần Công Tiến Địa điểm XD: Đông Sang - Mộc Châu - Sơn La&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;http://localhost/dev.baby/huannn-image/catalog/Slide1.jpg&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;http://localhost/dev.baby/huannn-image/catalog/slide2.jpg&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Đội ngũ thi công cùng KTS Nguyễn Đức Thành và KTS Trần Minh Cường tại công trình ở Mộc Châu- Sơn La&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;http://localhost/dev.baby/huannn-image/catalog/slide3.jpg&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;http://localhost/dev.baby/huannn-image/catalog/Slide6.jpg&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Tại sao bạn lại chọn CENTA là Đối tác: - Với phong cách thiết kế chuyên nghiệp, luôn luôn cập nhật và sáng tạo các phong cách thiết kế độc đáo nhằm đáp ứng nhu cầu ngày càng cao của khách hàng. - CENTA luôn đem đến cho khách hàng những bản thiết kế nội thất có phong cách khác biệt, đẳng cấp...đồng thời sẵn sàng thực hiện các đơn đặt hàng thi công trọn gói cho căn hộ chung cư, nhà lô phố, biệt thự...đúng theo bản vẽ thiết kế đã được khách hàng phê duyệt. - Chúng tôi dành trọn tâm huyết, thời gian để tập hợp, nghiên cứu những kiến thức, các phong cách thiết kế nội thất quý giá bậc nhất trên thế giới. Và đã qua kinh nghiệm thiết kế, thi công hàng trăm công trình lớn nhỏ. - Chúng tôi luôn tìm kiếm và áp dụng những vật tư, thiết bị, công nghệ kỹ thuật cao ứng dụng vào trong các dự án của mình. - Với uy tín, kinh nghiệm trong lĩnh vực thiết kế nội thất, CENTA hoàn toàn có đủ năng lực tạo sự uy tín đối với khách hàng có nhu cầu về thiết kế thi công Kiến trúc và kết cấu. - Ngôi nhà của bạn được thi công xay dựng bởi đội ngũ kĩ thuật lành nghề và đội giám sát thi công chuyên nghiệp để đảm bảo chất lượng tốt nhất, tiến độ đúng cam kết.&lt;/p&gt;\r\n', '', 'Thiết kế nhà hàng', '', '');
INSERT INTO `huannn_news_description` VALUES ('97', '3', 'Thiết kế nhà hàng', '', '', 'Thiết kế nhà hàng', '', '');
INSERT INTO `huannn_news_description` VALUES ('98', '2', 'Tư vấn cách thiết kế spa đẹp hợp xu hướng hiện đại', '&lt;p style=&quot;text-align:justify&quot;&gt;&lt;strong&gt;&lt;a href=&quot;https://www.actmienbac.vn/spa&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: windowtext; text-decoration-line: none;&quot;&gt;Thiết kế spa đẹp&lt;/a&gt;&amp;nbsp;&lt;/strong&gt;sang trọng, ấn tượng sẽ tạo được ấn tượng; thu hút khách hàng hơn. Thế nhưng đây lại không phải là công việc dễ dàng, mà đây là điều “trăn trở” của các chủ đầu tư vì nó đòi hỏi tính chuyên nghiệp; khối óc sáng tạo; khéo léo của người thiết kế. Mới đây, ACT Miền Bắc đã nhận được một câu hỏi của khách hàng là làm thế nào để có thể có thể tạo được vẻ đẹp hoàn mỹ cho không gian spa. Do đó, hôm nay ACT Miền Bắc sẽ giải đáp thắc mắc của vị khách nêu trên và xin được chia sẻ với tất cả các bạn cách thiết kế nội thất spa đẹp hiện đại và thật chuyên nghiệp.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:center&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;https://www.actmienbac.vn/huannn-image/catalog/Spa/tu-van-cach-thiet-ke-spa-dep-hop-xu-huong-hien-dai.jpg&quot; style=&quot;border:0px; box-sizing:border-box; display:block; height:auto; margin:15px auto; max-width:100%; vertical-align:middle; width:750px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;Spa là không gian thư giản, nghỉ ngơi và làm đẹp, nơi giúp các khách hàng có được những giờ phút thoải mái; xóa tan mệt mỏi và căng thẳng. Đây là loại hình kinh doanh ngày càng trở nên thịnh hành và là mảnh đất rất màu mỡ giúp chủ đầu tư thu được nhiều lợi nhuận. Thế nhưng, không phải đơn vị spa nào cũng có thể đứng vững và đạt được nhiều thành công, vì thế nếu muốn phát triển chúng ta cần biết cách&amp;nbsp;&lt;a href=&quot;https://www.actmienbac.vn/&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: windowtext; text-decoration-line: none;&quot;&gt;&lt;strong&gt;thiết kế nội thất spa đẹp&lt;/strong&gt;&lt;/a&gt;hoàn hảo. Và để có được không gian spa tuyệt vời, cuốn hút được khách hàng bạn cần chú ý các vấn đề như sau:&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;Về phong cách thiết kế: chúng ta phải chọn được phong cách thiết kế phù hợp nhất và gần gũi nhất với khách hàng. Đặc thù của spa là tính nhẹ nhàng và thân thiên với thiên nhiên, do đó bạn nên tận dụng nét đẹp các yếu tố tự nhiên để đưa vào không gian spa, điều này sẽ giúp các “thượng đế” cảm thấy thoải mái khi sử dụng dịch vụ tại spa của bạn. Dù chọn bất kỳ phong cách thiết kế nào, bạn cũng cần bài trí thêm các mảng xanh thiên nhiên để tạo sự hưng phấn và dễ chịu cho khách hàng.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;https://www.actmienbac.vn/huannn-image/catalog/Spa/tu-van-cach-thiet-ke-spa-dep-hop-xu-huong-hien-dai-1.jpg&quot; style=&quot;border:0px; box-sizing:border-box; display:block; height:auto; margin:15px auto; max-width:100%; vertical-align:middle; width:750px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;Phối hợp hài hòa giữa màu sắc và ánh sáng:&amp;nbsp;&lt;a href=&quot;https://www.actmienbac.vn/thiet-ke-noi-that&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: windowtext; text-decoration-line: none;&quot;&gt;&lt;em&gt;thiết kế nội thất&lt;/em&gt;&lt;/a&gt;&amp;nbsp;nói chung và&amp;nbsp;&lt;em&gt;thiết kế nội thất spa&lt;/em&gt;&amp;nbsp;nói riêng đều cần có sự kết hợp “ăn ý” của 2 yếu tố màu sắc và ánh sáng. Chọn màu sắc chủ đạo tinh tế và sử dụng triệt để nguồn ánh sáng sẽ khiến cho không gian spa của bạn trở nên lung linh hơn.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;https://www.actmienbac.vn/huannn-image/catalog/Spa/tu-van-cach-thiet-ke-spa-dep-hop-xu-huong-hien-dai-2.jpg&quot; style=&quot;border:0px; box-sizing:border-box; display:block; height:auto; margin:15px auto; max-width:100%; vertical-align:middle; width:750px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;Bố trí các vật dụng nội thất: Spa cần có sự ngăn nắp, gọn gàng và đảm bảo vấn đề vệ sinh. Do đó chúng ta cần tính toán kỹ lưỡng vị trí đặt của từng món nội để tạo được tính thẩm mỹ, cần tạo bố cục hợp lý cho spa đồng thời kết hợp thêm các yếu tố nghệ thuật để tăng thêm nét đẹp cho spa, khẳng định bản sắc riêng của thương hiệu.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;https://www.actmienbac.vn/huannn-image/catalog/Spa/tu-van-cach-thiet-ke-spa-dep-hop-xu-huong-hien-dai-3.jpg&quot; style=&quot;border:0px; box-sizing:border-box; display:block; height:auto; margin:15px auto; max-width:100%; vertical-align:middle; width:750px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;Nếu muốn chinh phục con tim và tạo ấn tượng giúp khách hàng sẽ chọn spa của bạn khi có nhu cầu, việc chọn mùi hương cũng khá quan trọng, chủ đầu tư nên chọn các mùi hương dịu nhẹ để kích thích khứu giác và mang lai cảm giác thư thái cho khách hàng.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;https://www.actmienbac.vn/huannn-image/catalog/Spa/tu-van-cach-thiet-ke-spa-dep-hop-xu-huong-hien-dai-3(1).jpg&quot; style=&quot;border:0px; box-sizing:border-box; display:block; height:auto; margin:15px auto; max-width:100%; vertical-align:middle; width:750px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;Để có được không gian thư giản lý tưởng, đem đến sự hài lòng cho tất cả mọi người khi chọn spa của bạn thì việc thiết kế nội thất cần phải chăm chút kỹ lưỡng. Muốn&amp;nbsp;&lt;a href=&quot;https://www.actmienbac.vn/spa/thiet-ke-spa-dep-bi-quyet-gay-an-tuong-manh-voi-khach-hang.html&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: windowtext; text-decoration-line: none;&quot;&gt;&lt;strong&gt;thiết kế spa đẹp ấn tượng&lt;/strong&gt;&lt;/a&gt;&amp;nbsp;và hiệu quả bạn nên nhờ đến sự tư vấn hỗ trợ của những đơn vị có kinh nghiệm trong công việc này, như vậy bạn sẽ nhanh chóng sở hữu được spa đẹp mà không phải “mất ăn mất ngủ” vì không tìm ra được phương án thiết kế phù hợp.&lt;/p&gt;\r\n', '', 'Thiết kế nhà thờ họ', '', '');
INSERT INTO `huannn_news_description` VALUES ('98', '3', 'Thiết kế nhà thờ họ', '', '', 'Thiết kế nhà thờ họ', '', '');
INSERT INTO `huannn_news_description` VALUES ('99', '2', 'Thiết kế nhà gỗ', '', '', 'Thiết kế nhà gỗ', '', '');
INSERT INTO `huannn_news_description` VALUES ('99', '3', 'Thiết kế nhà gỗ', '&lt;p&gt;Công Ty CENTA thực hiện thi công Kiến trúc lâu đài theo phong cách Tân cổ điển cho gia đình A. Tiến tại Mộc Châu - TP. Sơn La. Ngôi biêt thự có quy mô 2 tầng có mái vòm với tổng diện tích sàn là 550m2&lt;/p&gt;\r\n\r\n&lt;p&gt;Tên Công trình : Thi công Kiến trúc Tân cổ điển Lâu đài Mộc Châu - Sơn La Chủ Đầu tư: A. Trần Công Tiến Địa điểm XD: Đông Sang - Mộc Châu - Sơn La&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;http://localhost/dev.baby/huannn-image/catalog/Slide1.jpg&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;http://localhost/dev.baby/huannn-image/catalog/slide2.jpg&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Đội ngũ thi công cùng KTS Nguyễn Đức Thành và KTS Trần Minh Cường tại công trình ở Mộc Châu- Sơn La&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;http://localhost/dev.baby/huannn-image/catalog/slide3.jpg&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;http://localhost/dev.baby/huannn-image/catalog/Slide6.jpg&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Tại sao bạn lại chọn CENTA là Đối tác: - Với phong cách thiết kế chuyên nghiệp, luôn luôn cập nhật và sáng tạo các phong cách thiết kế độc đáo nhằm đáp ứng nhu cầu ngày càng cao của khách hàng. - CENTA luôn đem đến cho khách hàng những bản thiết kế nội thất có phong cách khác biệt, đẳng cấp...đồng thời sẵn sàng thực hiện các đơn đặt hàng thi công trọn gói cho căn hộ chung cư, nhà lô phố, biệt thự...đúng theo bản vẽ thiết kế đã được khách hàng phê duyệt. - Chúng tôi dành trọn tâm huyết, thời gian để tập hợp, nghiên cứu những kiến thức, các phong cách thiết kế nội thất quý giá bậc nhất trên thế giới. Và đã qua kinh nghiệm thiết kế, thi công hàng trăm công trình lớn nhỏ. - Chúng tôi luôn tìm kiếm và áp dụng những vật tư, thiết bị, công nghệ kỹ thuật cao ứng dụng vào trong các dự án của mình. - Với uy tín, kinh nghiệm trong lĩnh vực thiết kế nội thất, CENTA hoàn toàn có đủ năng lực tạo sự uy tín đối với khách hàng có nhu cầu về thiết kế thi công Kiến trúc và kết cấu. - Ngôi nhà của bạn được thi công xay dựng bởi đội ngũ kĩ thuật lành nghề và đội giám sát thi công chuyên nghiệp để đảm bảo chất lượng tốt nhất, tiến độ đúng cam kết.&lt;/p&gt;\r\n', '', 'Thiết kế nhà gỗ', '', '');
INSERT INTO `huannn_news_description` VALUES ('100', '2', 'Tư vấn thiết kế thi công nội thất spa mini', '&lt;p style=&quot;text-align:justify&quot;&gt;Trong kinh doanh bao giờ cũng có điểm xuất phát, đi đầu là những ý tưởng đơn giản, những khôn gian với diện tích nhỏ… Sau khoảng thời gian là sự biến đổi từ đó hình thành nên dịch vụ chuyên nghiệp. Và trong&amp;nbsp;&lt;a href=&quot;https://www.actmienbac.vn/thiet-ke-noi-that-spa-chuyen-nghiep-tai-ha-noi.html&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: windowtext; text-decoration-line: none;&quot;&gt;&lt;span style=&quot;color:rgb(255, 0, 102)&quot;&gt;&lt;strong&gt;thiết kế nội thất spa&lt;/strong&gt;&lt;/span&gt;&lt;/a&gt;&amp;nbsp;cũng vậy, những spa nhỏ, spa mini khởi nghiệp với một số dịch vụ giản đơn nhằm phục vụ lượng ít khách hàng. Tuy nhiên không gian hẹp nhưng trang trí nội thất không hẹp đó chính là điều mà chúng tôi muốn chia sẽ với bạn đọc ở đây.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;https://www.actmienbac.vn/huannn-image/catalog/Spa/thiet-ke-noi-that-spa-mini.jpg&quot; style=&quot;border:0px; box-sizing:border-box; display:block; height:auto; margin:15px auto; max-width:100%; vertical-align:middle; width:750px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;Có thể nói&amp;nbsp;&lt;em&gt;&lt;strong&gt;thiết kế nội thất spa mini&lt;/strong&gt;&lt;/em&gt;&amp;nbsp;không phải là một vấn đề dễ dàng khi bị hạn chế về diện tích nếu không thiết kế khéo léo sẽ làm cho không gian spa trở nên hạn hẹp tạo cảm giác khó chịu cho khách hàng. Nhất là đối với một không gian thư giãn nghỉ ngơi và làm đẹp như spa.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;https://www.actmienbac.vn/huannn-image/catalog/Spa/thiet-ke-noi-that-spa-mini-1.jpg&quot; style=&quot;border:0px; box-sizing:border-box; display:block; height:auto; margin:15px auto; max-width:100%; vertical-align:middle; width:750px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;Để sở hữu được một&amp;nbsp;&lt;a href=&quot;https://www.actmienbac.vn/spa&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: windowtext; text-decoration-line: none;&quot;&gt;&lt;span style=&quot;color:rgb(255, 0, 102)&quot;&gt;&lt;strong&gt;nội thất spa&lt;/strong&gt;&lt;/span&gt;&lt;/a&gt;&amp;nbsp;nhỏ đẹp gây ấn tượng tốt nhất đối với khách hàng quan trọn nhất chính là ở người thiết kế. Có thể bạn có ý tưởng nhưng nếu gặp người thiết kế không có kinh nghiệm thì những ý tưởng đó sẽ trở nên vô nghĩa vì vậy cần phải trọn lựa kỹ càng đối tượng kỹ càng, chọn những công ty có đội ngũ kiến trúc sư lâu năm với nhiều dự án thiết kế.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;https://www.actmienbac.vn/huannn-image/catalog/Spa/thiet-ke-noi-that-spa-mini-2.jpg&quot; style=&quot;border:0px; box-sizing:border-box; display:block; height:auto; margin:15px auto; max-width:100%; vertical-align:middle; width:750px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;Với kinh nghiệm nhiều năm trong ngành&amp;nbsp;&lt;a href=&quot;https://www.actmienbac.vn/&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: windowtext; text-decoration-line: none;&quot;&gt;&lt;span style=&quot;color:rgb(255, 0, 102)&quot;&gt;&lt;strong&gt;thiết kế thi công nội thất&lt;/strong&gt;&lt;/span&gt;&lt;/a&gt;&amp;nbsp;ngoài những mẫu thiết kế khác nhau với đa dạng lĩnh vực khác nhau … thì&amp;nbsp;&lt;em&gt;&lt;strong&gt;thiết kế nội thất spa&lt;/strong&gt;&lt;/em&gt;&amp;nbsp;cũng là một trong những thế mạnh của chúng tôi khi chúng tôi đã thiết kế thi công nhiều dự án spa, thẩm mỹ viện khác nhau trên toàn quốc.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;https://www.actmienbac.vn/huannn-image/catalog/Spa/thiet-ke-noi-that-spa-mini-3.png&quot; style=&quot;border:0px; box-sizing:border-box; display:block; height:auto; margin:15px auto; max-width:100%; vertical-align:middle; width:750px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;Những mẫu thiết&amp;nbsp;&lt;strong&gt;kế nội thất spa mini&lt;/strong&gt;&amp;nbsp;khi thiết kế sẽ gặp nhiều khó khăn và không đơn giản một tý nào, nó phải hội tụ đầy đủ các yếu tố những lại toát lên sự chuyên nghiệp. Vì vậy trong quá trình&amp;nbsp;&lt;a href=&quot;https://www.actmienbac.vn/tu-van-thiet-ke-thi-cong-noi-that-spa-mini.html&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: windowtext; text-decoration-line: none;&quot;&gt;&lt;span style=&quot;color:rgb(255, 0, 102)&quot;&gt;&lt;strong&gt;tư vấn thiết kế thi công nội thất spa mini&lt;/strong&gt;&lt;/span&gt;&lt;/a&gt;&amp;nbsp;chúng tôi sẽ tư vấn giúp khách hàng sử dụng những kiểu thiết kế với nội thất riêng sao cho phù hợp nhất với không gian của spa.&lt;/p&gt;\r\n', '', 'Thiết kế tiểu cảnh sân vườn', '', '');
INSERT INTO `huannn_news_description` VALUES ('100', '3', 'Thiết kế tiểu cảnh sân vườn', '', '', 'Thiết kế tiểu cảnh sân vườn', '', '');

-- ----------------------------
-- Table structure for huannn_news_image
-- ----------------------------
DROP TABLE IF EXISTS `huannn_news_image`;
CREATE TABLE `huannn_news_image` (
  `news_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `news_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`news_image_id`),
  KEY `product_id` (`news_id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_news_image
-- ----------------------------

-- ----------------------------
-- Table structure for huannn_news_to_category
-- ----------------------------
DROP TABLE IF EXISTS `huannn_news_to_category`;
CREATE TABLE `huannn_news_to_category` (
  `news_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`news_id`,`category_id`),
  KEY `category_id` (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_news_to_category
-- ----------------------------
INSERT INTO `huannn_news_to_category` VALUES ('65', '14');
INSERT INTO `huannn_news_to_category` VALUES ('65', '17');
INSERT INTO `huannn_news_to_category` VALUES ('65', '18');
INSERT INTO `huannn_news_to_category` VALUES ('66', '15');
INSERT INTO `huannn_news_to_category` VALUES ('66', '17');
INSERT INTO `huannn_news_to_category` VALUES ('66', '18');
INSERT INTO `huannn_news_to_category` VALUES ('67', '15');
INSERT INTO `huannn_news_to_category` VALUES ('68', '15');
INSERT INTO `huannn_news_to_category` VALUES ('69', '16');
INSERT INTO `huannn_news_to_category` VALUES ('69', '19');
INSERT INTO `huannn_news_to_category` VALUES ('70', '19');
INSERT INTO `huannn_news_to_category` VALUES ('71', '16');
INSERT INTO `huannn_news_to_category` VALUES ('71', '19');
INSERT INTO `huannn_news_to_category` VALUES ('72', '16');
INSERT INTO `huannn_news_to_category` VALUES ('72', '19');
INSERT INTO `huannn_news_to_category` VALUES ('73', '16');
INSERT INTO `huannn_news_to_category` VALUES ('73', '19');
INSERT INTO `huannn_news_to_category` VALUES ('74', '16');
INSERT INTO `huannn_news_to_category` VALUES ('74', '19');
INSERT INTO `huannn_news_to_category` VALUES ('75', '16');
INSERT INTO `huannn_news_to_category` VALUES ('75', '19');
INSERT INTO `huannn_news_to_category` VALUES ('76', '16');
INSERT INTO `huannn_news_to_category` VALUES ('76', '19');
INSERT INTO `huannn_news_to_category` VALUES ('77', '16');
INSERT INTO `huannn_news_to_category` VALUES ('77', '19');
INSERT INTO `huannn_news_to_category` VALUES ('78', '20');
INSERT INTO `huannn_news_to_category` VALUES ('79', '13');
INSERT INTO `huannn_news_to_category` VALUES ('79', '20');
INSERT INTO `huannn_news_to_category` VALUES ('80', '20');
INSERT INTO `huannn_news_to_category` VALUES ('81', '20');
INSERT INTO `huannn_news_to_category` VALUES ('82', '20');
INSERT INTO `huannn_news_to_category` VALUES ('83', '16');
INSERT INTO `huannn_news_to_category` VALUES ('83', '20');
INSERT INTO `huannn_news_to_category` VALUES ('84', '20');
INSERT INTO `huannn_news_to_category` VALUES ('85', '20');
INSERT INTO `huannn_news_to_category` VALUES ('88', '16');
INSERT INTO `huannn_news_to_category` VALUES ('88', '21');
INSERT INTO `huannn_news_to_category` VALUES ('89', '16');
INSERT INTO `huannn_news_to_category` VALUES ('89', '21');
INSERT INTO `huannn_news_to_category` VALUES ('90', '21');
INSERT INTO `huannn_news_to_category` VALUES ('91', '21');
INSERT INTO `huannn_news_to_category` VALUES ('92', '14');
INSERT INTO `huannn_news_to_category` VALUES ('93', '14');
INSERT INTO `huannn_news_to_category` VALUES ('95', '14');
INSERT INTO `huannn_news_to_category` VALUES ('96', '14');
INSERT INTO `huannn_news_to_category` VALUES ('97', '14');
INSERT INTO `huannn_news_to_category` VALUES ('98', '15');
INSERT INTO `huannn_news_to_category` VALUES ('98', '17');
INSERT INTO `huannn_news_to_category` VALUES ('98', '19');
INSERT INTO `huannn_news_to_category` VALUES ('99', '14');
INSERT INTO `huannn_news_to_category` VALUES ('100', '14');

-- ----------------------------
-- Table structure for huannn_news_to_download
-- ----------------------------
DROP TABLE IF EXISTS `huannn_news_to_download`;
CREATE TABLE `huannn_news_to_download` (
  `news_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL,
  PRIMARY KEY (`news_id`,`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_news_to_download
-- ----------------------------

-- ----------------------------
-- Table structure for huannn_news_to_layout
-- ----------------------------
DROP TABLE IF EXISTS `huannn_news_to_layout`;
CREATE TABLE `huannn_news_to_layout` (
  `news_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`news_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_news_to_layout
-- ----------------------------
INSERT INTO `huannn_news_to_layout` VALUES ('64', '0', '0');
INSERT INTO `huannn_news_to_layout` VALUES ('63', '0', '0');
INSERT INTO `huannn_news_to_layout` VALUES ('59', '0', '0');
INSERT INTO `huannn_news_to_layout` VALUES ('60', '0', '0');
INSERT INTO `huannn_news_to_layout` VALUES ('61', '0', '0');
INSERT INTO `huannn_news_to_layout` VALUES ('62', '0', '0');
INSERT INTO `huannn_news_to_layout` VALUES ('65', '0', '0');
INSERT INTO `huannn_news_to_layout` VALUES ('66', '0', '0');
INSERT INTO `huannn_news_to_layout` VALUES ('67', '0', '0');
INSERT INTO `huannn_news_to_layout` VALUES ('68', '0', '0');
INSERT INTO `huannn_news_to_layout` VALUES ('69', '0', '0');
INSERT INTO `huannn_news_to_layout` VALUES ('70', '0', '0');
INSERT INTO `huannn_news_to_layout` VALUES ('71', '0', '0');
INSERT INTO `huannn_news_to_layout` VALUES ('72', '0', '0');
INSERT INTO `huannn_news_to_layout` VALUES ('73', '0', '0');
INSERT INTO `huannn_news_to_layout` VALUES ('74', '0', '0');
INSERT INTO `huannn_news_to_layout` VALUES ('75', '0', '0');
INSERT INTO `huannn_news_to_layout` VALUES ('76', '0', '0');
INSERT INTO `huannn_news_to_layout` VALUES ('77', '0', '0');
INSERT INTO `huannn_news_to_layout` VALUES ('78', '0', '0');
INSERT INTO `huannn_news_to_layout` VALUES ('79', '0', '0');
INSERT INTO `huannn_news_to_layout` VALUES ('80', '0', '0');
INSERT INTO `huannn_news_to_layout` VALUES ('81', '0', '0');
INSERT INTO `huannn_news_to_layout` VALUES ('82', '0', '0');
INSERT INTO `huannn_news_to_layout` VALUES ('83', '0', '0');
INSERT INTO `huannn_news_to_layout` VALUES ('84', '0', '0');
INSERT INTO `huannn_news_to_layout` VALUES ('85', '0', '0');
INSERT INTO `huannn_news_to_layout` VALUES ('86', '0', '0');
INSERT INTO `huannn_news_to_layout` VALUES ('87', '0', '0');
INSERT INTO `huannn_news_to_layout` VALUES ('88', '0', '0');
INSERT INTO `huannn_news_to_layout` VALUES ('89', '0', '0');
INSERT INTO `huannn_news_to_layout` VALUES ('90', '0', '0');
INSERT INTO `huannn_news_to_layout` VALUES ('91', '0', '0');
INSERT INTO `huannn_news_to_layout` VALUES ('92', '0', '0');
INSERT INTO `huannn_news_to_layout` VALUES ('93', '0', '0');
INSERT INTO `huannn_news_to_layout` VALUES ('94', '0', '0');
INSERT INTO `huannn_news_to_layout` VALUES ('95', '0', '0');
INSERT INTO `huannn_news_to_layout` VALUES ('96', '0', '0');
INSERT INTO `huannn_news_to_layout` VALUES ('97', '0', '0');
INSERT INTO `huannn_news_to_layout` VALUES ('98', '0', '0');
INSERT INTO `huannn_news_to_layout` VALUES ('99', '0', '0');
INSERT INTO `huannn_news_to_layout` VALUES ('100', '0', '0');

-- ----------------------------
-- Table structure for huannn_news_to_store
-- ----------------------------
DROP TABLE IF EXISTS `huannn_news_to_store`;
CREATE TABLE `huannn_news_to_store` (
  `news_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`news_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_news_to_store
-- ----------------------------
INSERT INTO `huannn_news_to_store` VALUES ('59', '0');
INSERT INTO `huannn_news_to_store` VALUES ('60', '0');
INSERT INTO `huannn_news_to_store` VALUES ('61', '0');
INSERT INTO `huannn_news_to_store` VALUES ('62', '0');
INSERT INTO `huannn_news_to_store` VALUES ('63', '0');
INSERT INTO `huannn_news_to_store` VALUES ('64', '0');
INSERT INTO `huannn_news_to_store` VALUES ('65', '0');
INSERT INTO `huannn_news_to_store` VALUES ('66', '0');
INSERT INTO `huannn_news_to_store` VALUES ('67', '0');
INSERT INTO `huannn_news_to_store` VALUES ('68', '0');
INSERT INTO `huannn_news_to_store` VALUES ('69', '0');
INSERT INTO `huannn_news_to_store` VALUES ('70', '0');
INSERT INTO `huannn_news_to_store` VALUES ('71', '0');
INSERT INTO `huannn_news_to_store` VALUES ('72', '0');
INSERT INTO `huannn_news_to_store` VALUES ('73', '0');
INSERT INTO `huannn_news_to_store` VALUES ('74', '0');
INSERT INTO `huannn_news_to_store` VALUES ('75', '0');
INSERT INTO `huannn_news_to_store` VALUES ('76', '0');
INSERT INTO `huannn_news_to_store` VALUES ('77', '0');
INSERT INTO `huannn_news_to_store` VALUES ('78', '0');
INSERT INTO `huannn_news_to_store` VALUES ('79', '0');
INSERT INTO `huannn_news_to_store` VALUES ('80', '0');
INSERT INTO `huannn_news_to_store` VALUES ('81', '0');
INSERT INTO `huannn_news_to_store` VALUES ('82', '0');
INSERT INTO `huannn_news_to_store` VALUES ('83', '0');
INSERT INTO `huannn_news_to_store` VALUES ('84', '0');
INSERT INTO `huannn_news_to_store` VALUES ('85', '0');
INSERT INTO `huannn_news_to_store` VALUES ('86', '0');
INSERT INTO `huannn_news_to_store` VALUES ('87', '0');
INSERT INTO `huannn_news_to_store` VALUES ('88', '0');
INSERT INTO `huannn_news_to_store` VALUES ('89', '0');
INSERT INTO `huannn_news_to_store` VALUES ('90', '0');
INSERT INTO `huannn_news_to_store` VALUES ('91', '0');
INSERT INTO `huannn_news_to_store` VALUES ('92', '0');
INSERT INTO `huannn_news_to_store` VALUES ('93', '0');
INSERT INTO `huannn_news_to_store` VALUES ('94', '0');
INSERT INTO `huannn_news_to_store` VALUES ('95', '0');
INSERT INTO `huannn_news_to_store` VALUES ('96', '0');
INSERT INTO `huannn_news_to_store` VALUES ('97', '0');
INSERT INTO `huannn_news_to_store` VALUES ('98', '0');
INSERT INTO `huannn_news_to_store` VALUES ('99', '0');
INSERT INTO `huannn_news_to_store` VALUES ('100', '0');

-- ----------------------------
-- Table structure for huannn_openbay_faq
-- ----------------------------
DROP TABLE IF EXISTS `huannn_openbay_faq`;
CREATE TABLE `huannn_openbay_faq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `route` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_openbay_faq
-- ----------------------------

-- ----------------------------
-- Table structure for huannn_option
-- ----------------------------
DROP TABLE IF EXISTS `huannn_option`;
CREATE TABLE `huannn_option` (
  `option_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_option
-- ----------------------------
INSERT INTO `huannn_option` VALUES ('13', 'radio', '1');

-- ----------------------------
-- Table structure for huannn_option_description
-- ----------------------------
DROP TABLE IF EXISTS `huannn_option_description`;
CREATE TABLE `huannn_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_option_description
-- ----------------------------
INSERT INTO `huannn_option_description` VALUES ('13', '2', 'Màu');
INSERT INTO `huannn_option_description` VALUES ('13', '3', 'Màu');

-- ----------------------------
-- Table structure for huannn_option_value
-- ----------------------------
DROP TABLE IF EXISTS `huannn_option_value`;
CREATE TABLE `huannn_option_value` (
  `option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_option_value
-- ----------------------------
INSERT INTO `huannn_option_value` VALUES ('51', '13', '', '3');
INSERT INTO `huannn_option_value` VALUES ('50', '13', '', '2');
INSERT INTO `huannn_option_value` VALUES ('49', '13', '', '1');

-- ----------------------------
-- Table structure for huannn_option_value_description
-- ----------------------------
DROP TABLE IF EXISTS `huannn_option_value_description`;
CREATE TABLE `huannn_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_option_value_description
-- ----------------------------
INSERT INTO `huannn_option_value_description` VALUES ('51', '2', '13', 'Xanh');
INSERT INTO `huannn_option_value_description` VALUES ('50', '2', '13', 'Đen');
INSERT INTO `huannn_option_value_description` VALUES ('49', '2', '13', 'Đỏ');
INSERT INTO `huannn_option_value_description` VALUES ('51', '3', '13', 'Xanh');
INSERT INTO `huannn_option_value_description` VALUES ('50', '3', '13', 'Đen');
INSERT INTO `huannn_option_value_description` VALUES ('49', '3', '13', 'Đỏ');

-- ----------------------------
-- Table structure for huannn_order
-- ----------------------------
DROP TABLE IF EXISTS `huannn_order`;
CREATE TABLE `huannn_order` (
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
  `custom_field` text NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(40) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_custom_field` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(40) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_custom_field` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) NOT NULL,
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
  `note` text NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_order
-- ----------------------------
INSERT INTO `huannn_order` VALUES ('14', '0', '', '0', 'Prince &amp; Princess - Chuỗi cửa hàng Nhật Bản dành cho bé và g', 'http://demo.hunggalaxy.net/baby/', '0', '0', 'huan test', '', 'huannn.ptit@gmail.com', '0988478266', '', '', '', '', '', 'test', '', '', '', '', '0', '', '0', '', '', 'Thanh toán tiền mặt khi nhận hàng (COD)', '', '', '', '', '', '', '', '', '', '0', '', '0', '', '', '', '', '', '680000.0000', '0', '0', '0.0000', '0', '', '0', '0', 'VND', '1.00000000', '', '', '', '', '2016-11-08 17:32:23', '2016-11-08 17:32:23', '');

-- ----------------------------
-- Table structure for huannn_order_custom_field
-- ----------------------------
DROP TABLE IF EXISTS `huannn_order_custom_field`;
CREATE TABLE `huannn_order_custom_field` (
  `order_custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `custom_field_value_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  `location` varchar(16) NOT NULL,
  PRIMARY KEY (`order_custom_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_order_custom_field
-- ----------------------------

-- ----------------------------
-- Table structure for huannn_order_history
-- ----------------------------
DROP TABLE IF EXISTS `huannn_order_history`;
CREATE TABLE `huannn_order_history` (
  `order_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_history_id`)
) ENGINE=MyISAM AUTO_INCREMENT=123 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_order_history
-- ----------------------------

-- ----------------------------
-- Table structure for huannn_order_option
-- ----------------------------
DROP TABLE IF EXISTS `huannn_order_option`;
CREATE TABLE `huannn_order_option` (
  `order_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  PRIMARY KEY (`order_option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_order_option
-- ----------------------------

-- ----------------------------
-- Table structure for huannn_order_product
-- ----------------------------
DROP TABLE IF EXISTS `huannn_order_product`;
CREATE TABLE `huannn_order_product` (
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
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_order_product
-- ----------------------------
INSERT INTO `huannn_order_product` VALUES ('18', '14', '101', 'Hộp đựng cơm trưa cho bé', 'fung134', '2', '340000.0000', '680000.0000', '0.0000', '0');

-- ----------------------------
-- Table structure for huannn_order_recurring
-- ----------------------------
DROP TABLE IF EXISTS `huannn_order_recurring`;
CREATE TABLE `huannn_order_recurring` (
  `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `recurring_name` varchar(255) NOT NULL,
  `recurring_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_recurring_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_order_recurring
-- ----------------------------

-- ----------------------------
-- Table structure for huannn_order_recurring_transaction
-- ----------------------------
DROP TABLE IF EXISTS `huannn_order_recurring_transaction`;
CREATE TABLE `huannn_order_recurring_transaction` (
  `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_recurring_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_recurring_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_order_recurring_transaction
-- ----------------------------

-- ----------------------------
-- Table structure for huannn_order_status
-- ----------------------------
DROP TABLE IF EXISTS `huannn_order_status`;
CREATE TABLE `huannn_order_status` (
  `order_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`order_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_order_status
-- ----------------------------
INSERT INTO `huannn_order_status` VALUES ('1', '2', 'Đã hoàn thành');
INSERT INTO `huannn_order_status` VALUES ('2', '2', 'Bị hủy');
INSERT INTO `huannn_order_status` VALUES ('3', '2', 'Chưa xử lý');
INSERT INTO `huannn_order_status` VALUES ('1', '3', 'Đã hoàn thành');
INSERT INTO `huannn_order_status` VALUES ('2', '3', 'Bị hủy');
INSERT INTO `huannn_order_status` VALUES ('3', '3', 'Chưa xử lý');

-- ----------------------------
-- Table structure for huannn_order_total
-- ----------------------------
DROP TABLE IF EXISTS `huannn_order_total`;
CREATE TABLE `huannn_order_total` (
  `order_total_id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`order_total_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_order_total
-- ----------------------------

-- ----------------------------
-- Table structure for huannn_order_voucher
-- ----------------------------
DROP TABLE IF EXISTS `huannn_order_voucher`;
CREATE TABLE `huannn_order_voucher` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_order_voucher
-- ----------------------------

-- ----------------------------
-- Table structure for huannn_product
-- ----------------------------
DROP TABLE IF EXISTS `huannn_product`;
CREATE TABLE `huannn_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(17) NOT NULL,
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
  `date_available` date NOT NULL DEFAULT '0000-00-00',
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
  `viewed` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `new` tinyint(1) NOT NULL,
  `compare` tinyint(1) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=105 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_product
-- ----------------------------
INSERT INTO `huannn_product` VALUES ('102', 'fung134', '', '', '', '', '', '', '', '1', '6', 'catalog/san_pham/4973307273315.jpg', '15', '1', '340000.0000', '0', '0', '2016-09-05', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '1', '9', '2016-11-02 17:45:59', '2016-11-13 18:35:55', '1', '0');
INSERT INTO `huannn_product` VALUES ('94', 'fung134', '', '', '', '', '', '', '', '1', '6', 'catalog/san_pham/4973307273315.jpg', '11', '1', '340000.0000', '0', '0', '2016-09-05', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '1', '23', '2016-09-05 16:16:50', '2016-11-02 21:25:52', '1', '0');
INSERT INTO `huannn_product` VALUES ('103', 'fung134', '', '', '', '', '', '', '', '1', '6', 'catalog/san_pham/4973307273315.jpg', '14', '1', '340000.0000', '0', '0', '2016-09-05', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '1', '23', '2016-11-02 17:45:59', '2016-11-02 21:25:59', '1', '0');
INSERT INTO `huannn_product` VALUES ('100', 'fung134', '', '', '', '', '', '', '', '1', '6', 'catalog/san_pham/4973307273315.jpg', '12', '1', '340000.0000', '0', '0', '2016-09-05', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '1', '11', '2016-11-02 17:45:59', '2016-11-02 21:26:06', '1', '0');
INSERT INTO `huannn_product` VALUES ('101', 'fung134', '', '', '', '', '', '', '', '1', '6', 'catalog/san_pham/4973307273315.jpg', '14', '1', '340000.0000', '0', '0', '2016-09-05', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '1', '38', '2016-11-02 17:45:59', '2016-11-02 21:26:47', '1', '0');
INSERT INTO `huannn_product` VALUES ('98', 'fung134', '', '', '', '', '', '', '', '1', '6', 'catalog/san_pham/4973307273315.jpg', '12', '1', '340000.0000', '0', '0', '2016-09-05', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '1', '0', '2016-11-02 17:45:56', '2016-11-02 21:26:39', '1', '0');
INSERT INTO `huannn_product` VALUES ('99', 'fung134', '', '', '', '', '', '', '', '1', '6', 'catalog/san_pham/4973307273315.jpg', '0', '1', '340000.0000', '0', '0', '2016-09-05', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '1', '0', '2016-11-02 17:45:56', '0000-00-00 00:00:00', '1', '0');
INSERT INTO `huannn_product` VALUES ('97', 'fung134', '', '', '', '', '', '', '', '1', '6', 'catalog/san_pham/4973307273315.jpg', '13', '1', '340000.0000', '0', '0', '2016-09-05', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '1', '0', '2016-11-02 17:45:54', '2016-11-02 21:26:33', '1', '0');
INSERT INTO `huannn_product` VALUES ('104', 'ao1', '', '', '', '', '', '', '', '1', '6', 'catalog/IMG_5264.jpg', '0', '1', '200000.0000', '0', '0', '2016-11-13', '0.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '1', '3', '2016-11-13 19:58:20', '0000-00-00 00:00:00', '1', '0');

-- ----------------------------
-- Table structure for huannn_product_attribute
-- ----------------------------
DROP TABLE IF EXISTS `huannn_product_attribute`;
CREATE TABLE `huannn_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`product_id`,`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_product_attribute
-- ----------------------------

-- ----------------------------
-- Table structure for huannn_product_description
-- ----------------------------
DROP TABLE IF EXISTS `huannn_product_description`;
CREATE TABLE `huannn_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `demo` text NOT NULL,
  PRIMARY KEY (`product_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_product_description
-- ----------------------------
INSERT INTO `huannn_product_description` VALUES ('103', '2', 'Hộp đựng cơm trưa cho bé', '&lt;h3&gt;Son môi màu làm mịn lâu trôi L’Oreal Paris Color Riche&lt;/h3&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;color:#000000&quot;&gt;Kỷ nguyên mới của son màu – Son Color Riche:&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#000000&quot;&gt;– Nuông chiều làn môi với 3 tinh dầu dưỡng ẩm quí giá&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#000000&quot;&gt;– Bật sắc màu rạng rỡ nhờ hệ nâng màu độc đáo&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#000000&quot;&gt;– Nâng niu dáng môi với đầu son giọt nước mới&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4&gt;&lt;span style=&quot;color:#000000&quot;&gt;Công dụng:&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;color:#000000&quot;&gt;- Cho làn môi sắc màu rạng rỡ&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#000000&quot;&gt;– Dưỡng ẩm, bảo vệ môi với các tinh dầu quí&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;a href=&quot;http://shopruvi.vn/wp-content/uploads/2014/10/collection-exclusive-pure-reds-lipstick.jpg&quot;&gt;&lt;img alt=&quot;collection-exclusive-pure-reds-lipstick&quot; class=&quot;aligncenter wp-image-3837&quot; src=&quot;http://shopruvi.vn/wp-content/uploads/2014/10/collection-exclusive-pure-reds-lipstick.jpg&quot; style=&quot;height:293px; width:606px&quot; /&gt;&lt;/a&gt;&lt;/p&gt;\r\n\r\n&lt;div class=&quot;ratingheader &quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;gdinner gdheight&quot; id=&quot;gdr_vote_a2020&quot; style=&quot;width: 80px;&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n', 'son môi', 'Hộp đựng cơm trưa cho bé', '', '', '&lt;p&gt;Tổng công ty Đường sắt Việt Nam để các công ty thành viên cho nhiều đối tượng thuê đất, thuê mặt bằng kinh doanh các lĩnh vực không liên quan đến hoạt động đường sắt; phân, giao, cho mượn đất đai không đúng thẩm quyền dẫn đến phải nhận nợ hoặc nộp thay tiền sử dụng đất với Nhà nước...&lt;/p&gt;\r\n');
INSERT INTO `huannn_product_description` VALUES ('99', '2', 'Hộp đựng cơm trưa cho bé', '&lt;h3&gt;Son môi màu làm mịn lâu trôi L’Oreal Paris Color Riche&lt;/h3&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;color:#000000&quot;&gt;Kỷ nguyên mới của son màu – Son Color Riche:&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#000000&quot;&gt;– Nuông chiều làn môi với 3 tinh dầu dưỡng ẩm quí giá&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#000000&quot;&gt;– Bật sắc màu rạng rỡ nhờ hệ nâng màu độc đáo&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#000000&quot;&gt;– Nâng niu dáng môi với đầu son giọt nước mới&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4&gt;&lt;span style=&quot;color:#000000&quot;&gt;Công dụng:&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;color:#000000&quot;&gt;- Cho làn môi sắc màu rạng rỡ&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#000000&quot;&gt;– Dưỡng ẩm, bảo vệ môi với các tinh dầu quí&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;a href=&quot;http://shopruvi.vn/wp-content/uploads/2014/10/collection-exclusive-pure-reds-lipstick.jpg&quot;&gt;&lt;img alt=&quot;collection-exclusive-pure-reds-lipstick&quot; class=&quot;aligncenter wp-image-3837&quot; src=&quot;http://shopruvi.vn/wp-content/uploads/2014/10/collection-exclusive-pure-reds-lipstick.jpg&quot; style=&quot;height:293px; width:606px&quot; /&gt;&lt;/a&gt;&lt;/p&gt;\r\n\r\n&lt;div class=&quot;ratingheader &quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;gdinner gdheight&quot; id=&quot;gdr_vote_a2020&quot; style=&quot;width: 80px;&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n', 'son môi', 'Hộp đựng cơm trưa cho bé', '', '', '&lt;p&gt;Tổng công ty Đường sắt Việt Nam để các công ty thành viên cho nhiều đối tượng thuê đất, thuê mặt bằng kinh doanh các lĩnh vực không liên quan đến hoạt động đường sắt; phân, giao, cho mượn đất đai không đúng thẩm quyền dẫn đến phải nhận nợ hoặc nộp thay tiền sử dụng đất với Nhà nước...&lt;/p&gt;\r\n');
INSERT INTO `huannn_product_description` VALUES ('100', '2', 'Hộp đựng cơm trưa cho bé', '&lt;h3&gt;Son môi màu làm mịn lâu trôi L’Oreal Paris Color Riche&lt;/h3&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;color:#000000&quot;&gt;Kỷ nguyên mới của son màu – Son Color Riche:&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#000000&quot;&gt;– Nuông chiều làn môi với 3 tinh dầu dưỡng ẩm quí giá&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#000000&quot;&gt;– Bật sắc màu rạng rỡ nhờ hệ nâng màu độc đáo&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#000000&quot;&gt;– Nâng niu dáng môi với đầu son giọt nước mới&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4&gt;&lt;span style=&quot;color:#000000&quot;&gt;Công dụng:&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;color:#000000&quot;&gt;- Cho làn môi sắc màu rạng rỡ&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#000000&quot;&gt;– Dưỡng ẩm, bảo vệ môi với các tinh dầu quí&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;a href=&quot;http://shopruvi.vn/wp-content/uploads/2014/10/collection-exclusive-pure-reds-lipstick.jpg&quot;&gt;&lt;img alt=&quot;collection-exclusive-pure-reds-lipstick&quot; class=&quot;aligncenter wp-image-3837&quot; src=&quot;http://shopruvi.vn/wp-content/uploads/2014/10/collection-exclusive-pure-reds-lipstick.jpg&quot; style=&quot;height:293px; width:606px&quot; /&gt;&lt;/a&gt;&lt;/p&gt;\r\n\r\n&lt;div class=&quot;ratingheader &quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;gdinner gdheight&quot; id=&quot;gdr_vote_a2020&quot; style=&quot;width: 80px;&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n', 'son môi', 'Hộp đựng cơm trưa cho bé', '', '', '&lt;p&gt;Tổng công ty Đường sắt Việt Nam để các công ty thành viên cho nhiều đối tượng thuê đất, thuê mặt bằng kinh doanh các lĩnh vực không liên quan đến hoạt động đường sắt; phân, giao, cho mượn đất đai không đúng thẩm quyền dẫn đến phải nhận nợ hoặc nộp thay tiền sử dụng đất với Nhà nước...&lt;/p&gt;\r\n');
INSERT INTO `huannn_product_description` VALUES ('101', '2', 'Hộp đựng cơm trưa cho bé', '&lt;h3&gt;Son môi màu làm mịn lâu trôi L’Oreal Paris Color Riche&lt;/h3&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;color:#000000&quot;&gt;Kỷ nguyên mới của son màu – Son Color Riche:&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#000000&quot;&gt;– Nuông chiều làn môi với 3 tinh dầu dưỡng ẩm quí giá&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#000000&quot;&gt;– Bật sắc màu rạng rỡ nhờ hệ nâng màu độc đáo&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#000000&quot;&gt;– Nâng niu dáng môi với đầu son giọt nước mới&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4&gt;&lt;span style=&quot;color:#000000&quot;&gt;Công dụng:&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;color:#000000&quot;&gt;- Cho làn môi sắc màu rạng rỡ&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#000000&quot;&gt;– Dưỡng ẩm, bảo vệ môi với các tinh dầu quí&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;a href=&quot;http://shopruvi.vn/wp-content/uploads/2014/10/collection-exclusive-pure-reds-lipstick.jpg&quot;&gt;&lt;img alt=&quot;collection-exclusive-pure-reds-lipstick&quot; class=&quot;aligncenter wp-image-3837&quot; src=&quot;http://shopruvi.vn/wp-content/uploads/2014/10/collection-exclusive-pure-reds-lipstick.jpg&quot; style=&quot;height:293px; width:606px&quot; /&gt;&lt;/a&gt;&lt;/p&gt;\r\n\r\n&lt;div class=&quot;ratingheader &quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;gdinner gdheight&quot; id=&quot;gdr_vote_a2020&quot; style=&quot;width: 80px;&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n', 'son môi', 'Hộp đựng cơm trưa cho bé', '', '', '&lt;p&gt;Tổng công ty Đường sắt Việt Nam để các công ty thành viên cho nhiều đối tượng thuê đất, thuê mặt bằng kinh doanh các lĩnh vực không liên quan đến hoạt động đường sắt; phân, giao, cho mượn đất đai không đúng thẩm quyền dẫn đến phải nhận nợ hoặc nộp thay tiền sử dụng đất với Nhà nước...&lt;/p&gt;\r\n');
INSERT INTO `huannn_product_description` VALUES ('102', '2', 'Hộp đựng cơm trưa cho bé', '&lt;h3&gt;Son môi màu làm mịn lâu trôi L’Oreal Paris Color Riche&lt;/h3&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;color:#000000&quot;&gt;Kỷ nguyên mới của son màu – Son Color Riche:&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#000000&quot;&gt;– Nuông chiều làn môi với 3 tinh dầu dưỡng ẩm quí giá&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#000000&quot;&gt;– Bật sắc màu rạng rỡ nhờ hệ nâng màu độc đáo&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#000000&quot;&gt;– Nâng niu dáng môi với đầu son giọt nước mới&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4&gt;&lt;span style=&quot;color:#000000&quot;&gt;Công dụng:&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;color:#000000&quot;&gt;- Cho làn môi sắc màu rạng rỡ&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#000000&quot;&gt;– Dưỡng ẩm, bảo vệ môi với các tinh dầu quí&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;a href=&quot;http://shopruvi.vn/wp-content/uploads/2014/10/collection-exclusive-pure-reds-lipstick.jpg&quot;&gt;&lt;img alt=&quot;collection-exclusive-pure-reds-lipstick&quot; class=&quot;aligncenter wp-image-3837&quot; src=&quot;http://shopruvi.vn/wp-content/uploads/2014/10/collection-exclusive-pure-reds-lipstick.jpg&quot; style=&quot;height:293px; width:606px&quot; /&gt;&lt;/a&gt;&lt;/p&gt;\r\n\r\n&lt;div class=&quot;ratingheader &quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;gdinner gdheight&quot; id=&quot;gdr_vote_a2020&quot; style=&quot;width: 80px;&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n', 'son môi', 'Hộp đựng cơm trưa cho bé', '', '', '&lt;p&gt;Tổng công ty Đường sắt Việt Nam để các công ty thành viên cho nhiều đối tượng thuê đất, thuê mặt bằng kinh doanh các lĩnh vực không liên quan đến hoạt động đường sắt; phân, giao, cho mượn đất đai không đúng thẩm quyền dẫn đến phải nhận nợ hoặc nộp thay tiền sử dụng đất với Nhà nước...&lt;/p&gt;\r\n');
INSERT INTO `huannn_product_description` VALUES ('94', '2', 'Hộp đựng cơm trưa cho bé', '&lt;h3&gt;Son môi màu làm mịn lâu trôi L’Oreal Paris Color Riche&lt;/h3&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;color:#000000&quot;&gt;Kỷ nguyên mới của son màu – Son Color Riche:&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#000000&quot;&gt;– Nuông chiều làn môi với 3 tinh dầu dưỡng ẩm quí giá&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#000000&quot;&gt;– Bật sắc màu rạng rỡ nhờ hệ nâng màu độc đáo&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#000000&quot;&gt;– Nâng niu dáng môi với đầu son giọt nước mới&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4&gt;&lt;span style=&quot;color:#000000&quot;&gt;Công dụng:&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;color:#000000&quot;&gt;- Cho làn môi sắc màu rạng rỡ&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#000000&quot;&gt;– Dưỡng ẩm, bảo vệ môi với các tinh dầu quí&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;a href=&quot;http://shopruvi.vn/wp-content/uploads/2014/10/collection-exclusive-pure-reds-lipstick.jpg&quot;&gt;&lt;img alt=&quot;collection-exclusive-pure-reds-lipstick&quot; class=&quot;aligncenter wp-image-3837&quot; src=&quot;http://shopruvi.vn/wp-content/uploads/2014/10/collection-exclusive-pure-reds-lipstick.jpg&quot; style=&quot;height:293px; width:606px&quot; /&gt;&lt;/a&gt;&lt;/p&gt;\r\n\r\n&lt;div class=&quot;ratingheader &quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;gdinner gdheight&quot; id=&quot;gdr_vote_a2020&quot; style=&quot;width: 80px;&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n', 'son môi', 'Hộp đựng cơm trưa cho bé', '', '', '&lt;p&gt;Tổng công ty Đường sắt Việt Nam để các công ty thành viên cho nhiều đối tượng thuê đất, thuê mặt bằng kinh doanh các lĩnh vực không liên quan đến hoạt động đường sắt; phân, giao, cho mượn đất đai không đúng thẩm quyền dẫn đến phải nhận nợ hoặc nộp thay tiền sử dụng đất với Nhà nước...&lt;/p&gt;\r\n');
INSERT INTO `huannn_product_description` VALUES ('97', '2', 'Hộp đựng cơm trưa cho bé', '&lt;h3&gt;Son môi màu làm mịn lâu trôi L’Oreal Paris Color Riche&lt;/h3&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;color:#000000&quot;&gt;Kỷ nguyên mới của son màu – Son Color Riche:&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#000000&quot;&gt;– Nuông chiều làn môi với 3 tinh dầu dưỡng ẩm quí giá&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#000000&quot;&gt;– Bật sắc màu rạng rỡ nhờ hệ nâng màu độc đáo&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#000000&quot;&gt;– Nâng niu dáng môi với đầu son giọt nước mới&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4&gt;&lt;span style=&quot;color:#000000&quot;&gt;Công dụng:&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;color:#000000&quot;&gt;- Cho làn môi sắc màu rạng rỡ&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#000000&quot;&gt;– Dưỡng ẩm, bảo vệ môi với các tinh dầu quí&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;a href=&quot;http://shopruvi.vn/wp-content/uploads/2014/10/collection-exclusive-pure-reds-lipstick.jpg&quot;&gt;&lt;img alt=&quot;collection-exclusive-pure-reds-lipstick&quot; class=&quot;aligncenter wp-image-3837&quot; src=&quot;http://shopruvi.vn/wp-content/uploads/2014/10/collection-exclusive-pure-reds-lipstick.jpg&quot; style=&quot;height:293px; width:606px&quot; /&gt;&lt;/a&gt;&lt;/p&gt;\r\n\r\n&lt;div class=&quot;ratingheader &quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;gdinner gdheight&quot; id=&quot;gdr_vote_a2020&quot; style=&quot;width: 80px;&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n', 'son môi', 'Hộp đựng cơm trưa cho bé', '', '', '&lt;p&gt;Tổng công ty Đường sắt Việt Nam để các công ty thành viên cho nhiều đối tượng thuê đất, thuê mặt bằng kinh doanh các lĩnh vực không liên quan đến hoạt động đường sắt; phân, giao, cho mượn đất đai không đúng thẩm quyền dẫn đến phải nhận nợ hoặc nộp thay tiền sử dụng đất với Nhà nước...&lt;/p&gt;\r\n');
INSERT INTO `huannn_product_description` VALUES ('98', '2', 'Hộp đựng cơm trưa cho bé', '&lt;h3&gt;Son môi màu làm mịn lâu trôi L’Oreal Paris Color Riche&lt;/h3&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;color:#000000&quot;&gt;Kỷ nguyên mới của son màu – Son Color Riche:&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#000000&quot;&gt;– Nuông chiều làn môi với 3 tinh dầu dưỡng ẩm quí giá&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#000000&quot;&gt;– Bật sắc màu rạng rỡ nhờ hệ nâng màu độc đáo&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#000000&quot;&gt;– Nâng niu dáng môi với đầu son giọt nước mới&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4&gt;&lt;span style=&quot;color:#000000&quot;&gt;Công dụng:&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;color:#000000&quot;&gt;- Cho làn môi sắc màu rạng rỡ&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#000000&quot;&gt;– Dưỡng ẩm, bảo vệ môi với các tinh dầu quí&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;a href=&quot;http://shopruvi.vn/wp-content/uploads/2014/10/collection-exclusive-pure-reds-lipstick.jpg&quot;&gt;&lt;img alt=&quot;collection-exclusive-pure-reds-lipstick&quot; class=&quot;aligncenter wp-image-3837&quot; src=&quot;http://shopruvi.vn/wp-content/uploads/2014/10/collection-exclusive-pure-reds-lipstick.jpg&quot; style=&quot;height:293px; width:606px&quot; /&gt;&lt;/a&gt;&lt;/p&gt;\r\n\r\n&lt;div class=&quot;ratingheader &quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;gdinner gdheight&quot; id=&quot;gdr_vote_a2020&quot; style=&quot;width: 80px;&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n', 'son môi', 'Hộp đựng cơm trưa cho bé', '', '', '&lt;p&gt;Tổng công ty Đường sắt Việt Nam để các công ty thành viên cho nhiều đối tượng thuê đất, thuê mặt bằng kinh doanh các lĩnh vực không liên quan đến hoạt động đường sắt; phân, giao, cho mượn đất đai không đúng thẩm quyền dẫn đến phải nhận nợ hoặc nộp thay tiền sử dụng đất với Nhà nước...&lt;/p&gt;\r\n');
INSERT INTO `huannn_product_description` VALUES ('104', '2', 'Áo khoác', '', '', 'ao khoac', '', '', '');
INSERT INTO `huannn_product_description` VALUES ('103', '3', 'Hộp đựng cơm trưa cho bé', '&lt;h3&gt;Son môi màu làm mịn lâu trôi L’Oreal Paris Color Riche&lt;/h3&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;color:#000000&quot;&gt;Kỷ nguyên mới của son màu – Son Color Riche:&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#000000&quot;&gt;– Nuông chiều làn môi với 3 tinh dầu dưỡng ẩm quí giá&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#000000&quot;&gt;– Bật sắc màu rạng rỡ nhờ hệ nâng màu độc đáo&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#000000&quot;&gt;– Nâng niu dáng môi với đầu son giọt nước mới&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4&gt;&lt;span style=&quot;color:#000000&quot;&gt;Công dụng:&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;color:#000000&quot;&gt;- Cho làn môi sắc màu rạng rỡ&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#000000&quot;&gt;– Dưỡng ẩm, bảo vệ môi với các tinh dầu quí&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;a href=&quot;http://shopruvi.vn/wp-content/uploads/2014/10/collection-exclusive-pure-reds-lipstick.jpg&quot;&gt;&lt;img alt=&quot;collection-exclusive-pure-reds-lipstick&quot; class=&quot;aligncenter wp-image-3837&quot; src=&quot;http://shopruvi.vn/wp-content/uploads/2014/10/collection-exclusive-pure-reds-lipstick.jpg&quot; style=&quot;height:293px; width:606px&quot; /&gt;&lt;/a&gt;&lt;/p&gt;\r\n\r\n&lt;div class=&quot;ratingheader &quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;gdinner gdheight&quot; id=&quot;gdr_vote_a2020&quot; style=&quot;width: 80px;&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n', 'son môi', 'Hộp đựng cơm trưa cho bé', '', '', '');
INSERT INTO `huannn_product_description` VALUES ('99', '3', 'Hộp đựng cơm trưa cho bé', '&lt;h3&gt;Son môi màu làm mịn lâu trôi L’Oreal Paris Color Riche&lt;/h3&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;color:#000000&quot;&gt;Kỷ nguyên mới của son màu – Son Color Riche:&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#000000&quot;&gt;– Nuông chiều làn môi với 3 tinh dầu dưỡng ẩm quí giá&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#000000&quot;&gt;– Bật sắc màu rạng rỡ nhờ hệ nâng màu độc đáo&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#000000&quot;&gt;– Nâng niu dáng môi với đầu son giọt nước mới&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4&gt;&lt;span style=&quot;color:#000000&quot;&gt;Công dụng:&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;color:#000000&quot;&gt;- Cho làn môi sắc màu rạng rỡ&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#000000&quot;&gt;– Dưỡng ẩm, bảo vệ môi với các tinh dầu quí&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;a href=&quot;http://shopruvi.vn/wp-content/uploads/2014/10/collection-exclusive-pure-reds-lipstick.jpg&quot;&gt;&lt;img alt=&quot;collection-exclusive-pure-reds-lipstick&quot; class=&quot;aligncenter wp-image-3837&quot; src=&quot;http://shopruvi.vn/wp-content/uploads/2014/10/collection-exclusive-pure-reds-lipstick.jpg&quot; style=&quot;height:293px; width:606px&quot; /&gt;&lt;/a&gt;&lt;/p&gt;\r\n\r\n&lt;div class=&quot;ratingheader &quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;gdinner gdheight&quot; id=&quot;gdr_vote_a2020&quot; style=&quot;width: 80px;&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n', 'son môi', 'Hộp đựng cơm trưa cho bé', '', '', '');
INSERT INTO `huannn_product_description` VALUES ('100', '3', 'Hộp đựng cơm trưa cho bé', '&lt;h3&gt;Son môi màu làm mịn lâu trôi L’Oreal Paris Color Riche&lt;/h3&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;color:#000000&quot;&gt;Kỷ nguyên mới của son màu – Son Color Riche:&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#000000&quot;&gt;– Nuông chiều làn môi với 3 tinh dầu dưỡng ẩm quí giá&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#000000&quot;&gt;– Bật sắc màu rạng rỡ nhờ hệ nâng màu độc đáo&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#000000&quot;&gt;– Nâng niu dáng môi với đầu son giọt nước mới&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4&gt;&lt;span style=&quot;color:#000000&quot;&gt;Công dụng:&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;color:#000000&quot;&gt;- Cho làn môi sắc màu rạng rỡ&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#000000&quot;&gt;– Dưỡng ẩm, bảo vệ môi với các tinh dầu quí&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;a href=&quot;http://shopruvi.vn/wp-content/uploads/2014/10/collection-exclusive-pure-reds-lipstick.jpg&quot;&gt;&lt;img alt=&quot;collection-exclusive-pure-reds-lipstick&quot; class=&quot;aligncenter wp-image-3837&quot; src=&quot;http://shopruvi.vn/wp-content/uploads/2014/10/collection-exclusive-pure-reds-lipstick.jpg&quot; style=&quot;height:293px; width:606px&quot; /&gt;&lt;/a&gt;&lt;/p&gt;\r\n\r\n&lt;div class=&quot;ratingheader &quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;gdinner gdheight&quot; id=&quot;gdr_vote_a2020&quot; style=&quot;width: 80px;&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n', 'son môi', 'Hộp đựng cơm trưa cho bé', '', '', '');
INSERT INTO `huannn_product_description` VALUES ('101', '3', 'Hộp đựng cơm trưa cho bé', '&lt;h3&gt;Son môi màu làm mịn lâu trôi L’Oreal Paris Color Riche&lt;/h3&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;color:#000000&quot;&gt;Kỷ nguyên mới của son màu – Son Color Riche:&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#000000&quot;&gt;– Nuông chiều làn môi với 3 tinh dầu dưỡng ẩm quí giá&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#000000&quot;&gt;– Bật sắc màu rạng rỡ nhờ hệ nâng màu độc đáo&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#000000&quot;&gt;– Nâng niu dáng môi với đầu son giọt nước mới&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4&gt;&lt;span style=&quot;color:#000000&quot;&gt;Công dụng:&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;color:#000000&quot;&gt;- Cho làn môi sắc màu rạng rỡ&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#000000&quot;&gt;– Dưỡng ẩm, bảo vệ môi với các tinh dầu quí&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;a href=&quot;http://shopruvi.vn/wp-content/uploads/2014/10/collection-exclusive-pure-reds-lipstick.jpg&quot;&gt;&lt;img alt=&quot;collection-exclusive-pure-reds-lipstick&quot; class=&quot;aligncenter wp-image-3837&quot; src=&quot;http://shopruvi.vn/wp-content/uploads/2014/10/collection-exclusive-pure-reds-lipstick.jpg&quot; style=&quot;height:293px; width:606px&quot; /&gt;&lt;/a&gt;&lt;/p&gt;\r\n\r\n&lt;div class=&quot;ratingheader &quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;gdinner gdheight&quot; id=&quot;gdr_vote_a2020&quot; style=&quot;width: 80px;&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n', 'son môi', 'Hộp đựng cơm trưa cho bé', '', '', '');
INSERT INTO `huannn_product_description` VALUES ('102', '3', 'Hộp đựng cơm trưa cho bé', '&lt;h3&gt;Son môi màu làm mịn lâu trôi L’Oreal Paris Color Riche&lt;/h3&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;color:#000000&quot;&gt;Kỷ nguyên mới của son màu – Son Color Riche:&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#000000&quot;&gt;– Nuông chiều làn môi với 3 tinh dầu dưỡng ẩm quí giá&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#000000&quot;&gt;– Bật sắc màu rạng rỡ nhờ hệ nâng màu độc đáo&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#000000&quot;&gt;– Nâng niu dáng môi với đầu son giọt nước mới&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4&gt;&lt;span style=&quot;color:#000000&quot;&gt;Công dụng:&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;color:#000000&quot;&gt;- Cho làn môi sắc màu rạng rỡ&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#000000&quot;&gt;– Dưỡng ẩm, bảo vệ môi với các tinh dầu quí&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;a href=&quot;http://shopruvi.vn/wp-content/uploads/2014/10/collection-exclusive-pure-reds-lipstick.jpg&quot;&gt;&lt;img alt=&quot;collection-exclusive-pure-reds-lipstick&quot; class=&quot;aligncenter wp-image-3837&quot; src=&quot;http://shopruvi.vn/wp-content/uploads/2014/10/collection-exclusive-pure-reds-lipstick.jpg&quot; style=&quot;height:293px; width:606px&quot; /&gt;&lt;/a&gt;&lt;/p&gt;\r\n\r\n&lt;div class=&quot;ratingheader &quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;gdinner gdheight&quot; id=&quot;gdr_vote_a2020&quot; style=&quot;width: 80px;&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n', 'son môi', 'Hộp đựng cơm trưa cho bé', '', '', '');
INSERT INTO `huannn_product_description` VALUES ('94', '3', 'Hộp đựng cơm trưa cho bé', '&lt;h3&gt;Son môi màu làm mịn lâu trôi L’Oreal Paris Color Riche&lt;/h3&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;color:#000000&quot;&gt;Kỷ nguyên mới của son màu – Son Color Riche:&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#000000&quot;&gt;– Nuông chiều làn môi với 3 tinh dầu dưỡng ẩm quí giá&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#000000&quot;&gt;– Bật sắc màu rạng rỡ nhờ hệ nâng màu độc đáo&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#000000&quot;&gt;– Nâng niu dáng môi với đầu son giọt nước mới&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4&gt;&lt;span style=&quot;color:#000000&quot;&gt;Công dụng:&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;color:#000000&quot;&gt;- Cho làn môi sắc màu rạng rỡ&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#000000&quot;&gt;– Dưỡng ẩm, bảo vệ môi với các tinh dầu quí&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;a href=&quot;http://shopruvi.vn/wp-content/uploads/2014/10/collection-exclusive-pure-reds-lipstick.jpg&quot;&gt;&lt;img alt=&quot;collection-exclusive-pure-reds-lipstick&quot; class=&quot;aligncenter wp-image-3837&quot; src=&quot;http://shopruvi.vn/wp-content/uploads/2014/10/collection-exclusive-pure-reds-lipstick.jpg&quot; style=&quot;height:293px; width:606px&quot; /&gt;&lt;/a&gt;&lt;/p&gt;\r\n\r\n&lt;div class=&quot;ratingheader &quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;gdinner gdheight&quot; id=&quot;gdr_vote_a2020&quot; style=&quot;width: 80px;&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n', 'son môi', 'Hộp đựng cơm trưa cho bé', '', '', '');
INSERT INTO `huannn_product_description` VALUES ('97', '3', 'Hộp đựng cơm trưa cho bé', '&lt;h3&gt;Son môi màu làm mịn lâu trôi L’Oreal Paris Color Riche&lt;/h3&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;color:#000000&quot;&gt;Kỷ nguyên mới của son màu – Son Color Riche:&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#000000&quot;&gt;– Nuông chiều làn môi với 3 tinh dầu dưỡng ẩm quí giá&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#000000&quot;&gt;– Bật sắc màu rạng rỡ nhờ hệ nâng màu độc đáo&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#000000&quot;&gt;– Nâng niu dáng môi với đầu son giọt nước mới&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4&gt;&lt;span style=&quot;color:#000000&quot;&gt;Công dụng:&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;color:#000000&quot;&gt;- Cho làn môi sắc màu rạng rỡ&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#000000&quot;&gt;– Dưỡng ẩm, bảo vệ môi với các tinh dầu quí&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;a href=&quot;http://shopruvi.vn/wp-content/uploads/2014/10/collection-exclusive-pure-reds-lipstick.jpg&quot;&gt;&lt;img alt=&quot;collection-exclusive-pure-reds-lipstick&quot; class=&quot;aligncenter wp-image-3837&quot; src=&quot;http://shopruvi.vn/wp-content/uploads/2014/10/collection-exclusive-pure-reds-lipstick.jpg&quot; style=&quot;height:293px; width:606px&quot; /&gt;&lt;/a&gt;&lt;/p&gt;\r\n\r\n&lt;div class=&quot;ratingheader &quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;gdinner gdheight&quot; id=&quot;gdr_vote_a2020&quot; style=&quot;width: 80px;&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n', 'son môi', 'Hộp đựng cơm trưa cho bé', '', '', '');
INSERT INTO `huannn_product_description` VALUES ('98', '3', 'Hộp đựng cơm trưa cho bé', '&lt;h3&gt;Son môi màu làm mịn lâu trôi L’Oreal Paris Color Riche&lt;/h3&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;color:#000000&quot;&gt;Kỷ nguyên mới của son màu – Son Color Riche:&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#000000&quot;&gt;– Nuông chiều làn môi với 3 tinh dầu dưỡng ẩm quí giá&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#000000&quot;&gt;– Bật sắc màu rạng rỡ nhờ hệ nâng màu độc đáo&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#000000&quot;&gt;– Nâng niu dáng môi với đầu son giọt nước mới&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h4&gt;&lt;span style=&quot;color:#000000&quot;&gt;Công dụng:&lt;/span&gt;&lt;/h4&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;color:#000000&quot;&gt;- Cho làn môi sắc màu rạng rỡ&lt;/span&gt;&lt;br /&gt;\r\n&lt;span style=&quot;color:#000000&quot;&gt;– Dưỡng ẩm, bảo vệ môi với các tinh dầu quí&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;a href=&quot;http://shopruvi.vn/wp-content/uploads/2014/10/collection-exclusive-pure-reds-lipstick.jpg&quot;&gt;&lt;img alt=&quot;collection-exclusive-pure-reds-lipstick&quot; class=&quot;aligncenter wp-image-3837&quot; src=&quot;http://shopruvi.vn/wp-content/uploads/2014/10/collection-exclusive-pure-reds-lipstick.jpg&quot; style=&quot;height:293px; width:606px&quot; /&gt;&lt;/a&gt;&lt;/p&gt;\r\n\r\n&lt;div class=&quot;ratingheader &quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;gdinner gdheight&quot; id=&quot;gdr_vote_a2020&quot; style=&quot;width: 80px;&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n', 'son môi', 'Hộp đựng cơm trưa cho bé', '', '', '');
INSERT INTO `huannn_product_description` VALUES ('104', '3', 'Áo khoác', '', '', 'ao khoac', '', '', '');

-- ----------------------------
-- Table structure for huannn_product_discount
-- ----------------------------
DROP TABLE IF EXISTS `huannn_product_discount`;
CREATE TABLE `huannn_product_discount` (
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
) ENGINE=MyISAM AUTO_INCREMENT=465 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_product_discount
-- ----------------------------
INSERT INTO `huannn_product_discount` VALUES ('457', '94', '1', '4', '3', '330000.0000', '2016-09-04', '2016-10-06');
INSERT INTO `huannn_product_discount` VALUES ('461', '97', '1', '4', '3', '330000.0000', '2016-09-04', '2016-10-06');
INSERT INTO `huannn_product_discount` VALUES ('462', '98', '1', '4', '3', '330000.0000', '2016-09-04', '2016-10-06');
INSERT INTO `huannn_product_discount` VALUES ('450', '99', '1', '4', '3', '330000.0000', '2016-09-04', '2016-10-06');
INSERT INTO `huannn_product_discount` VALUES ('459', '100', '1', '4', '3', '330000.0000', '2016-09-04', '2016-10-06');
INSERT INTO `huannn_product_discount` VALUES ('463', '101', '1', '4', '3', '330000.0000', '2016-09-04', '2016-10-06');
INSERT INTO `huannn_product_discount` VALUES ('464', '102', '1', '4', '3', '330000.0000', '2016-09-04', '2016-10-06');
INSERT INTO `huannn_product_discount` VALUES ('458', '103', '1', '4', '3', '330000.0000', '2016-09-04', '2016-10-06');

-- ----------------------------
-- Table structure for huannn_product_filter
-- ----------------------------
DROP TABLE IF EXISTS `huannn_product_filter`;
CREATE TABLE `huannn_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_product_filter
-- ----------------------------

-- ----------------------------
-- Table structure for huannn_product_image
-- ----------------------------
DROP TABLE IF EXISTS `huannn_product_image`;
CREATE TABLE `huannn_product_image` (
  `product_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_image_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2738 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_product_image
-- ----------------------------
INSERT INTO `huannn_product_image` VALUES ('2737', '102', 'catalog/san_pham/4973307273315.jpg', '3');
INSERT INTO `huannn_product_image` VALUES ('2716', '94', 'catalog/san_pham/4973307273315.jpg', '3');
INSERT INTO `huannn_product_image` VALUES ('2719', '103', 'catalog/san_pham/4973307273315.jpg', '3');
INSERT INTO `huannn_product_image` VALUES ('2718', '103', 'catalog/san_pham/4973307273315.jpg', '2');
INSERT INTO `huannn_product_image` VALUES ('2715', '94', 'catalog/san_pham/4973307273315.jpg', '2');
INSERT INTO `huannn_product_image` VALUES ('2714', '94', 'catalog/san_pham/4973307273315.jpg', '1');
INSERT INTO `huannn_product_image` VALUES ('2736', '102', 'catalog/san_pham/4973307273315.jpg', '2');
INSERT INTO `huannn_product_image` VALUES ('2735', '102', 'catalog/san_pham/4973307273315.jpg', '1');
INSERT INTO `huannn_product_image` VALUES ('2734', '101', 'catalog/san_pham/4973307273315.jpg', '3');
INSERT INTO `huannn_product_image` VALUES ('2733', '101', 'catalog/san_pham/4973307273315.jpg', '2');
INSERT INTO `huannn_product_image` VALUES ('2722', '100', 'catalog/san_pham/4973307273315.jpg', '3');
INSERT INTO `huannn_product_image` VALUES ('2721', '100', 'catalog/san_pham/4973307273315.jpg', '2');
INSERT INTO `huannn_product_image` VALUES ('2720', '100', 'catalog/san_pham/4973307273315.jpg', '1');
INSERT INTO `huannn_product_image` VALUES ('2732', '101', 'catalog/san_pham/4973307273315.jpg', '1');
INSERT INTO `huannn_product_image` VALUES ('2695', '99', 'catalog/san_pham/4973307273315.jpg', '3');
INSERT INTO `huannn_product_image` VALUES ('2731', '98', 'catalog/san_pham/4973307273315.jpg', '3');
INSERT INTO `huannn_product_image` VALUES ('2730', '98', 'catalog/san_pham/4973307273315.jpg', '2');
INSERT INTO `huannn_product_image` VALUES ('2729', '98', 'catalog/san_pham/4973307273315.jpg', '1');
INSERT INTO `huannn_product_image` VALUES ('2693', '99', 'catalog/san_pham/4973307273315.jpg', '1');
INSERT INTO `huannn_product_image` VALUES ('2694', '99', 'catalog/san_pham/4973307273315.jpg', '2');
INSERT INTO `huannn_product_image` VALUES ('2728', '97', 'catalog/san_pham/4973307273315.jpg', '3');
INSERT INTO `huannn_product_image` VALUES ('2727', '97', 'catalog/san_pham/4973307273315.jpg', '2');
INSERT INTO `huannn_product_image` VALUES ('2726', '97', 'catalog/san_pham/4973307273315.jpg', '1');
INSERT INTO `huannn_product_image` VALUES ('2717', '103', 'catalog/san_pham/4973307273315.jpg', '1');

-- ----------------------------
-- Table structure for huannn_product_option
-- ----------------------------
DROP TABLE IF EXISTS `huannn_product_option`;
CREATE TABLE `huannn_product_option` (
  `product_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`product_option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=230 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_product_option
-- ----------------------------

-- ----------------------------
-- Table structure for huannn_product_option_value
-- ----------------------------
DROP TABLE IF EXISTS `huannn_product_option_value`;
CREATE TABLE `huannn_product_option_value` (
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
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_product_option_value
-- ----------------------------

-- ----------------------------
-- Table structure for huannn_product_recurring
-- ----------------------------
DROP TABLE IF EXISTS `huannn_product_recurring`;
CREATE TABLE `huannn_product_recurring` (
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`recurring_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_product_recurring
-- ----------------------------

-- ----------------------------
-- Table structure for huannn_product_related
-- ----------------------------
DROP TABLE IF EXISTS `huannn_product_related`;
CREATE TABLE `huannn_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`related_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_product_related
-- ----------------------------

-- ----------------------------
-- Table structure for huannn_product_reward
-- ----------------------------
DROP TABLE IF EXISTS `huannn_product_reward`;
CREATE TABLE `huannn_product_reward` (
  `product_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_reward_id`)
) ENGINE=MyISAM AUTO_INCREMENT=546 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_product_reward
-- ----------------------------

-- ----------------------------
-- Table structure for huannn_product_special
-- ----------------------------
DROP TABLE IF EXISTS `huannn_product_special`;
CREATE TABLE `huannn_product_special` (
  `product_special_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_special_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=511 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_product_special
-- ----------------------------
INSERT INTO `huannn_product_special` VALUES ('503', '94', '1', '1', '310000.0000', '2016-09-04', '2016-09-21');
INSERT INTO `huannn_product_special` VALUES ('507', '97', '1', '1', '310000.0000', '2016-09-04', '2016-09-21');
INSERT INTO `huannn_product_special` VALUES ('508', '98', '1', '1', '310000.0000', '2016-09-04', '2016-09-21');
INSERT INTO `huannn_product_special` VALUES ('496', '99', '1', '1', '310000.0000', '2016-09-04', '2016-09-21');
INSERT INTO `huannn_product_special` VALUES ('505', '100', '1', '1', '310000.0000', '2016-09-04', '2016-09-21');
INSERT INTO `huannn_product_special` VALUES ('509', '101', '1', '1', '310000.0000', '2016-09-04', '2016-09-21');
INSERT INTO `huannn_product_special` VALUES ('510', '102', '1', '1', '310000.0000', '2016-09-04', '2016-09-21');
INSERT INTO `huannn_product_special` VALUES ('504', '103', '1', '1', '310000.0000', '2016-09-04', '2016-09-21');

-- ----------------------------
-- Table structure for huannn_product_to_category
-- ----------------------------
DROP TABLE IF EXISTS `huannn_product_to_category`;
CREATE TABLE `huannn_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `category_id` (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_product_to_category
-- ----------------------------
INSERT INTO `huannn_product_to_category` VALUES ('94', '87');
INSERT INTO `huannn_product_to_category` VALUES ('94', '88');
INSERT INTO `huannn_product_to_category` VALUES ('94', '89');
INSERT INTO `huannn_product_to_category` VALUES ('94', '90');
INSERT INTO `huannn_product_to_category` VALUES ('94', '91');
INSERT INTO `huannn_product_to_category` VALUES ('94', '92');
INSERT INTO `huannn_product_to_category` VALUES ('94', '93');
INSERT INTO `huannn_product_to_category` VALUES ('94', '94');
INSERT INTO `huannn_product_to_category` VALUES ('94', '95');
INSERT INTO `huannn_product_to_category` VALUES ('94', '96');
INSERT INTO `huannn_product_to_category` VALUES ('94', '97');
INSERT INTO `huannn_product_to_category` VALUES ('94', '98');
INSERT INTO `huannn_product_to_category` VALUES ('94', '99');
INSERT INTO `huannn_product_to_category` VALUES ('94', '100');
INSERT INTO `huannn_product_to_category` VALUES ('94', '101');
INSERT INTO `huannn_product_to_category` VALUES ('97', '87');
INSERT INTO `huannn_product_to_category` VALUES ('97', '88');
INSERT INTO `huannn_product_to_category` VALUES ('97', '89');
INSERT INTO `huannn_product_to_category` VALUES ('97', '90');
INSERT INTO `huannn_product_to_category` VALUES ('97', '91');
INSERT INTO `huannn_product_to_category` VALUES ('97', '92');
INSERT INTO `huannn_product_to_category` VALUES ('97', '93');
INSERT INTO `huannn_product_to_category` VALUES ('97', '94');
INSERT INTO `huannn_product_to_category` VALUES ('97', '95');
INSERT INTO `huannn_product_to_category` VALUES ('97', '96');
INSERT INTO `huannn_product_to_category` VALUES ('97', '97');
INSERT INTO `huannn_product_to_category` VALUES ('97', '98');
INSERT INTO `huannn_product_to_category` VALUES ('97', '99');
INSERT INTO `huannn_product_to_category` VALUES ('97', '100');
INSERT INTO `huannn_product_to_category` VALUES ('97', '101');
INSERT INTO `huannn_product_to_category` VALUES ('97', '102');
INSERT INTO `huannn_product_to_category` VALUES ('97', '103');
INSERT INTO `huannn_product_to_category` VALUES ('98', '87');
INSERT INTO `huannn_product_to_category` VALUES ('98', '88');
INSERT INTO `huannn_product_to_category` VALUES ('98', '89');
INSERT INTO `huannn_product_to_category` VALUES ('98', '90');
INSERT INTO `huannn_product_to_category` VALUES ('98', '91');
INSERT INTO `huannn_product_to_category` VALUES ('98', '92');
INSERT INTO `huannn_product_to_category` VALUES ('98', '93');
INSERT INTO `huannn_product_to_category` VALUES ('98', '94');
INSERT INTO `huannn_product_to_category` VALUES ('98', '95');
INSERT INTO `huannn_product_to_category` VALUES ('98', '96');
INSERT INTO `huannn_product_to_category` VALUES ('98', '97');
INSERT INTO `huannn_product_to_category` VALUES ('98', '98');
INSERT INTO `huannn_product_to_category` VALUES ('98', '99');
INSERT INTO `huannn_product_to_category` VALUES ('98', '100');
INSERT INTO `huannn_product_to_category` VALUES ('98', '101');
INSERT INTO `huannn_product_to_category` VALUES ('98', '102');
INSERT INTO `huannn_product_to_category` VALUES ('98', '103');
INSERT INTO `huannn_product_to_category` VALUES ('99', '87');
INSERT INTO `huannn_product_to_category` VALUES ('99', '88');
INSERT INTO `huannn_product_to_category` VALUES ('99', '89');
INSERT INTO `huannn_product_to_category` VALUES ('99', '90');
INSERT INTO `huannn_product_to_category` VALUES ('99', '91');
INSERT INTO `huannn_product_to_category` VALUES ('99', '92');
INSERT INTO `huannn_product_to_category` VALUES ('99', '93');
INSERT INTO `huannn_product_to_category` VALUES ('99', '94');
INSERT INTO `huannn_product_to_category` VALUES ('99', '95');
INSERT INTO `huannn_product_to_category` VALUES ('99', '96');
INSERT INTO `huannn_product_to_category` VALUES ('99', '97');
INSERT INTO `huannn_product_to_category` VALUES ('99', '98');
INSERT INTO `huannn_product_to_category` VALUES ('99', '99');
INSERT INTO `huannn_product_to_category` VALUES ('99', '100');
INSERT INTO `huannn_product_to_category` VALUES ('99', '101');
INSERT INTO `huannn_product_to_category` VALUES ('100', '87');
INSERT INTO `huannn_product_to_category` VALUES ('100', '88');
INSERT INTO `huannn_product_to_category` VALUES ('100', '89');
INSERT INTO `huannn_product_to_category` VALUES ('100', '90');
INSERT INTO `huannn_product_to_category` VALUES ('100', '91');
INSERT INTO `huannn_product_to_category` VALUES ('100', '92');
INSERT INTO `huannn_product_to_category` VALUES ('100', '93');
INSERT INTO `huannn_product_to_category` VALUES ('100', '94');
INSERT INTO `huannn_product_to_category` VALUES ('100', '95');
INSERT INTO `huannn_product_to_category` VALUES ('100', '96');
INSERT INTO `huannn_product_to_category` VALUES ('100', '97');
INSERT INTO `huannn_product_to_category` VALUES ('100', '98');
INSERT INTO `huannn_product_to_category` VALUES ('100', '99');
INSERT INTO `huannn_product_to_category` VALUES ('100', '100');
INSERT INTO `huannn_product_to_category` VALUES ('100', '101');
INSERT INTO `huannn_product_to_category` VALUES ('100', '102');
INSERT INTO `huannn_product_to_category` VALUES ('100', '103');
INSERT INTO `huannn_product_to_category` VALUES ('101', '87');
INSERT INTO `huannn_product_to_category` VALUES ('101', '88');
INSERT INTO `huannn_product_to_category` VALUES ('101', '89');
INSERT INTO `huannn_product_to_category` VALUES ('101', '90');
INSERT INTO `huannn_product_to_category` VALUES ('101', '91');
INSERT INTO `huannn_product_to_category` VALUES ('101', '92');
INSERT INTO `huannn_product_to_category` VALUES ('101', '93');
INSERT INTO `huannn_product_to_category` VALUES ('101', '94');
INSERT INTO `huannn_product_to_category` VALUES ('101', '95');
INSERT INTO `huannn_product_to_category` VALUES ('101', '96');
INSERT INTO `huannn_product_to_category` VALUES ('101', '97');
INSERT INTO `huannn_product_to_category` VALUES ('101', '98');
INSERT INTO `huannn_product_to_category` VALUES ('101', '99');
INSERT INTO `huannn_product_to_category` VALUES ('101', '100');
INSERT INTO `huannn_product_to_category` VALUES ('101', '101');
INSERT INTO `huannn_product_to_category` VALUES ('101', '102');
INSERT INTO `huannn_product_to_category` VALUES ('101', '103');
INSERT INTO `huannn_product_to_category` VALUES ('102', '91');
INSERT INTO `huannn_product_to_category` VALUES ('102', '92');
INSERT INTO `huannn_product_to_category` VALUES ('102', '93');
INSERT INTO `huannn_product_to_category` VALUES ('102', '94');
INSERT INTO `huannn_product_to_category` VALUES ('102', '95');
INSERT INTO `huannn_product_to_category` VALUES ('102', '96');
INSERT INTO `huannn_product_to_category` VALUES ('102', '97');
INSERT INTO `huannn_product_to_category` VALUES ('102', '98');
INSERT INTO `huannn_product_to_category` VALUES ('102', '99');
INSERT INTO `huannn_product_to_category` VALUES ('102', '100');
INSERT INTO `huannn_product_to_category` VALUES ('102', '101');
INSERT INTO `huannn_product_to_category` VALUES ('103', '87');
INSERT INTO `huannn_product_to_category` VALUES ('103', '88');
INSERT INTO `huannn_product_to_category` VALUES ('103', '89');
INSERT INTO `huannn_product_to_category` VALUES ('103', '90');
INSERT INTO `huannn_product_to_category` VALUES ('103', '91');
INSERT INTO `huannn_product_to_category` VALUES ('103', '92');
INSERT INTO `huannn_product_to_category` VALUES ('103', '93');
INSERT INTO `huannn_product_to_category` VALUES ('103', '94');
INSERT INTO `huannn_product_to_category` VALUES ('103', '95');
INSERT INTO `huannn_product_to_category` VALUES ('103', '96');
INSERT INTO `huannn_product_to_category` VALUES ('103', '97');
INSERT INTO `huannn_product_to_category` VALUES ('103', '98');
INSERT INTO `huannn_product_to_category` VALUES ('103', '99');
INSERT INTO `huannn_product_to_category` VALUES ('103', '100');
INSERT INTO `huannn_product_to_category` VALUES ('103', '101');
INSERT INTO `huannn_product_to_category` VALUES ('103', '102');
INSERT INTO `huannn_product_to_category` VALUES ('103', '103');
INSERT INTO `huannn_product_to_category` VALUES ('104', '107');

-- ----------------------------
-- Table structure for huannn_product_to_download
-- ----------------------------
DROP TABLE IF EXISTS `huannn_product_to_download`;
CREATE TABLE `huannn_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_product_to_download
-- ----------------------------

-- ----------------------------
-- Table structure for huannn_product_to_layout
-- ----------------------------
DROP TABLE IF EXISTS `huannn_product_to_layout`;
CREATE TABLE `huannn_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_product_to_layout
-- ----------------------------
INSERT INTO `huannn_product_to_layout` VALUES ('97', '0', '0');
INSERT INTO `huannn_product_to_layout` VALUES ('100', '0', '0');
INSERT INTO `huannn_product_to_layout` VALUES ('94', '0', '0');
INSERT INTO `huannn_product_to_layout` VALUES ('103', '0', '0');
INSERT INTO `huannn_product_to_layout` VALUES ('99', '0', '0');
INSERT INTO `huannn_product_to_layout` VALUES ('102', '0', '0');
INSERT INTO `huannn_product_to_layout` VALUES ('98', '0', '0');
INSERT INTO `huannn_product_to_layout` VALUES ('101', '0', '0');
INSERT INTO `huannn_product_to_layout` VALUES ('104', '0', '0');

-- ----------------------------
-- Table structure for huannn_product_to_store
-- ----------------------------
DROP TABLE IF EXISTS `huannn_product_to_store`;
CREATE TABLE `huannn_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_product_to_store
-- ----------------------------
INSERT INTO `huannn_product_to_store` VALUES ('94', '0');
INSERT INTO `huannn_product_to_store` VALUES ('97', '0');
INSERT INTO `huannn_product_to_store` VALUES ('98', '0');
INSERT INTO `huannn_product_to_store` VALUES ('99', '0');
INSERT INTO `huannn_product_to_store` VALUES ('100', '0');
INSERT INTO `huannn_product_to_store` VALUES ('101', '0');
INSERT INTO `huannn_product_to_store` VALUES ('102', '0');
INSERT INTO `huannn_product_to_store` VALUES ('103', '0');
INSERT INTO `huannn_product_to_store` VALUES ('104', '0');

-- ----------------------------
-- Table structure for huannn_recurring
-- ----------------------------
DROP TABLE IF EXISTS `huannn_recurring`;
CREATE TABLE `huannn_recurring` (
  `recurring_id` int(11) NOT NULL AUTO_INCREMENT,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) unsigned NOT NULL,
  `cycle` int(10) unsigned NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) unsigned NOT NULL,
  `trial_cycle` int(10) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sort_order` int(11) NOT NULL,
  PRIMARY KEY (`recurring_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_recurring
-- ----------------------------

-- ----------------------------
-- Table structure for huannn_recurring_description
-- ----------------------------
DROP TABLE IF EXISTS `huannn_recurring_description`;
CREATE TABLE `huannn_recurring_description` (
  `recurring_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`recurring_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_recurring_description
-- ----------------------------

-- ----------------------------
-- Table structure for huannn_return
-- ----------------------------
DROP TABLE IF EXISTS `huannn_return`;
CREATE TABLE `huannn_return` (
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
  `date_ordered` date NOT NULL DEFAULT '0000-00-00',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`return_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_return
-- ----------------------------

-- ----------------------------
-- Table structure for huannn_return_action
-- ----------------------------
DROP TABLE IF EXISTS `huannn_return_action`;
CREATE TABLE `huannn_return_action` (
  `return_action_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`return_action_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_return_action
-- ----------------------------
INSERT INTO `huannn_return_action` VALUES ('1', '2', 'Refunded');
INSERT INTO `huannn_return_action` VALUES ('2', '2', 'Credit Issued');
INSERT INTO `huannn_return_action` VALUES ('3', '2', 'Replacement Sent');
INSERT INTO `huannn_return_action` VALUES ('1', '3', 'Refunded');
INSERT INTO `huannn_return_action` VALUES ('2', '3', 'Credit Issued');
INSERT INTO `huannn_return_action` VALUES ('3', '3', 'Replacement Sent');

-- ----------------------------
-- Table structure for huannn_return_history
-- ----------------------------
DROP TABLE IF EXISTS `huannn_return_history`;
CREATE TABLE `huannn_return_history` (
  `return_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`return_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_return_history
-- ----------------------------

-- ----------------------------
-- Table structure for huannn_return_reason
-- ----------------------------
DROP TABLE IF EXISTS `huannn_return_reason`;
CREATE TABLE `huannn_return_reason` (
  `return_reason_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`return_reason_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_return_reason
-- ----------------------------
INSERT INTO `huannn_return_reason` VALUES ('1', '2', 'Dead On Arrival');
INSERT INTO `huannn_return_reason` VALUES ('2', '2', 'Received Wrong Item');
INSERT INTO `huannn_return_reason` VALUES ('3', '2', 'Order Error');
INSERT INTO `huannn_return_reason` VALUES ('4', '2', 'Faulty, please supply details');
INSERT INTO `huannn_return_reason` VALUES ('5', '2', 'Other, please supply details');
INSERT INTO `huannn_return_reason` VALUES ('1', '3', 'Dead On Arrival');
INSERT INTO `huannn_return_reason` VALUES ('2', '3', 'Received Wrong Item');
INSERT INTO `huannn_return_reason` VALUES ('3', '3', 'Order Error');
INSERT INTO `huannn_return_reason` VALUES ('4', '3', 'Faulty, please supply details');
INSERT INTO `huannn_return_reason` VALUES ('5', '3', 'Other, please supply details');

-- ----------------------------
-- Table structure for huannn_return_status
-- ----------------------------
DROP TABLE IF EXISTS `huannn_return_status`;
CREATE TABLE `huannn_return_status` (
  `return_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`return_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_return_status
-- ----------------------------
INSERT INTO `huannn_return_status` VALUES ('1', '2', 'Pending');
INSERT INTO `huannn_return_status` VALUES ('3', '2', 'Complete');
INSERT INTO `huannn_return_status` VALUES ('2', '2', 'Awaiting Products');
INSERT INTO `huannn_return_status` VALUES ('1', '3', 'Pending');
INSERT INTO `huannn_return_status` VALUES ('3', '3', 'Complete');
INSERT INTO `huannn_return_status` VALUES ('2', '3', 'Awaiting Products');

-- ----------------------------
-- Table structure for huannn_review
-- ----------------------------
DROP TABLE IF EXISTS `huannn_review`;
CREATE TABLE `huannn_review` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`review_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_review
-- ----------------------------

-- ----------------------------
-- Table structure for huannn_setting
-- ----------------------------
DROP TABLE IF EXISTS `huannn_setting`;
CREATE TABLE `huannn_setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(32) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9320 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_setting
-- ----------------------------
INSERT INTO `huannn_setting` VALUES ('1', '0', 'shipping', 'shipping_sort_order', '3', '0');
INSERT INTO `huannn_setting` VALUES ('2', '0', 'sub_total', 'sub_total_sort_order', '1', '0');
INSERT INTO `huannn_setting` VALUES ('3', '0', 'sub_total', 'sub_total_status', '1', '0');
INSERT INTO `huannn_setting` VALUES ('4', '0', 'tax', 'tax_status', '1', '0');
INSERT INTO `huannn_setting` VALUES ('5', '0', 'total', 'total_sort_order', '9', '0');
INSERT INTO `huannn_setting` VALUES ('6', '0', 'total', 'total_status', '1', '0');
INSERT INTO `huannn_setting` VALUES ('7', '0', 'tax', 'tax_sort_order', '5', '0');
INSERT INTO `huannn_setting` VALUES ('8', '0', 'free_checkout', 'free_checkout_sort_order', '1', '0');
INSERT INTO `huannn_setting` VALUES ('9', '0', 'cod', 'cod_sort_order', '5', '0');
INSERT INTO `huannn_setting` VALUES ('10', '0', 'cod', 'cod_total', '0.01', '0');
INSERT INTO `huannn_setting` VALUES ('11', '0', 'cod', 'cod_order_status_id', '1', '0');
INSERT INTO `huannn_setting` VALUES ('12', '0', 'cod', 'cod_geo_zone_id', '0', '0');
INSERT INTO `huannn_setting` VALUES ('13', '0', 'cod', 'cod_status', '1', '0');
INSERT INTO `huannn_setting` VALUES ('14', '0', 'shipping', 'shipping_status', '1', '0');
INSERT INTO `huannn_setting` VALUES ('15', '0', 'shipping', 'shipping_estimator', '1', '0');
INSERT INTO `huannn_setting` VALUES ('27', '0', 'coupon', 'coupon_sort_order', '4', '0');
INSERT INTO `huannn_setting` VALUES ('28', '0', 'coupon', 'coupon_status', '1', '0');
INSERT INTO `huannn_setting` VALUES ('34', '0', 'flat', 'flat_sort_order', '1', '0');
INSERT INTO `huannn_setting` VALUES ('35', '0', 'flat', 'flat_status', '1', '0');
INSERT INTO `huannn_setting` VALUES ('36', '0', 'flat', 'flat_geo_zone_id', '0', '0');
INSERT INTO `huannn_setting` VALUES ('37', '0', 'flat', 'flat_tax_class_id', '9', '0');
INSERT INTO `huannn_setting` VALUES ('41', '0', 'flat', 'flat_cost', '5.00', '0');
INSERT INTO `huannn_setting` VALUES ('42', '0', 'credit', 'credit_sort_order', '7', '0');
INSERT INTO `huannn_setting` VALUES ('43', '0', 'credit', 'credit_status', '1', '0');
INSERT INTO `huannn_setting` VALUES ('53', '0', 'reward', 'reward_sort_order', '2', '0');
INSERT INTO `huannn_setting` VALUES ('54', '0', 'reward', 'reward_status', '1', '0');
INSERT INTO `huannn_setting` VALUES ('5525', '0', 'category', 'category_status', '1', '0');
INSERT INTO `huannn_setting` VALUES ('159', '0', 'affiliate', 'affiliate_status', '1', '0');
INSERT INTO `huannn_setting` VALUES ('6219', '0', 'facebook_page', 'facebook_page_status', '1', '0');
INSERT INTO `huannn_setting` VALUES ('6622', '0', 'manager_footer', 'manager_footer_menu', '6', '0');
INSERT INTO `huannn_setting` VALUES ('8357', '0', 'menu_custom', 'menu_custom_status', '1', '0');
INSERT INTO `huannn_setting` VALUES ('1478', '0', 'basic_captcha', 'basic_captcha_status', '1', '0');
INSERT INTO `huannn_setting` VALUES ('94', '0', 'voucher', 'voucher_sort_order', '8', '0');
INSERT INTO `huannn_setting` VALUES ('95', '0', 'voucher', 'voucher_status', '1', '0');
INSERT INTO `huannn_setting` VALUES ('103', '0', 'free_checkout', 'free_checkout_status', '1', '0');
INSERT INTO `huannn_setting` VALUES ('104', '0', 'free_checkout', 'free_checkout_order_status_id', '1', '0');
INSERT INTO `huannn_setting` VALUES ('6521', '0', 'theme_default', 'theme_default_image_cart_height', '47', '0');
INSERT INTO `huannn_setting` VALUES ('6520', '0', 'theme_default', 'theme_default_image_cart_width', '47', '0');
INSERT INTO `huannn_setting` VALUES ('6519', '0', 'theme_default', 'theme_default_image_wishlist_height', '47', '0');
INSERT INTO `huannn_setting` VALUES ('6518', '0', 'theme_default', 'theme_default_image_wishlist_width', '47', '0');
INSERT INTO `huannn_setting` VALUES ('6517', '0', 'theme_default', 'theme_default_image_compare_height', '90', '0');
INSERT INTO `huannn_setting` VALUES ('6515', '0', 'theme_default', 'theme_default_image_related_height', '300', '0');
INSERT INTO `huannn_setting` VALUES ('6516', '0', 'theme_default', 'theme_default_image_compare_width', '90', '0');
INSERT INTO `huannn_setting` VALUES ('6514', '0', 'theme_default', 'theme_default_image_related_width', '300', '0');
INSERT INTO `huannn_setting` VALUES ('6513', '0', 'theme_default', 'theme_default_image_additional_height', '207', '0');
INSERT INTO `huannn_setting` VALUES ('6512', '0', 'theme_default', 'theme_default_image_additional_width', '150', '0');
INSERT INTO `huannn_setting` VALUES ('6511', '0', 'theme_default', 'theme_default_image_product_height', '140', '0');
INSERT INTO `huannn_setting` VALUES ('6510', '0', 'theme_default', 'theme_default_image_product_width', '150', '0');
INSERT INTO `huannn_setting` VALUES ('6508', '0', 'theme_default', 'theme_default_image_popup_width', '600', '0');
INSERT INTO `huannn_setting` VALUES ('6509', '0', 'theme_default', 'theme_default_image_popup_height', '560', '0');
INSERT INTO `huannn_setting` VALUES ('6507', '0', 'theme_default', 'theme_default_image_thumb_height', '560', '0');
INSERT INTO `huannn_setting` VALUES ('6506', '0', 'theme_default', 'theme_default_image_thumb_width', '600', '0');
INSERT INTO `huannn_setting` VALUES ('6505', '0', 'theme_default', 'theme_default_image_category_height', '414', '0');
INSERT INTO `huannn_setting` VALUES ('6504', '0', 'theme_default', 'theme_default_image_category_width', '300', '0');
INSERT INTO `huannn_setting` VALUES ('6503', '0', 'theme_default', 'theme_default_product_description_length', '100', '0');
INSERT INTO `huannn_setting` VALUES ('6502', '0', 'theme_default', 'theme_default_product_limit', '20', '0');
INSERT INTO `huannn_setting` VALUES ('5233', '0', 'payment', 'payment_checkout', '{\"2\":\"&lt;p&gt;\\u0110\\u01a1n h\\u00e0ng c\\u1ee7a qu\\u00fd kh\\u00e1ch \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c ghi l\\u1ea1i. B\\u1ed9 ph\\u1eadn b\\u00e1n h\\u00e0ng s\\u1ebd li\\u00ean l\\u1ea1c l\\u1ea1i v\\u1edbi qu\\u00fd kh\\u00e1ch \\u0111\\u1ec3 x\\u00e1c nh\\u1eadn \\u0111\\u01a1n h\\u00e0ng. Xin c\\u1ea3m \\u01a1n!&lt;\\/p&gt;\\r\\n\"}', '1');
INSERT INTO `huannn_setting` VALUES ('5232', '0', 'payment', 'payment_note', '{\"2\":\"&lt;ul&gt;\\r\\n\\t&lt;li&gt;Mi\\u1ec5n ph\\u00ed v\\u1eadn chuy\\u1ec3n v\\u1edbi kh\\u00e1ch h\\u00e0ng n\\u1ed9i th\\u00e0nh H\\u00e0 N\\u1ed9i.&lt;\\/li&gt;\\r\\n\\t&lt;li&gt;Kh\\u00e1ch ngo\\u1ea1i t\\u1ec9nh ch\\u1ecbu ph\\u00ed v\\u1eadn chuy\\u1ec3n theo ph\\u00ed b\\u01b0u \\u0111i\\u1ec7n, b\\u1ed9 ph\\u1eadn b\\u00e1n h\\u00e0ng s\\u1ebd li\\u00ean h\\u1ec7 l\\u1ea1i v\\u1edbi kh\\u00e1ch h\\u00e0ng \\u0111\\u1ec3 th\\u00f4ng b\\u00e1o v\\u1ec1 m\\u1ee9c ph\\u00ed n\\u00e0y tr\\u01b0\\u1edbc khi ho\\u00e0n t\\u1ea5t \\u0111\\u01a1n h\\u00e0ng.&lt;\\/li&gt;\\r\\n&lt;\\/ul&gt;\\r\\n\"}', '1');
INSERT INTO `huannn_setting` VALUES ('5231', '0', 'payment', 'payment_description', '{\"2\":{\"1\":{\"title\":\"Thanh to\\u00e1n ti\\u1ec1n m\\u1eb7t khi nh\\u1eadn h\\u00e0ng (COD)\",\"description\":\"&lt;p&gt;Thanh to\\u00e1n khi nh\\u1eadn h\\u00e0ng (COD) l\\u00e0 m\\u1ed9t ph\\u01b0\\u01a1ng th\\u1ee9c thanh to\\u00e1n m\\u00e0 ng\\u01b0\\u1eddi mua s\\u1ebd tr\\u1ea3 ti\\u1ec1n khi h\\u00e0ng h\\u00f3a \\u0111\\u01b0\\u1ee3c chuy\\u1ec3n \\u0111\\u1ebfn cho ng\\u01b0\\u1eddi mua.&lt;\\/p&gt;\\r\\n\"},\"2\":{\"title\":\"Thanh to\\u00e1n chuy\\u1ec3n kho\\u1ea3n qua ng\\u00e2n h\\u00e0ng\",\"description\":\"&lt;p&gt;Qu\\u00fd kh\\u00e1ch thanh to\\u00e1n qua ng\\u00e2n h\\u00e0ng, vui l\\u00f2ng chuy\\u1ec3n ti\\u1ec1n \\u0111\\u1ebfn t\\u00e0i kho\\u1ea3n c\\u1ee7a ABC theo th\\u00f4ng tin d\\u01b0\\u1edbi \\u0111\\u00e2y:&lt;\\/p&gt;\\r\\n\\r\\n&lt;div class=&quot;thongtinthanhtoan&quot;&gt;\\r\\n&lt;p&gt;Ng\\u00e2n h\\u00e0ng Vietcombank&lt;\\/p&gt;\\r\\n\\r\\n&lt;div&gt;- Ng\\u00e2n h\\u00e0ng: Vietcombank chi nh\\u00e1nh H\\u00e0 N\\u1ed9i&lt;br \\/&gt;\\r\\n- T\\u00ean t\\u00e0i kho\\u1ea3n: C\\u00f4ng ty ABCDEF&lt;br \\/&gt;\\r\\n- S\\u1ed1 t\\u00e0i kho\\u1ea3n: 123456&lt;\\/div&gt;\\r\\n\\r\\n&lt;div&gt;&amp;nbsp;&lt;\\/div&gt;\\r\\n\\r\\n&lt;div&gt;Ch\\u00fang t\\u00f4i s\\u1ebd th\\u1ef1c hi\\u1ec7n \\u0111\\u01a1n h\\u00e0ng theo y\\u00eau c\\u1ea7u c\\u1ee7a Qu\\u00fd kh\\u00e1ch sau khi x\\u00e1c nh\\u1eadn \\u0111\\u01a1n h\\u00e0ng.&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n\\r\\n&lt;p&gt;&amp;nbsp;&lt;\\/p&gt;\\r\\n\"}}}', '1');
INSERT INTO `huannn_setting` VALUES ('3057', '0', 'openbaypro', 'openbaypro_status', '0', '0');
INSERT INTO `huannn_setting` VALUES ('3056', '0', 'openbaypro', 'openbaypro_menu', '0', '0');
INSERT INTO `huannn_setting` VALUES ('3055', '0', 'openbay', 'openbay_version', '3001', '0');
INSERT INTO `huannn_setting` VALUES ('9309', '0', 'config', 'config_compression', '0', '0');
INSERT INTO `huannn_setting` VALUES ('9310', '0', 'config', 'config_secure', '0', '0');
INSERT INTO `huannn_setting` VALUES ('9311', '0', 'config', 'config_password', '0', '0');
INSERT INTO `huannn_setting` VALUES ('9312', '0', 'config', 'config_shared', '0', '0');
INSERT INTO `huannn_setting` VALUES ('9313', '0', 'config', 'config_encryption', 'yTjggwzCKnmFwUOcsVCn8lVPmDZDk6lhCYq25XHrvySR5GXGplK4n7jzWuo60pxXgSpFaSGE23tV5LNhxRVgrNVRM9XeuCoE4RYAOFHNPto0zizJiezjSlnrLhCvkAsznEEcpzkMonNqyhwrwgJAhTaKIkDdPtiLaOwwE9RkEgUkZrz6CP0uq6nFqfKiJlsNJmpGdJ5SvOou36g57CAm1isJdhpH4WeJvbaBjgYkbSMNu6NHzKAL82ZYYihCLPzMzgiYKwtVznSfUuGKzPa2sRGhWQ0PUgyar9uAkgdCCNtUApQSV8iUlbFImIO3xhhDkjIzk3Vwmv42ZoUqbJArSupAz9bBCY544Csws0f2gPiZyYCua7xOxFjLpBcW6QvCMWkBFzjJNeEDVlB0hZpP8H1SmSxfnjm5iV95FHe04YErmhIsQHcI24bKgVOSGpCc79SIicBzy5yMSGuiIGiSUuwD7U1VudYMcFZpp44MQwcEdRwyAJLPjH0DB6Pp9xpzSJkAGJUaPpLlLwR6MFwSI2agQgckNLv1wu9ppo3QVsT9xJopeQPL8Gh2j7WcxDmwi8zUiAwDLmNSB0BYyHTyL15Q2pC5HJqDDsJgrDvOeBQlzGsUhlixlojSeHm5wfbVU3cOv29tVHS31AHsZMXi6TyQOdpaLm8W2im8PwwXWgtYey12VLLd5Y7moFVp8lFBh4atJObtjx3wPKuacQmCzpzjT2zRGYE34ze6c3JthNAd3gBiQX4XBZyH4RW0G6uThYdV21eoJY0X96IGxG7zEJR9vZXRSr87p0Xljn88ndYPZ7Q1zfoMA3iQNH3ysy8lkNVErANGHC9ZLldsRjbEtipLeXiBhGj24oU5iMlb2g3XGxLjLNxZygEoFoFwT8rRpKsnIPAxZYvCiipcyadEu87MvMtQA37xTNAMn0YO3Pv5N8JGmNz5wP0eNw43ObsgOV6FdoCUlLifTlIiWtSBqCDxF90ofHJlY3ZIZZ7x2l98IXFlNeYD60MHPQlQxrVw', '0');
INSERT INTO `huannn_setting` VALUES ('9319', '0', 'config', 'config_error_filename', 'error.log', '0');
INSERT INTO `huannn_setting` VALUES ('9318', '0', 'config', 'config_error_log', '1', '0');
INSERT INTO `huannn_setting` VALUES ('9317', '0', 'config', 'config_error_display', '1', '0');
INSERT INTO `huannn_setting` VALUES ('5627', '0', 'menu_main', 'menu_main_menu_group', '2', '0');
INSERT INTO `huannn_setting` VALUES ('6501', '0', 'theme_default', 'theme_default_news_limit', '15', '0');
INSERT INTO `huannn_setting` VALUES ('5628', '0', 'menu_main', 'menu_main_status', '1', '0');
INSERT INTO `huannn_setting` VALUES ('9314', '0', 'config', 'config_file_max_size', '300000', '0');
INSERT INTO `huannn_setting` VALUES ('9315', '0', 'config', 'config_file_ext_allowed', 'zip\r\ntxt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc', '0');
INSERT INTO `huannn_setting` VALUES ('9316', '0', 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\n&quot;application/zip&quot;\r\napplication/x-zip\r\n&quot;application/x-zip&quot;\r\napplication/x-zip-compressed\r\n&quot;application/x-zip-compressed&quot;\r\napplication/rar\r\n&quot;application/rar&quot;\r\napplication/x-rar\r\n&quot;application/x-rar&quot;\r\napplication/x-rar-compressed\r\n&quot;application/x-rar-compressed&quot;\r\napplication/octet-stream\r\n&quot;application/octet-stream&quot;\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf', '0');
INSERT INTO `huannn_setting` VALUES ('9308', '0', 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai\'hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', '0');
INSERT INTO `huannn_setting` VALUES ('6500', '0', 'theme_default', 'theme_default_news_description_length', '300', '0');
INSERT INTO `huannn_setting` VALUES ('6499', '0', 'theme_default', 'theme_default_image_news_height', '180', '0');
INSERT INTO `huannn_setting` VALUES ('6498', '0', 'theme_default', 'theme_default_image_news_width', '180', '0');
INSERT INTO `huannn_setting` VALUES ('6496', '0', 'theme_default', 'theme_default_directory', 'default', '0');
INSERT INTO `huannn_setting` VALUES ('6497', '0', 'theme_default', 'theme_default_status', '1', '0');
INSERT INTO `huannn_setting` VALUES ('9307', '0', 'config', 'config_seo_url', '1', '0');
INSERT INTO `huannn_setting` VALUES ('9306', '0', 'config', 'config_maintenance', '0', '0');
INSERT INTO `huannn_setting` VALUES ('9305', '0', 'config', 'config_mail_alert', 'hunggalaxy.it@gmail.com', '0');
INSERT INTO `huannn_setting` VALUES ('9304', '0', 'config', 'config_mail_smtp_timeout', '5', '0');
INSERT INTO `huannn_setting` VALUES ('9303', '0', 'config', 'config_mail_smtp_port', '465', '0');
INSERT INTO `huannn_setting` VALUES ('9301', '0', 'config', 'config_mail_smtp_username', '', '0');
INSERT INTO `huannn_setting` VALUES ('9302', '0', 'config', 'config_mail_smtp_password', '', '0');
INSERT INTO `huannn_setting` VALUES ('9300', '0', 'config', 'config_mail_smtp_hostname', 'ssl://smtp.gmail.com', '0');
INSERT INTO `huannn_setting` VALUES ('9299', '0', 'config', 'config_mail_parameter', '', '0');
INSERT INTO `huannn_setting` VALUES ('9298', '0', 'config', 'config_mail_protocol', 'smtp', '0');
INSERT INTO `huannn_setting` VALUES ('9297', '0', 'config', 'config_ftp_status', '0', '0');
INSERT INTO `huannn_setting` VALUES ('6522', '0', 'theme_default', 'theme_default_image_location_width', '268', '0');
INSERT INTO `huannn_setting` VALUES ('6523', '0', 'theme_default', 'theme_default_image_location_height', '50', '0');
INSERT INTO `huannn_setting` VALUES ('9296', '0', 'config', 'config_ftp_root', '', '0');
INSERT INTO `huannn_setting` VALUES ('9295', '0', 'config', 'config_ftp_password', '', '0');
INSERT INTO `huannn_setting` VALUES ('9292', '0', 'config', 'config_ftp_hostname', 'huannn.com', '0');
INSERT INTO `huannn_setting` VALUES ('9294', '0', 'config', 'config_ftp_username', '', '0');
INSERT INTO `huannn_setting` VALUES ('9293', '0', 'config', 'config_ftp_port', '21', '0');
INSERT INTO `huannn_setting` VALUES ('9291', '0', 'config', 'config_icon', 'catalog/logo_shop.png', '0');
INSERT INTO `huannn_setting` VALUES ('9290', '0', 'config', 'config_logo', 'catalog/logo.png', '0');
INSERT INTO `huannn_setting` VALUES ('9289', '0', 'config', 'config_captcha', '', '0');
INSERT INTO `huannn_setting` VALUES ('9288', '0', 'config', 'config_return_status_id', '2', '0');
INSERT INTO `huannn_setting` VALUES ('9287', '0', 'config', 'config_return_id', '0', '0');
INSERT INTO `huannn_setting` VALUES ('9286', '0', 'config', 'config_affiliate_mail', '0', '0');
INSERT INTO `huannn_setting` VALUES ('9285', '0', 'config', 'config_affiliate_id', '4', '0');
INSERT INTO `huannn_setting` VALUES ('9284', '0', 'config', 'config_affiliate_commission', '5', '0');
INSERT INTO `huannn_setting` VALUES ('9283', '0', 'config', 'config_affiliate_auto', '0', '0');
INSERT INTO `huannn_setting` VALUES ('9282', '0', 'config', 'config_affiliate_approval', '0', '0');
INSERT INTO `huannn_setting` VALUES ('9281', '0', 'config', 'config_stock_checkout', '0', '0');
INSERT INTO `huannn_setting` VALUES ('9279', '0', 'config', 'config_stock_display', '0', '0');
INSERT INTO `huannn_setting` VALUES ('9280', '0', 'config', 'config_stock_warning', '0', '0');
INSERT INTO `huannn_setting` VALUES ('9278', '0', 'config', 'config_api_id', '1', '0');
INSERT INTO `huannn_setting` VALUES ('9277', '0', 'config', 'config_order_mail', '0', '0');
INSERT INTO `huannn_setting` VALUES ('9276', '0', 'config', 'config_fraud_status_id', '2', '0');
INSERT INTO `huannn_setting` VALUES ('9275', '0', 'config', 'config_complete_status', '[\"3\"]', '1');
INSERT INTO `huannn_setting` VALUES ('9274', '0', 'config', 'config_processing_status', '[\"2\",\"3\",\"1\"]', '1');
INSERT INTO `huannn_setting` VALUES ('9273', '0', 'config', 'config_order_status_id', '1', '0');
INSERT INTO `huannn_setting` VALUES ('9272', '0', 'config', 'config_checkout_id', '5', '0');
INSERT INTO `huannn_setting` VALUES ('9271', '0', 'config', 'config_checkout_guest', '1', '0');
INSERT INTO `huannn_setting` VALUES ('9270', '0', 'config', 'config_cart_weight', '0', '0');
INSERT INTO `huannn_setting` VALUES ('9269', '0', 'config', 'config_invoice_prefix', 'INV-2013-00', '0');
INSERT INTO `huannn_setting` VALUES ('9268', '0', 'config', 'config_account_mail', '0', '0');
INSERT INTO `huannn_setting` VALUES ('9267', '0', 'config', 'config_account_id', '3', '0');
INSERT INTO `huannn_setting` VALUES ('9266', '0', 'config', 'config_login_attempts', '5', '0');
INSERT INTO `huannn_setting` VALUES ('9264', '0', 'config', 'config_customer_group_display', '[\"1\"]', '1');
INSERT INTO `huannn_setting` VALUES ('9265', '0', 'config', 'config_customer_price', '0', '0');
INSERT INTO `huannn_setting` VALUES ('9263', '0', 'config', 'config_customer_group_id', '1', '0');
INSERT INTO `huannn_setting` VALUES ('9262', '0', 'config', 'config_customer_online', '0', '0');
INSERT INTO `huannn_setting` VALUES ('9261', '0', 'config', 'config_tax_customer', 'shipping', '0');
INSERT INTO `huannn_setting` VALUES ('9260', '0', 'config', 'config_tax_default', 'shipping', '0');
INSERT INTO `huannn_setting` VALUES ('9259', '0', 'config', 'config_tax', '0', '0');
INSERT INTO `huannn_setting` VALUES ('9258', '0', 'config', 'config_voucher_max', '1000', '0');
INSERT INTO `huannn_setting` VALUES ('9257', '0', 'config', 'config_voucher_min', '1', '0');
INSERT INTO `huannn_setting` VALUES ('9256', '0', 'config', 'config_review_mail', '0', '0');
INSERT INTO `huannn_setting` VALUES ('9255', '0', 'config', 'config_review_guest', '1', '0');
INSERT INTO `huannn_setting` VALUES ('9254', '0', 'config', 'config_review_status', '1', '0');
INSERT INTO `huannn_setting` VALUES ('9253', '0', 'config', 'config_limit_admin', '20', '0');
INSERT INTO `huannn_setting` VALUES ('9252', '0', 'config', 'config_product_count', '0', '0');
INSERT INTO `huannn_setting` VALUES ('9251', '0', 'config', 'config_social_twitter', 'link', '0');
INSERT INTO `huannn_setting` VALUES ('9248', '0', 'config', 'config_social_facebook', 'https://www.facebook.com/Prince-Princess-1182787498441312/', '0');
INSERT INTO `huannn_setting` VALUES ('9249', '0', 'config', 'config_social_youtube', 'link', '0');
INSERT INTO `huannn_setting` VALUES ('9250', '0', 'config', 'config_social_googleplus', 'link', '0');
INSERT INTO `huannn_setting` VALUES ('9247', '0', 'config', 'config_weight_class_id', '1', '0');
INSERT INTO `huannn_setting` VALUES ('9246', '0', 'config', 'config_length_class_id', '1', '0');
INSERT INTO `huannn_setting` VALUES ('9245', '0', 'config', 'config_currency_auto', '0', '0');
INSERT INTO `huannn_setting` VALUES ('9244', '0', 'config', 'config_currency', 'VND', '0');
INSERT INTO `huannn_setting` VALUES ('9242', '0', 'config', 'config_language', 'vn-gb', '0');
INSERT INTO `huannn_setting` VALUES ('9243', '0', 'config', 'config_admin_language', 'vn-gb', '0');
INSERT INTO `huannn_setting` VALUES ('9241', '0', 'config', 'config_zone_id', '3776', '0');
INSERT INTO `huannn_setting` VALUES ('9240', '0', 'config', 'config_country_id', '230', '0');
INSERT INTO `huannn_setting` VALUES ('9239', '0', 'config', 'config_comment', '', '0');
INSERT INTO `huannn_setting` VALUES ('9238', '0', 'config', 'config_open', '', '0');
INSERT INTO `huannn_setting` VALUES ('9233', '0', 'config', 'config_email', 'congchuahoangtu@gmail.com', '0');
INSERT INTO `huannn_setting` VALUES ('9234', '0', 'config', 'config_telephone', '096.442.9966 - 098.278.3150', '0');
INSERT INTO `huannn_setting` VALUES ('9235', '0', 'config', 'config_fax', '', '0');
INSERT INTO `huannn_setting` VALUES ('9236', '0', 'config', 'config_google_map', '', '0');
INSERT INTO `huannn_setting` VALUES ('9237', '0', 'config', 'config_image', '', '0');
INSERT INTO `huannn_setting` VALUES ('9224', '0', 'config', 'config_meta_title', '{\"3\":\"T\\u01b0 v\\u1ea5n Thi\\u1ebft k\\u1ebf n\\u1ed9i th\\u1ea5t Thi c\\u00f4ng ki\\u1ebfn tr\\u00fac n\\u1ed9i th\\u1ea5t ACT Mi\\u1ec1n B\\u1eafc\",\"2\":\"T\\u01b0 v\\u1ea5n Thi\\u1ebft k\\u1ebf n\\u1ed9i th\\u1ea5t Thi c\\u00f4ng ki\\u1ebfn tr\\u00fac n\\u1ed9i th\\u1ea5t ACT Mi\\u1ec1n B\\u1eafc\"}', '1');
INSERT INTO `huannn_setting` VALUES ('9225', '0', 'config', 'config_meta_description', '{\"3\":\"\",\"2\":\"PRINCE &amp; PRINCESS - SI\\u00caU TH\\u1eca \\u0110\\u1ed2 NH\\u1eacP KH\\u1ea8U AN TO\\u00c0N CHO B\\u00c9 V\\u00c0 GIA \\u0110\\u00ccNH\"}', '1');
INSERT INTO `huannn_setting` VALUES ('9226', '0', 'config', 'config_meta_keyword', '{\"3\":\"\",\"2\":\"PRINCE &amp; PRINCESS - SI\\u00caU TH\\u1eca \\u0110\\u1ed2 NH\\u1eacP KH\\u1ea8U AN TO\\u00c0N CHO B\\u00c9 V\\u00c0 GIA \\u0110\\u00ccNH\"}', '1');
INSERT INTO `huannn_setting` VALUES ('9227', '0', 'config', 'config_theme', 'theme_default', '0');
INSERT INTO `huannn_setting` VALUES ('9228', '0', 'config', 'config_layout_id', '4', '0');
INSERT INTO `huannn_setting` VALUES ('9229', '0', 'config', 'config_name', '{\"3\":\"T\\u01b0 v\\u1ea5n Thi\\u1ebft k\\u1ebf n\\u1ed9i th\\u1ea5t Thi c\\u00f4ng ki\\u1ebfn tr\\u00fac n\\u1ed9i th\\u1ea5t ACT Mi\\u1ec1n B\\u1eafc\",\"2\":\"T\\u01b0 v\\u1ea5n Thi\\u1ebft k\\u1ebf n\\u1ed9i th\\u1ea5t Thi c\\u00f4ng ki\\u1ebfn tr\\u00fac n\\u1ed9i th\\u1ea5t ACT Mi\\u1ec1n B\\u1eafc\"}', '1');
INSERT INTO `huannn_setting` VALUES ('9230', '0', 'config', 'config_owner', '{\"3\":\"T\\u01b0 v\\u1ea5n Thi\\u1ebft k\\u1ebf n\\u1ed9i th\\u1ea5t Thi c\\u00f4ng ki\\u1ebfn tr\\u00fac n\\u1ed9i th\\u1ea5t ACT Mi\\u1ec1n B\\u1eafc\",\"2\":\"T\\u01b0 v\\u1ea5n Thi\\u1ebft k\\u1ebf n\\u1ed9i th\\u1ea5t Thi c\\u00f4ng ki\\u1ebfn tr\\u00fac n\\u1ed9i th\\u1ea5t ACT Mi\\u1ec1n B\\u1eafc\"}', '1');
INSERT INTO `huannn_setting` VALUES ('9232', '0', 'config', 'config_geocode', '0106806103 cấp bởi Sở KHĐT TP. Hà Nội ngày 31/03/15', '0');
INSERT INTO `huannn_setting` VALUES ('9231', '0', 'config', 'config_address', '{\"3\":\"S\\u1ed1 14\\/76 Linh Lang, P. C\\u1ed1ng V\\u1ecb, Q. Ba \\u0110\\u00ecnh, HN. Gi\\u00e1m \\u0111\\u1ed1c: Nguy\\u1ec5n \\u0110\\u1ee9c Th\\u00e0nh.\",\"2\":\"S\\u1ed1 14\\/76 Linh Lang, P. C\\u1ed1ng V\\u1ecb, Q. Ba \\u0110\\u00ecnh, HN. Gi\\u00e1m \\u0111\\u1ed1c: Nguy\\u1ec5n \\u0110\\u1ee9c Th\\u00e0nh.\"}', '1');

-- ----------------------------
-- Table structure for huannn_stock_status
-- ----------------------------
DROP TABLE IF EXISTS `huannn_stock_status`;
CREATE TABLE `huannn_stock_status` (
  `stock_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`stock_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_stock_status
-- ----------------------------
INSERT INTO `huannn_stock_status` VALUES ('7', '2', 'In Stock');
INSERT INTO `huannn_stock_status` VALUES ('8', '2', 'Pre-Order');
INSERT INTO `huannn_stock_status` VALUES ('5', '2', 'Out Of Stock');
INSERT INTO `huannn_stock_status` VALUES ('6', '2', '2-3 Days');
INSERT INTO `huannn_stock_status` VALUES ('7', '3', 'In Stock');
INSERT INTO `huannn_stock_status` VALUES ('8', '3', 'Pre-Order');
INSERT INTO `huannn_stock_status` VALUES ('5', '3', 'Out Of Stock');
INSERT INTO `huannn_stock_status` VALUES ('6', '3', '2-3 Days');

-- ----------------------------
-- Table structure for huannn_store
-- ----------------------------
DROP TABLE IF EXISTS `huannn_store`;
CREATE TABLE `huannn_store` (
  `store_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_store
-- ----------------------------

-- ----------------------------
-- Table structure for huannn_tax_class
-- ----------------------------
DROP TABLE IF EXISTS `huannn_tax_class`;
CREATE TABLE `huannn_tax_class` (
  `tax_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`tax_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_tax_class
-- ----------------------------

-- ----------------------------
-- Table structure for huannn_tax_rate
-- ----------------------------
DROP TABLE IF EXISTS `huannn_tax_rate`;
CREATE TABLE `huannn_tax_rate` (
  `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT,
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`tax_rate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_tax_rate
-- ----------------------------

-- ----------------------------
-- Table structure for huannn_tax_rate_to_customer_group
-- ----------------------------
DROP TABLE IF EXISTS `huannn_tax_rate_to_customer_group`;
CREATE TABLE `huannn_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`tax_rate_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_tax_rate_to_customer_group
-- ----------------------------

-- ----------------------------
-- Table structure for huannn_tax_rule
-- ----------------------------
DROP TABLE IF EXISTS `huannn_tax_rule`;
CREATE TABLE `huannn_tax_rule` (
  `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  PRIMARY KEY (`tax_rule_id`)
) ENGINE=MyISAM AUTO_INCREMENT=129 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_tax_rule
-- ----------------------------

-- ----------------------------
-- Table structure for huannn_upload
-- ----------------------------
DROP TABLE IF EXISTS `huannn_upload`;
CREATE TABLE `huannn_upload` (
  `upload_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`upload_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_upload
-- ----------------------------

-- ----------------------------
-- Table structure for huannn_url_alias
-- ----------------------------
DROP TABLE IF EXISTS `huannn_url_alias`;
CREATE TABLE `huannn_url_alias` (
  `url_alias_id` int(11) NOT NULL AUTO_INCREMENT,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`url_alias_id`),
  KEY `query` (`query`),
  KEY `keyword` (`keyword`)
) ENGINE=MyISAM AUTO_INCREMENT=414 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_url_alias
-- ----------------------------
INSERT INTO `huannn_url_alias` VALUES ('257', 'news_id=62', 'chinh-sach-bao-mat-thong-tin-3844.html');
INSERT INTO `huannn_url_alias` VALUES ('280', 'category_id=100', 'me-an-tam');
INSERT INTO `huannn_url_alias` VALUES ('218', 'category_id=99', 'kem-duong-am');
INSERT INTO `huannn_url_alias` VALUES ('281', 'category_id=87', 'be-an-toan');
INSERT INTO `huannn_url_alias` VALUES ('49', 'common/home', '');
INSERT INTO `huannn_url_alias` VALUES ('50', 'information/contact', 'lien-he');
INSERT INTO `huannn_url_alias` VALUES ('230', 'information_id=4', 'gioi-thieu-i1.html');
INSERT INTO `huannn_url_alias` VALUES ('53', 'information_id=3', 'chinh-sach-rieng-tu-i2.html');
INSERT INTO `huannn_url_alias` VALUES ('55', 'information_id=5', 'dieu-khoan-dieu-kien-i4.html');
INSERT INTO `huannn_url_alias` VALUES ('220', 'category_id=101', 'dau-goi-xa-kem-u-toc');
INSERT INTO `huannn_url_alias` VALUES ('215', 'category_id=96', 'kem-duong-mua-he');
INSERT INTO `huannn_url_alias` VALUES ('216', 'category_id=97', 'kem-duong-mua-dong');
INSERT INTO `huannn_url_alias` VALUES ('279', 'category_id=98', 'be-tam-be-goi');
INSERT INTO `huannn_url_alias` VALUES ('278', 'category_id=91', 'be-ngu-ngon');
INSERT INTO `huannn_url_alias` VALUES ('211', 'category_id=92', 'kem-duong-am-da');
INSERT INTO `huannn_url_alias` VALUES ('212', 'category_id=93', 'kem-duong-ban-dem');
INSERT INTO `huannn_url_alias` VALUES ('213', 'category_id=94', 'kem-duong-ban-ngay');
INSERT INTO `huannn_url_alias` VALUES ('272', 'category_id=95', 'be-ra-ngoai');
INSERT INTO `huannn_url_alias` VALUES ('209', 'category_id=90', 'son-moi-mau');
INSERT INTO `huannn_url_alias` VALUES ('207', 'category_id=88', 'lam-dep-mat');
INSERT INTO `huannn_url_alias` VALUES ('208', 'category_id=89', 'trang-diem-mat');
INSERT INTO `huannn_url_alias` VALUES ('145', 'product/productall', 'san-pham');
INSERT INTO `huannn_url_alias` VALUES ('259', 'news_id=64', 'chinh-sach-bao-hanh-4096.html');
INSERT INTO `huannn_url_alias` VALUES ('256', 'news_id=61', 'dieu-khoan-su-dung-3721.html');
INSERT INTO `huannn_url_alias` VALUES ('258', 'news_id=63', 'chinh-sach-doi-tra-hang-va-hoan-tien-3969.html');
INSERT INTO `huannn_url_alias` VALUES ('254', 'news_id=59', 'phuong-thuc-thanh-toan-1.html');
INSERT INTO `huannn_url_alias` VALUES ('255', 'news_id=60', 'hinh-thuc-giao-nhan-3600.html');
INSERT INTO `huannn_url_alias` VALUES ('238', 'product_id=99', '');
INSERT INTO `huannn_url_alias` VALUES ('251', 'product_id=94', 'hop-dung-com-trua-cho-be-8836.html');
INSERT INTO `huannn_url_alias` VALUES ('269', 'category_id=104', 've-sinh-cho-be');
INSERT INTO `huannn_url_alias` VALUES ('243', 'category_id=102', 'kem-duong-da');
INSERT INTO `huannn_url_alias` VALUES ('244', 'category_id=103', 'thuoc-nhuom-toc');
INSERT INTO `huannn_url_alias` VALUES ('245', 'manufacturer_id=11', 'baby-arau-mn1.html');
INSERT INTO `huannn_url_alias` VALUES ('246', 'manufacturer_id=12', 'lovi-mn12.html');
INSERT INTO `huannn_url_alias` VALUES ('247', 'manufacturer_id=13', 'merries-mn13.html');
INSERT INTO `huannn_url_alias` VALUES ('248', 'manufacturer_id=14', 'capol-babies-mn14.html');
INSERT INTO `huannn_url_alias` VALUES ('249', 'manufacturer_id=15', 'aprica-mn15.html');
INSERT INTO `huannn_url_alias` VALUES ('250', 'manufacturer_id=16', 'padio-flyer-mn16.html');
INSERT INTO `huannn_url_alias` VALUES ('266', 'product/manufacturer', 'nhan-hieu');
INSERT INTO `huannn_url_alias` VALUES ('285', 'category_id=105', 'be-an-be-uong');
INSERT INTO `huannn_url_alias` VALUES ('275', 'category_id=106', 'be-hoc-be-choi');
INSERT INTO `huannn_url_alias` VALUES ('276', 'category_id=107', 'quan-ao-thoi-trang');
INSERT INTO `huannn_url_alias` VALUES ('277', 'category_id=108', 'do-dung-gia-dinh');
INSERT INTO `huannn_url_alias` VALUES ('282', 'category_id=109', 'chan-giuong');
INSERT INTO `huannn_url_alias` VALUES ('283', 'category_id=110', 'bit-o-dien');
INSERT INTO `huannn_url_alias` VALUES ('284', 'product_id=104', 'ao-khoac-10816.html');
INSERT INTO `huannn_url_alias` VALUES ('292', 'cat_news_id=13', 'xay-dung-cong-trinh');
INSERT INTO `huannn_url_alias` VALUES ('398', 'cat_news_id=14', 'kien-truc');
INSERT INTO `huannn_url_alias` VALUES ('399', 'cat_news_id=15', 'noi-that');
INSERT INTO `huannn_url_alias` VALUES ('293', 'cat_news_id=16', 'tin-tuc');
INSERT INTO `huannn_url_alias` VALUES ('409', 'news_id=65', 'thiet-ke-noi-that-va-nhung-dieu-can-biet-4225.html');
INSERT INTO `huannn_url_alias` VALUES ('406', 'news_id=67', 'lua-chon-cong-ty-thiet-ke-noi-that-uy-tin-tai-ha-noi-4489.html');
INSERT INTO `huannn_url_alias` VALUES ('298', 'news_id=68', 'thiet-ke-noi-that-tan-co-dien-4624.html');
INSERT INTO `huannn_url_alias` VALUES ('400', 'cat_news_id=17', 'cong-nang');
INSERT INTO `huannn_url_alias` VALUES ('401', 'cat_news_id=18', 'thi-cong');
INSERT INTO `huannn_url_alias` VALUES ('403', 'cat_news_id=19', 'du-an');
INSERT INTO `huannn_url_alias` VALUES ('372', 'news_id=69', 'thiet-ke-noi-that-biet-thu-phap-tai-my-dinh-ha-noi-4761.html');
INSERT INTO `huannn_url_alias` VALUES ('371', 'news_id=70', 'thiet-ke-noi-that-biet-thu-phap-tai-my-dinh-ha-noi-4900.html');
INSERT INTO `huannn_url_alias` VALUES ('370', 'news_id=71', 'thiet-ke-noi-that-biet-thu-phap-tai-my-dinh-ha-noi-5041.html');
INSERT INTO `huannn_url_alias` VALUES ('369', 'news_id=72', 'thiet-ke-noi-that-biet-thu-phap-tai-my-dinh-ha-noi-5184.html');
INSERT INTO `huannn_url_alias` VALUES ('368', 'news_id=73', 'thiet-ke-noi-that-biet-thu-phap-tai-my-dinh-ha-noi-5329.html');
INSERT INTO `huannn_url_alias` VALUES ('364', 'news_id=74', 'thiet-ke-noi-that-biet-thu-phap-tai-my-dinh-ha-noi-5476.html');
INSERT INTO `huannn_url_alias` VALUES ('365', 'news_id=75', 'thiet-ke-noi-that-biet-thu-phap-tai-my-dinh-ha-noi-5625.html');
INSERT INTO `huannn_url_alias` VALUES ('366', 'news_id=76', 'thiet-ke-noi-that-biet-thu-phap-tai-my-dinh-ha-noi-5776.html');
INSERT INTO `huannn_url_alias` VALUES ('367', 'news_id=77', 'thiet-ke-noi-that-biet-thu-phap-tai-my-dinh-ha-noi-5929.html');
INSERT INTO `huannn_url_alias` VALUES ('323', 'cat_news_id=20', 'tai-sao-ban-chon-cong-ty');
INSERT INTO `huannn_url_alias` VALUES ('413', 'news_id=78', 'biet-lang-nghe-khach-hang-6084.html');
INSERT INTO `huannn_url_alias` VALUES ('338', 'news_id=79', 'kien-truc-su-co-kinh-nghiem-6241.html');
INSERT INTO `huannn_url_alias` VALUES ('327', 'news_id=80', 'lam-viec-co-quy-trinh-6400.html');
INSERT INTO `huannn_url_alias` VALUES ('328', 'news_id=81', 'tu-van-tot-6561.html');
INSERT INTO `huannn_url_alias` VALUES ('329', 'news_id=82', 'biet-lang-nghe-khach-hang-6724.html');
INSERT INTO `huannn_url_alias` VALUES ('337', 'news_id=83', 'kien-truc-su-co-kinh-nghiem-6889.html');
INSERT INTO `huannn_url_alias` VALUES ('331', 'news_id=84', 'lam-viec-co-quy-trinh-7056.html');
INSERT INTO `huannn_url_alias` VALUES ('332', 'news_id=85', 'tu-van-tot-7225.html');
INSERT INTO `huannn_url_alias` VALUES ('333', 'news_id=86', 'gioi-thieu-7396.html');
INSERT INTO `huannn_url_alias` VALUES ('336', 'news_id=87', 'xuong-san-xuat-7569.html');
INSERT INTO `huannn_url_alias` VALUES ('339', 'cat_news_id=21', 'tim-doi-tac');
INSERT INTO `huannn_url_alias` VALUES ('354', 'news_id=88', 'tim-nha-thau-phu-thi-cong-xay-dung-thi-cong-noi-that-7744.html');
INSERT INTO `huannn_url_alias` VALUES ('353', 'news_id=89', 'tim-doi-tac-cung-ung-vat-tu-thiet-bi-trong-thi-cong-xay-dung-noi-that-7921.html');
INSERT INTO `huannn_url_alias` VALUES ('342', 'news_id=90', 'nhan-sinh-vien-thuc-tap-thiet-ke-kien-truc-noi-that-8100.html');
INSERT INTO `huannn_url_alias` VALUES ('343', 'news_id=91', 'tuyen-kien-truc-su-thiet-ke-noi-that-01-nguoi-8281.html');
INSERT INTO `huannn_url_alias` VALUES ('373', 'cat_news_id=22', 'biet-thu');
INSERT INTO `huannn_url_alias` VALUES ('374', 'cat_news_id=23', 'van-phong');
INSERT INTO `huannn_url_alias` VALUES ('375', 'cat_news_id=24', 'nha-hang');
INSERT INTO `huannn_url_alias` VALUES ('376', 'cat_news_id=25', 'cafe');
INSERT INTO `huannn_url_alias` VALUES ('377', 'cat_news_id=26', 'karaoke');
INSERT INTO `huannn_url_alias` VALUES ('378', 'cat_news_id=27', 'vu-truong');
INSERT INTO `huannn_url_alias` VALUES ('379', 'cat_news_id=28', 'spa');
INSERT INTO `huannn_url_alias` VALUES ('380', 'cat_news_id=29', 'showroom');
INSERT INTO `huannn_url_alias` VALUES ('381', 'cat_news_id=30', 'nha-lien-ke');
INSERT INTO `huannn_url_alias` VALUES ('382', 'cat_news_id=31', 'nha-pho');
INSERT INTO `huannn_url_alias` VALUES ('383', 'cat_news_id=32', 'son-canh-quan');
INSERT INTO `huannn_url_alias` VALUES ('384', 'cat_news_id=33', 'nha-xuong-nha-may');
INSERT INTO `huannn_url_alias` VALUES ('385', 'cat_news_id=34', 'showroom-oto');
INSERT INTO `huannn_url_alias` VALUES ('386', 'cat_news_id=35', 'trung-tam-giai-tri');
INSERT INTO `huannn_url_alias` VALUES ('387', 'cat_news_id=36', 'khach-hang');
INSERT INTO `huannn_url_alias` VALUES ('405', 'news_id=92', 'chon-cong-ty-xay-dung-nha-pho-chuyen-nghiep-de-duoc-lam-chu-ngoi-nha-dep-8464.html');
INSERT INTO `huannn_url_alias` VALUES ('407', 'news_id=93', 'thiet-ke-noi-that-phong-hop-dep-hien-dai-va-chuyen-nghiep-8649.html');
INSERT INTO `huannn_url_alias` VALUES ('390', 'news_id=94', 'thiet-ke-nha-vuon-8836.html');
INSERT INTO `huannn_url_alias` VALUES ('391', 'news_id=95', 'thiet-ke-nha-ong-9025.html');
INSERT INTO `huannn_url_alias` VALUES ('408', 'news_id=96', 'thiet-ke-kien-truc-noi-that-dep-va-nhung-loi-ich-dat-duoc-9216.html');
INSERT INTO `huannn_url_alias` VALUES ('393', 'news_id=97', 'thiet-ke-nha-hang-9409.html');
INSERT INTO `huannn_url_alias` VALUES ('411', 'news_id=98', 'tu-van-cach-thiet-ke-spa-dep-hop-xu-huong-hien-dai-9604.html');
INSERT INTO `huannn_url_alias` VALUES ('395', 'news_id=99', 'thiet-ke-nha-go-9801.html');
INSERT INTO `huannn_url_alias` VALUES ('410', 'news_id=100', 'tu-van-thiet-ke-thi-cong-noi-that-spa-mini-10000.html');
INSERT INTO `huannn_url_alias` VALUES ('412', 'news_id=66', '3-yeu-to-quan-trong-lam-nen-net-sang-trong-than-thien-cua-phuong-an-thiet-ke-van-phong-dep-4356.html');

-- ----------------------------
-- Table structure for huannn_url_alias_web
-- ----------------------------
DROP TABLE IF EXISTS `huannn_url_alias_web`;
CREATE TABLE `huannn_url_alias_web` (
  `url_alias_web_id` int(11) NOT NULL AUTO_INCREMENT,
  `route` varchar(64) NOT NULL,
  `url_alias` varchar(64) NOT NULL,
  PRIMARY KEY (`url_alias_web_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_url_alias_web
-- ----------------------------
INSERT INTO `huannn_url_alias_web` VALUES ('1', 'common/home', '');
INSERT INTO `huannn_url_alias_web` VALUES ('2', 'information/contact', 'lien-he');
INSERT INTO `huannn_url_alias_web` VALUES ('10', 'product/productall', 'san-pham');
INSERT INTO `huannn_url_alias_web` VALUES ('11', 'product/manufacturer', 'nhan-hieu');

-- ----------------------------
-- Table structure for huannn_user
-- ----------------------------
DROP TABLE IF EXISTS `huannn_user`;
CREATE TABLE `huannn_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `twitter` varchar(96) NOT NULL,
  `facebook` varchar(96) NOT NULL,
  `position` varchar(200) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_user
-- ----------------------------
INSERT INTO `huannn_user` VALUES ('1', '1', 'admin', 'ec18f5be3d578cc01ea836b1297b03f454666749', 'O7DizkWaW', 'Hoàng', 'Hùng', 'huannn2410@gmail.com', 'catalog/485122_402026876535904_952175966_n.jpg', '', '127.0.0.1', '1', '2016-03-04 22:15:11', '', '', '');
INSERT INTO `huannn_user` VALUES ('2', '1', 'test', '2379cad753fde07dbb75e2dda2db1b2f2911a9f6', 'C1O3zNgx0', 'Ngô', 'Huấn', 'huan@gmail.com', 'catalog/hcm_bichngoc.jpg', '', '127.0.0.1', '1', '2016-12-24 09:16:05', 'https://www.facebook.com/huan.lemcon', 'https://www.facebook.com/huan.lemcon', 'cán bộ công ty');
INSERT INTO `huannn_user` VALUES ('3', '1', 'test1', 'db02815594b60bf8ac2a1e582d7e61d0ceb2cf83', '8sTA55rIo', 'Ngô', 'Huấn', 'huan@gmail.com', 'catalog/hcm_bichngoc.jpg', '', '', '1', '2016-12-24 09:27:53', 'https://www.facebook.com/huan.lemcon', 'https://www.facebook.com/huan.lemcon', 'cán bộ công ty');
INSERT INTO `huannn_user` VALUES ('4', '1', 'test2', '9b6385aa08fc7108bab58b0fc5447c8a62cc4f8d', 'vOKckAPPF', 'Ngô', 'Huấn', 'huan@gmail.com', 'catalog/hcm_bichngoc.jpg', '', '', '1', '2016-12-24 09:29:31', 'https://www.facebook.com/huan.lemco', 'https://www.facebook.com/huan.lemcon', 'cán bộ công ty');

-- ----------------------------
-- Table structure for huannn_user_group
-- ----------------------------
DROP TABLE IF EXISTS `huannn_user_group`;
CREATE TABLE `huannn_user_group` (
  `user_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL,
  PRIMARY KEY (`user_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_user_group
-- ----------------------------
INSERT INTO `huannn_user_group` VALUES ('1', 'Administrator', '{\"access\":[\"analytics\\/google_analytics\",\"captcha\\/basic_captcha\",\"captcha\\/google_captcha\",\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/filter\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/filemanager\",\"common\\/menu\",\"common\\/profile\",\"common\\/stats\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/language\",\"design\\/layout\",\"design\\/theme\",\"design\\/url_alias\",\"event\\/theme\",\"extension\\/analytics\",\"extension\\/captcha\",\"extension\\/feed\",\"extension\\/fraud\",\"extension\\/installer\",\"extension\\/modification\",\"extension\\/module\",\"extension\\/openbay\",\"extension\\/payment\",\"extension\\/shipping\",\"extension\\/theme\",\"extension\\/total\",\"feed\\/google_base\",\"feed\\/google_sitemap\",\"feed\\/openbaypro\",\"fraud\\/fraudlabspro\",\"fraud\\/ip\",\"fraud\\/maxmind\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"marketing\\/affiliate\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/lienhe\",\"marketing\\/marketing\",\"marketing\\/newsletter\",\"marketing\\/newsletters\",\"menu\\/link_external\",\"menu\\/link_internal\",\"menu\\/menu\",\"menu\\/menu_group\",\"menu\\/menu_type\",\"module\\/banner\",\"module\\/category\",\"module\\/category_cate\",\"module\\/category_duan\",\"module\\/category_home\",\"module\\/category_introduce\",\"module\\/category_news\",\"module\\/facebook_page\",\"module\\/featured\",\"module\\/latest\",\"module\\/manager_footer\",\"module\\/manufacturer_featured\",\"module\\/menu_custom\",\"module\\/menu_main\",\"module\\/modules_footer\",\"module\\/new_by_category\",\"module\\/payment\",\"module\\/product_by_category\",\"module\\/product_related\",\"module\\/responsiveslide\",\"module\\/user_home\",\"news\\/category\",\"news\\/comment\",\"news\\/information\",\"news\\/news\",\"openbay\\/amazon\",\"openbay\\/amazon_listing\",\"openbay\\/amazon_product\",\"openbay\\/amazonus\",\"openbay\\/amazonus_listing\",\"openbay\\/amazonus_product\",\"openbay\\/ebay\",\"openbay\\/ebay_profile\",\"openbay\\/ebay_template\",\"openbay\\/etsy\",\"openbay\\/etsy_product\",\"openbay\\/etsy_shipping\",\"openbay\\/etsy_shop\",\"openbay\\/fba\",\"payment\\/amazon_login_pay\",\"payment\\/authorizenet_aim\",\"payment\\/authorizenet_sim\",\"payment\\/bank_transfer\",\"payment\\/bluepay_hosted\",\"payment\\/bluepay_redirect\",\"payment\\/cardinity\",\"payment\\/cheque\",\"payment\\/cod\",\"payment\\/eway\",\"payment\\/firstdata\",\"payment\\/firstdata_remote\",\"payment\\/free_checkout\",\"payment\\/g2apay\",\"payment\\/globalpay\",\"payment\\/globalpay_remote\",\"payment\\/klarna_account\",\"payment\\/klarna_invoice\",\"payment\\/laybuy\",\"payment\\/liqpay\",\"payment\\/nochex\",\"payment\\/paymate\",\"payment\\/paypoint\",\"payment\\/payza\",\"payment\\/perpetual_payments\",\"payment\\/pp_express\",\"payment\\/pp_payflow\",\"payment\\/pp_payflow_iframe\",\"payment\\/pp_pro\",\"payment\\/pp_pro_iframe\",\"payment\\/pp_standard\",\"payment\\/realex\",\"payment\\/realex_remote\",\"payment\\/sagepay_direct\",\"payment\\/sagepay_server\",\"payment\\/sagepay_us\",\"payment\\/securetrading_pp\",\"payment\\/securetrading_ws\",\"payment\\/skrill\",\"payment\\/twocheckout\",\"payment\\/web_payment_software\",\"payment\\/worldpay\",\"report\\/affiliate\",\"report\\/affiliate_activity\",\"report\\/affiliate_login\",\"report\\/customer_activity\",\"report\\/customer_credit\",\"report\\/customer_login\",\"report\\/customer_online\",\"report\\/customer_order\",\"report\\/customer_reward\",\"report\\/marketing\",\"report\\/product_purchased\",\"report\\/product_viewed\",\"report\\/sale_coupon\",\"report\\/sale_order\",\"report\\/sale_return\",\"report\\/sale_shipping\",\"report\\/sale_tax\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"shipping\\/auspost\",\"shipping\\/citylink\",\"shipping\\/fedex\",\"shipping\\/flat\",\"shipping\\/free\",\"shipping\\/item\",\"shipping\\/parcelforce_48\",\"shipping\\/pickup\",\"shipping\\/royal_mail\",\"shipping\\/ups\",\"shipping\\/usps\",\"shipping\\/weight\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"theme\\/theme_default\",\"tool\\/backup\",\"tool\\/download\",\"tool\\/error_log\",\"tool\\/upload\",\"total\\/coupon\",\"total\\/credit\",\"total\\/handling\",\"total\\/klarna_fee\",\"total\\/low_order_fee\",\"total\\/reward\",\"total\\/shipping\",\"total\\/sub_total\",\"total\\/tax\",\"total\\/total\",\"total\\/voucher\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\"],\"modify\":[\"analytics\\/google_analytics\",\"captcha\\/basic_captcha\",\"captcha\\/google_captcha\",\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/filter\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/filemanager\",\"common\\/menu\",\"common\\/profile\",\"common\\/stats\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/language\",\"design\\/layout\",\"design\\/theme\",\"design\\/url_alias\",\"event\\/theme\",\"extension\\/analytics\",\"extension\\/captcha\",\"extension\\/feed\",\"extension\\/fraud\",\"extension\\/installer\",\"extension\\/modification\",\"extension\\/module\",\"extension\\/openbay\",\"extension\\/payment\",\"extension\\/shipping\",\"extension\\/theme\",\"extension\\/total\",\"feed\\/google_base\",\"feed\\/google_sitemap\",\"feed\\/openbaypro\",\"fraud\\/fraudlabspro\",\"fraud\\/ip\",\"fraud\\/maxmind\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"marketing\\/affiliate\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/lienhe\",\"marketing\\/marketing\",\"marketing\\/newsletter\",\"marketing\\/newsletters\",\"menu\\/link_external\",\"menu\\/link_internal\",\"menu\\/menu\",\"menu\\/menu_group\",\"menu\\/menu_type\",\"module\\/banner\",\"module\\/category\",\"module\\/category_cate\",\"module\\/category_duan\",\"module\\/category_home\",\"module\\/category_introduce\",\"module\\/category_news\",\"module\\/facebook_page\",\"module\\/featured\",\"module\\/latest\",\"module\\/manager_footer\",\"module\\/manufacturer_featured\",\"module\\/menu_custom\",\"module\\/menu_main\",\"module\\/modules_footer\",\"module\\/new_by_category\",\"module\\/payment\",\"module\\/product_by_category\",\"module\\/product_related\",\"module\\/responsiveslide\",\"module\\/user_home\",\"news\\/category\",\"news\\/comment\",\"news\\/information\",\"news\\/news\",\"openbay\\/amazon\",\"openbay\\/amazon_listing\",\"openbay\\/amazon_product\",\"openbay\\/amazonus\",\"openbay\\/amazonus_listing\",\"openbay\\/amazonus_product\",\"openbay\\/ebay\",\"openbay\\/ebay_profile\",\"openbay\\/ebay_template\",\"openbay\\/etsy\",\"openbay\\/etsy_product\",\"openbay\\/etsy_shipping\",\"openbay\\/etsy_shop\",\"openbay\\/fba\",\"payment\\/amazon_login_pay\",\"payment\\/authorizenet_aim\",\"payment\\/authorizenet_sim\",\"payment\\/bank_transfer\",\"payment\\/bluepay_hosted\",\"payment\\/bluepay_redirect\",\"payment\\/cardinity\",\"payment\\/cheque\",\"payment\\/cod\",\"payment\\/eway\",\"payment\\/firstdata\",\"payment\\/firstdata_remote\",\"payment\\/free_checkout\",\"payment\\/g2apay\",\"payment\\/globalpay\",\"payment\\/globalpay_remote\",\"payment\\/klarna_account\",\"payment\\/klarna_invoice\",\"payment\\/laybuy\",\"payment\\/liqpay\",\"payment\\/nochex\",\"payment\\/paymate\",\"payment\\/paypoint\",\"payment\\/payza\",\"payment\\/perpetual_payments\",\"payment\\/pp_express\",\"payment\\/pp_payflow\",\"payment\\/pp_payflow_iframe\",\"payment\\/pp_pro\",\"payment\\/pp_pro_iframe\",\"payment\\/pp_standard\",\"payment\\/realex\",\"payment\\/realex_remote\",\"payment\\/sagepay_direct\",\"payment\\/sagepay_server\",\"payment\\/sagepay_us\",\"payment\\/securetrading_pp\",\"payment\\/securetrading_ws\",\"payment\\/skrill\",\"payment\\/twocheckout\",\"payment\\/web_payment_software\",\"payment\\/worldpay\",\"report\\/affiliate\",\"report\\/affiliate_activity\",\"report\\/affiliate_login\",\"report\\/customer_activity\",\"report\\/customer_credit\",\"report\\/customer_login\",\"report\\/customer_online\",\"report\\/customer_order\",\"report\\/customer_reward\",\"report\\/marketing\",\"report\\/product_purchased\",\"report\\/product_viewed\",\"report\\/sale_coupon\",\"report\\/sale_order\",\"report\\/sale_return\",\"report\\/sale_shipping\",\"report\\/sale_tax\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"shipping\\/auspost\",\"shipping\\/citylink\",\"shipping\\/fedex\",\"shipping\\/flat\",\"shipping\\/free\",\"shipping\\/item\",\"shipping\\/parcelforce_48\",\"shipping\\/pickup\",\"shipping\\/royal_mail\",\"shipping\\/ups\",\"shipping\\/usps\",\"shipping\\/weight\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"theme\\/theme_default\",\"tool\\/backup\",\"tool\\/download\",\"tool\\/error_log\",\"tool\\/upload\",\"total\\/coupon\",\"total\\/credit\",\"total\\/handling\",\"total\\/klarna_fee\",\"total\\/low_order_fee\",\"total\\/reward\",\"total\\/shipping\",\"total\\/sub_total\",\"total\\/tax\",\"total\\/total\",\"total\\/voucher\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\"]}');

-- ----------------------------
-- Table structure for huannn_voucher
-- ----------------------------
DROP TABLE IF EXISTS `huannn_voucher`;
CREATE TABLE `huannn_voucher` (
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
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_voucher
-- ----------------------------

-- ----------------------------
-- Table structure for huannn_voucher_history
-- ----------------------------
DROP TABLE IF EXISTS `huannn_voucher_history`;
CREATE TABLE `huannn_voucher_history` (
  `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_voucher_history
-- ----------------------------

-- ----------------------------
-- Table structure for huannn_voucher_theme
-- ----------------------------
DROP TABLE IF EXISTS `huannn_voucher_theme`;
CREATE TABLE `huannn_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_voucher_theme
-- ----------------------------
INSERT INTO `huannn_voucher_theme` VALUES ('8', 'catalog/demo/canon_eos_5d_2.jpg');
INSERT INTO `huannn_voucher_theme` VALUES ('7', 'catalog/demo/gift-voucher-birthday.jpg');
INSERT INTO `huannn_voucher_theme` VALUES ('6', 'catalog/demo/apple_logo.jpg');

-- ----------------------------
-- Table structure for huannn_voucher_theme_description
-- ----------------------------
DROP TABLE IF EXISTS `huannn_voucher_theme_description`;
CREATE TABLE `huannn_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_voucher_theme_description
-- ----------------------------
INSERT INTO `huannn_voucher_theme_description` VALUES ('6', '2', 'Christmas');
INSERT INTO `huannn_voucher_theme_description` VALUES ('7', '2', 'Birthday');
INSERT INTO `huannn_voucher_theme_description` VALUES ('8', '2', 'General');
INSERT INTO `huannn_voucher_theme_description` VALUES ('6', '3', 'Christmas');
INSERT INTO `huannn_voucher_theme_description` VALUES ('7', '3', 'Birthday');
INSERT INTO `huannn_voucher_theme_description` VALUES ('8', '3', 'General');

-- ----------------------------
-- Table structure for huannn_weight_class
-- ----------------------------
DROP TABLE IF EXISTS `huannn_weight_class`;
CREATE TABLE `huannn_weight_class` (
  `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  PRIMARY KEY (`weight_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_weight_class
-- ----------------------------
INSERT INTO `huannn_weight_class` VALUES ('1', '1.00000000');
INSERT INTO `huannn_weight_class` VALUES ('2', '1000.00000000');
INSERT INTO `huannn_weight_class` VALUES ('5', '2.20460000');
INSERT INTO `huannn_weight_class` VALUES ('6', '35.27400000');

-- ----------------------------
-- Table structure for huannn_weight_class_description
-- ----------------------------
DROP TABLE IF EXISTS `huannn_weight_class_description`;
CREATE TABLE `huannn_weight_class_description` (
  `weight_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`weight_class_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_weight_class_description
-- ----------------------------
INSERT INTO `huannn_weight_class_description` VALUES ('1', '2', 'Kilogram', 'kg');
INSERT INTO `huannn_weight_class_description` VALUES ('2', '2', 'Gram', 'g');
INSERT INTO `huannn_weight_class_description` VALUES ('5', '2', 'Pound ', 'lb');
INSERT INTO `huannn_weight_class_description` VALUES ('6', '2', 'Ounce', 'oz');
INSERT INTO `huannn_weight_class_description` VALUES ('1', '3', 'Kilogram', 'kg');
INSERT INTO `huannn_weight_class_description` VALUES ('2', '3', 'Gram', 'g');
INSERT INTO `huannn_weight_class_description` VALUES ('5', '3', 'Pound ', 'lb');
INSERT INTO `huannn_weight_class_description` VALUES ('6', '3', 'Ounce', 'oz');

-- ----------------------------
-- Table structure for huannn_zone
-- ----------------------------
DROP TABLE IF EXISTS `huannn_zone`;
CREATE TABLE `huannn_zone` (
  `zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4232 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_zone
-- ----------------------------
INSERT INTO `huannn_zone` VALUES ('1', '1', 'Badakhshan', 'BDS', '1');
INSERT INTO `huannn_zone` VALUES ('2', '1', 'Badghis', 'BDG', '1');
INSERT INTO `huannn_zone` VALUES ('3', '1', 'Baghlan', 'BGL', '1');
INSERT INTO `huannn_zone` VALUES ('4', '1', 'Balkh', 'BAL', '1');
INSERT INTO `huannn_zone` VALUES ('5', '1', 'Bamian', 'BAM', '1');
INSERT INTO `huannn_zone` VALUES ('6', '1', 'Farah', 'FRA', '1');
INSERT INTO `huannn_zone` VALUES ('7', '1', 'Faryab', 'FYB', '1');
INSERT INTO `huannn_zone` VALUES ('8', '1', 'Ghazni', 'GHA', '1');
INSERT INTO `huannn_zone` VALUES ('9', '1', 'Ghowr', 'GHO', '1');
INSERT INTO `huannn_zone` VALUES ('10', '1', 'Helmand', 'HEL', '1');
INSERT INTO `huannn_zone` VALUES ('11', '1', 'Herat', 'HER', '1');
INSERT INTO `huannn_zone` VALUES ('12', '1', 'Jowzjan', 'JOW', '1');
INSERT INTO `huannn_zone` VALUES ('13', '1', 'Kabul', 'KAB', '1');
INSERT INTO `huannn_zone` VALUES ('14', '1', 'Kandahar', 'KAN', '1');
INSERT INTO `huannn_zone` VALUES ('15', '1', 'Kapisa', 'KAP', '1');
INSERT INTO `huannn_zone` VALUES ('16', '1', 'Khost', 'KHO', '1');
INSERT INTO `huannn_zone` VALUES ('17', '1', 'Konar', 'KNR', '1');
INSERT INTO `huannn_zone` VALUES ('18', '1', 'Kondoz', 'KDZ', '1');
INSERT INTO `huannn_zone` VALUES ('19', '1', 'Laghman', 'LAG', '1');
INSERT INTO `huannn_zone` VALUES ('20', '1', 'Lowgar', 'LOW', '1');
INSERT INTO `huannn_zone` VALUES ('21', '1', 'Nangrahar', 'NAN', '1');
INSERT INTO `huannn_zone` VALUES ('22', '1', 'Nimruz', 'NIM', '1');
INSERT INTO `huannn_zone` VALUES ('23', '1', 'Nurestan', 'NUR', '1');
INSERT INTO `huannn_zone` VALUES ('24', '1', 'Oruzgan', 'ORU', '1');
INSERT INTO `huannn_zone` VALUES ('25', '1', 'Paktia', 'PIA', '1');
INSERT INTO `huannn_zone` VALUES ('26', '1', 'Paktika', 'PKA', '1');
INSERT INTO `huannn_zone` VALUES ('27', '1', 'Parwan', 'PAR', '1');
INSERT INTO `huannn_zone` VALUES ('28', '1', 'Samangan', 'SAM', '1');
INSERT INTO `huannn_zone` VALUES ('29', '1', 'Sar-e Pol', 'SAR', '1');
INSERT INTO `huannn_zone` VALUES ('30', '1', 'Takhar', 'TAK', '1');
INSERT INTO `huannn_zone` VALUES ('31', '1', 'Wardak', 'WAR', '1');
INSERT INTO `huannn_zone` VALUES ('32', '1', 'Zabol', 'ZAB', '1');
INSERT INTO `huannn_zone` VALUES ('33', '2', 'Berat', 'BR', '1');
INSERT INTO `huannn_zone` VALUES ('34', '2', 'Bulqize', 'BU', '1');
INSERT INTO `huannn_zone` VALUES ('35', '2', 'Delvine', 'DL', '1');
INSERT INTO `huannn_zone` VALUES ('36', '2', 'Devoll', 'DV', '1');
INSERT INTO `huannn_zone` VALUES ('37', '2', 'Diber', 'DI', '1');
INSERT INTO `huannn_zone` VALUES ('38', '2', 'Durres', 'DR', '1');
INSERT INTO `huannn_zone` VALUES ('39', '2', 'Elbasan', 'EL', '1');
INSERT INTO `huannn_zone` VALUES ('40', '2', 'Kolonje', 'ER', '1');
INSERT INTO `huannn_zone` VALUES ('41', '2', 'Fier', 'FR', '1');
INSERT INTO `huannn_zone` VALUES ('42', '2', 'Gjirokaster', 'GJ', '1');
INSERT INTO `huannn_zone` VALUES ('43', '2', 'Gramsh', 'GR', '1');
INSERT INTO `huannn_zone` VALUES ('44', '2', 'Has', 'HA', '1');
INSERT INTO `huannn_zone` VALUES ('45', '2', 'Kavaje', 'KA', '1');
INSERT INTO `huannn_zone` VALUES ('46', '2', 'Kurbin', 'KB', '1');
INSERT INTO `huannn_zone` VALUES ('47', '2', 'Kucove', 'KC', '1');
INSERT INTO `huannn_zone` VALUES ('48', '2', 'Korce', 'KO', '1');
INSERT INTO `huannn_zone` VALUES ('49', '2', 'Kruje', 'KR', '1');
INSERT INTO `huannn_zone` VALUES ('50', '2', 'Kukes', 'KU', '1');
INSERT INTO `huannn_zone` VALUES ('51', '2', 'Librazhd', 'LB', '1');
INSERT INTO `huannn_zone` VALUES ('52', '2', 'Lezhe', 'LE', '1');
INSERT INTO `huannn_zone` VALUES ('53', '2', 'Lushnje', 'LU', '1');
INSERT INTO `huannn_zone` VALUES ('54', '2', 'Malesi e Madhe', 'MM', '1');
INSERT INTO `huannn_zone` VALUES ('55', '2', 'Mallakaster', 'MK', '1');
INSERT INTO `huannn_zone` VALUES ('56', '2', 'Mat', 'MT', '1');
INSERT INTO `huannn_zone` VALUES ('57', '2', 'Mirdite', 'MR', '1');
INSERT INTO `huannn_zone` VALUES ('58', '2', 'Peqin', 'PQ', '1');
INSERT INTO `huannn_zone` VALUES ('59', '2', 'Permet', 'PR', '1');
INSERT INTO `huannn_zone` VALUES ('60', '2', 'Pogradec', 'PG', '1');
INSERT INTO `huannn_zone` VALUES ('61', '2', 'Puke', 'PU', '1');
INSERT INTO `huannn_zone` VALUES ('62', '2', 'Shkoder', 'SH', '1');
INSERT INTO `huannn_zone` VALUES ('63', '2', 'Skrapar', 'SK', '1');
INSERT INTO `huannn_zone` VALUES ('64', '2', 'Sarande', 'SR', '1');
INSERT INTO `huannn_zone` VALUES ('65', '2', 'Tepelene', 'TE', '1');
INSERT INTO `huannn_zone` VALUES ('66', '2', 'Tropoje', 'TP', '1');
INSERT INTO `huannn_zone` VALUES ('67', '2', 'Tirane', 'TR', '1');
INSERT INTO `huannn_zone` VALUES ('68', '2', 'Vlore', 'VL', '1');
INSERT INTO `huannn_zone` VALUES ('69', '3', 'Adrar', 'ADR', '1');
INSERT INTO `huannn_zone` VALUES ('70', '3', 'Ain Defla', 'ADE', '1');
INSERT INTO `huannn_zone` VALUES ('71', '3', 'Ain Temouchent', 'ATE', '1');
INSERT INTO `huannn_zone` VALUES ('72', '3', 'Alger', 'ALG', '1');
INSERT INTO `huannn_zone` VALUES ('73', '3', 'Annaba', 'ANN', '1');
INSERT INTO `huannn_zone` VALUES ('74', '3', 'Batna', 'BAT', '1');
INSERT INTO `huannn_zone` VALUES ('75', '3', 'Bechar', 'BEC', '1');
INSERT INTO `huannn_zone` VALUES ('76', '3', 'Bejaia', 'BEJ', '1');
INSERT INTO `huannn_zone` VALUES ('77', '3', 'Biskra', 'BIS', '1');
INSERT INTO `huannn_zone` VALUES ('78', '3', 'Blida', 'BLI', '1');
INSERT INTO `huannn_zone` VALUES ('79', '3', 'Bordj Bou Arreridj', 'BBA', '1');
INSERT INTO `huannn_zone` VALUES ('80', '3', 'Bouira', 'BOA', '1');
INSERT INTO `huannn_zone` VALUES ('81', '3', 'Boumerdes', 'BMD', '1');
INSERT INTO `huannn_zone` VALUES ('82', '3', 'Chlef', 'CHL', '1');
INSERT INTO `huannn_zone` VALUES ('83', '3', 'Constantine', 'CON', '1');
INSERT INTO `huannn_zone` VALUES ('84', '3', 'Djelfa', 'DJE', '1');
INSERT INTO `huannn_zone` VALUES ('85', '3', 'El Bayadh', 'EBA', '1');
INSERT INTO `huannn_zone` VALUES ('86', '3', 'El Oued', 'EOU', '1');
INSERT INTO `huannn_zone` VALUES ('87', '3', 'El Tarf', 'ETA', '1');
INSERT INTO `huannn_zone` VALUES ('88', '3', 'Ghardaia', 'GHA', '1');
INSERT INTO `huannn_zone` VALUES ('89', '3', 'Guelma', 'GUE', '1');
INSERT INTO `huannn_zone` VALUES ('90', '3', 'Illizi', 'ILL', '1');
INSERT INTO `huannn_zone` VALUES ('91', '3', 'Jijel', 'JIJ', '1');
INSERT INTO `huannn_zone` VALUES ('92', '3', 'Khenchela', 'KHE', '1');
INSERT INTO `huannn_zone` VALUES ('93', '3', 'Laghouat', 'LAG', '1');
INSERT INTO `huannn_zone` VALUES ('94', '3', 'Muaskar', 'MUA', '1');
INSERT INTO `huannn_zone` VALUES ('95', '3', 'Medea', 'MED', '1');
INSERT INTO `huannn_zone` VALUES ('96', '3', 'Mila', 'MIL', '1');
INSERT INTO `huannn_zone` VALUES ('97', '3', 'Mostaganem', 'MOS', '1');
INSERT INTO `huannn_zone` VALUES ('98', '3', 'M\'Sila', 'MSI', '1');
INSERT INTO `huannn_zone` VALUES ('99', '3', 'Naama', 'NAA', '1');
INSERT INTO `huannn_zone` VALUES ('100', '3', 'Oran', 'ORA', '1');
INSERT INTO `huannn_zone` VALUES ('101', '3', 'Ouargla', 'OUA', '1');
INSERT INTO `huannn_zone` VALUES ('102', '3', 'Oum el-Bouaghi', 'OEB', '1');
INSERT INTO `huannn_zone` VALUES ('103', '3', 'Relizane', 'REL', '1');
INSERT INTO `huannn_zone` VALUES ('104', '3', 'Saida', 'SAI', '1');
INSERT INTO `huannn_zone` VALUES ('105', '3', 'Setif', 'SET', '1');
INSERT INTO `huannn_zone` VALUES ('106', '3', 'Sidi Bel Abbes', 'SBA', '1');
INSERT INTO `huannn_zone` VALUES ('107', '3', 'Skikda', 'SKI', '1');
INSERT INTO `huannn_zone` VALUES ('108', '3', 'Souk Ahras', 'SAH', '1');
INSERT INTO `huannn_zone` VALUES ('109', '3', 'Tamanghasset', 'TAM', '1');
INSERT INTO `huannn_zone` VALUES ('110', '3', 'Tebessa', 'TEB', '1');
INSERT INTO `huannn_zone` VALUES ('111', '3', 'Tiaret', 'TIA', '1');
INSERT INTO `huannn_zone` VALUES ('112', '3', 'Tindouf', 'TIN', '1');
INSERT INTO `huannn_zone` VALUES ('113', '3', 'Tipaza', 'TIP', '1');
INSERT INTO `huannn_zone` VALUES ('114', '3', 'Tissemsilt', 'TIS', '1');
INSERT INTO `huannn_zone` VALUES ('115', '3', 'Tizi Ouzou', 'TOU', '1');
INSERT INTO `huannn_zone` VALUES ('116', '3', 'Tlemcen', 'TLE', '1');
INSERT INTO `huannn_zone` VALUES ('117', '4', 'Eastern', 'E', '1');
INSERT INTO `huannn_zone` VALUES ('118', '4', 'Manu\'a', 'M', '1');
INSERT INTO `huannn_zone` VALUES ('119', '4', 'Rose Island', 'R', '1');
INSERT INTO `huannn_zone` VALUES ('120', '4', 'Swains Island', 'S', '1');
INSERT INTO `huannn_zone` VALUES ('121', '4', 'Western', 'W', '1');
INSERT INTO `huannn_zone` VALUES ('122', '5', 'Andorra la Vella', 'ALV', '1');
INSERT INTO `huannn_zone` VALUES ('123', '5', 'Canillo', 'CAN', '1');
INSERT INTO `huannn_zone` VALUES ('124', '5', 'Encamp', 'ENC', '1');
INSERT INTO `huannn_zone` VALUES ('125', '5', 'Escaldes-Engordany', 'ESE', '1');
INSERT INTO `huannn_zone` VALUES ('126', '5', 'La Massana', 'LMA', '1');
INSERT INTO `huannn_zone` VALUES ('127', '5', 'Ordino', 'ORD', '1');
INSERT INTO `huannn_zone` VALUES ('128', '5', 'Sant Julia de Loria', 'SJL', '1');
INSERT INTO `huannn_zone` VALUES ('129', '6', 'Bengo', 'BGO', '1');
INSERT INTO `huannn_zone` VALUES ('130', '6', 'Benguela', 'BGU', '1');
INSERT INTO `huannn_zone` VALUES ('131', '6', 'Bie', 'BIE', '1');
INSERT INTO `huannn_zone` VALUES ('132', '6', 'Cabinda', 'CAB', '1');
INSERT INTO `huannn_zone` VALUES ('133', '6', 'Cuando-Cubango', 'CCU', '1');
INSERT INTO `huannn_zone` VALUES ('134', '6', 'Cuanza Norte', 'CNO', '1');
INSERT INTO `huannn_zone` VALUES ('135', '6', 'Cuanza Sul', 'CUS', '1');
INSERT INTO `huannn_zone` VALUES ('136', '6', 'Cunene', 'CNN', '1');
INSERT INTO `huannn_zone` VALUES ('137', '6', 'Huambo', 'HUA', '1');
INSERT INTO `huannn_zone` VALUES ('138', '6', 'Huila', 'HUI', '1');
INSERT INTO `huannn_zone` VALUES ('139', '6', 'Luanda', 'LUA', '1');
INSERT INTO `huannn_zone` VALUES ('140', '6', 'Lunda Norte', 'LNO', '1');
INSERT INTO `huannn_zone` VALUES ('141', '6', 'Lunda Sul', 'LSU', '1');
INSERT INTO `huannn_zone` VALUES ('142', '6', 'Malange', 'MAL', '1');
INSERT INTO `huannn_zone` VALUES ('143', '6', 'Moxico', 'MOX', '1');
INSERT INTO `huannn_zone` VALUES ('144', '6', 'Namibe', 'NAM', '1');
INSERT INTO `huannn_zone` VALUES ('145', '6', 'Uige', 'UIG', '1');
INSERT INTO `huannn_zone` VALUES ('146', '6', 'Zaire', 'ZAI', '1');
INSERT INTO `huannn_zone` VALUES ('147', '9', 'Saint George', 'ASG', '1');
INSERT INTO `huannn_zone` VALUES ('148', '9', 'Saint John', 'ASJ', '1');
INSERT INTO `huannn_zone` VALUES ('149', '9', 'Saint Mary', 'ASM', '1');
INSERT INTO `huannn_zone` VALUES ('150', '9', 'Saint Paul', 'ASL', '1');
INSERT INTO `huannn_zone` VALUES ('151', '9', 'Saint Peter', 'ASR', '1');
INSERT INTO `huannn_zone` VALUES ('152', '9', 'Saint Philip', 'ASH', '1');
INSERT INTO `huannn_zone` VALUES ('153', '9', 'Barbuda', 'BAR', '1');
INSERT INTO `huannn_zone` VALUES ('154', '9', 'Redonda', 'RED', '1');
INSERT INTO `huannn_zone` VALUES ('155', '10', 'Antartida e Islas del Atlantico', 'AN', '1');
INSERT INTO `huannn_zone` VALUES ('156', '10', 'Buenos Aires', 'BA', '1');
INSERT INTO `huannn_zone` VALUES ('157', '10', 'Catamarca', 'CA', '1');
INSERT INTO `huannn_zone` VALUES ('158', '10', 'Chaco', 'CH', '1');
INSERT INTO `huannn_zone` VALUES ('159', '10', 'Chubut', 'CU', '1');
INSERT INTO `huannn_zone` VALUES ('160', '10', 'Cordoba', 'CO', '1');
INSERT INTO `huannn_zone` VALUES ('161', '10', 'Corrientes', 'CR', '1');
INSERT INTO `huannn_zone` VALUES ('162', '10', 'Distrito Federal', 'DF', '1');
INSERT INTO `huannn_zone` VALUES ('163', '10', 'Entre Rios', 'ER', '1');
INSERT INTO `huannn_zone` VALUES ('164', '10', 'Formosa', 'FO', '1');
INSERT INTO `huannn_zone` VALUES ('165', '10', 'Jujuy', 'JU', '1');
INSERT INTO `huannn_zone` VALUES ('166', '10', 'La Pampa', 'LP', '1');
INSERT INTO `huannn_zone` VALUES ('167', '10', 'La Rioja', 'LR', '1');
INSERT INTO `huannn_zone` VALUES ('168', '10', 'Mendoza', 'ME', '1');
INSERT INTO `huannn_zone` VALUES ('169', '10', 'Misiones', 'MI', '1');
INSERT INTO `huannn_zone` VALUES ('170', '10', 'Neuquen', 'NE', '1');
INSERT INTO `huannn_zone` VALUES ('171', '10', 'Rio Negro', 'RN', '1');
INSERT INTO `huannn_zone` VALUES ('172', '10', 'Salta', 'SA', '1');
INSERT INTO `huannn_zone` VALUES ('173', '10', 'San Juan', 'SJ', '1');
INSERT INTO `huannn_zone` VALUES ('174', '10', 'San Luis', 'SL', '1');
INSERT INTO `huannn_zone` VALUES ('175', '10', 'Santa Cruz', 'SC', '1');
INSERT INTO `huannn_zone` VALUES ('176', '10', 'Santa Fe', 'SF', '1');
INSERT INTO `huannn_zone` VALUES ('177', '10', 'Santiago del Estero', 'SD', '1');
INSERT INTO `huannn_zone` VALUES ('178', '10', 'Tierra del Fuego', 'TF', '1');
INSERT INTO `huannn_zone` VALUES ('179', '10', 'Tucuman', 'TU', '1');
INSERT INTO `huannn_zone` VALUES ('180', '11', 'Aragatsotn', 'AGT', '1');
INSERT INTO `huannn_zone` VALUES ('181', '11', 'Ararat', 'ARR', '1');
INSERT INTO `huannn_zone` VALUES ('182', '11', 'Armavir', 'ARM', '1');
INSERT INTO `huannn_zone` VALUES ('183', '11', 'Geghark\'unik\'', 'GEG', '1');
INSERT INTO `huannn_zone` VALUES ('184', '11', 'Kotayk\'', 'KOT', '1');
INSERT INTO `huannn_zone` VALUES ('185', '11', 'Lorri', 'LOR', '1');
INSERT INTO `huannn_zone` VALUES ('186', '11', 'Shirak', 'SHI', '1');
INSERT INTO `huannn_zone` VALUES ('187', '11', 'Syunik\'', 'SYU', '1');
INSERT INTO `huannn_zone` VALUES ('188', '11', 'Tavush', 'TAV', '1');
INSERT INTO `huannn_zone` VALUES ('189', '11', 'Vayots\' Dzor', 'VAY', '1');
INSERT INTO `huannn_zone` VALUES ('190', '11', 'Yerevan', 'YER', '1');
INSERT INTO `huannn_zone` VALUES ('191', '13', 'Australian Capital Territory', 'ACT', '1');
INSERT INTO `huannn_zone` VALUES ('192', '13', 'New South Wales', 'NSW', '1');
INSERT INTO `huannn_zone` VALUES ('193', '13', 'Northern Territory', 'NT', '1');
INSERT INTO `huannn_zone` VALUES ('194', '13', 'Queensland', 'QLD', '1');
INSERT INTO `huannn_zone` VALUES ('195', '13', 'South Australia', 'SA', '1');
INSERT INTO `huannn_zone` VALUES ('196', '13', 'Tasmania', 'TAS', '1');
INSERT INTO `huannn_zone` VALUES ('197', '13', 'Victoria', 'VIC', '1');
INSERT INTO `huannn_zone` VALUES ('198', '13', 'Western Australia', 'WA', '1');
INSERT INTO `huannn_zone` VALUES ('199', '14', 'Burgenland', 'BUR', '1');
INSERT INTO `huannn_zone` VALUES ('200', '14', 'Kärnten', 'KAR', '1');
INSERT INTO `huannn_zone` VALUES ('201', '14', 'Niederösterreich', 'NOS', '1');
INSERT INTO `huannn_zone` VALUES ('202', '14', 'Oberösterreich', 'OOS', '1');
INSERT INTO `huannn_zone` VALUES ('203', '14', 'Salzburg', 'SAL', '1');
INSERT INTO `huannn_zone` VALUES ('204', '14', 'Steiermark', 'STE', '1');
INSERT INTO `huannn_zone` VALUES ('205', '14', 'Tirol', 'TIR', '1');
INSERT INTO `huannn_zone` VALUES ('206', '14', 'Vorarlberg', 'VOR', '1');
INSERT INTO `huannn_zone` VALUES ('207', '14', 'Wien', 'WIE', '1');
INSERT INTO `huannn_zone` VALUES ('208', '15', 'Ali Bayramli', 'AB', '1');
INSERT INTO `huannn_zone` VALUES ('209', '15', 'Abseron', 'ABS', '1');
INSERT INTO `huannn_zone` VALUES ('210', '15', 'AgcabAdi', 'AGC', '1');
INSERT INTO `huannn_zone` VALUES ('211', '15', 'Agdam', 'AGM', '1');
INSERT INTO `huannn_zone` VALUES ('212', '15', 'Agdas', 'AGS', '1');
INSERT INTO `huannn_zone` VALUES ('213', '15', 'Agstafa', 'AGA', '1');
INSERT INTO `huannn_zone` VALUES ('214', '15', 'Agsu', 'AGU', '1');
INSERT INTO `huannn_zone` VALUES ('215', '15', 'Astara', 'AST', '1');
INSERT INTO `huannn_zone` VALUES ('216', '15', 'Baki', 'BA', '1');
INSERT INTO `huannn_zone` VALUES ('217', '15', 'BabAk', 'BAB', '1');
INSERT INTO `huannn_zone` VALUES ('218', '15', 'BalakAn', 'BAL', '1');
INSERT INTO `huannn_zone` VALUES ('219', '15', 'BArdA', 'BAR', '1');
INSERT INTO `huannn_zone` VALUES ('220', '15', 'Beylaqan', 'BEY', '1');
INSERT INTO `huannn_zone` VALUES ('221', '15', 'Bilasuvar', 'BIL', '1');
INSERT INTO `huannn_zone` VALUES ('222', '15', 'Cabrayil', 'CAB', '1');
INSERT INTO `huannn_zone` VALUES ('223', '15', 'Calilabab', 'CAL', '1');
INSERT INTO `huannn_zone` VALUES ('224', '15', 'Culfa', 'CUL', '1');
INSERT INTO `huannn_zone` VALUES ('225', '15', 'Daskasan', 'DAS', '1');
INSERT INTO `huannn_zone` VALUES ('226', '15', 'Davaci', 'DAV', '1');
INSERT INTO `huannn_zone` VALUES ('227', '15', 'Fuzuli', 'FUZ', '1');
INSERT INTO `huannn_zone` VALUES ('228', '15', 'Ganca', 'GA', '1');
INSERT INTO `huannn_zone` VALUES ('229', '15', 'Gadabay', 'GAD', '1');
INSERT INTO `huannn_zone` VALUES ('230', '15', 'Goranboy', 'GOR', '1');
INSERT INTO `huannn_zone` VALUES ('231', '15', 'Goycay', 'GOY', '1');
INSERT INTO `huannn_zone` VALUES ('232', '15', 'Haciqabul', 'HAC', '1');
INSERT INTO `huannn_zone` VALUES ('233', '15', 'Imisli', 'IMI', '1');
INSERT INTO `huannn_zone` VALUES ('234', '15', 'Ismayilli', 'ISM', '1');
INSERT INTO `huannn_zone` VALUES ('235', '15', 'Kalbacar', 'KAL', '1');
INSERT INTO `huannn_zone` VALUES ('236', '15', 'Kurdamir', 'KUR', '1');
INSERT INTO `huannn_zone` VALUES ('237', '15', 'Lankaran', 'LA', '1');
INSERT INTO `huannn_zone` VALUES ('238', '15', 'Lacin', 'LAC', '1');
INSERT INTO `huannn_zone` VALUES ('239', '15', 'Lankaran', 'LAN', '1');
INSERT INTO `huannn_zone` VALUES ('240', '15', 'Lerik', 'LER', '1');
INSERT INTO `huannn_zone` VALUES ('241', '15', 'Masalli', 'MAS', '1');
INSERT INTO `huannn_zone` VALUES ('242', '15', 'Mingacevir', 'MI', '1');
INSERT INTO `huannn_zone` VALUES ('243', '15', 'Naftalan', 'NA', '1');
INSERT INTO `huannn_zone` VALUES ('244', '15', 'Neftcala', 'NEF', '1');
INSERT INTO `huannn_zone` VALUES ('245', '15', 'Oguz', 'OGU', '1');
INSERT INTO `huannn_zone` VALUES ('246', '15', 'Ordubad', 'ORD', '1');
INSERT INTO `huannn_zone` VALUES ('247', '15', 'Qabala', 'QAB', '1');
INSERT INTO `huannn_zone` VALUES ('248', '15', 'Qax', 'QAX', '1');
INSERT INTO `huannn_zone` VALUES ('249', '15', 'Qazax', 'QAZ', '1');
INSERT INTO `huannn_zone` VALUES ('250', '15', 'Qobustan', 'QOB', '1');
INSERT INTO `huannn_zone` VALUES ('251', '15', 'Quba', 'QBA', '1');
INSERT INTO `huannn_zone` VALUES ('252', '15', 'Qubadli', 'QBI', '1');
INSERT INTO `huannn_zone` VALUES ('253', '15', 'Qusar', 'QUS', '1');
INSERT INTO `huannn_zone` VALUES ('254', '15', 'Saki', 'SA', '1');
INSERT INTO `huannn_zone` VALUES ('255', '15', 'Saatli', 'SAT', '1');
INSERT INTO `huannn_zone` VALUES ('256', '15', 'Sabirabad', 'SAB', '1');
INSERT INTO `huannn_zone` VALUES ('257', '15', 'Sadarak', 'SAD', '1');
INSERT INTO `huannn_zone` VALUES ('258', '15', 'Sahbuz', 'SAH', '1');
INSERT INTO `huannn_zone` VALUES ('259', '15', 'Saki', 'SAK', '1');
INSERT INTO `huannn_zone` VALUES ('260', '15', 'Salyan', 'SAL', '1');
INSERT INTO `huannn_zone` VALUES ('261', '15', 'Sumqayit', 'SM', '1');
INSERT INTO `huannn_zone` VALUES ('262', '15', 'Samaxi', 'SMI', '1');
INSERT INTO `huannn_zone` VALUES ('263', '15', 'Samkir', 'SKR', '1');
INSERT INTO `huannn_zone` VALUES ('264', '15', 'Samux', 'SMX', '1');
INSERT INTO `huannn_zone` VALUES ('265', '15', 'Sarur', 'SAR', '1');
INSERT INTO `huannn_zone` VALUES ('266', '15', 'Siyazan', 'SIY', '1');
INSERT INTO `huannn_zone` VALUES ('267', '15', 'Susa', 'SS', '1');
INSERT INTO `huannn_zone` VALUES ('268', '15', 'Susa', 'SUS', '1');
INSERT INTO `huannn_zone` VALUES ('269', '15', 'Tartar', 'TAR', '1');
INSERT INTO `huannn_zone` VALUES ('270', '15', 'Tovuz', 'TOV', '1');
INSERT INTO `huannn_zone` VALUES ('271', '15', 'Ucar', 'UCA', '1');
INSERT INTO `huannn_zone` VALUES ('272', '15', 'Xankandi', 'XA', '1');
INSERT INTO `huannn_zone` VALUES ('273', '15', 'Xacmaz', 'XAC', '1');
INSERT INTO `huannn_zone` VALUES ('274', '15', 'Xanlar', 'XAN', '1');
INSERT INTO `huannn_zone` VALUES ('275', '15', 'Xizi', 'XIZ', '1');
INSERT INTO `huannn_zone` VALUES ('276', '15', 'Xocali', 'XCI', '1');
INSERT INTO `huannn_zone` VALUES ('277', '15', 'Xocavand', 'XVD', '1');
INSERT INTO `huannn_zone` VALUES ('278', '15', 'Yardimli', 'YAR', '1');
INSERT INTO `huannn_zone` VALUES ('279', '15', 'Yevlax', 'YEV', '1');
INSERT INTO `huannn_zone` VALUES ('280', '15', 'Zangilan', 'ZAN', '1');
INSERT INTO `huannn_zone` VALUES ('281', '15', 'Zaqatala', 'ZAQ', '1');
INSERT INTO `huannn_zone` VALUES ('282', '15', 'Zardab', 'ZAR', '1');
INSERT INTO `huannn_zone` VALUES ('283', '15', 'Naxcivan', 'NX', '1');
INSERT INTO `huannn_zone` VALUES ('284', '16', 'Acklins', 'ACK', '1');
INSERT INTO `huannn_zone` VALUES ('285', '16', 'Berry Islands', 'BER', '1');
INSERT INTO `huannn_zone` VALUES ('286', '16', 'Bimini', 'BIM', '1');
INSERT INTO `huannn_zone` VALUES ('287', '16', 'Black Point', 'BLK', '1');
INSERT INTO `huannn_zone` VALUES ('288', '16', 'Cat Island', 'CAT', '1');
INSERT INTO `huannn_zone` VALUES ('289', '16', 'Central Abaco', 'CAB', '1');
INSERT INTO `huannn_zone` VALUES ('290', '16', 'Central Andros', 'CAN', '1');
INSERT INTO `huannn_zone` VALUES ('291', '16', 'Central Eleuthera', 'CEL', '1');
INSERT INTO `huannn_zone` VALUES ('292', '16', 'City of Freeport', 'FRE', '1');
INSERT INTO `huannn_zone` VALUES ('293', '16', 'Crooked Island', 'CRO', '1');
INSERT INTO `huannn_zone` VALUES ('294', '16', 'East Grand Bahama', 'EGB', '1');
INSERT INTO `huannn_zone` VALUES ('295', '16', 'Exuma', 'EXU', '1');
INSERT INTO `huannn_zone` VALUES ('296', '16', 'Grand Cay', 'GRD', '1');
INSERT INTO `huannn_zone` VALUES ('297', '16', 'Harbour Island', 'HAR', '1');
INSERT INTO `huannn_zone` VALUES ('298', '16', 'Hope Town', 'HOP', '1');
INSERT INTO `huannn_zone` VALUES ('299', '16', 'Inagua', 'INA', '1');
INSERT INTO `huannn_zone` VALUES ('300', '16', 'Long Island', 'LNG', '1');
INSERT INTO `huannn_zone` VALUES ('301', '16', 'Mangrove Cay', 'MAN', '1');
INSERT INTO `huannn_zone` VALUES ('302', '16', 'Mayaguana', 'MAY', '1');
INSERT INTO `huannn_zone` VALUES ('303', '16', 'Moore\'s Island', 'MOO', '1');
INSERT INTO `huannn_zone` VALUES ('304', '16', 'North Abaco', 'NAB', '1');
INSERT INTO `huannn_zone` VALUES ('305', '16', 'North Andros', 'NAN', '1');
INSERT INTO `huannn_zone` VALUES ('306', '16', 'North Eleuthera', 'NEL', '1');
INSERT INTO `huannn_zone` VALUES ('307', '16', 'Ragged Island', 'RAG', '1');
INSERT INTO `huannn_zone` VALUES ('308', '16', 'Rum Cay', 'RUM', '1');
INSERT INTO `huannn_zone` VALUES ('309', '16', 'San Salvador', 'SAL', '1');
INSERT INTO `huannn_zone` VALUES ('310', '16', 'South Abaco', 'SAB', '1');
INSERT INTO `huannn_zone` VALUES ('311', '16', 'South Andros', 'SAN', '1');
INSERT INTO `huannn_zone` VALUES ('312', '16', 'South Eleuthera', 'SEL', '1');
INSERT INTO `huannn_zone` VALUES ('313', '16', 'Spanish Wells', 'SWE', '1');
INSERT INTO `huannn_zone` VALUES ('314', '16', 'West Grand Bahama', 'WGB', '1');
INSERT INTO `huannn_zone` VALUES ('315', '17', 'Capital', 'CAP', '1');
INSERT INTO `huannn_zone` VALUES ('316', '17', 'Central', 'CEN', '1');
INSERT INTO `huannn_zone` VALUES ('317', '17', 'Muharraq', 'MUH', '1');
INSERT INTO `huannn_zone` VALUES ('318', '17', 'Northern', 'NOR', '1');
INSERT INTO `huannn_zone` VALUES ('319', '17', 'Southern', 'SOU', '1');
INSERT INTO `huannn_zone` VALUES ('320', '18', 'Barisal', 'BAR', '1');
INSERT INTO `huannn_zone` VALUES ('321', '18', 'Chittagong', 'CHI', '1');
INSERT INTO `huannn_zone` VALUES ('322', '18', 'Dhaka', 'DHA', '1');
INSERT INTO `huannn_zone` VALUES ('323', '18', 'Khulna', 'KHU', '1');
INSERT INTO `huannn_zone` VALUES ('324', '18', 'Rajshahi', 'RAJ', '1');
INSERT INTO `huannn_zone` VALUES ('325', '18', 'Sylhet', 'SYL', '1');
INSERT INTO `huannn_zone` VALUES ('326', '19', 'Christ Church', 'CC', '1');
INSERT INTO `huannn_zone` VALUES ('327', '19', 'Saint Andrew', 'AND', '1');
INSERT INTO `huannn_zone` VALUES ('328', '19', 'Saint George', 'GEO', '1');
INSERT INTO `huannn_zone` VALUES ('329', '19', 'Saint James', 'JAM', '1');
INSERT INTO `huannn_zone` VALUES ('330', '19', 'Saint John', 'JOH', '1');
INSERT INTO `huannn_zone` VALUES ('331', '19', 'Saint Joseph', 'JOS', '1');
INSERT INTO `huannn_zone` VALUES ('332', '19', 'Saint Lucy', 'LUC', '1');
INSERT INTO `huannn_zone` VALUES ('333', '19', 'Saint Michael', 'MIC', '1');
INSERT INTO `huannn_zone` VALUES ('334', '19', 'Saint Peter', 'PET', '1');
INSERT INTO `huannn_zone` VALUES ('335', '19', 'Saint Philip', 'PHI', '1');
INSERT INTO `huannn_zone` VALUES ('336', '19', 'Saint Thomas', 'THO', '1');
INSERT INTO `huannn_zone` VALUES ('337', '20', 'Brestskaya (Brest)', 'BR', '1');
INSERT INTO `huannn_zone` VALUES ('338', '20', 'Homyel\'skaya (Homyel\')', 'HO', '1');
INSERT INTO `huannn_zone` VALUES ('339', '20', 'Horad Minsk', 'HM', '1');
INSERT INTO `huannn_zone` VALUES ('340', '20', 'Hrodzyenskaya (Hrodna)', 'HR', '1');
INSERT INTO `huannn_zone` VALUES ('341', '20', 'Mahilyowskaya (Mahilyow)', 'MA', '1');
INSERT INTO `huannn_zone` VALUES ('342', '20', 'Minskaya', 'MI', '1');
INSERT INTO `huannn_zone` VALUES ('343', '20', 'Vitsyebskaya (Vitsyebsk)', 'VI', '1');
INSERT INTO `huannn_zone` VALUES ('344', '21', 'Antwerpen', 'VAN', '1');
INSERT INTO `huannn_zone` VALUES ('345', '21', 'Brabant Wallon', 'WBR', '1');
INSERT INTO `huannn_zone` VALUES ('346', '21', 'Hainaut', 'WHT', '1');
INSERT INTO `huannn_zone` VALUES ('347', '21', 'Liège', 'WLG', '1');
INSERT INTO `huannn_zone` VALUES ('348', '21', 'Limburg', 'VLI', '1');
INSERT INTO `huannn_zone` VALUES ('349', '21', 'Luxembourg', 'WLX', '1');
INSERT INTO `huannn_zone` VALUES ('350', '21', 'Namur', 'WNA', '1');
INSERT INTO `huannn_zone` VALUES ('351', '21', 'Oost-Vlaanderen', 'VOV', '1');
INSERT INTO `huannn_zone` VALUES ('352', '21', 'Vlaams Brabant', 'VBR', '1');
INSERT INTO `huannn_zone` VALUES ('353', '21', 'West-Vlaanderen', 'VWV', '1');
INSERT INTO `huannn_zone` VALUES ('354', '22', 'Belize', 'BZ', '1');
INSERT INTO `huannn_zone` VALUES ('355', '22', 'Cayo', 'CY', '1');
INSERT INTO `huannn_zone` VALUES ('356', '22', 'Corozal', 'CR', '1');
INSERT INTO `huannn_zone` VALUES ('357', '22', 'Orange Walk', 'OW', '1');
INSERT INTO `huannn_zone` VALUES ('358', '22', 'Stann Creek', 'SC', '1');
INSERT INTO `huannn_zone` VALUES ('359', '22', 'Toledo', 'TO', '1');
INSERT INTO `huannn_zone` VALUES ('360', '23', 'Alibori', 'AL', '1');
INSERT INTO `huannn_zone` VALUES ('361', '23', 'Atakora', 'AK', '1');
INSERT INTO `huannn_zone` VALUES ('362', '23', 'Atlantique', 'AQ', '1');
INSERT INTO `huannn_zone` VALUES ('363', '23', 'Borgou', 'BO', '1');
INSERT INTO `huannn_zone` VALUES ('364', '23', 'Collines', 'CO', '1');
INSERT INTO `huannn_zone` VALUES ('365', '23', 'Donga', 'DO', '1');
INSERT INTO `huannn_zone` VALUES ('366', '23', 'Kouffo', 'KO', '1');
INSERT INTO `huannn_zone` VALUES ('367', '23', 'Littoral', 'LI', '1');
INSERT INTO `huannn_zone` VALUES ('368', '23', 'Mono', 'MO', '1');
INSERT INTO `huannn_zone` VALUES ('369', '23', 'Oueme', 'OU', '1');
INSERT INTO `huannn_zone` VALUES ('370', '23', 'Plateau', 'PL', '1');
INSERT INTO `huannn_zone` VALUES ('371', '23', 'Zou', 'ZO', '1');
INSERT INTO `huannn_zone` VALUES ('372', '24', 'Devonshire', 'DS', '1');
INSERT INTO `huannn_zone` VALUES ('373', '24', 'Hamilton City', 'HC', '1');
INSERT INTO `huannn_zone` VALUES ('374', '24', 'Hamilton', 'HA', '1');
INSERT INTO `huannn_zone` VALUES ('375', '24', 'Paget', 'PG', '1');
INSERT INTO `huannn_zone` VALUES ('376', '24', 'Pembroke', 'PB', '1');
INSERT INTO `huannn_zone` VALUES ('377', '24', 'Saint George City', 'GC', '1');
INSERT INTO `huannn_zone` VALUES ('378', '24', 'Saint George\'s', 'SG', '1');
INSERT INTO `huannn_zone` VALUES ('379', '24', 'Sandys', 'SA', '1');
INSERT INTO `huannn_zone` VALUES ('380', '24', 'Smith\'s', 'SM', '1');
INSERT INTO `huannn_zone` VALUES ('381', '24', 'Southampton', 'SH', '1');
INSERT INTO `huannn_zone` VALUES ('382', '24', 'Warwick', 'WA', '1');
INSERT INTO `huannn_zone` VALUES ('383', '25', 'Bumthang', 'BUM', '1');
INSERT INTO `huannn_zone` VALUES ('384', '25', 'Chukha', 'CHU', '1');
INSERT INTO `huannn_zone` VALUES ('385', '25', 'Dagana', 'DAG', '1');
INSERT INTO `huannn_zone` VALUES ('386', '25', 'Gasa', 'GAS', '1');
INSERT INTO `huannn_zone` VALUES ('387', '25', 'Haa', 'HAA', '1');
INSERT INTO `huannn_zone` VALUES ('388', '25', 'Lhuntse', 'LHU', '1');
INSERT INTO `huannn_zone` VALUES ('389', '25', 'Mongar', 'MON', '1');
INSERT INTO `huannn_zone` VALUES ('390', '25', 'Paro', 'PAR', '1');
INSERT INTO `huannn_zone` VALUES ('391', '25', 'Pemagatshel', 'PEM', '1');
INSERT INTO `huannn_zone` VALUES ('392', '25', 'Punakha', 'PUN', '1');
INSERT INTO `huannn_zone` VALUES ('393', '25', 'Samdrup Jongkhar', 'SJO', '1');
INSERT INTO `huannn_zone` VALUES ('394', '25', 'Samtse', 'SAT', '1');
INSERT INTO `huannn_zone` VALUES ('395', '25', 'Sarpang', 'SAR', '1');
INSERT INTO `huannn_zone` VALUES ('396', '25', 'Thimphu', 'THI', '1');
INSERT INTO `huannn_zone` VALUES ('397', '25', 'Trashigang', 'TRG', '1');
INSERT INTO `huannn_zone` VALUES ('398', '25', 'Trashiyangste', 'TRY', '1');
INSERT INTO `huannn_zone` VALUES ('399', '25', 'Trongsa', 'TRO', '1');
INSERT INTO `huannn_zone` VALUES ('400', '25', 'Tsirang', 'TSI', '1');
INSERT INTO `huannn_zone` VALUES ('401', '25', 'Wangdue Phodrang', 'WPH', '1');
INSERT INTO `huannn_zone` VALUES ('402', '25', 'Zhemgang', 'ZHE', '1');
INSERT INTO `huannn_zone` VALUES ('403', '26', 'Beni', 'BEN', '1');
INSERT INTO `huannn_zone` VALUES ('404', '26', 'Chuquisaca', 'CHU', '1');
INSERT INTO `huannn_zone` VALUES ('405', '26', 'Cochabamba', 'COC', '1');
INSERT INTO `huannn_zone` VALUES ('406', '26', 'La Paz', 'LPZ', '1');
INSERT INTO `huannn_zone` VALUES ('407', '26', 'Oruro', 'ORU', '1');
INSERT INTO `huannn_zone` VALUES ('408', '26', 'Pando', 'PAN', '1');
INSERT INTO `huannn_zone` VALUES ('409', '26', 'Potosi', 'POT', '1');
INSERT INTO `huannn_zone` VALUES ('410', '26', 'Santa Cruz', 'SCZ', '1');
INSERT INTO `huannn_zone` VALUES ('411', '26', 'Tarija', 'TAR', '1');
INSERT INTO `huannn_zone` VALUES ('412', '27', 'Brcko district', 'BRO', '1');
INSERT INTO `huannn_zone` VALUES ('413', '27', 'Unsko-Sanski Kanton', 'FUS', '1');
INSERT INTO `huannn_zone` VALUES ('414', '27', 'Posavski Kanton', 'FPO', '1');
INSERT INTO `huannn_zone` VALUES ('415', '27', 'Tuzlanski Kanton', 'FTU', '1');
INSERT INTO `huannn_zone` VALUES ('416', '27', 'Zenicko-Dobojski Kanton', 'FZE', '1');
INSERT INTO `huannn_zone` VALUES ('417', '27', 'Bosanskopodrinjski Kanton', 'FBP', '1');
INSERT INTO `huannn_zone` VALUES ('418', '27', 'Srednjebosanski Kanton', 'FSB', '1');
INSERT INTO `huannn_zone` VALUES ('419', '27', 'Hercegovacko-neretvanski Kanton', 'FHN', '1');
INSERT INTO `huannn_zone` VALUES ('420', '27', 'Zapadnohercegovacka Zupanija', 'FZH', '1');
INSERT INTO `huannn_zone` VALUES ('421', '27', 'Kanton Sarajevo', 'FSA', '1');
INSERT INTO `huannn_zone` VALUES ('422', '27', 'Zapadnobosanska', 'FZA', '1');
INSERT INTO `huannn_zone` VALUES ('423', '27', 'Banja Luka', 'SBL', '1');
INSERT INTO `huannn_zone` VALUES ('424', '27', 'Doboj', 'SDO', '1');
INSERT INTO `huannn_zone` VALUES ('425', '27', 'Bijeljina', 'SBI', '1');
INSERT INTO `huannn_zone` VALUES ('426', '27', 'Vlasenica', 'SVL', '1');
INSERT INTO `huannn_zone` VALUES ('427', '27', 'Sarajevo-Romanija or Sokolac', 'SSR', '1');
INSERT INTO `huannn_zone` VALUES ('428', '27', 'Foca', 'SFO', '1');
INSERT INTO `huannn_zone` VALUES ('429', '27', 'Trebinje', 'STR', '1');
INSERT INTO `huannn_zone` VALUES ('430', '28', 'Central', 'CE', '1');
INSERT INTO `huannn_zone` VALUES ('431', '28', 'Ghanzi', 'GH', '1');
INSERT INTO `huannn_zone` VALUES ('432', '28', 'Kgalagadi', 'KD', '1');
INSERT INTO `huannn_zone` VALUES ('433', '28', 'Kgatleng', 'KT', '1');
INSERT INTO `huannn_zone` VALUES ('434', '28', 'Kweneng', 'KW', '1');
INSERT INTO `huannn_zone` VALUES ('435', '28', 'Ngamiland', 'NG', '1');
INSERT INTO `huannn_zone` VALUES ('436', '28', 'North East', 'NE', '1');
INSERT INTO `huannn_zone` VALUES ('437', '28', 'North West', 'NW', '1');
INSERT INTO `huannn_zone` VALUES ('438', '28', 'South East', 'SE', '1');
INSERT INTO `huannn_zone` VALUES ('439', '28', 'Southern', 'SO', '1');
INSERT INTO `huannn_zone` VALUES ('440', '30', 'Acre', 'AC', '1');
INSERT INTO `huannn_zone` VALUES ('441', '30', 'Alagoas', 'AL', '1');
INSERT INTO `huannn_zone` VALUES ('442', '30', 'Amapá', 'AP', '1');
INSERT INTO `huannn_zone` VALUES ('443', '30', 'Amazonas', 'AM', '1');
INSERT INTO `huannn_zone` VALUES ('444', '30', 'Bahia', 'BA', '1');
INSERT INTO `huannn_zone` VALUES ('445', '30', 'Ceará', 'CE', '1');
INSERT INTO `huannn_zone` VALUES ('446', '30', 'Distrito Federal', 'DF', '1');
INSERT INTO `huannn_zone` VALUES ('447', '30', 'Espírito Santo', 'ES', '1');
INSERT INTO `huannn_zone` VALUES ('448', '30', 'Goiás', 'GO', '1');
INSERT INTO `huannn_zone` VALUES ('449', '30', 'Maranhão', 'MA', '1');
INSERT INTO `huannn_zone` VALUES ('450', '30', 'Mato Grosso', 'MT', '1');
INSERT INTO `huannn_zone` VALUES ('451', '30', 'Mato Grosso do Sul', 'MS', '1');
INSERT INTO `huannn_zone` VALUES ('452', '30', 'Minas Gerais', 'MG', '1');
INSERT INTO `huannn_zone` VALUES ('453', '30', 'Pará', 'PA', '1');
INSERT INTO `huannn_zone` VALUES ('454', '30', 'Paraíba', 'PB', '1');
INSERT INTO `huannn_zone` VALUES ('455', '30', 'Paraná', 'PR', '1');
INSERT INTO `huannn_zone` VALUES ('456', '30', 'Pernambuco', 'PE', '1');
INSERT INTO `huannn_zone` VALUES ('457', '30', 'Piauí', 'PI', '1');
INSERT INTO `huannn_zone` VALUES ('458', '30', 'Rio de Janeiro', 'RJ', '1');
INSERT INTO `huannn_zone` VALUES ('459', '30', 'Rio Grande do Norte', 'RN', '1');
INSERT INTO `huannn_zone` VALUES ('460', '30', 'Rio Grande do Sul', 'RS', '1');
INSERT INTO `huannn_zone` VALUES ('461', '30', 'Rondônia', 'RO', '1');
INSERT INTO `huannn_zone` VALUES ('462', '30', 'Roraima', 'RR', '1');
INSERT INTO `huannn_zone` VALUES ('463', '30', 'Santa Catarina', 'SC', '1');
INSERT INTO `huannn_zone` VALUES ('464', '30', 'São Paulo', 'SP', '1');
INSERT INTO `huannn_zone` VALUES ('465', '30', 'Sergipe', 'SE', '1');
INSERT INTO `huannn_zone` VALUES ('466', '30', 'Tocantins', 'TO', '1');
INSERT INTO `huannn_zone` VALUES ('467', '31', 'Peros Banhos', 'PB', '1');
INSERT INTO `huannn_zone` VALUES ('468', '31', 'Salomon Islands', 'SI', '1');
INSERT INTO `huannn_zone` VALUES ('469', '31', 'Nelsons Island', 'NI', '1');
INSERT INTO `huannn_zone` VALUES ('470', '31', 'Three Brothers', 'TB', '1');
INSERT INTO `huannn_zone` VALUES ('471', '31', 'Eagle Islands', 'EA', '1');
INSERT INTO `huannn_zone` VALUES ('472', '31', 'Danger Island', 'DI', '1');
INSERT INTO `huannn_zone` VALUES ('473', '31', 'Egmont Islands', 'EG', '1');
INSERT INTO `huannn_zone` VALUES ('474', '31', 'Diego Garcia', 'DG', '1');
INSERT INTO `huannn_zone` VALUES ('475', '32', 'Belait', 'BEL', '1');
INSERT INTO `huannn_zone` VALUES ('476', '32', 'Brunei and Muara', 'BRM', '1');
INSERT INTO `huannn_zone` VALUES ('477', '32', 'Temburong', 'TEM', '1');
INSERT INTO `huannn_zone` VALUES ('478', '32', 'Tutong', 'TUT', '1');
INSERT INTO `huannn_zone` VALUES ('479', '33', 'Blagoevgrad', '', '1');
INSERT INTO `huannn_zone` VALUES ('480', '33', 'Burgas', '', '1');
INSERT INTO `huannn_zone` VALUES ('481', '33', 'Dobrich', '', '1');
INSERT INTO `huannn_zone` VALUES ('482', '33', 'Gabrovo', '', '1');
INSERT INTO `huannn_zone` VALUES ('483', '33', 'Haskovo', '', '1');
INSERT INTO `huannn_zone` VALUES ('484', '33', 'Kardjali', '', '1');
INSERT INTO `huannn_zone` VALUES ('485', '33', 'Kyustendil', '', '1');
INSERT INTO `huannn_zone` VALUES ('486', '33', 'Lovech', '', '1');
INSERT INTO `huannn_zone` VALUES ('487', '33', 'Montana', '', '1');
INSERT INTO `huannn_zone` VALUES ('488', '33', 'Pazardjik', '', '1');
INSERT INTO `huannn_zone` VALUES ('489', '33', 'Pernik', '', '1');
INSERT INTO `huannn_zone` VALUES ('490', '33', 'Pleven', '', '1');
INSERT INTO `huannn_zone` VALUES ('491', '33', 'Plovdiv', '', '1');
INSERT INTO `huannn_zone` VALUES ('492', '33', 'Razgrad', '', '1');
INSERT INTO `huannn_zone` VALUES ('493', '33', 'Shumen', '', '1');
INSERT INTO `huannn_zone` VALUES ('494', '33', 'Silistra', '', '1');
INSERT INTO `huannn_zone` VALUES ('495', '33', 'Sliven', '', '1');
INSERT INTO `huannn_zone` VALUES ('496', '33', 'Smolyan', '', '1');
INSERT INTO `huannn_zone` VALUES ('497', '33', 'Sofia', '', '1');
INSERT INTO `huannn_zone` VALUES ('498', '33', 'Sofia - town', '', '1');
INSERT INTO `huannn_zone` VALUES ('499', '33', 'Stara Zagora', '', '1');
INSERT INTO `huannn_zone` VALUES ('500', '33', 'Targovishte', '', '1');
INSERT INTO `huannn_zone` VALUES ('501', '33', 'Varna', '', '1');
INSERT INTO `huannn_zone` VALUES ('502', '33', 'Veliko Tarnovo', '', '1');
INSERT INTO `huannn_zone` VALUES ('503', '33', 'Vidin', '', '1');
INSERT INTO `huannn_zone` VALUES ('504', '33', 'Vratza', '', '1');
INSERT INTO `huannn_zone` VALUES ('505', '33', 'Yambol', '', '1');
INSERT INTO `huannn_zone` VALUES ('506', '34', 'Bale', 'BAL', '1');
INSERT INTO `huannn_zone` VALUES ('507', '34', 'Bam', 'BAM', '1');
INSERT INTO `huannn_zone` VALUES ('508', '34', 'Banwa', 'BAN', '1');
INSERT INTO `huannn_zone` VALUES ('509', '34', 'Bazega', 'BAZ', '1');
INSERT INTO `huannn_zone` VALUES ('510', '34', 'Bougouriba', 'BOR', '1');
INSERT INTO `huannn_zone` VALUES ('511', '34', 'Boulgou', 'BLG', '1');
INSERT INTO `huannn_zone` VALUES ('512', '34', 'Boulkiemde', 'BOK', '1');
INSERT INTO `huannn_zone` VALUES ('513', '34', 'Comoe', 'COM', '1');
INSERT INTO `huannn_zone` VALUES ('514', '34', 'Ganzourgou', 'GAN', '1');
INSERT INTO `huannn_zone` VALUES ('515', '34', 'Gnagna', 'GNA', '1');
INSERT INTO `huannn_zone` VALUES ('516', '34', 'Gourma', 'GOU', '1');
INSERT INTO `huannn_zone` VALUES ('517', '34', 'Houet', 'HOU', '1');
INSERT INTO `huannn_zone` VALUES ('518', '34', 'Ioba', 'IOA', '1');
INSERT INTO `huannn_zone` VALUES ('519', '34', 'Kadiogo', 'KAD', '1');
INSERT INTO `huannn_zone` VALUES ('520', '34', 'Kenedougou', 'KEN', '1');
INSERT INTO `huannn_zone` VALUES ('521', '34', 'Komondjari', 'KOD', '1');
INSERT INTO `huannn_zone` VALUES ('522', '34', 'Kompienga', 'KOP', '1');
INSERT INTO `huannn_zone` VALUES ('523', '34', 'Kossi', 'KOS', '1');
INSERT INTO `huannn_zone` VALUES ('524', '34', 'Koulpelogo', 'KOL', '1');
INSERT INTO `huannn_zone` VALUES ('525', '34', 'Kouritenga', 'KOT', '1');
INSERT INTO `huannn_zone` VALUES ('526', '34', 'Kourweogo', 'KOW', '1');
INSERT INTO `huannn_zone` VALUES ('527', '34', 'Leraba', 'LER', '1');
INSERT INTO `huannn_zone` VALUES ('528', '34', 'Loroum', 'LOR', '1');
INSERT INTO `huannn_zone` VALUES ('529', '34', 'Mouhoun', 'MOU', '1');
INSERT INTO `huannn_zone` VALUES ('530', '34', 'Nahouri', 'NAH', '1');
INSERT INTO `huannn_zone` VALUES ('531', '34', 'Namentenga', 'NAM', '1');
INSERT INTO `huannn_zone` VALUES ('532', '34', 'Nayala', 'NAY', '1');
INSERT INTO `huannn_zone` VALUES ('533', '34', 'Noumbiel', 'NOU', '1');
INSERT INTO `huannn_zone` VALUES ('534', '34', 'Oubritenga', 'OUB', '1');
INSERT INTO `huannn_zone` VALUES ('535', '34', 'Oudalan', 'OUD', '1');
INSERT INTO `huannn_zone` VALUES ('536', '34', 'Passore', 'PAS', '1');
INSERT INTO `huannn_zone` VALUES ('537', '34', 'Poni', 'PON', '1');
INSERT INTO `huannn_zone` VALUES ('538', '34', 'Sanguie', 'SAG', '1');
INSERT INTO `huannn_zone` VALUES ('539', '34', 'Sanmatenga', 'SAM', '1');
INSERT INTO `huannn_zone` VALUES ('540', '34', 'Seno', 'SEN', '1');
INSERT INTO `huannn_zone` VALUES ('541', '34', 'Sissili', 'SIS', '1');
INSERT INTO `huannn_zone` VALUES ('542', '34', 'Soum', 'SOM', '1');
INSERT INTO `huannn_zone` VALUES ('543', '34', 'Sourou', 'SOR', '1');
INSERT INTO `huannn_zone` VALUES ('544', '34', 'Tapoa', 'TAP', '1');
INSERT INTO `huannn_zone` VALUES ('545', '34', 'Tuy', 'TUY', '1');
INSERT INTO `huannn_zone` VALUES ('546', '34', 'Yagha', 'YAG', '1');
INSERT INTO `huannn_zone` VALUES ('547', '34', 'Yatenga', 'YAT', '1');
INSERT INTO `huannn_zone` VALUES ('548', '34', 'Ziro', 'ZIR', '1');
INSERT INTO `huannn_zone` VALUES ('549', '34', 'Zondoma', 'ZOD', '1');
INSERT INTO `huannn_zone` VALUES ('550', '34', 'Zoundweogo', 'ZOW', '1');
INSERT INTO `huannn_zone` VALUES ('551', '35', 'Bubanza', 'BB', '1');
INSERT INTO `huannn_zone` VALUES ('552', '35', 'Bujumbura', 'BJ', '1');
INSERT INTO `huannn_zone` VALUES ('553', '35', 'Bururi', 'BR', '1');
INSERT INTO `huannn_zone` VALUES ('554', '35', 'Cankuzo', 'CA', '1');
INSERT INTO `huannn_zone` VALUES ('555', '35', 'Cibitoke', 'CI', '1');
INSERT INTO `huannn_zone` VALUES ('556', '35', 'Gitega', 'GI', '1');
INSERT INTO `huannn_zone` VALUES ('557', '35', 'Karuzi', 'KR', '1');
INSERT INTO `huannn_zone` VALUES ('558', '35', 'Kayanza', 'KY', '1');
INSERT INTO `huannn_zone` VALUES ('559', '35', 'Kirundo', 'KI', '1');
INSERT INTO `huannn_zone` VALUES ('560', '35', 'Makamba', 'MA', '1');
INSERT INTO `huannn_zone` VALUES ('561', '35', 'Muramvya', 'MU', '1');
INSERT INTO `huannn_zone` VALUES ('562', '35', 'Muyinga', 'MY', '1');
INSERT INTO `huannn_zone` VALUES ('563', '35', 'Mwaro', 'MW', '1');
INSERT INTO `huannn_zone` VALUES ('564', '35', 'Ngozi', 'NG', '1');
INSERT INTO `huannn_zone` VALUES ('565', '35', 'Rutana', 'RT', '1');
INSERT INTO `huannn_zone` VALUES ('566', '35', 'Ruyigi', 'RY', '1');
INSERT INTO `huannn_zone` VALUES ('567', '36', 'Phnom Penh', 'PP', '1');
INSERT INTO `huannn_zone` VALUES ('568', '36', 'Preah Seihanu (Kompong Som or Sihanoukville)', 'PS', '1');
INSERT INTO `huannn_zone` VALUES ('569', '36', 'Pailin', 'PA', '1');
INSERT INTO `huannn_zone` VALUES ('570', '36', 'Keb', 'KB', '1');
INSERT INTO `huannn_zone` VALUES ('571', '36', 'Banteay Meanchey', 'BM', '1');
INSERT INTO `huannn_zone` VALUES ('572', '36', 'Battambang', 'BA', '1');
INSERT INTO `huannn_zone` VALUES ('573', '36', 'Kampong Cham', 'KM', '1');
INSERT INTO `huannn_zone` VALUES ('574', '36', 'Kampong Chhnang', 'KN', '1');
INSERT INTO `huannn_zone` VALUES ('575', '36', 'Kampong Speu', 'KU', '1');
INSERT INTO `huannn_zone` VALUES ('576', '36', 'Kampong Som', 'KO', '1');
INSERT INTO `huannn_zone` VALUES ('577', '36', 'Kampong Thom', 'KT', '1');
INSERT INTO `huannn_zone` VALUES ('578', '36', 'Kampot', 'KP', '1');
INSERT INTO `huannn_zone` VALUES ('579', '36', 'Kandal', 'KL', '1');
INSERT INTO `huannn_zone` VALUES ('580', '36', 'Kaoh Kong', 'KK', '1');
INSERT INTO `huannn_zone` VALUES ('581', '36', 'Kratie', 'KR', '1');
INSERT INTO `huannn_zone` VALUES ('582', '36', 'Mondul Kiri', 'MK', '1');
INSERT INTO `huannn_zone` VALUES ('583', '36', 'Oddar Meancheay', 'OM', '1');
INSERT INTO `huannn_zone` VALUES ('584', '36', 'Pursat', 'PU', '1');
INSERT INTO `huannn_zone` VALUES ('585', '36', 'Preah Vihear', 'PR', '1');
INSERT INTO `huannn_zone` VALUES ('586', '36', 'Prey Veng', 'PG', '1');
INSERT INTO `huannn_zone` VALUES ('587', '36', 'Ratanak Kiri', 'RK', '1');
INSERT INTO `huannn_zone` VALUES ('588', '36', 'Siemreap', 'SI', '1');
INSERT INTO `huannn_zone` VALUES ('589', '36', 'Stung Treng', 'ST', '1');
INSERT INTO `huannn_zone` VALUES ('590', '36', 'Svay Rieng', 'SR', '1');
INSERT INTO `huannn_zone` VALUES ('591', '36', 'Takeo', 'TK', '1');
INSERT INTO `huannn_zone` VALUES ('592', '37', 'Adamawa (Adamaoua)', 'ADA', '1');
INSERT INTO `huannn_zone` VALUES ('593', '37', 'Centre', 'CEN', '1');
INSERT INTO `huannn_zone` VALUES ('594', '37', 'East (Est)', 'EST', '1');
INSERT INTO `huannn_zone` VALUES ('595', '37', 'Extreme North (Extreme-Nord)', 'EXN', '1');
INSERT INTO `huannn_zone` VALUES ('596', '37', 'Littoral', 'LIT', '1');
INSERT INTO `huannn_zone` VALUES ('597', '37', 'North (Nord)', 'NOR', '1');
INSERT INTO `huannn_zone` VALUES ('598', '37', 'Northwest (Nord-Ouest)', 'NOT', '1');
INSERT INTO `huannn_zone` VALUES ('599', '37', 'West (Ouest)', 'OUE', '1');
INSERT INTO `huannn_zone` VALUES ('600', '37', 'South (Sud)', 'SUD', '1');
INSERT INTO `huannn_zone` VALUES ('601', '37', 'Southwest (Sud-Ouest).', 'SOU', '1');
INSERT INTO `huannn_zone` VALUES ('602', '38', 'Alberta', 'AB', '1');
INSERT INTO `huannn_zone` VALUES ('603', '38', 'British Columbia', 'BC', '1');
INSERT INTO `huannn_zone` VALUES ('604', '38', 'Manitoba', 'MB', '1');
INSERT INTO `huannn_zone` VALUES ('605', '38', 'New Brunswick', 'NB', '1');
INSERT INTO `huannn_zone` VALUES ('606', '38', 'Newfoundland and Labrador', 'NL', '1');
INSERT INTO `huannn_zone` VALUES ('607', '38', 'Northwest Territories', 'NT', '1');
INSERT INTO `huannn_zone` VALUES ('608', '38', 'Nova Scotia', 'NS', '1');
INSERT INTO `huannn_zone` VALUES ('609', '38', 'Nunavut', 'NU', '1');
INSERT INTO `huannn_zone` VALUES ('610', '38', 'Ontario', 'ON', '1');
INSERT INTO `huannn_zone` VALUES ('611', '38', 'Prince Edward Island', 'PE', '1');
INSERT INTO `huannn_zone` VALUES ('612', '38', 'Qu&eacute;bec', 'QC', '1');
INSERT INTO `huannn_zone` VALUES ('613', '38', 'Saskatchewan', 'SK', '1');
INSERT INTO `huannn_zone` VALUES ('614', '38', 'Yukon Territory', 'YT', '1');
INSERT INTO `huannn_zone` VALUES ('615', '39', 'Boa Vista', 'BV', '1');
INSERT INTO `huannn_zone` VALUES ('616', '39', 'Brava', 'BR', '1');
INSERT INTO `huannn_zone` VALUES ('617', '39', 'Calheta de Sao Miguel', 'CS', '1');
INSERT INTO `huannn_zone` VALUES ('618', '39', 'Maio', 'MA', '1');
INSERT INTO `huannn_zone` VALUES ('619', '39', 'Mosteiros', 'MO', '1');
INSERT INTO `huannn_zone` VALUES ('620', '39', 'Paul', 'PA', '1');
INSERT INTO `huannn_zone` VALUES ('621', '39', 'Porto Novo', 'PN', '1');
INSERT INTO `huannn_zone` VALUES ('622', '39', 'Praia', 'PR', '1');
INSERT INTO `huannn_zone` VALUES ('623', '39', 'Ribeira Grande', 'RG', '1');
INSERT INTO `huannn_zone` VALUES ('624', '39', 'Sal', 'SL', '1');
INSERT INTO `huannn_zone` VALUES ('625', '39', 'Santa Catarina', 'CA', '1');
INSERT INTO `huannn_zone` VALUES ('626', '39', 'Santa Cruz', 'CR', '1');
INSERT INTO `huannn_zone` VALUES ('627', '39', 'Sao Domingos', 'SD', '1');
INSERT INTO `huannn_zone` VALUES ('628', '39', 'Sao Filipe', 'SF', '1');
INSERT INTO `huannn_zone` VALUES ('629', '39', 'Sao Nicolau', 'SN', '1');
INSERT INTO `huannn_zone` VALUES ('630', '39', 'Sao Vicente', 'SV', '1');
INSERT INTO `huannn_zone` VALUES ('631', '39', 'Tarrafal', 'TA', '1');
INSERT INTO `huannn_zone` VALUES ('632', '40', 'Creek', 'CR', '1');
INSERT INTO `huannn_zone` VALUES ('633', '40', 'Eastern', 'EA', '1');
INSERT INTO `huannn_zone` VALUES ('634', '40', 'Midland', 'ML', '1');
INSERT INTO `huannn_zone` VALUES ('635', '40', 'South Town', 'ST', '1');
INSERT INTO `huannn_zone` VALUES ('636', '40', 'Spot Bay', 'SP', '1');
INSERT INTO `huannn_zone` VALUES ('637', '40', 'Stake Bay', 'SK', '1');
INSERT INTO `huannn_zone` VALUES ('638', '40', 'West End', 'WD', '1');
INSERT INTO `huannn_zone` VALUES ('639', '40', 'Western', 'WN', '1');
INSERT INTO `huannn_zone` VALUES ('640', '41', 'Bamingui-Bangoran', 'BBA', '1');
INSERT INTO `huannn_zone` VALUES ('641', '41', 'Basse-Kotto', 'BKO', '1');
INSERT INTO `huannn_zone` VALUES ('642', '41', 'Haute-Kotto', 'HKO', '1');
INSERT INTO `huannn_zone` VALUES ('643', '41', 'Haut-Mbomou', 'HMB', '1');
INSERT INTO `huannn_zone` VALUES ('644', '41', 'Kemo', 'KEM', '1');
INSERT INTO `huannn_zone` VALUES ('645', '41', 'Lobaye', 'LOB', '1');
INSERT INTO `huannn_zone` VALUES ('646', '41', 'Mambere-KadeÔ', 'MKD', '1');
INSERT INTO `huannn_zone` VALUES ('647', '41', 'Mbomou', 'MBO', '1');
INSERT INTO `huannn_zone` VALUES ('648', '41', 'Nana-Mambere', 'NMM', '1');
INSERT INTO `huannn_zone` VALUES ('649', '41', 'Ombella-M\'Poko', 'OMP', '1');
INSERT INTO `huannn_zone` VALUES ('650', '41', 'Ouaka', 'OUK', '1');
INSERT INTO `huannn_zone` VALUES ('651', '41', 'Ouham', 'OUH', '1');
INSERT INTO `huannn_zone` VALUES ('652', '41', 'Ouham-Pende', 'OPE', '1');
INSERT INTO `huannn_zone` VALUES ('653', '41', 'Vakaga', 'VAK', '1');
INSERT INTO `huannn_zone` VALUES ('654', '41', 'Nana-Grebizi', 'NGR', '1');
INSERT INTO `huannn_zone` VALUES ('655', '41', 'Sangha-Mbaere', 'SMB', '1');
INSERT INTO `huannn_zone` VALUES ('656', '41', 'Bangui', 'BAN', '1');
INSERT INTO `huannn_zone` VALUES ('657', '42', 'Batha', 'BA', '1');
INSERT INTO `huannn_zone` VALUES ('658', '42', 'Biltine', 'BI', '1');
INSERT INTO `huannn_zone` VALUES ('659', '42', 'Borkou-Ennedi-Tibesti', 'BE', '1');
INSERT INTO `huannn_zone` VALUES ('660', '42', 'Chari-Baguirmi', 'CB', '1');
INSERT INTO `huannn_zone` VALUES ('661', '42', 'Guera', 'GU', '1');
INSERT INTO `huannn_zone` VALUES ('662', '42', 'Kanem', 'KA', '1');
INSERT INTO `huannn_zone` VALUES ('663', '42', 'Lac', 'LA', '1');
INSERT INTO `huannn_zone` VALUES ('664', '42', 'Logone Occidental', 'LC', '1');
INSERT INTO `huannn_zone` VALUES ('665', '42', 'Logone Oriental', 'LR', '1');
INSERT INTO `huannn_zone` VALUES ('666', '42', 'Mayo-Kebbi', 'MK', '1');
INSERT INTO `huannn_zone` VALUES ('667', '42', 'Moyen-Chari', 'MC', '1');
INSERT INTO `huannn_zone` VALUES ('668', '42', 'Ouaddai', 'OU', '1');
INSERT INTO `huannn_zone` VALUES ('669', '42', 'Salamat', 'SA', '1');
INSERT INTO `huannn_zone` VALUES ('670', '42', 'Tandjile', 'TA', '1');
INSERT INTO `huannn_zone` VALUES ('671', '43', 'Aisen del General Carlos Ibanez', 'AI', '1');
INSERT INTO `huannn_zone` VALUES ('672', '43', 'Antofagasta', 'AN', '1');
INSERT INTO `huannn_zone` VALUES ('673', '43', 'Araucania', 'AR', '1');
INSERT INTO `huannn_zone` VALUES ('674', '43', 'Atacama', 'AT', '1');
INSERT INTO `huannn_zone` VALUES ('675', '43', 'Bio-Bio', 'BI', '1');
INSERT INTO `huannn_zone` VALUES ('676', '43', 'Coquimbo', 'CO', '1');
INSERT INTO `huannn_zone` VALUES ('677', '43', 'Libertador General Bernardo O\'Higgins', 'LI', '1');
INSERT INTO `huannn_zone` VALUES ('678', '43', 'Los Lagos', 'LL', '1');
INSERT INTO `huannn_zone` VALUES ('679', '43', 'Magallanes y de la Antartica Chilena', 'MA', '1');
INSERT INTO `huannn_zone` VALUES ('680', '43', 'Maule', 'ML', '1');
INSERT INTO `huannn_zone` VALUES ('681', '43', 'Region Metropolitana', 'RM', '1');
INSERT INTO `huannn_zone` VALUES ('682', '43', 'Tarapaca', 'TA', '1');
INSERT INTO `huannn_zone` VALUES ('683', '43', 'Valparaiso', 'VS', '1');
INSERT INTO `huannn_zone` VALUES ('684', '44', 'Anhui', 'AN', '1');
INSERT INTO `huannn_zone` VALUES ('685', '44', 'Beijing', 'BE', '1');
INSERT INTO `huannn_zone` VALUES ('686', '44', 'Chongqing', 'CH', '1');
INSERT INTO `huannn_zone` VALUES ('687', '44', 'Fujian', 'FU', '1');
INSERT INTO `huannn_zone` VALUES ('688', '44', 'Gansu', 'GA', '1');
INSERT INTO `huannn_zone` VALUES ('689', '44', 'Guangdong', 'GU', '1');
INSERT INTO `huannn_zone` VALUES ('690', '44', 'Guangxi', 'GX', '1');
INSERT INTO `huannn_zone` VALUES ('691', '44', 'Guizhou', 'GZ', '1');
INSERT INTO `huannn_zone` VALUES ('692', '44', 'Hainan', 'HA', '1');
INSERT INTO `huannn_zone` VALUES ('693', '44', 'Hebei', 'HB', '1');
INSERT INTO `huannn_zone` VALUES ('694', '44', 'Heilongjiang', 'HL', '1');
INSERT INTO `huannn_zone` VALUES ('695', '44', 'Henan', 'HE', '1');
INSERT INTO `huannn_zone` VALUES ('696', '44', 'Hong Kong', 'HK', '1');
INSERT INTO `huannn_zone` VALUES ('697', '44', 'Hubei', 'HU', '1');
INSERT INTO `huannn_zone` VALUES ('698', '44', 'Hunan', 'HN', '1');
INSERT INTO `huannn_zone` VALUES ('699', '44', 'Inner Mongolia', 'IM', '1');
INSERT INTO `huannn_zone` VALUES ('700', '44', 'Jiangsu', 'JI', '1');
INSERT INTO `huannn_zone` VALUES ('701', '44', 'Jiangxi', 'JX', '1');
INSERT INTO `huannn_zone` VALUES ('702', '44', 'Jilin', 'JL', '1');
INSERT INTO `huannn_zone` VALUES ('703', '44', 'Liaoning', 'LI', '1');
INSERT INTO `huannn_zone` VALUES ('704', '44', 'Macau', 'MA', '1');
INSERT INTO `huannn_zone` VALUES ('705', '44', 'Ningxia', 'NI', '1');
INSERT INTO `huannn_zone` VALUES ('706', '44', 'Shaanxi', 'SH', '1');
INSERT INTO `huannn_zone` VALUES ('707', '44', 'Shandong', 'SA', '1');
INSERT INTO `huannn_zone` VALUES ('708', '44', 'Shanghai', 'SG', '1');
INSERT INTO `huannn_zone` VALUES ('709', '44', 'Shanxi', 'SX', '1');
INSERT INTO `huannn_zone` VALUES ('710', '44', 'Sichuan', 'SI', '1');
INSERT INTO `huannn_zone` VALUES ('711', '44', 'Tianjin', 'TI', '1');
INSERT INTO `huannn_zone` VALUES ('712', '44', 'Xinjiang', 'XI', '1');
INSERT INTO `huannn_zone` VALUES ('713', '44', 'Yunnan', 'YU', '1');
INSERT INTO `huannn_zone` VALUES ('714', '44', 'Zhejiang', 'ZH', '1');
INSERT INTO `huannn_zone` VALUES ('715', '46', 'Direction Island', 'D', '1');
INSERT INTO `huannn_zone` VALUES ('716', '46', 'Home Island', 'H', '1');
INSERT INTO `huannn_zone` VALUES ('717', '46', 'Horsburgh Island', 'O', '1');
INSERT INTO `huannn_zone` VALUES ('718', '46', 'South Island', 'S', '1');
INSERT INTO `huannn_zone` VALUES ('719', '46', 'West Island', 'W', '1');
INSERT INTO `huannn_zone` VALUES ('720', '47', 'Amazonas', 'AMZ', '1');
INSERT INTO `huannn_zone` VALUES ('721', '47', 'Antioquia', 'ANT', '1');
INSERT INTO `huannn_zone` VALUES ('722', '47', 'Arauca', 'ARA', '1');
INSERT INTO `huannn_zone` VALUES ('723', '47', 'Atlantico', 'ATL', '1');
INSERT INTO `huannn_zone` VALUES ('724', '47', 'Bogota D.C.', 'BDC', '1');
INSERT INTO `huannn_zone` VALUES ('725', '47', 'Bolivar', 'BOL', '1');
INSERT INTO `huannn_zone` VALUES ('726', '47', 'Boyaca', 'BOY', '1');
INSERT INTO `huannn_zone` VALUES ('727', '47', 'Caldas', 'CAL', '1');
INSERT INTO `huannn_zone` VALUES ('728', '47', 'Caqueta', 'CAQ', '1');
INSERT INTO `huannn_zone` VALUES ('729', '47', 'Casanare', 'CAS', '1');
INSERT INTO `huannn_zone` VALUES ('730', '47', 'Cauca', 'CAU', '1');
INSERT INTO `huannn_zone` VALUES ('731', '47', 'Cesar', 'CES', '1');
INSERT INTO `huannn_zone` VALUES ('732', '47', 'Choco', 'CHO', '1');
INSERT INTO `huannn_zone` VALUES ('733', '47', 'Cordoba', 'COR', '1');
INSERT INTO `huannn_zone` VALUES ('734', '47', 'Cundinamarca', 'CAM', '1');
INSERT INTO `huannn_zone` VALUES ('735', '47', 'Guainia', 'GNA', '1');
INSERT INTO `huannn_zone` VALUES ('736', '47', 'Guajira', 'GJR', '1');
INSERT INTO `huannn_zone` VALUES ('737', '47', 'Guaviare', 'GVR', '1');
INSERT INTO `huannn_zone` VALUES ('738', '47', 'Huila', 'HUI', '1');
INSERT INTO `huannn_zone` VALUES ('739', '47', 'Magdalena', 'MAG', '1');
INSERT INTO `huannn_zone` VALUES ('740', '47', 'Meta', 'MET', '1');
INSERT INTO `huannn_zone` VALUES ('741', '47', 'Narino', 'NAR', '1');
INSERT INTO `huannn_zone` VALUES ('742', '47', 'Norte de Santander', 'NDS', '1');
INSERT INTO `huannn_zone` VALUES ('743', '47', 'Putumayo', 'PUT', '1');
INSERT INTO `huannn_zone` VALUES ('744', '47', 'Quindio', 'QUI', '1');
INSERT INTO `huannn_zone` VALUES ('745', '47', 'Risaralda', 'RIS', '1');
INSERT INTO `huannn_zone` VALUES ('746', '47', 'San Andres y Providencia', 'SAP', '1');
INSERT INTO `huannn_zone` VALUES ('747', '47', 'Santander', 'SAN', '1');
INSERT INTO `huannn_zone` VALUES ('748', '47', 'Sucre', 'SUC', '1');
INSERT INTO `huannn_zone` VALUES ('749', '47', 'Tolima', 'TOL', '1');
INSERT INTO `huannn_zone` VALUES ('750', '47', 'Valle del Cauca', 'VDC', '1');
INSERT INTO `huannn_zone` VALUES ('751', '47', 'Vaupes', 'VAU', '1');
INSERT INTO `huannn_zone` VALUES ('752', '47', 'Vichada', 'VIC', '1');
INSERT INTO `huannn_zone` VALUES ('753', '48', 'Grande Comore', 'G', '1');
INSERT INTO `huannn_zone` VALUES ('754', '48', 'Anjouan', 'A', '1');
INSERT INTO `huannn_zone` VALUES ('755', '48', 'Moheli', 'M', '1');
INSERT INTO `huannn_zone` VALUES ('756', '49', 'Bouenza', 'BO', '1');
INSERT INTO `huannn_zone` VALUES ('757', '49', 'Brazzaville', 'BR', '1');
INSERT INTO `huannn_zone` VALUES ('758', '49', 'Cuvette', 'CU', '1');
INSERT INTO `huannn_zone` VALUES ('759', '49', 'Cuvette-Ouest', 'CO', '1');
INSERT INTO `huannn_zone` VALUES ('760', '49', 'Kouilou', 'KO', '1');
INSERT INTO `huannn_zone` VALUES ('761', '49', 'Lekoumou', 'LE', '1');
INSERT INTO `huannn_zone` VALUES ('762', '49', 'Likouala', 'LI', '1');
INSERT INTO `huannn_zone` VALUES ('763', '49', 'Niari', 'NI', '1');
INSERT INTO `huannn_zone` VALUES ('764', '49', 'Plateaux', 'PL', '1');
INSERT INTO `huannn_zone` VALUES ('765', '49', 'Pool', 'PO', '1');
INSERT INTO `huannn_zone` VALUES ('766', '49', 'Sangha', 'SA', '1');
INSERT INTO `huannn_zone` VALUES ('767', '50', 'Pukapuka', 'PU', '1');
INSERT INTO `huannn_zone` VALUES ('768', '50', 'Rakahanga', 'RK', '1');
INSERT INTO `huannn_zone` VALUES ('769', '50', 'Manihiki', 'MK', '1');
INSERT INTO `huannn_zone` VALUES ('770', '50', 'Penrhyn', 'PE', '1');
INSERT INTO `huannn_zone` VALUES ('771', '50', 'Nassau Island', 'NI', '1');
INSERT INTO `huannn_zone` VALUES ('772', '50', 'Surwarrow', 'SU', '1');
INSERT INTO `huannn_zone` VALUES ('773', '50', 'Palmerston', 'PA', '1');
INSERT INTO `huannn_zone` VALUES ('774', '50', 'Aitutaki', 'AI', '1');
INSERT INTO `huannn_zone` VALUES ('775', '50', 'Manuae', 'MA', '1');
INSERT INTO `huannn_zone` VALUES ('776', '50', 'Takutea', 'TA', '1');
INSERT INTO `huannn_zone` VALUES ('777', '50', 'Mitiaro', 'MT', '1');
INSERT INTO `huannn_zone` VALUES ('778', '50', 'Atiu', 'AT', '1');
INSERT INTO `huannn_zone` VALUES ('779', '50', 'Mauke', 'MU', '1');
INSERT INTO `huannn_zone` VALUES ('780', '50', 'Rarotonga', 'RR', '1');
INSERT INTO `huannn_zone` VALUES ('781', '50', 'Mangaia', 'MG', '1');
INSERT INTO `huannn_zone` VALUES ('782', '51', 'Alajuela', 'AL', '1');
INSERT INTO `huannn_zone` VALUES ('783', '51', 'Cartago', 'CA', '1');
INSERT INTO `huannn_zone` VALUES ('784', '51', 'Guanacaste', 'GU', '1');
INSERT INTO `huannn_zone` VALUES ('785', '51', 'Heredia', 'HE', '1');
INSERT INTO `huannn_zone` VALUES ('786', '51', 'Limon', 'LI', '1');
INSERT INTO `huannn_zone` VALUES ('787', '51', 'Puntarenas', 'PU', '1');
INSERT INTO `huannn_zone` VALUES ('788', '51', 'San Jose', 'SJ', '1');
INSERT INTO `huannn_zone` VALUES ('789', '52', 'Abengourou', 'ABE', '1');
INSERT INTO `huannn_zone` VALUES ('790', '52', 'Abidjan', 'ABI', '1');
INSERT INTO `huannn_zone` VALUES ('791', '52', 'Aboisso', 'ABO', '1');
INSERT INTO `huannn_zone` VALUES ('792', '52', 'Adiake', 'ADI', '1');
INSERT INTO `huannn_zone` VALUES ('793', '52', 'Adzope', 'ADZ', '1');
INSERT INTO `huannn_zone` VALUES ('794', '52', 'Agboville', 'AGB', '1');
INSERT INTO `huannn_zone` VALUES ('795', '52', 'Agnibilekrou', 'AGN', '1');
INSERT INTO `huannn_zone` VALUES ('796', '52', 'Alepe', 'ALE', '1');
INSERT INTO `huannn_zone` VALUES ('797', '52', 'Bocanda', 'BOC', '1');
INSERT INTO `huannn_zone` VALUES ('798', '52', 'Bangolo', 'BAN', '1');
INSERT INTO `huannn_zone` VALUES ('799', '52', 'Beoumi', 'BEO', '1');
INSERT INTO `huannn_zone` VALUES ('800', '52', 'Biankouma', 'BIA', '1');
INSERT INTO `huannn_zone` VALUES ('801', '52', 'Bondoukou', 'BDK', '1');
INSERT INTO `huannn_zone` VALUES ('802', '52', 'Bongouanou', 'BGN', '1');
INSERT INTO `huannn_zone` VALUES ('803', '52', 'Bouafle', 'BFL', '1');
INSERT INTO `huannn_zone` VALUES ('804', '52', 'Bouake', 'BKE', '1');
INSERT INTO `huannn_zone` VALUES ('805', '52', 'Bouna', 'BNA', '1');
INSERT INTO `huannn_zone` VALUES ('806', '52', 'Boundiali', 'BDL', '1');
INSERT INTO `huannn_zone` VALUES ('807', '52', 'Dabakala', 'DKL', '1');
INSERT INTO `huannn_zone` VALUES ('808', '52', 'Dabou', 'DBU', '1');
INSERT INTO `huannn_zone` VALUES ('809', '52', 'Daloa', 'DAL', '1');
INSERT INTO `huannn_zone` VALUES ('810', '52', 'Danane', 'DAN', '1');
INSERT INTO `huannn_zone` VALUES ('811', '52', 'Daoukro', 'DAO', '1');
INSERT INTO `huannn_zone` VALUES ('812', '52', 'Dimbokro', 'DIM', '1');
INSERT INTO `huannn_zone` VALUES ('813', '52', 'Divo', 'DIV', '1');
INSERT INTO `huannn_zone` VALUES ('814', '52', 'Duekoue', 'DUE', '1');
INSERT INTO `huannn_zone` VALUES ('815', '52', 'Ferkessedougou', 'FER', '1');
INSERT INTO `huannn_zone` VALUES ('816', '52', 'Gagnoa', 'GAG', '1');
INSERT INTO `huannn_zone` VALUES ('817', '52', 'Grand-Bassam', 'GBA', '1');
INSERT INTO `huannn_zone` VALUES ('818', '52', 'Grand-Lahou', 'GLA', '1');
INSERT INTO `huannn_zone` VALUES ('819', '52', 'Guiglo', 'GUI', '1');
INSERT INTO `huannn_zone` VALUES ('820', '52', 'Issia', 'ISS', '1');
INSERT INTO `huannn_zone` VALUES ('821', '52', 'Jacqueville', 'JAC', '1');
INSERT INTO `huannn_zone` VALUES ('822', '52', 'Katiola', 'KAT', '1');
INSERT INTO `huannn_zone` VALUES ('823', '52', 'Korhogo', 'KOR', '1');
INSERT INTO `huannn_zone` VALUES ('824', '52', 'Lakota', 'LAK', '1');
INSERT INTO `huannn_zone` VALUES ('825', '52', 'Man', 'MAN', '1');
INSERT INTO `huannn_zone` VALUES ('826', '52', 'Mankono', 'MKN', '1');
INSERT INTO `huannn_zone` VALUES ('827', '52', 'Mbahiakro', 'MBA', '1');
INSERT INTO `huannn_zone` VALUES ('828', '52', 'Odienne', 'ODI', '1');
INSERT INTO `huannn_zone` VALUES ('829', '52', 'Oume', 'OUM', '1');
INSERT INTO `huannn_zone` VALUES ('830', '52', 'Sakassou', 'SAK', '1');
INSERT INTO `huannn_zone` VALUES ('831', '52', 'San-Pedro', 'SPE', '1');
INSERT INTO `huannn_zone` VALUES ('832', '52', 'Sassandra', 'SAS', '1');
INSERT INTO `huannn_zone` VALUES ('833', '52', 'Seguela', 'SEG', '1');
INSERT INTO `huannn_zone` VALUES ('834', '52', 'Sinfra', 'SIN', '1');
INSERT INTO `huannn_zone` VALUES ('835', '52', 'Soubre', 'SOU', '1');
INSERT INTO `huannn_zone` VALUES ('836', '52', 'Tabou', 'TAB', '1');
INSERT INTO `huannn_zone` VALUES ('837', '52', 'Tanda', 'TAN', '1');
INSERT INTO `huannn_zone` VALUES ('838', '52', 'Tiebissou', 'TIE', '1');
INSERT INTO `huannn_zone` VALUES ('839', '52', 'Tingrela', 'TIN', '1');
INSERT INTO `huannn_zone` VALUES ('840', '52', 'Tiassale', 'TIA', '1');
INSERT INTO `huannn_zone` VALUES ('841', '52', 'Touba', 'TBA', '1');
INSERT INTO `huannn_zone` VALUES ('842', '52', 'Toulepleu', 'TLP', '1');
INSERT INTO `huannn_zone` VALUES ('843', '52', 'Toumodi', 'TMD', '1');
INSERT INTO `huannn_zone` VALUES ('844', '52', 'Vavoua', 'VAV', '1');
INSERT INTO `huannn_zone` VALUES ('845', '52', 'Yamoussoukro', 'YAM', '1');
INSERT INTO `huannn_zone` VALUES ('846', '52', 'Zuenoula', 'ZUE', '1');
INSERT INTO `huannn_zone` VALUES ('847', '53', 'Bjelovarsko-bilogorska', 'BB', '1');
INSERT INTO `huannn_zone` VALUES ('848', '53', 'Grad Zagreb', 'GZ', '1');
INSERT INTO `huannn_zone` VALUES ('849', '53', 'Dubrovačko-neretvanska', 'DN', '1');
INSERT INTO `huannn_zone` VALUES ('850', '53', 'Istarska', 'IS', '1');
INSERT INTO `huannn_zone` VALUES ('851', '53', 'Karlovačka', 'KA', '1');
INSERT INTO `huannn_zone` VALUES ('852', '53', 'Koprivničko-križevačka', 'KK', '1');
INSERT INTO `huannn_zone` VALUES ('853', '53', 'Krapinsko-zagorska', 'KZ', '1');
INSERT INTO `huannn_zone` VALUES ('854', '53', 'Ličko-senjska', 'LS', '1');
INSERT INTO `huannn_zone` VALUES ('855', '53', 'Međimurska', 'ME', '1');
INSERT INTO `huannn_zone` VALUES ('856', '53', 'Osječko-baranjska', 'OB', '1');
INSERT INTO `huannn_zone` VALUES ('857', '53', 'Požeško-slavonska', 'PS', '1');
INSERT INTO `huannn_zone` VALUES ('858', '53', 'Primorsko-goranska', 'PG', '1');
INSERT INTO `huannn_zone` VALUES ('859', '53', 'Šibensko-kninska', 'SK', '1');
INSERT INTO `huannn_zone` VALUES ('860', '53', 'Sisačko-moslavačka', 'SM', '1');
INSERT INTO `huannn_zone` VALUES ('861', '53', 'Brodsko-posavska', 'BP', '1');
INSERT INTO `huannn_zone` VALUES ('862', '53', 'Splitsko-dalmatinska', 'SD', '1');
INSERT INTO `huannn_zone` VALUES ('863', '53', 'Varaždinska', 'VA', '1');
INSERT INTO `huannn_zone` VALUES ('864', '53', 'Virovitičko-podravska', 'VP', '1');
INSERT INTO `huannn_zone` VALUES ('865', '53', 'Vukovarsko-srijemska', 'VS', '1');
INSERT INTO `huannn_zone` VALUES ('866', '53', 'Zadarska', 'ZA', '1');
INSERT INTO `huannn_zone` VALUES ('867', '53', 'Zagrebačka', 'ZG', '1');
INSERT INTO `huannn_zone` VALUES ('868', '54', 'Camaguey', 'CA', '1');
INSERT INTO `huannn_zone` VALUES ('869', '54', 'Ciego de Avila', 'CD', '1');
INSERT INTO `huannn_zone` VALUES ('870', '54', 'Cienfuegos', 'CI', '1');
INSERT INTO `huannn_zone` VALUES ('871', '54', 'Ciudad de La Habana', 'CH', '1');
INSERT INTO `huannn_zone` VALUES ('872', '54', 'Granma', 'GR', '1');
INSERT INTO `huannn_zone` VALUES ('873', '54', 'Guantanamo', 'GU', '1');
INSERT INTO `huannn_zone` VALUES ('874', '54', 'Holguin', 'HO', '1');
INSERT INTO `huannn_zone` VALUES ('875', '54', 'Isla de la Juventud', 'IJ', '1');
INSERT INTO `huannn_zone` VALUES ('876', '54', 'La Habana', 'LH', '1');
INSERT INTO `huannn_zone` VALUES ('877', '54', 'Las Tunas', 'LT', '1');
INSERT INTO `huannn_zone` VALUES ('878', '54', 'Matanzas', 'MA', '1');
INSERT INTO `huannn_zone` VALUES ('879', '54', 'Pinar del Rio', 'PR', '1');
INSERT INTO `huannn_zone` VALUES ('880', '54', 'Sancti Spiritus', 'SS', '1');
INSERT INTO `huannn_zone` VALUES ('881', '54', 'Santiago de Cuba', 'SC', '1');
INSERT INTO `huannn_zone` VALUES ('882', '54', 'Villa Clara', 'VC', '1');
INSERT INTO `huannn_zone` VALUES ('883', '55', 'Famagusta', 'F', '1');
INSERT INTO `huannn_zone` VALUES ('884', '55', 'Kyrenia', 'K', '1');
INSERT INTO `huannn_zone` VALUES ('885', '55', 'Larnaca', 'A', '1');
INSERT INTO `huannn_zone` VALUES ('886', '55', 'Limassol', 'I', '1');
INSERT INTO `huannn_zone` VALUES ('887', '55', 'Nicosia', 'N', '1');
INSERT INTO `huannn_zone` VALUES ('888', '55', 'Paphos', 'P', '1');
INSERT INTO `huannn_zone` VALUES ('889', '56', 'Ústecký', 'U', '1');
INSERT INTO `huannn_zone` VALUES ('890', '56', 'Jihočeský', 'C', '1');
INSERT INTO `huannn_zone` VALUES ('891', '56', 'Jihomoravský', 'B', '1');
INSERT INTO `huannn_zone` VALUES ('892', '56', 'Karlovarský', 'K', '1');
INSERT INTO `huannn_zone` VALUES ('893', '56', 'Královehradecký', 'H', '1');
INSERT INTO `huannn_zone` VALUES ('894', '56', 'Liberecký', 'L', '1');
INSERT INTO `huannn_zone` VALUES ('895', '56', 'Moravskoslezský', 'T', '1');
INSERT INTO `huannn_zone` VALUES ('896', '56', 'Olomoucký', 'M', '1');
INSERT INTO `huannn_zone` VALUES ('897', '56', 'Pardubický', 'E', '1');
INSERT INTO `huannn_zone` VALUES ('898', '56', 'Plzeňský', 'P', '1');
INSERT INTO `huannn_zone` VALUES ('899', '56', 'Praha', 'A', '1');
INSERT INTO `huannn_zone` VALUES ('900', '56', 'Středočeský', 'S', '1');
INSERT INTO `huannn_zone` VALUES ('901', '56', 'Vysočina', 'J', '1');
INSERT INTO `huannn_zone` VALUES ('902', '56', 'Zlínský', 'Z', '1');
INSERT INTO `huannn_zone` VALUES ('903', '57', 'Arhus', 'AR', '1');
INSERT INTO `huannn_zone` VALUES ('904', '57', 'Bornholm', 'BH', '1');
INSERT INTO `huannn_zone` VALUES ('905', '57', 'Copenhagen', 'CO', '1');
INSERT INTO `huannn_zone` VALUES ('906', '57', 'Faroe Islands', 'FO', '1');
INSERT INTO `huannn_zone` VALUES ('907', '57', 'Frederiksborg', 'FR', '1');
INSERT INTO `huannn_zone` VALUES ('908', '57', 'Fyn', 'FY', '1');
INSERT INTO `huannn_zone` VALUES ('909', '57', 'Kobenhavn', 'KO', '1');
INSERT INTO `huannn_zone` VALUES ('910', '57', 'Nordjylland', 'NO', '1');
INSERT INTO `huannn_zone` VALUES ('911', '57', 'Ribe', 'RI', '1');
INSERT INTO `huannn_zone` VALUES ('912', '57', 'Ringkobing', 'RK', '1');
INSERT INTO `huannn_zone` VALUES ('913', '57', 'Roskilde', 'RO', '1');
INSERT INTO `huannn_zone` VALUES ('914', '57', 'Sonderjylland', 'SO', '1');
INSERT INTO `huannn_zone` VALUES ('915', '57', 'Storstrom', 'ST', '1');
INSERT INTO `huannn_zone` VALUES ('916', '57', 'Vejle', 'VK', '1');
INSERT INTO `huannn_zone` VALUES ('917', '57', 'Vestj&aelig;lland', 'VJ', '1');
INSERT INTO `huannn_zone` VALUES ('918', '57', 'Viborg', 'VB', '1');
INSERT INTO `huannn_zone` VALUES ('919', '58', '\'Ali Sabih', 'S', '1');
INSERT INTO `huannn_zone` VALUES ('920', '58', 'Dikhil', 'K', '1');
INSERT INTO `huannn_zone` VALUES ('921', '58', 'Djibouti', 'J', '1');
INSERT INTO `huannn_zone` VALUES ('922', '58', 'Obock', 'O', '1');
INSERT INTO `huannn_zone` VALUES ('923', '58', 'Tadjoura', 'T', '1');
INSERT INTO `huannn_zone` VALUES ('924', '59', 'Saint Andrew Parish', 'AND', '1');
INSERT INTO `huannn_zone` VALUES ('925', '59', 'Saint David Parish', 'DAV', '1');
INSERT INTO `huannn_zone` VALUES ('926', '59', 'Saint George Parish', 'GEO', '1');
INSERT INTO `huannn_zone` VALUES ('927', '59', 'Saint John Parish', 'JOH', '1');
INSERT INTO `huannn_zone` VALUES ('928', '59', 'Saint Joseph Parish', 'JOS', '1');
INSERT INTO `huannn_zone` VALUES ('929', '59', 'Saint Luke Parish', 'LUK', '1');
INSERT INTO `huannn_zone` VALUES ('930', '59', 'Saint Mark Parish', 'MAR', '1');
INSERT INTO `huannn_zone` VALUES ('931', '59', 'Saint Patrick Parish', 'PAT', '1');
INSERT INTO `huannn_zone` VALUES ('932', '59', 'Saint Paul Parish', 'PAU', '1');
INSERT INTO `huannn_zone` VALUES ('933', '59', 'Saint Peter Parish', 'PET', '1');
INSERT INTO `huannn_zone` VALUES ('934', '60', 'Distrito Nacional', 'DN', '1');
INSERT INTO `huannn_zone` VALUES ('935', '60', 'Azua', 'AZ', '1');
INSERT INTO `huannn_zone` VALUES ('936', '60', 'Baoruco', 'BC', '1');
INSERT INTO `huannn_zone` VALUES ('937', '60', 'Barahona', 'BH', '1');
INSERT INTO `huannn_zone` VALUES ('938', '60', 'Dajabon', 'DJ', '1');
INSERT INTO `huannn_zone` VALUES ('939', '60', 'Duarte', 'DU', '1');
INSERT INTO `huannn_zone` VALUES ('940', '60', 'Elias Pina', 'EL', '1');
INSERT INTO `huannn_zone` VALUES ('941', '60', 'El Seybo', 'SY', '1');
INSERT INTO `huannn_zone` VALUES ('942', '60', 'Espaillat', 'ET', '1');
INSERT INTO `huannn_zone` VALUES ('943', '60', 'Hato Mayor', 'HM', '1');
INSERT INTO `huannn_zone` VALUES ('944', '60', 'Independencia', 'IN', '1');
INSERT INTO `huannn_zone` VALUES ('945', '60', 'La Altagracia', 'AL', '1');
INSERT INTO `huannn_zone` VALUES ('946', '60', 'La Romana', 'RO', '1');
INSERT INTO `huannn_zone` VALUES ('947', '60', 'La Vega', 'VE', '1');
INSERT INTO `huannn_zone` VALUES ('948', '60', 'Maria Trinidad Sanchez', 'MT', '1');
INSERT INTO `huannn_zone` VALUES ('949', '60', 'Monsenor Nouel', 'MN', '1');
INSERT INTO `huannn_zone` VALUES ('950', '60', 'Monte Cristi', 'MC', '1');
INSERT INTO `huannn_zone` VALUES ('951', '60', 'Monte Plata', 'MP', '1');
INSERT INTO `huannn_zone` VALUES ('952', '60', 'Pedernales', 'PD', '1');
INSERT INTO `huannn_zone` VALUES ('953', '60', 'Peravia (Bani)', 'PR', '1');
INSERT INTO `huannn_zone` VALUES ('954', '60', 'Puerto Plata', 'PP', '1');
INSERT INTO `huannn_zone` VALUES ('955', '60', 'Salcedo', 'SL', '1');
INSERT INTO `huannn_zone` VALUES ('956', '60', 'Samana', 'SM', '1');
INSERT INTO `huannn_zone` VALUES ('957', '60', 'Sanchez Ramirez', 'SH', '1');
INSERT INTO `huannn_zone` VALUES ('958', '60', 'San Cristobal', 'SC', '1');
INSERT INTO `huannn_zone` VALUES ('959', '60', 'San Jose de Ocoa', 'JO', '1');
INSERT INTO `huannn_zone` VALUES ('960', '60', 'San Juan', 'SJ', '1');
INSERT INTO `huannn_zone` VALUES ('961', '60', 'San Pedro de Macoris', 'PM', '1');
INSERT INTO `huannn_zone` VALUES ('962', '60', 'Santiago', 'SA', '1');
INSERT INTO `huannn_zone` VALUES ('963', '60', 'Santiago Rodriguez', 'ST', '1');
INSERT INTO `huannn_zone` VALUES ('964', '60', 'Santo Domingo', 'SD', '1');
INSERT INTO `huannn_zone` VALUES ('965', '60', 'Valverde', 'VA', '1');
INSERT INTO `huannn_zone` VALUES ('966', '61', 'Aileu', 'AL', '1');
INSERT INTO `huannn_zone` VALUES ('967', '61', 'Ainaro', 'AN', '1');
INSERT INTO `huannn_zone` VALUES ('968', '61', 'Baucau', 'BA', '1');
INSERT INTO `huannn_zone` VALUES ('969', '61', 'Bobonaro', 'BO', '1');
INSERT INTO `huannn_zone` VALUES ('970', '61', 'Cova Lima', 'CO', '1');
INSERT INTO `huannn_zone` VALUES ('971', '61', 'Dili', 'DI', '1');
INSERT INTO `huannn_zone` VALUES ('972', '61', 'Ermera', 'ER', '1');
INSERT INTO `huannn_zone` VALUES ('973', '61', 'Lautem', 'LA', '1');
INSERT INTO `huannn_zone` VALUES ('974', '61', 'Liquica', 'LI', '1');
INSERT INTO `huannn_zone` VALUES ('975', '61', 'Manatuto', 'MT', '1');
INSERT INTO `huannn_zone` VALUES ('976', '61', 'Manufahi', 'MF', '1');
INSERT INTO `huannn_zone` VALUES ('977', '61', 'Oecussi', 'OE', '1');
INSERT INTO `huannn_zone` VALUES ('978', '61', 'Viqueque', 'VI', '1');
INSERT INTO `huannn_zone` VALUES ('979', '62', 'Azuay', 'AZU', '1');
INSERT INTO `huannn_zone` VALUES ('980', '62', 'Bolivar', 'BOL', '1');
INSERT INTO `huannn_zone` VALUES ('981', '62', 'Ca&ntilde;ar', 'CAN', '1');
INSERT INTO `huannn_zone` VALUES ('982', '62', 'Carchi', 'CAR', '1');
INSERT INTO `huannn_zone` VALUES ('983', '62', 'Chimborazo', 'CHI', '1');
INSERT INTO `huannn_zone` VALUES ('984', '62', 'Cotopaxi', 'COT', '1');
INSERT INTO `huannn_zone` VALUES ('985', '62', 'El Oro', 'EOR', '1');
INSERT INTO `huannn_zone` VALUES ('986', '62', 'Esmeraldas', 'ESM', '1');
INSERT INTO `huannn_zone` VALUES ('987', '62', 'Gal&aacute;pagos', 'GPS', '1');
INSERT INTO `huannn_zone` VALUES ('988', '62', 'Guayas', 'GUA', '1');
INSERT INTO `huannn_zone` VALUES ('989', '62', 'Imbabura', 'IMB', '1');
INSERT INTO `huannn_zone` VALUES ('990', '62', 'Loja', 'LOJ', '1');
INSERT INTO `huannn_zone` VALUES ('991', '62', 'Los Rios', 'LRO', '1');
INSERT INTO `huannn_zone` VALUES ('992', '62', 'Manab&iacute;', 'MAN', '1');
INSERT INTO `huannn_zone` VALUES ('993', '62', 'Morona Santiago', 'MSA', '1');
INSERT INTO `huannn_zone` VALUES ('994', '62', 'Napo', 'NAP', '1');
INSERT INTO `huannn_zone` VALUES ('995', '62', 'Orellana', 'ORE', '1');
INSERT INTO `huannn_zone` VALUES ('996', '62', 'Pastaza', 'PAS', '1');
INSERT INTO `huannn_zone` VALUES ('997', '62', 'Pichincha', 'PIC', '1');
INSERT INTO `huannn_zone` VALUES ('998', '62', 'Sucumb&iacute;os', 'SUC', '1');
INSERT INTO `huannn_zone` VALUES ('999', '62', 'Tungurahua', 'TUN', '1');
INSERT INTO `huannn_zone` VALUES ('1000', '62', 'Zamora Chinchipe', 'ZCH', '1');
INSERT INTO `huannn_zone` VALUES ('1001', '63', 'Ad Daqahliyah', 'DHY', '1');
INSERT INTO `huannn_zone` VALUES ('1002', '63', 'Al Bahr al Ahmar', 'BAM', '1');
INSERT INTO `huannn_zone` VALUES ('1003', '63', 'Al Buhayrah', 'BHY', '1');
INSERT INTO `huannn_zone` VALUES ('1004', '63', 'Al Fayyum', 'FYM', '1');
INSERT INTO `huannn_zone` VALUES ('1005', '63', 'Al Gharbiyah', 'GBY', '1');
INSERT INTO `huannn_zone` VALUES ('1006', '63', 'Al Iskandariyah', 'IDR', '1');
INSERT INTO `huannn_zone` VALUES ('1007', '63', 'Al Isma\'iliyah', 'IML', '1');
INSERT INTO `huannn_zone` VALUES ('1008', '63', 'Al Jizah', 'JZH', '1');
INSERT INTO `huannn_zone` VALUES ('1009', '63', 'Al Minufiyah', 'MFY', '1');
INSERT INTO `huannn_zone` VALUES ('1010', '63', 'Al Minya', 'MNY', '1');
INSERT INTO `huannn_zone` VALUES ('1011', '63', 'Al Qahirah', 'QHR', '1');
INSERT INTO `huannn_zone` VALUES ('1012', '63', 'Al Qalyubiyah', 'QLY', '1');
INSERT INTO `huannn_zone` VALUES ('1013', '63', 'Al Wadi al Jadid', 'WJD', '1');
INSERT INTO `huannn_zone` VALUES ('1014', '63', 'Ash Sharqiyah', 'SHQ', '1');
INSERT INTO `huannn_zone` VALUES ('1015', '63', 'As Suways', 'SWY', '1');
INSERT INTO `huannn_zone` VALUES ('1016', '63', 'Aswan', 'ASW', '1');
INSERT INTO `huannn_zone` VALUES ('1017', '63', 'Asyut', 'ASY', '1');
INSERT INTO `huannn_zone` VALUES ('1018', '63', 'Bani Suwayf', 'BSW', '1');
INSERT INTO `huannn_zone` VALUES ('1019', '63', 'Bur Sa\'id', 'BSD', '1');
INSERT INTO `huannn_zone` VALUES ('1020', '63', 'Dumyat', 'DMY', '1');
INSERT INTO `huannn_zone` VALUES ('1021', '63', 'Janub Sina\'', 'JNS', '1');
INSERT INTO `huannn_zone` VALUES ('1022', '63', 'Kafr ash Shaykh', 'KSH', '1');
INSERT INTO `huannn_zone` VALUES ('1023', '63', 'Matruh', 'MAT', '1');
INSERT INTO `huannn_zone` VALUES ('1024', '63', 'Qina', 'QIN', '1');
INSERT INTO `huannn_zone` VALUES ('1025', '63', 'Shamal Sina\'', 'SHS', '1');
INSERT INTO `huannn_zone` VALUES ('1026', '63', 'Suhaj', 'SUH', '1');
INSERT INTO `huannn_zone` VALUES ('1027', '64', 'Ahuachapan', 'AH', '1');
INSERT INTO `huannn_zone` VALUES ('1028', '64', 'Cabanas', 'CA', '1');
INSERT INTO `huannn_zone` VALUES ('1029', '64', 'Chalatenango', 'CH', '1');
INSERT INTO `huannn_zone` VALUES ('1030', '64', 'Cuscatlan', 'CU', '1');
INSERT INTO `huannn_zone` VALUES ('1031', '64', 'La Libertad', 'LB', '1');
INSERT INTO `huannn_zone` VALUES ('1032', '64', 'La Paz', 'PZ', '1');
INSERT INTO `huannn_zone` VALUES ('1033', '64', 'La Union', 'UN', '1');
INSERT INTO `huannn_zone` VALUES ('1034', '64', 'Morazan', 'MO', '1');
INSERT INTO `huannn_zone` VALUES ('1035', '64', 'San Miguel', 'SM', '1');
INSERT INTO `huannn_zone` VALUES ('1036', '64', 'San Salvador', 'SS', '1');
INSERT INTO `huannn_zone` VALUES ('1037', '64', 'San Vicente', 'SV', '1');
INSERT INTO `huannn_zone` VALUES ('1038', '64', 'Santa Ana', 'SA', '1');
INSERT INTO `huannn_zone` VALUES ('1039', '64', 'Sonsonate', 'SO', '1');
INSERT INTO `huannn_zone` VALUES ('1040', '64', 'Usulutan', 'US', '1');
INSERT INTO `huannn_zone` VALUES ('1041', '65', 'Provincia Annobon', 'AN', '1');
INSERT INTO `huannn_zone` VALUES ('1042', '65', 'Provincia Bioko Norte', 'BN', '1');
INSERT INTO `huannn_zone` VALUES ('1043', '65', 'Provincia Bioko Sur', 'BS', '1');
INSERT INTO `huannn_zone` VALUES ('1044', '65', 'Provincia Centro Sur', 'CS', '1');
INSERT INTO `huannn_zone` VALUES ('1045', '65', 'Provincia Kie-Ntem', 'KN', '1');
INSERT INTO `huannn_zone` VALUES ('1046', '65', 'Provincia Litoral', 'LI', '1');
INSERT INTO `huannn_zone` VALUES ('1047', '65', 'Provincia Wele-Nzas', 'WN', '1');
INSERT INTO `huannn_zone` VALUES ('1048', '66', 'Central (Maekel)', 'MA', '1');
INSERT INTO `huannn_zone` VALUES ('1049', '66', 'Anseba (Keren)', 'KE', '1');
INSERT INTO `huannn_zone` VALUES ('1050', '66', 'Southern Red Sea (Debub-Keih-Bahri)', 'DK', '1');
INSERT INTO `huannn_zone` VALUES ('1051', '66', 'Northern Red Sea (Semien-Keih-Bahri)', 'SK', '1');
INSERT INTO `huannn_zone` VALUES ('1052', '66', 'Southern (Debub)', 'DE', '1');
INSERT INTO `huannn_zone` VALUES ('1053', '66', 'Gash-Barka (Barentu)', 'BR', '1');
INSERT INTO `huannn_zone` VALUES ('1054', '67', 'Harjumaa (Tallinn)', 'HA', '1');
INSERT INTO `huannn_zone` VALUES ('1055', '67', 'Hiiumaa (Kardla)', 'HI', '1');
INSERT INTO `huannn_zone` VALUES ('1056', '67', 'Ida-Virumaa (Johvi)', 'IV', '1');
INSERT INTO `huannn_zone` VALUES ('1057', '67', 'Jarvamaa (Paide)', 'JA', '1');
INSERT INTO `huannn_zone` VALUES ('1058', '67', 'Jogevamaa (Jogeva)', 'JO', '1');
INSERT INTO `huannn_zone` VALUES ('1059', '67', 'Laane-Virumaa (Rakvere)', 'LV', '1');
INSERT INTO `huannn_zone` VALUES ('1060', '67', 'Laanemaa (Haapsalu)', 'LA', '1');
INSERT INTO `huannn_zone` VALUES ('1061', '67', 'Parnumaa (Parnu)', 'PA', '1');
INSERT INTO `huannn_zone` VALUES ('1062', '67', 'Polvamaa (Polva)', 'PO', '1');
INSERT INTO `huannn_zone` VALUES ('1063', '67', 'Raplamaa (Rapla)', 'RA', '1');
INSERT INTO `huannn_zone` VALUES ('1064', '67', 'Saaremaa (Kuessaare)', 'SA', '1');
INSERT INTO `huannn_zone` VALUES ('1065', '67', 'Tartumaa (Tartu)', 'TA', '1');
INSERT INTO `huannn_zone` VALUES ('1066', '67', 'Valgamaa (Valga)', 'VA', '1');
INSERT INTO `huannn_zone` VALUES ('1067', '67', 'Viljandimaa (Viljandi)', 'VI', '1');
INSERT INTO `huannn_zone` VALUES ('1068', '67', 'Vorumaa (Voru)', 'VO', '1');
INSERT INTO `huannn_zone` VALUES ('1069', '68', 'Afar', 'AF', '1');
INSERT INTO `huannn_zone` VALUES ('1070', '68', 'Amhara', 'AH', '1');
INSERT INTO `huannn_zone` VALUES ('1071', '68', 'Benishangul-Gumaz', 'BG', '1');
INSERT INTO `huannn_zone` VALUES ('1072', '68', 'Gambela', 'GB', '1');
INSERT INTO `huannn_zone` VALUES ('1073', '68', 'Hariai', 'HR', '1');
INSERT INTO `huannn_zone` VALUES ('1074', '68', 'Oromia', 'OR', '1');
INSERT INTO `huannn_zone` VALUES ('1075', '68', 'Somali', 'SM', '1');
INSERT INTO `huannn_zone` VALUES ('1076', '68', 'Southern Nations - Nationalities and Peoples Region', 'SN', '1');
INSERT INTO `huannn_zone` VALUES ('1077', '68', 'Tigray', 'TG', '1');
INSERT INTO `huannn_zone` VALUES ('1078', '68', 'Addis Ababa', 'AA', '1');
INSERT INTO `huannn_zone` VALUES ('1079', '68', 'Dire Dawa', 'DD', '1');
INSERT INTO `huannn_zone` VALUES ('1080', '71', 'Central Division', 'C', '1');
INSERT INTO `huannn_zone` VALUES ('1081', '71', 'Northern Division', 'N', '1');
INSERT INTO `huannn_zone` VALUES ('1082', '71', 'Eastern Division', 'E', '1');
INSERT INTO `huannn_zone` VALUES ('1083', '71', 'Western Division', 'W', '1');
INSERT INTO `huannn_zone` VALUES ('1084', '71', 'Rotuma', 'R', '1');
INSERT INTO `huannn_zone` VALUES ('1085', '72', 'Ahvenanmaan lääni', 'AL', '1');
INSERT INTO `huannn_zone` VALUES ('1086', '72', 'Etelä-Suomen lääni', 'ES', '1');
INSERT INTO `huannn_zone` VALUES ('1087', '72', 'Itä-Suomen lääni', 'IS', '1');
INSERT INTO `huannn_zone` VALUES ('1088', '72', 'Länsi-Suomen lääni', 'LS', '1');
INSERT INTO `huannn_zone` VALUES ('1089', '72', 'Lapin lääni', 'LA', '1');
INSERT INTO `huannn_zone` VALUES ('1090', '72', 'Oulun lääni', 'OU', '1');
INSERT INTO `huannn_zone` VALUES ('1114', '74', 'Ain', '01', '1');
INSERT INTO `huannn_zone` VALUES ('1115', '74', 'Aisne', '02', '1');
INSERT INTO `huannn_zone` VALUES ('1116', '74', 'Allier', '03', '1');
INSERT INTO `huannn_zone` VALUES ('1117', '74', 'Alpes de Haute Provence', '04', '1');
INSERT INTO `huannn_zone` VALUES ('1118', '74', 'Hautes-Alpes', '05', '1');
INSERT INTO `huannn_zone` VALUES ('1119', '74', 'Alpes Maritimes', '06', '1');
INSERT INTO `huannn_zone` VALUES ('1120', '74', 'Ard&egrave;che', '07', '1');
INSERT INTO `huannn_zone` VALUES ('1121', '74', 'Ardennes', '08', '1');
INSERT INTO `huannn_zone` VALUES ('1122', '74', 'Ari&egrave;ge', '09', '1');
INSERT INTO `huannn_zone` VALUES ('1123', '74', 'Aube', '10', '1');
INSERT INTO `huannn_zone` VALUES ('1124', '74', 'Aude', '11', '1');
INSERT INTO `huannn_zone` VALUES ('1125', '74', 'Aveyron', '12', '1');
INSERT INTO `huannn_zone` VALUES ('1126', '74', 'Bouches du Rh&ocirc;ne', '13', '1');
INSERT INTO `huannn_zone` VALUES ('1127', '74', 'Calvados', '14', '1');
INSERT INTO `huannn_zone` VALUES ('1128', '74', 'Cantal', '15', '1');
INSERT INTO `huannn_zone` VALUES ('1129', '74', 'Charente', '16', '1');
INSERT INTO `huannn_zone` VALUES ('1130', '74', 'Charente Maritime', '17', '1');
INSERT INTO `huannn_zone` VALUES ('1131', '74', 'Cher', '18', '1');
INSERT INTO `huannn_zone` VALUES ('1132', '74', 'Corr&egrave;ze', '19', '1');
INSERT INTO `huannn_zone` VALUES ('1133', '74', 'Corse du Sud', '2A', '1');
INSERT INTO `huannn_zone` VALUES ('1134', '74', 'Haute Corse', '2B', '1');
INSERT INTO `huannn_zone` VALUES ('1135', '74', 'C&ocirc;te d&#039;or', '21', '1');
INSERT INTO `huannn_zone` VALUES ('1136', '74', 'C&ocirc;tes d&#039;Armor', '22', '1');
INSERT INTO `huannn_zone` VALUES ('1137', '74', 'Creuse', '23', '1');
INSERT INTO `huannn_zone` VALUES ('1138', '74', 'Dordogne', '24', '1');
INSERT INTO `huannn_zone` VALUES ('1139', '74', 'Doubs', '25', '1');
INSERT INTO `huannn_zone` VALUES ('1140', '74', 'Dr&ocirc;me', '26', '1');
INSERT INTO `huannn_zone` VALUES ('1141', '74', 'Eure', '27', '1');
INSERT INTO `huannn_zone` VALUES ('1142', '74', 'Eure et Loir', '28', '1');
INSERT INTO `huannn_zone` VALUES ('1143', '74', 'Finist&egrave;re', '29', '1');
INSERT INTO `huannn_zone` VALUES ('1144', '74', 'Gard', '30', '1');
INSERT INTO `huannn_zone` VALUES ('1145', '74', 'Haute Garonne', '31', '1');
INSERT INTO `huannn_zone` VALUES ('1146', '74', 'Gers', '32', '1');
INSERT INTO `huannn_zone` VALUES ('1147', '74', 'Gironde', '33', '1');
INSERT INTO `huannn_zone` VALUES ('1148', '74', 'H&eacute;rault', '34', '1');
INSERT INTO `huannn_zone` VALUES ('1149', '74', 'Ille et Vilaine', '35', '1');
INSERT INTO `huannn_zone` VALUES ('1150', '74', 'Indre', '36', '1');
INSERT INTO `huannn_zone` VALUES ('1151', '74', 'Indre et Loire', '37', '1');
INSERT INTO `huannn_zone` VALUES ('1152', '74', 'Is&eacute;re', '38', '1');
INSERT INTO `huannn_zone` VALUES ('1153', '74', 'Jura', '39', '1');
INSERT INTO `huannn_zone` VALUES ('1154', '74', 'Landes', '40', '1');
INSERT INTO `huannn_zone` VALUES ('1155', '74', 'Loir et Cher', '41', '1');
INSERT INTO `huannn_zone` VALUES ('1156', '74', 'Loire', '42', '1');
INSERT INTO `huannn_zone` VALUES ('1157', '74', 'Haute Loire', '43', '1');
INSERT INTO `huannn_zone` VALUES ('1158', '74', 'Loire Atlantique', '44', '1');
INSERT INTO `huannn_zone` VALUES ('1159', '74', 'Loiret', '45', '1');
INSERT INTO `huannn_zone` VALUES ('1160', '74', 'Lot', '46', '1');
INSERT INTO `huannn_zone` VALUES ('1161', '74', 'Lot et Garonne', '47', '1');
INSERT INTO `huannn_zone` VALUES ('1162', '74', 'Loz&egrave;re', '48', '1');
INSERT INTO `huannn_zone` VALUES ('1163', '74', 'Maine et Loire', '49', '1');
INSERT INTO `huannn_zone` VALUES ('1164', '74', 'Manche', '50', '1');
INSERT INTO `huannn_zone` VALUES ('1165', '74', 'Marne', '51', '1');
INSERT INTO `huannn_zone` VALUES ('1166', '74', 'Haute Marne', '52', '1');
INSERT INTO `huannn_zone` VALUES ('1167', '74', 'Mayenne', '53', '1');
INSERT INTO `huannn_zone` VALUES ('1168', '74', 'Meurthe et Moselle', '54', '1');
INSERT INTO `huannn_zone` VALUES ('1169', '74', 'Meuse', '55', '1');
INSERT INTO `huannn_zone` VALUES ('1170', '74', 'Morbihan', '56', '1');
INSERT INTO `huannn_zone` VALUES ('1171', '74', 'Moselle', '57', '1');
INSERT INTO `huannn_zone` VALUES ('1172', '74', 'Ni&egrave;vre', '58', '1');
INSERT INTO `huannn_zone` VALUES ('1173', '74', 'Nord', '59', '1');
INSERT INTO `huannn_zone` VALUES ('1174', '74', 'Oise', '60', '1');
INSERT INTO `huannn_zone` VALUES ('1175', '74', 'Orne', '61', '1');
INSERT INTO `huannn_zone` VALUES ('1176', '74', 'Pas de Calais', '62', '1');
INSERT INTO `huannn_zone` VALUES ('1177', '74', 'Puy de D&ocirc;me', '63', '1');
INSERT INTO `huannn_zone` VALUES ('1178', '74', 'Pyr&eacute;n&eacute;es Atlantiques', '64', '1');
INSERT INTO `huannn_zone` VALUES ('1179', '74', 'Hautes Pyr&eacute;n&eacute;es', '65', '1');
INSERT INTO `huannn_zone` VALUES ('1180', '74', 'Pyr&eacute;n&eacute;es Orientales', '66', '1');
INSERT INTO `huannn_zone` VALUES ('1181', '74', 'Bas Rhin', '67', '1');
INSERT INTO `huannn_zone` VALUES ('1182', '74', 'Haut Rhin', '68', '1');
INSERT INTO `huannn_zone` VALUES ('1183', '74', 'Rh&ocirc;ne', '69', '1');
INSERT INTO `huannn_zone` VALUES ('1184', '74', 'Haute Sa&ocirc;ne', '70', '1');
INSERT INTO `huannn_zone` VALUES ('1185', '74', 'Sa&ocirc;ne et Loire', '71', '1');
INSERT INTO `huannn_zone` VALUES ('1186', '74', 'Sarthe', '72', '1');
INSERT INTO `huannn_zone` VALUES ('1187', '74', 'Savoie', '73', '1');
INSERT INTO `huannn_zone` VALUES ('1188', '74', 'Haute Savoie', '74', '1');
INSERT INTO `huannn_zone` VALUES ('1189', '74', 'Paris', '75', '1');
INSERT INTO `huannn_zone` VALUES ('1190', '74', 'Seine Maritime', '76', '1');
INSERT INTO `huannn_zone` VALUES ('1191', '74', 'Seine et Marne', '77', '1');
INSERT INTO `huannn_zone` VALUES ('1192', '74', 'Yvelines', '78', '1');
INSERT INTO `huannn_zone` VALUES ('1193', '74', 'Deux S&egrave;vres', '79', '1');
INSERT INTO `huannn_zone` VALUES ('1194', '74', 'Somme', '80', '1');
INSERT INTO `huannn_zone` VALUES ('1195', '74', 'Tarn', '81', '1');
INSERT INTO `huannn_zone` VALUES ('1196', '74', 'Tarn et Garonne', '82', '1');
INSERT INTO `huannn_zone` VALUES ('1197', '74', 'Var', '83', '1');
INSERT INTO `huannn_zone` VALUES ('1198', '74', 'Vaucluse', '84', '1');
INSERT INTO `huannn_zone` VALUES ('1199', '74', 'Vend&eacute;e', '85', '1');
INSERT INTO `huannn_zone` VALUES ('1200', '74', 'Vienne', '86', '1');
INSERT INTO `huannn_zone` VALUES ('1201', '74', 'Haute Vienne', '87', '1');
INSERT INTO `huannn_zone` VALUES ('1202', '74', 'Vosges', '88', '1');
INSERT INTO `huannn_zone` VALUES ('1203', '74', 'Yonne', '89', '1');
INSERT INTO `huannn_zone` VALUES ('1204', '74', 'Territoire de Belfort', '90', '1');
INSERT INTO `huannn_zone` VALUES ('1205', '74', 'Essonne', '91', '1');
INSERT INTO `huannn_zone` VALUES ('1206', '74', 'Hauts de Seine', '92', '1');
INSERT INTO `huannn_zone` VALUES ('1207', '74', 'Seine St-Denis', '93', '1');
INSERT INTO `huannn_zone` VALUES ('1208', '74', 'Val de Marne', '94', '1');
INSERT INTO `huannn_zone` VALUES ('1209', '74', 'Val d\'Oise', '95', '1');
INSERT INTO `huannn_zone` VALUES ('1210', '76', 'Archipel des Marquises', 'M', '1');
INSERT INTO `huannn_zone` VALUES ('1211', '76', 'Archipel des Tuamotu', 'T', '1');
INSERT INTO `huannn_zone` VALUES ('1212', '76', 'Archipel des Tubuai', 'I', '1');
INSERT INTO `huannn_zone` VALUES ('1213', '76', 'Iles du Vent', 'V', '1');
INSERT INTO `huannn_zone` VALUES ('1214', '76', 'Iles Sous-le-Vent', 'S', '1');
INSERT INTO `huannn_zone` VALUES ('1215', '77', 'Iles Crozet', 'C', '1');
INSERT INTO `huannn_zone` VALUES ('1216', '77', 'Iles Kerguelen', 'K', '1');
INSERT INTO `huannn_zone` VALUES ('1217', '77', 'Ile Amsterdam', 'A', '1');
INSERT INTO `huannn_zone` VALUES ('1218', '77', 'Ile Saint-Paul', 'P', '1');
INSERT INTO `huannn_zone` VALUES ('1219', '77', 'Adelie Land', 'D', '1');
INSERT INTO `huannn_zone` VALUES ('1220', '78', 'Estuaire', 'ES', '1');
INSERT INTO `huannn_zone` VALUES ('1221', '78', 'Haut-Ogooue', 'HO', '1');
INSERT INTO `huannn_zone` VALUES ('1222', '78', 'Moyen-Ogooue', 'MO', '1');
INSERT INTO `huannn_zone` VALUES ('1223', '78', 'Ngounie', 'NG', '1');
INSERT INTO `huannn_zone` VALUES ('1224', '78', 'Nyanga', 'NY', '1');
INSERT INTO `huannn_zone` VALUES ('1225', '78', 'Ogooue-Ivindo', 'OI', '1');
INSERT INTO `huannn_zone` VALUES ('1226', '78', 'Ogooue-Lolo', 'OL', '1');
INSERT INTO `huannn_zone` VALUES ('1227', '78', 'Ogooue-Maritime', 'OM', '1');
INSERT INTO `huannn_zone` VALUES ('1228', '78', 'Woleu-Ntem', 'WN', '1');
INSERT INTO `huannn_zone` VALUES ('1229', '79', 'Banjul', 'BJ', '1');
INSERT INTO `huannn_zone` VALUES ('1230', '79', 'Basse', 'BS', '1');
INSERT INTO `huannn_zone` VALUES ('1231', '79', 'Brikama', 'BR', '1');
INSERT INTO `huannn_zone` VALUES ('1232', '79', 'Janjangbure', 'JA', '1');
INSERT INTO `huannn_zone` VALUES ('1233', '79', 'Kanifeng', 'KA', '1');
INSERT INTO `huannn_zone` VALUES ('1234', '79', 'Kerewan', 'KE', '1');
INSERT INTO `huannn_zone` VALUES ('1235', '79', 'Kuntaur', 'KU', '1');
INSERT INTO `huannn_zone` VALUES ('1236', '79', 'Mansakonko', 'MA', '1');
INSERT INTO `huannn_zone` VALUES ('1237', '79', 'Lower River', 'LR', '1');
INSERT INTO `huannn_zone` VALUES ('1238', '79', 'Central River', 'CR', '1');
INSERT INTO `huannn_zone` VALUES ('1239', '79', 'North Bank', 'NB', '1');
INSERT INTO `huannn_zone` VALUES ('1240', '79', 'Upper River', 'UR', '1');
INSERT INTO `huannn_zone` VALUES ('1241', '79', 'Western', 'WE', '1');
INSERT INTO `huannn_zone` VALUES ('1242', '80', 'Abkhazia', 'AB', '1');
INSERT INTO `huannn_zone` VALUES ('1243', '80', 'Ajaria', 'AJ', '1');
INSERT INTO `huannn_zone` VALUES ('1244', '80', 'Tbilisi', 'TB', '1');
INSERT INTO `huannn_zone` VALUES ('1245', '80', 'Guria', 'GU', '1');
INSERT INTO `huannn_zone` VALUES ('1246', '80', 'Imereti', 'IM', '1');
INSERT INTO `huannn_zone` VALUES ('1247', '80', 'Kakheti', 'KA', '1');
INSERT INTO `huannn_zone` VALUES ('1248', '80', 'Kvemo Kartli', 'KK', '1');
INSERT INTO `huannn_zone` VALUES ('1249', '80', 'Mtskheta-Mtianeti', 'MM', '1');
INSERT INTO `huannn_zone` VALUES ('1250', '80', 'Racha Lechkhumi and Kvemo Svanet', 'RL', '1');
INSERT INTO `huannn_zone` VALUES ('1251', '80', 'Samegrelo-Zemo Svaneti', 'SZ', '1');
INSERT INTO `huannn_zone` VALUES ('1252', '80', 'Samtskhe-Javakheti', 'SJ', '1');
INSERT INTO `huannn_zone` VALUES ('1253', '80', 'Shida Kartli', 'SK', '1');
INSERT INTO `huannn_zone` VALUES ('1254', '81', 'Baden-Württemberg', 'BAW', '1');
INSERT INTO `huannn_zone` VALUES ('1255', '81', 'Bayern', 'BAY', '1');
INSERT INTO `huannn_zone` VALUES ('1256', '81', 'Berlin', 'BER', '1');
INSERT INTO `huannn_zone` VALUES ('1257', '81', 'Brandenburg', 'BRG', '1');
INSERT INTO `huannn_zone` VALUES ('1258', '81', 'Bremen', 'BRE', '1');
INSERT INTO `huannn_zone` VALUES ('1259', '81', 'Hamburg', 'HAM', '1');
INSERT INTO `huannn_zone` VALUES ('1260', '81', 'Hessen', 'HES', '1');
INSERT INTO `huannn_zone` VALUES ('1261', '81', 'Mecklenburg-Vorpommern', 'MEC', '1');
INSERT INTO `huannn_zone` VALUES ('1262', '81', 'Niedersachsen', 'NDS', '1');
INSERT INTO `huannn_zone` VALUES ('1263', '81', 'Nordrhein-Westfalen', 'NRW', '1');
INSERT INTO `huannn_zone` VALUES ('1264', '81', 'Rheinland-Pfalz', 'RHE', '1');
INSERT INTO `huannn_zone` VALUES ('1265', '81', 'Saarland', 'SAR', '1');
INSERT INTO `huannn_zone` VALUES ('1266', '81', 'Sachsen', 'SAS', '1');
INSERT INTO `huannn_zone` VALUES ('1267', '81', 'Sachsen-Anhalt', 'SAC', '1');
INSERT INTO `huannn_zone` VALUES ('1268', '81', 'Schleswig-Holstein', 'SCN', '1');
INSERT INTO `huannn_zone` VALUES ('1269', '81', 'Thüringen', 'THE', '1');
INSERT INTO `huannn_zone` VALUES ('1270', '82', 'Ashanti Region', 'AS', '1');
INSERT INTO `huannn_zone` VALUES ('1271', '82', 'Brong-Ahafo Region', 'BA', '1');
INSERT INTO `huannn_zone` VALUES ('1272', '82', 'Central Region', 'CE', '1');
INSERT INTO `huannn_zone` VALUES ('1273', '82', 'Eastern Region', 'EA', '1');
INSERT INTO `huannn_zone` VALUES ('1274', '82', 'Greater Accra Region', 'GA', '1');
INSERT INTO `huannn_zone` VALUES ('1275', '82', 'Northern Region', 'NO', '1');
INSERT INTO `huannn_zone` VALUES ('1276', '82', 'Upper East Region', 'UE', '1');
INSERT INTO `huannn_zone` VALUES ('1277', '82', 'Upper West Region', 'UW', '1');
INSERT INTO `huannn_zone` VALUES ('1278', '82', 'Volta Region', 'VO', '1');
INSERT INTO `huannn_zone` VALUES ('1279', '82', 'Western Region', 'WE', '1');
INSERT INTO `huannn_zone` VALUES ('1280', '84', 'Attica', 'AT', '1');
INSERT INTO `huannn_zone` VALUES ('1281', '84', 'Central Greece', 'CN', '1');
INSERT INTO `huannn_zone` VALUES ('1282', '84', 'Central Macedonia', 'CM', '1');
INSERT INTO `huannn_zone` VALUES ('1283', '84', 'Crete', 'CR', '1');
INSERT INTO `huannn_zone` VALUES ('1284', '84', 'East Macedonia and Thrace', 'EM', '1');
INSERT INTO `huannn_zone` VALUES ('1285', '84', 'Epirus', 'EP', '1');
INSERT INTO `huannn_zone` VALUES ('1286', '84', 'Ionian Islands', 'II', '1');
INSERT INTO `huannn_zone` VALUES ('1287', '84', 'North Aegean', 'NA', '1');
INSERT INTO `huannn_zone` VALUES ('1288', '84', 'Peloponnesos', 'PP', '1');
INSERT INTO `huannn_zone` VALUES ('1289', '84', 'South Aegean', 'SA', '1');
INSERT INTO `huannn_zone` VALUES ('1290', '84', 'Thessaly', 'TH', '1');
INSERT INTO `huannn_zone` VALUES ('1291', '84', 'West Greece', 'WG', '1');
INSERT INTO `huannn_zone` VALUES ('1292', '84', 'West Macedonia', 'WM', '1');
INSERT INTO `huannn_zone` VALUES ('1293', '85', 'Avannaa', 'A', '1');
INSERT INTO `huannn_zone` VALUES ('1294', '85', 'Tunu', 'T', '1');
INSERT INTO `huannn_zone` VALUES ('1295', '85', 'Kitaa', 'K', '1');
INSERT INTO `huannn_zone` VALUES ('1296', '86', 'Saint Andrew', 'A', '1');
INSERT INTO `huannn_zone` VALUES ('1297', '86', 'Saint David', 'D', '1');
INSERT INTO `huannn_zone` VALUES ('1298', '86', 'Saint George', 'G', '1');
INSERT INTO `huannn_zone` VALUES ('1299', '86', 'Saint John', 'J', '1');
INSERT INTO `huannn_zone` VALUES ('1300', '86', 'Saint Mark', 'M', '1');
INSERT INTO `huannn_zone` VALUES ('1301', '86', 'Saint Patrick', 'P', '1');
INSERT INTO `huannn_zone` VALUES ('1302', '86', 'Carriacou', 'C', '1');
INSERT INTO `huannn_zone` VALUES ('1303', '86', 'Petit Martinique', 'Q', '1');
INSERT INTO `huannn_zone` VALUES ('1304', '89', 'Alta Verapaz', 'AV', '1');
INSERT INTO `huannn_zone` VALUES ('1305', '89', 'Baja Verapaz', 'BV', '1');
INSERT INTO `huannn_zone` VALUES ('1306', '89', 'Chimaltenango', 'CM', '1');
INSERT INTO `huannn_zone` VALUES ('1307', '89', 'Chiquimula', 'CQ', '1');
INSERT INTO `huannn_zone` VALUES ('1308', '89', 'El Peten', 'PE', '1');
INSERT INTO `huannn_zone` VALUES ('1309', '89', 'El Progreso', 'PR', '1');
INSERT INTO `huannn_zone` VALUES ('1310', '89', 'El Quiche', 'QC', '1');
INSERT INTO `huannn_zone` VALUES ('1311', '89', 'Escuintla', 'ES', '1');
INSERT INTO `huannn_zone` VALUES ('1312', '89', 'Guatemala', 'GU', '1');
INSERT INTO `huannn_zone` VALUES ('1313', '89', 'Huehuetenango', 'HU', '1');
INSERT INTO `huannn_zone` VALUES ('1314', '89', 'Izabal', 'IZ', '1');
INSERT INTO `huannn_zone` VALUES ('1315', '89', 'Jalapa', 'JA', '1');
INSERT INTO `huannn_zone` VALUES ('1316', '89', 'Jutiapa', 'JU', '1');
INSERT INTO `huannn_zone` VALUES ('1317', '89', 'Quetzaltenango', 'QZ', '1');
INSERT INTO `huannn_zone` VALUES ('1318', '89', 'Retalhuleu', 'RE', '1');
INSERT INTO `huannn_zone` VALUES ('1319', '89', 'Sacatepequez', 'ST', '1');
INSERT INTO `huannn_zone` VALUES ('1320', '89', 'San Marcos', 'SM', '1');
INSERT INTO `huannn_zone` VALUES ('1321', '89', 'Santa Rosa', 'SR', '1');
INSERT INTO `huannn_zone` VALUES ('1322', '89', 'Solola', 'SO', '1');
INSERT INTO `huannn_zone` VALUES ('1323', '89', 'Suchitepequez', 'SU', '1');
INSERT INTO `huannn_zone` VALUES ('1324', '89', 'Totonicapan', 'TO', '1');
INSERT INTO `huannn_zone` VALUES ('1325', '89', 'Zacapa', 'ZA', '1');
INSERT INTO `huannn_zone` VALUES ('1326', '90', 'Conakry', 'CNK', '1');
INSERT INTO `huannn_zone` VALUES ('1327', '90', 'Beyla', 'BYL', '1');
INSERT INTO `huannn_zone` VALUES ('1328', '90', 'Boffa', 'BFA', '1');
INSERT INTO `huannn_zone` VALUES ('1329', '90', 'Boke', 'BOK', '1');
INSERT INTO `huannn_zone` VALUES ('1330', '90', 'Coyah', 'COY', '1');
INSERT INTO `huannn_zone` VALUES ('1331', '90', 'Dabola', 'DBL', '1');
INSERT INTO `huannn_zone` VALUES ('1332', '90', 'Dalaba', 'DLB', '1');
INSERT INTO `huannn_zone` VALUES ('1333', '90', 'Dinguiraye', 'DGR', '1');
INSERT INTO `huannn_zone` VALUES ('1334', '90', 'Dubreka', 'DBR', '1');
INSERT INTO `huannn_zone` VALUES ('1335', '90', 'Faranah', 'FRN', '1');
INSERT INTO `huannn_zone` VALUES ('1336', '90', 'Forecariah', 'FRC', '1');
INSERT INTO `huannn_zone` VALUES ('1337', '90', 'Fria', 'FRI', '1');
INSERT INTO `huannn_zone` VALUES ('1338', '90', 'Gaoual', 'GAO', '1');
INSERT INTO `huannn_zone` VALUES ('1339', '90', 'Gueckedou', 'GCD', '1');
INSERT INTO `huannn_zone` VALUES ('1340', '90', 'Kankan', 'KNK', '1');
INSERT INTO `huannn_zone` VALUES ('1341', '90', 'Kerouane', 'KRN', '1');
INSERT INTO `huannn_zone` VALUES ('1342', '90', 'Kindia', 'KND', '1');
INSERT INTO `huannn_zone` VALUES ('1343', '90', 'Kissidougou', 'KSD', '1');
INSERT INTO `huannn_zone` VALUES ('1344', '90', 'Koubia', 'KBA', '1');
INSERT INTO `huannn_zone` VALUES ('1345', '90', 'Koundara', 'KDA', '1');
INSERT INTO `huannn_zone` VALUES ('1346', '90', 'Kouroussa', 'KRA', '1');
INSERT INTO `huannn_zone` VALUES ('1347', '90', 'Labe', 'LAB', '1');
INSERT INTO `huannn_zone` VALUES ('1348', '90', 'Lelouma', 'LLM', '1');
INSERT INTO `huannn_zone` VALUES ('1349', '90', 'Lola', 'LOL', '1');
INSERT INTO `huannn_zone` VALUES ('1350', '90', 'Macenta', 'MCT', '1');
INSERT INTO `huannn_zone` VALUES ('1351', '90', 'Mali', 'MAL', '1');
INSERT INTO `huannn_zone` VALUES ('1352', '90', 'Mamou', 'MAM', '1');
INSERT INTO `huannn_zone` VALUES ('1353', '90', 'Mandiana', 'MAN', '1');
INSERT INTO `huannn_zone` VALUES ('1354', '90', 'Nzerekore', 'NZR', '1');
INSERT INTO `huannn_zone` VALUES ('1355', '90', 'Pita', 'PIT', '1');
INSERT INTO `huannn_zone` VALUES ('1356', '90', 'Siguiri', 'SIG', '1');
INSERT INTO `huannn_zone` VALUES ('1357', '90', 'Telimele', 'TLM', '1');
INSERT INTO `huannn_zone` VALUES ('1358', '90', 'Tougue', 'TOG', '1');
INSERT INTO `huannn_zone` VALUES ('1359', '90', 'Yomou', 'YOM', '1');
INSERT INTO `huannn_zone` VALUES ('1360', '91', 'Bafata Region', 'BF', '1');
INSERT INTO `huannn_zone` VALUES ('1361', '91', 'Biombo Region', 'BB', '1');
INSERT INTO `huannn_zone` VALUES ('1362', '91', 'Bissau Region', 'BS', '1');
INSERT INTO `huannn_zone` VALUES ('1363', '91', 'Bolama Region', 'BL', '1');
INSERT INTO `huannn_zone` VALUES ('1364', '91', 'Cacheu Region', 'CA', '1');
INSERT INTO `huannn_zone` VALUES ('1365', '91', 'Gabu Region', 'GA', '1');
INSERT INTO `huannn_zone` VALUES ('1366', '91', 'Oio Region', 'OI', '1');
INSERT INTO `huannn_zone` VALUES ('1367', '91', 'Quinara Region', 'QU', '1');
INSERT INTO `huannn_zone` VALUES ('1368', '91', 'Tombali Region', 'TO', '1');
INSERT INTO `huannn_zone` VALUES ('1369', '92', 'Barima-Waini', 'BW', '1');
INSERT INTO `huannn_zone` VALUES ('1370', '92', 'Cuyuni-Mazaruni', 'CM', '1');
INSERT INTO `huannn_zone` VALUES ('1371', '92', 'Demerara-Mahaica', 'DM', '1');
INSERT INTO `huannn_zone` VALUES ('1372', '92', 'East Berbice-Corentyne', 'EC', '1');
INSERT INTO `huannn_zone` VALUES ('1373', '92', 'Essequibo Islands-West Demerara', 'EW', '1');
INSERT INTO `huannn_zone` VALUES ('1374', '92', 'Mahaica-Berbice', 'MB', '1');
INSERT INTO `huannn_zone` VALUES ('1375', '92', 'Pomeroon-Supenaam', 'PM', '1');
INSERT INTO `huannn_zone` VALUES ('1376', '92', 'Potaro-Siparuni', 'PI', '1');
INSERT INTO `huannn_zone` VALUES ('1377', '92', 'Upper Demerara-Berbice', 'UD', '1');
INSERT INTO `huannn_zone` VALUES ('1378', '92', 'Upper Takutu-Upper Essequibo', 'UT', '1');
INSERT INTO `huannn_zone` VALUES ('1379', '93', 'Artibonite', 'AR', '1');
INSERT INTO `huannn_zone` VALUES ('1380', '93', 'Centre', 'CE', '1');
INSERT INTO `huannn_zone` VALUES ('1381', '93', 'Grand\'Anse', 'GA', '1');
INSERT INTO `huannn_zone` VALUES ('1382', '93', 'Nord', 'ND', '1');
INSERT INTO `huannn_zone` VALUES ('1383', '93', 'Nord-Est', 'NE', '1');
INSERT INTO `huannn_zone` VALUES ('1384', '93', 'Nord-Ouest', 'NO', '1');
INSERT INTO `huannn_zone` VALUES ('1385', '93', 'Ouest', 'OU', '1');
INSERT INTO `huannn_zone` VALUES ('1386', '93', 'Sud', 'SD', '1');
INSERT INTO `huannn_zone` VALUES ('1387', '93', 'Sud-Est', 'SE', '1');
INSERT INTO `huannn_zone` VALUES ('1388', '94', 'Flat Island', 'F', '1');
INSERT INTO `huannn_zone` VALUES ('1389', '94', 'McDonald Island', 'M', '1');
INSERT INTO `huannn_zone` VALUES ('1390', '94', 'Shag Island', 'S', '1');
INSERT INTO `huannn_zone` VALUES ('1391', '94', 'Heard Island', 'H', '1');
INSERT INTO `huannn_zone` VALUES ('1392', '95', 'Atlantida', 'AT', '1');
INSERT INTO `huannn_zone` VALUES ('1393', '95', 'Choluteca', 'CH', '1');
INSERT INTO `huannn_zone` VALUES ('1394', '95', 'Colon', 'CL', '1');
INSERT INTO `huannn_zone` VALUES ('1395', '95', 'Comayagua', 'CM', '1');
INSERT INTO `huannn_zone` VALUES ('1396', '95', 'Copan', 'CP', '1');
INSERT INTO `huannn_zone` VALUES ('1397', '95', 'Cortes', 'CR', '1');
INSERT INTO `huannn_zone` VALUES ('1398', '95', 'El Paraiso', 'PA', '1');
INSERT INTO `huannn_zone` VALUES ('1399', '95', 'Francisco Morazan', 'FM', '1');
INSERT INTO `huannn_zone` VALUES ('1400', '95', 'Gracias a Dios', 'GD', '1');
INSERT INTO `huannn_zone` VALUES ('1401', '95', 'Intibuca', 'IN', '1');
INSERT INTO `huannn_zone` VALUES ('1402', '95', 'Islas de la Bahia (Bay Islands)', 'IB', '1');
INSERT INTO `huannn_zone` VALUES ('1403', '95', 'La Paz', 'PZ', '1');
INSERT INTO `huannn_zone` VALUES ('1404', '95', 'Lempira', 'LE', '1');
INSERT INTO `huannn_zone` VALUES ('1405', '95', 'Ocotepeque', 'OC', '1');
INSERT INTO `huannn_zone` VALUES ('1406', '95', 'Olancho', 'OL', '1');
INSERT INTO `huannn_zone` VALUES ('1407', '95', 'Santa Barbara', 'SB', '1');
INSERT INTO `huannn_zone` VALUES ('1408', '95', 'Valle', 'VA', '1');
INSERT INTO `huannn_zone` VALUES ('1409', '95', 'Yoro', 'YO', '1');
INSERT INTO `huannn_zone` VALUES ('1410', '96', 'Central and Western Hong Kong Island', 'HCW', '1');
INSERT INTO `huannn_zone` VALUES ('1411', '96', 'Eastern Hong Kong Island', 'HEA', '1');
INSERT INTO `huannn_zone` VALUES ('1412', '96', 'Southern Hong Kong Island', 'HSO', '1');
INSERT INTO `huannn_zone` VALUES ('1413', '96', 'Wan Chai Hong Kong Island', 'HWC', '1');
INSERT INTO `huannn_zone` VALUES ('1414', '96', 'Kowloon City Kowloon', 'KKC', '1');
INSERT INTO `huannn_zone` VALUES ('1415', '96', 'Kwun Tong Kowloon', 'KKT', '1');
INSERT INTO `huannn_zone` VALUES ('1416', '96', 'Sham Shui Po Kowloon', 'KSS', '1');
INSERT INTO `huannn_zone` VALUES ('1417', '96', 'Wong Tai Sin Kowloon', 'KWT', '1');
INSERT INTO `huannn_zone` VALUES ('1418', '96', 'Yau Tsim Mong Kowloon', 'KYT', '1');
INSERT INTO `huannn_zone` VALUES ('1419', '96', 'Islands New Territories', 'NIS', '1');
INSERT INTO `huannn_zone` VALUES ('1420', '96', 'Kwai Tsing New Territories', 'NKT', '1');
INSERT INTO `huannn_zone` VALUES ('1421', '96', 'North New Territories', 'NNO', '1');
INSERT INTO `huannn_zone` VALUES ('1422', '96', 'Sai Kung New Territories', 'NSK', '1');
INSERT INTO `huannn_zone` VALUES ('1423', '96', 'Sha Tin New Territories', 'NST', '1');
INSERT INTO `huannn_zone` VALUES ('1424', '96', 'Tai Po New Territories', 'NTP', '1');
INSERT INTO `huannn_zone` VALUES ('1425', '96', 'Tsuen Wan New Territories', 'NTW', '1');
INSERT INTO `huannn_zone` VALUES ('1426', '96', 'Tuen Mun New Territories', 'NTM', '1');
INSERT INTO `huannn_zone` VALUES ('1427', '96', 'Yuen Long New Territories', 'NYL', '1');
INSERT INTO `huannn_zone` VALUES ('1467', '98', 'Austurland', 'AL', '1');
INSERT INTO `huannn_zone` VALUES ('1468', '98', 'Hofuoborgarsvaeoi', 'HF', '1');
INSERT INTO `huannn_zone` VALUES ('1469', '98', 'Norourland eystra', 'NE', '1');
INSERT INTO `huannn_zone` VALUES ('1470', '98', 'Norourland vestra', 'NV', '1');
INSERT INTO `huannn_zone` VALUES ('1471', '98', 'Suourland', 'SL', '1');
INSERT INTO `huannn_zone` VALUES ('1472', '98', 'Suournes', 'SN', '1');
INSERT INTO `huannn_zone` VALUES ('1473', '98', 'Vestfiroir', 'VF', '1');
INSERT INTO `huannn_zone` VALUES ('1474', '98', 'Vesturland', 'VL', '1');
INSERT INTO `huannn_zone` VALUES ('1475', '99', 'Andaman and Nicobar Islands', 'AN', '1');
INSERT INTO `huannn_zone` VALUES ('1476', '99', 'Andhra Pradesh', 'AP', '1');
INSERT INTO `huannn_zone` VALUES ('1477', '99', 'Arunachal Pradesh', 'AR', '1');
INSERT INTO `huannn_zone` VALUES ('1478', '99', 'Assam', 'AS', '1');
INSERT INTO `huannn_zone` VALUES ('1479', '99', 'Bihar', 'BI', '1');
INSERT INTO `huannn_zone` VALUES ('1480', '99', 'Chandigarh', 'CH', '1');
INSERT INTO `huannn_zone` VALUES ('1481', '99', 'Dadra and Nagar Haveli', 'DA', '1');
INSERT INTO `huannn_zone` VALUES ('1482', '99', 'Daman and Diu', 'DM', '1');
INSERT INTO `huannn_zone` VALUES ('1483', '99', 'Delhi', 'DE', '1');
INSERT INTO `huannn_zone` VALUES ('1484', '99', 'Goa', 'GO', '1');
INSERT INTO `huannn_zone` VALUES ('1485', '99', 'Gujarat', 'GU', '1');
INSERT INTO `huannn_zone` VALUES ('1486', '99', 'Haryana', 'HA', '1');
INSERT INTO `huannn_zone` VALUES ('1487', '99', 'Himachal Pradesh', 'HP', '1');
INSERT INTO `huannn_zone` VALUES ('1488', '99', 'Jammu and Kashmir', 'JA', '1');
INSERT INTO `huannn_zone` VALUES ('1489', '99', 'Karnataka', 'KA', '1');
INSERT INTO `huannn_zone` VALUES ('1490', '99', 'Kerala', 'KE', '1');
INSERT INTO `huannn_zone` VALUES ('1491', '99', 'Lakshadweep Islands', 'LI', '1');
INSERT INTO `huannn_zone` VALUES ('1492', '99', 'Madhya Pradesh', 'MP', '1');
INSERT INTO `huannn_zone` VALUES ('1493', '99', 'Maharashtra', 'MA', '1');
INSERT INTO `huannn_zone` VALUES ('1494', '99', 'Manipur', 'MN', '1');
INSERT INTO `huannn_zone` VALUES ('1495', '99', 'Meghalaya', 'ME', '1');
INSERT INTO `huannn_zone` VALUES ('1496', '99', 'Mizoram', 'MI', '1');
INSERT INTO `huannn_zone` VALUES ('1497', '99', 'Nagaland', 'NA', '1');
INSERT INTO `huannn_zone` VALUES ('1498', '99', 'Orissa', 'OR', '1');
INSERT INTO `huannn_zone` VALUES ('1499', '99', 'Puducherry', 'PO', '1');
INSERT INTO `huannn_zone` VALUES ('1500', '99', 'Punjab', 'PU', '1');
INSERT INTO `huannn_zone` VALUES ('1501', '99', 'Rajasthan', 'RA', '1');
INSERT INTO `huannn_zone` VALUES ('1502', '99', 'Sikkim', 'SI', '1');
INSERT INTO `huannn_zone` VALUES ('1503', '99', 'Tamil Nadu', 'TN', '1');
INSERT INTO `huannn_zone` VALUES ('1504', '99', 'Tripura', 'TR', '1');
INSERT INTO `huannn_zone` VALUES ('1505', '99', 'Uttar Pradesh', 'UP', '1');
INSERT INTO `huannn_zone` VALUES ('1506', '99', 'West Bengal', 'WB', '1');
INSERT INTO `huannn_zone` VALUES ('1507', '100', 'Aceh', 'AC', '1');
INSERT INTO `huannn_zone` VALUES ('1508', '100', 'Bali', 'BA', '1');
INSERT INTO `huannn_zone` VALUES ('1509', '100', 'Banten', 'BT', '1');
INSERT INTO `huannn_zone` VALUES ('1510', '100', 'Bengkulu', 'BE', '1');
INSERT INTO `huannn_zone` VALUES ('1511', '100', 'BoDeTaBek', 'BD', '1');
INSERT INTO `huannn_zone` VALUES ('1512', '100', 'Gorontalo', 'GO', '1');
INSERT INTO `huannn_zone` VALUES ('1513', '100', 'Jakarta Raya', 'JK', '1');
INSERT INTO `huannn_zone` VALUES ('1514', '100', 'Jambi', 'JA', '1');
INSERT INTO `huannn_zone` VALUES ('1515', '100', 'Jawa Barat', 'JB', '1');
INSERT INTO `huannn_zone` VALUES ('1516', '100', 'Jawa Tengah', 'JT', '1');
INSERT INTO `huannn_zone` VALUES ('1517', '100', 'Jawa Timur', 'JI', '1');
INSERT INTO `huannn_zone` VALUES ('1518', '100', 'Kalimantan Barat', 'KB', '1');
INSERT INTO `huannn_zone` VALUES ('1519', '100', 'Kalimantan Selatan', 'KS', '1');
INSERT INTO `huannn_zone` VALUES ('1520', '100', 'Kalimantan Tengah', 'KT', '1');
INSERT INTO `huannn_zone` VALUES ('1521', '100', 'Kalimantan Timur', 'KI', '1');
INSERT INTO `huannn_zone` VALUES ('1522', '100', 'Kepulauan Bangka Belitung', 'BB', '1');
INSERT INTO `huannn_zone` VALUES ('1523', '100', 'Lampung', 'LA', '1');
INSERT INTO `huannn_zone` VALUES ('1524', '100', 'Maluku', 'MA', '1');
INSERT INTO `huannn_zone` VALUES ('1525', '100', 'Maluku Utara', 'MU', '1');
INSERT INTO `huannn_zone` VALUES ('1526', '100', 'Nusa Tenggara Barat', 'NB', '1');
INSERT INTO `huannn_zone` VALUES ('1527', '100', 'Nusa Tenggara Timur', 'NT', '1');
INSERT INTO `huannn_zone` VALUES ('1528', '100', 'Papua', 'PA', '1');
INSERT INTO `huannn_zone` VALUES ('1529', '100', 'Riau', 'RI', '1');
INSERT INTO `huannn_zone` VALUES ('1530', '100', 'Sulawesi Selatan', 'SN', '1');
INSERT INTO `huannn_zone` VALUES ('1531', '100', 'Sulawesi Tengah', 'ST', '1');
INSERT INTO `huannn_zone` VALUES ('1532', '100', 'Sulawesi Tenggara', 'SG', '1');
INSERT INTO `huannn_zone` VALUES ('1533', '100', 'Sulawesi Utara', 'SA', '1');
INSERT INTO `huannn_zone` VALUES ('1534', '100', 'Sumatera Barat', 'SB', '1');
INSERT INTO `huannn_zone` VALUES ('1535', '100', 'Sumatera Selatan', 'SS', '1');
INSERT INTO `huannn_zone` VALUES ('1536', '100', 'Sumatera Utara', 'SU', '1');
INSERT INTO `huannn_zone` VALUES ('1537', '100', 'Yogyakarta', 'YO', '1');
INSERT INTO `huannn_zone` VALUES ('1538', '101', 'Tehran', 'TEH', '1');
INSERT INTO `huannn_zone` VALUES ('1539', '101', 'Qom', 'QOM', '1');
INSERT INTO `huannn_zone` VALUES ('1540', '101', 'Markazi', 'MKZ', '1');
INSERT INTO `huannn_zone` VALUES ('1541', '101', 'Qazvin', 'QAZ', '1');
INSERT INTO `huannn_zone` VALUES ('1542', '101', 'Gilan', 'GIL', '1');
INSERT INTO `huannn_zone` VALUES ('1543', '101', 'Ardabil', 'ARD', '1');
INSERT INTO `huannn_zone` VALUES ('1544', '101', 'Zanjan', 'ZAN', '1');
INSERT INTO `huannn_zone` VALUES ('1545', '101', 'East Azarbaijan', 'EAZ', '1');
INSERT INTO `huannn_zone` VALUES ('1546', '101', 'West Azarbaijan', 'WEZ', '1');
INSERT INTO `huannn_zone` VALUES ('1547', '101', 'Kurdistan', 'KRD', '1');
INSERT INTO `huannn_zone` VALUES ('1548', '101', 'Hamadan', 'HMD', '1');
INSERT INTO `huannn_zone` VALUES ('1549', '101', 'Kermanshah', 'KRM', '1');
INSERT INTO `huannn_zone` VALUES ('1550', '101', 'Ilam', 'ILM', '1');
INSERT INTO `huannn_zone` VALUES ('1551', '101', 'Lorestan', 'LRS', '1');
INSERT INTO `huannn_zone` VALUES ('1552', '101', 'Khuzestan', 'KZT', '1');
INSERT INTO `huannn_zone` VALUES ('1553', '101', 'Chahar Mahaal and Bakhtiari', 'CMB', '1');
INSERT INTO `huannn_zone` VALUES ('1554', '101', 'Kohkiluyeh and Buyer Ahmad', 'KBA', '1');
INSERT INTO `huannn_zone` VALUES ('1555', '101', 'Bushehr', 'BSH', '1');
INSERT INTO `huannn_zone` VALUES ('1556', '101', 'Fars', 'FAR', '1');
INSERT INTO `huannn_zone` VALUES ('1557', '101', 'Hormozgan', 'HRM', '1');
INSERT INTO `huannn_zone` VALUES ('1558', '101', 'Sistan and Baluchistan', 'SBL', '1');
INSERT INTO `huannn_zone` VALUES ('1559', '101', 'Kerman', 'KRB', '1');
INSERT INTO `huannn_zone` VALUES ('1560', '101', 'Yazd', 'YZD', '1');
INSERT INTO `huannn_zone` VALUES ('1561', '101', 'Esfahan', 'EFH', '1');
INSERT INTO `huannn_zone` VALUES ('1562', '101', 'Semnan', 'SMN', '1');
INSERT INTO `huannn_zone` VALUES ('1563', '101', 'Mazandaran', 'MZD', '1');
INSERT INTO `huannn_zone` VALUES ('1564', '101', 'Golestan', 'GLS', '1');
INSERT INTO `huannn_zone` VALUES ('1565', '101', 'North Khorasan', 'NKH', '1');
INSERT INTO `huannn_zone` VALUES ('1566', '101', 'Razavi Khorasan', 'RKH', '1');
INSERT INTO `huannn_zone` VALUES ('1567', '101', 'South Khorasan', 'SKH', '1');
INSERT INTO `huannn_zone` VALUES ('1568', '102', 'Baghdad', 'BD', '1');
INSERT INTO `huannn_zone` VALUES ('1569', '102', 'Salah ad Din', 'SD', '1');
INSERT INTO `huannn_zone` VALUES ('1570', '102', 'Diyala', 'DY', '1');
INSERT INTO `huannn_zone` VALUES ('1571', '102', 'Wasit', 'WS', '1');
INSERT INTO `huannn_zone` VALUES ('1572', '102', 'Maysan', 'MY', '1');
INSERT INTO `huannn_zone` VALUES ('1573', '102', 'Al Basrah', 'BA', '1');
INSERT INTO `huannn_zone` VALUES ('1574', '102', 'Dhi Qar', 'DQ', '1');
INSERT INTO `huannn_zone` VALUES ('1575', '102', 'Al Muthanna', 'MU', '1');
INSERT INTO `huannn_zone` VALUES ('1576', '102', 'Al Qadisyah', 'QA', '1');
INSERT INTO `huannn_zone` VALUES ('1577', '102', 'Babil', 'BB', '1');
INSERT INTO `huannn_zone` VALUES ('1578', '102', 'Al Karbala', 'KB', '1');
INSERT INTO `huannn_zone` VALUES ('1579', '102', 'An Najaf', 'NJ', '1');
INSERT INTO `huannn_zone` VALUES ('1580', '102', 'Al Anbar', 'AB', '1');
INSERT INTO `huannn_zone` VALUES ('1581', '102', 'Ninawa', 'NN', '1');
INSERT INTO `huannn_zone` VALUES ('1582', '102', 'Dahuk', 'DH', '1');
INSERT INTO `huannn_zone` VALUES ('1583', '102', 'Arbil', 'AL', '1');
INSERT INTO `huannn_zone` VALUES ('1584', '102', 'At Ta\'mim', 'TM', '1');
INSERT INTO `huannn_zone` VALUES ('1585', '102', 'As Sulaymaniyah', 'SL', '1');
INSERT INTO `huannn_zone` VALUES ('1586', '103', 'Carlow', 'CA', '1');
INSERT INTO `huannn_zone` VALUES ('1587', '103', 'Cavan', 'CV', '1');
INSERT INTO `huannn_zone` VALUES ('1588', '103', 'Clare', 'CL', '1');
INSERT INTO `huannn_zone` VALUES ('1589', '103', 'Cork', 'CO', '1');
INSERT INTO `huannn_zone` VALUES ('1590', '103', 'Donegal', 'DO', '1');
INSERT INTO `huannn_zone` VALUES ('1591', '103', 'Dublin', 'DU', '1');
INSERT INTO `huannn_zone` VALUES ('1592', '103', 'Galway', 'GA', '1');
INSERT INTO `huannn_zone` VALUES ('1593', '103', 'Kerry', 'KE', '1');
INSERT INTO `huannn_zone` VALUES ('1594', '103', 'Kildare', 'KI', '1');
INSERT INTO `huannn_zone` VALUES ('1595', '103', 'Kilkenny', 'KL', '1');
INSERT INTO `huannn_zone` VALUES ('1596', '103', 'Laois', 'LA', '1');
INSERT INTO `huannn_zone` VALUES ('1597', '103', 'Leitrim', 'LE', '1');
INSERT INTO `huannn_zone` VALUES ('1598', '103', 'Limerick', 'LI', '1');
INSERT INTO `huannn_zone` VALUES ('1599', '103', 'Longford', 'LO', '1');
INSERT INTO `huannn_zone` VALUES ('1600', '103', 'Louth', 'LU', '1');
INSERT INTO `huannn_zone` VALUES ('1601', '103', 'Mayo', 'MA', '1');
INSERT INTO `huannn_zone` VALUES ('1602', '103', 'Meath', 'ME', '1');
INSERT INTO `huannn_zone` VALUES ('1603', '103', 'Monaghan', 'MO', '1');
INSERT INTO `huannn_zone` VALUES ('1604', '103', 'Offaly', 'OF', '1');
INSERT INTO `huannn_zone` VALUES ('1605', '103', 'Roscommon', 'RO', '1');
INSERT INTO `huannn_zone` VALUES ('1606', '103', 'Sligo', 'SL', '1');
INSERT INTO `huannn_zone` VALUES ('1607', '103', 'Tipperary', 'TI', '1');
INSERT INTO `huannn_zone` VALUES ('1608', '103', 'Waterford', 'WA', '1');
INSERT INTO `huannn_zone` VALUES ('1609', '103', 'Westmeath', 'WE', '1');
INSERT INTO `huannn_zone` VALUES ('1610', '103', 'Wexford', 'WX', '1');
INSERT INTO `huannn_zone` VALUES ('1611', '103', 'Wicklow', 'WI', '1');
INSERT INTO `huannn_zone` VALUES ('1612', '104', 'Be\'er Sheva', 'BS', '1');
INSERT INTO `huannn_zone` VALUES ('1613', '104', 'Bika\'at Hayarden', 'BH', '1');
INSERT INTO `huannn_zone` VALUES ('1614', '104', 'Eilat and Arava', 'EA', '1');
INSERT INTO `huannn_zone` VALUES ('1615', '104', 'Galil', 'GA', '1');
INSERT INTO `huannn_zone` VALUES ('1616', '104', 'Haifa', 'HA', '1');
INSERT INTO `huannn_zone` VALUES ('1617', '104', 'Jehuda Mountains', 'JM', '1');
INSERT INTO `huannn_zone` VALUES ('1618', '104', 'Jerusalem', 'JE', '1');
INSERT INTO `huannn_zone` VALUES ('1619', '104', 'Negev', 'NE', '1');
INSERT INTO `huannn_zone` VALUES ('1620', '104', 'Semaria', 'SE', '1');
INSERT INTO `huannn_zone` VALUES ('1621', '104', 'Sharon', 'SH', '1');
INSERT INTO `huannn_zone` VALUES ('1622', '104', 'Tel Aviv (Gosh Dan)', 'TA', '1');
INSERT INTO `huannn_zone` VALUES ('3860', '105', 'Caltanissetta', 'CL', '1');
INSERT INTO `huannn_zone` VALUES ('3842', '105', 'Agrigento', 'AG', '1');
INSERT INTO `huannn_zone` VALUES ('3843', '105', 'Alessandria', 'AL', '1');
INSERT INTO `huannn_zone` VALUES ('3844', '105', 'Ancona', 'AN', '1');
INSERT INTO `huannn_zone` VALUES ('3845', '105', 'Aosta', 'AO', '1');
INSERT INTO `huannn_zone` VALUES ('3846', '105', 'Arezzo', 'AR', '1');
INSERT INTO `huannn_zone` VALUES ('3847', '105', 'Ascoli Piceno', 'AP', '1');
INSERT INTO `huannn_zone` VALUES ('3848', '105', 'Asti', 'AT', '1');
INSERT INTO `huannn_zone` VALUES ('3849', '105', 'Avellino', 'AV', '1');
INSERT INTO `huannn_zone` VALUES ('3850', '105', 'Bari', 'BA', '1');
INSERT INTO `huannn_zone` VALUES ('3851', '105', 'Belluno', 'BL', '1');
INSERT INTO `huannn_zone` VALUES ('3852', '105', 'Benevento', 'BN', '1');
INSERT INTO `huannn_zone` VALUES ('3853', '105', 'Bergamo', 'BG', '1');
INSERT INTO `huannn_zone` VALUES ('3854', '105', 'Biella', 'BI', '1');
INSERT INTO `huannn_zone` VALUES ('3855', '105', 'Bologna', 'BO', '1');
INSERT INTO `huannn_zone` VALUES ('3856', '105', 'Bolzano', 'BZ', '1');
INSERT INTO `huannn_zone` VALUES ('3857', '105', 'Brescia', 'BS', '1');
INSERT INTO `huannn_zone` VALUES ('3858', '105', 'Brindisi', 'BR', '1');
INSERT INTO `huannn_zone` VALUES ('3859', '105', 'Cagliari', 'CA', '1');
INSERT INTO `huannn_zone` VALUES ('1643', '106', 'Clarendon Parish', 'CLA', '1');
INSERT INTO `huannn_zone` VALUES ('1644', '106', 'Hanover Parish', 'HAN', '1');
INSERT INTO `huannn_zone` VALUES ('1645', '106', 'Kingston Parish', 'KIN', '1');
INSERT INTO `huannn_zone` VALUES ('1646', '106', 'Manchester Parish', 'MAN', '1');
INSERT INTO `huannn_zone` VALUES ('1647', '106', 'Portland Parish', 'POR', '1');
INSERT INTO `huannn_zone` VALUES ('1648', '106', 'Saint Andrew Parish', 'AND', '1');
INSERT INTO `huannn_zone` VALUES ('1649', '106', 'Saint Ann Parish', 'ANN', '1');
INSERT INTO `huannn_zone` VALUES ('1650', '106', 'Saint Catherine Parish', 'CAT', '1');
INSERT INTO `huannn_zone` VALUES ('1651', '106', 'Saint Elizabeth Parish', 'ELI', '1');
INSERT INTO `huannn_zone` VALUES ('1652', '106', 'Saint James Parish', 'JAM', '1');
INSERT INTO `huannn_zone` VALUES ('1653', '106', 'Saint Mary Parish', 'MAR', '1');
INSERT INTO `huannn_zone` VALUES ('1654', '106', 'Saint Thomas Parish', 'THO', '1');
INSERT INTO `huannn_zone` VALUES ('1655', '106', 'Trelawny Parish', 'TRL', '1');
INSERT INTO `huannn_zone` VALUES ('1656', '106', 'Westmoreland Parish', 'WML', '1');
INSERT INTO `huannn_zone` VALUES ('1657', '107', 'Aichi', 'AI', '1');
INSERT INTO `huannn_zone` VALUES ('1658', '107', 'Akita', 'AK', '1');
INSERT INTO `huannn_zone` VALUES ('1659', '107', 'Aomori', 'AO', '1');
INSERT INTO `huannn_zone` VALUES ('1660', '107', 'Chiba', 'CH', '1');
INSERT INTO `huannn_zone` VALUES ('1661', '107', 'Ehime', 'EH', '1');
INSERT INTO `huannn_zone` VALUES ('1662', '107', 'Fukui', 'FK', '1');
INSERT INTO `huannn_zone` VALUES ('1663', '107', 'Fukuoka', 'FU', '1');
INSERT INTO `huannn_zone` VALUES ('1664', '107', 'Fukushima', 'FS', '1');
INSERT INTO `huannn_zone` VALUES ('1665', '107', 'Gifu', 'GI', '1');
INSERT INTO `huannn_zone` VALUES ('1666', '107', 'Gumma', 'GU', '1');
INSERT INTO `huannn_zone` VALUES ('1667', '107', 'Hiroshima', 'HI', '1');
INSERT INTO `huannn_zone` VALUES ('1668', '107', 'Hokkaido', 'HO', '1');
INSERT INTO `huannn_zone` VALUES ('1669', '107', 'Hyogo', 'HY', '1');
INSERT INTO `huannn_zone` VALUES ('1670', '107', 'Ibaraki', 'IB', '1');
INSERT INTO `huannn_zone` VALUES ('1671', '107', 'Ishikawa', 'IS', '1');
INSERT INTO `huannn_zone` VALUES ('1672', '107', 'Iwate', 'IW', '1');
INSERT INTO `huannn_zone` VALUES ('1673', '107', 'Kagawa', 'KA', '1');
INSERT INTO `huannn_zone` VALUES ('1674', '107', 'Kagoshima', 'KG', '1');
INSERT INTO `huannn_zone` VALUES ('1675', '107', 'Kanagawa', 'KN', '1');
INSERT INTO `huannn_zone` VALUES ('1676', '107', 'Kochi', 'KO', '1');
INSERT INTO `huannn_zone` VALUES ('1677', '107', 'Kumamoto', 'KU', '1');
INSERT INTO `huannn_zone` VALUES ('1678', '107', 'Kyoto', 'KY', '1');
INSERT INTO `huannn_zone` VALUES ('1679', '107', 'Mie', 'MI', '1');
INSERT INTO `huannn_zone` VALUES ('1680', '107', 'Miyagi', 'MY', '1');
INSERT INTO `huannn_zone` VALUES ('1681', '107', 'Miyazaki', 'MZ', '1');
INSERT INTO `huannn_zone` VALUES ('1682', '107', 'Nagano', 'NA', '1');
INSERT INTO `huannn_zone` VALUES ('1683', '107', 'Nagasaki', 'NG', '1');
INSERT INTO `huannn_zone` VALUES ('1684', '107', 'Nara', 'NR', '1');
INSERT INTO `huannn_zone` VALUES ('1685', '107', 'Niigata', 'NI', '1');
INSERT INTO `huannn_zone` VALUES ('1686', '107', 'Oita', 'OI', '1');
INSERT INTO `huannn_zone` VALUES ('1687', '107', 'Okayama', 'OK', '1');
INSERT INTO `huannn_zone` VALUES ('1688', '107', 'Okinawa', 'ON', '1');
INSERT INTO `huannn_zone` VALUES ('1689', '107', 'Osaka', 'OS', '1');
INSERT INTO `huannn_zone` VALUES ('1690', '107', 'Saga', 'SA', '1');
INSERT INTO `huannn_zone` VALUES ('1691', '107', 'Saitama', 'SI', '1');
INSERT INTO `huannn_zone` VALUES ('1692', '107', 'Shiga', 'SH', '1');
INSERT INTO `huannn_zone` VALUES ('1693', '107', 'Shimane', 'SM', '1');
INSERT INTO `huannn_zone` VALUES ('1694', '107', 'Shizuoka', 'SZ', '1');
INSERT INTO `huannn_zone` VALUES ('1695', '107', 'Tochigi', 'TO', '1');
INSERT INTO `huannn_zone` VALUES ('1696', '107', 'Tokushima', 'TS', '1');
INSERT INTO `huannn_zone` VALUES ('1697', '107', 'Tokyo', 'TK', '1');
INSERT INTO `huannn_zone` VALUES ('1698', '107', 'Tottori', 'TT', '1');
INSERT INTO `huannn_zone` VALUES ('1699', '107', 'Toyama', 'TY', '1');
INSERT INTO `huannn_zone` VALUES ('1700', '107', 'Wakayama', 'WA', '1');
INSERT INTO `huannn_zone` VALUES ('1701', '107', 'Yamagata', 'YA', '1');
INSERT INTO `huannn_zone` VALUES ('1702', '107', 'Yamaguchi', 'YM', '1');
INSERT INTO `huannn_zone` VALUES ('1703', '107', 'Yamanashi', 'YN', '1');
INSERT INTO `huannn_zone` VALUES ('1704', '108', '\'Amman', 'AM', '1');
INSERT INTO `huannn_zone` VALUES ('1705', '108', 'Ajlun', 'AJ', '1');
INSERT INTO `huannn_zone` VALUES ('1706', '108', 'Al \'Aqabah', 'AA', '1');
INSERT INTO `huannn_zone` VALUES ('1707', '108', 'Al Balqa\'', 'AB', '1');
INSERT INTO `huannn_zone` VALUES ('1708', '108', 'Al Karak', 'AK', '1');
INSERT INTO `huannn_zone` VALUES ('1709', '108', 'Al Mafraq', 'AL', '1');
INSERT INTO `huannn_zone` VALUES ('1710', '108', 'At Tafilah', 'AT', '1');
INSERT INTO `huannn_zone` VALUES ('1711', '108', 'Az Zarqa\'', 'AZ', '1');
INSERT INTO `huannn_zone` VALUES ('1712', '108', 'Irbid', 'IR', '1');
INSERT INTO `huannn_zone` VALUES ('1713', '108', 'Jarash', 'JA', '1');
INSERT INTO `huannn_zone` VALUES ('1714', '108', 'Ma\'an', 'MA', '1');
INSERT INTO `huannn_zone` VALUES ('1715', '108', 'Madaba', 'MD', '1');
INSERT INTO `huannn_zone` VALUES ('1716', '109', 'Almaty', 'AL', '1');
INSERT INTO `huannn_zone` VALUES ('1717', '109', 'Almaty City', 'AC', '1');
INSERT INTO `huannn_zone` VALUES ('1718', '109', 'Aqmola', 'AM', '1');
INSERT INTO `huannn_zone` VALUES ('1719', '109', 'Aqtobe', 'AQ', '1');
INSERT INTO `huannn_zone` VALUES ('1720', '109', 'Astana City', 'AS', '1');
INSERT INTO `huannn_zone` VALUES ('1721', '109', 'Atyrau', 'AT', '1');
INSERT INTO `huannn_zone` VALUES ('1722', '109', 'Batys Qazaqstan', 'BA', '1');
INSERT INTO `huannn_zone` VALUES ('1723', '109', 'Bayqongyr City', 'BY', '1');
INSERT INTO `huannn_zone` VALUES ('1724', '109', 'Mangghystau', 'MA', '1');
INSERT INTO `huannn_zone` VALUES ('1725', '109', 'Ongtustik Qazaqstan', 'ON', '1');
INSERT INTO `huannn_zone` VALUES ('1726', '109', 'Pavlodar', 'PA', '1');
INSERT INTO `huannn_zone` VALUES ('1727', '109', 'Qaraghandy', 'QA', '1');
INSERT INTO `huannn_zone` VALUES ('1728', '109', 'Qostanay', 'QO', '1');
INSERT INTO `huannn_zone` VALUES ('1729', '109', 'Qyzylorda', 'QY', '1');
INSERT INTO `huannn_zone` VALUES ('1730', '109', 'Shyghys Qazaqstan', 'SH', '1');
INSERT INTO `huannn_zone` VALUES ('1731', '109', 'Soltustik Qazaqstan', 'SO', '1');
INSERT INTO `huannn_zone` VALUES ('1732', '109', 'Zhambyl', 'ZH', '1');
INSERT INTO `huannn_zone` VALUES ('1733', '110', 'Central', 'CE', '1');
INSERT INTO `huannn_zone` VALUES ('1734', '110', 'Coast', 'CO', '1');
INSERT INTO `huannn_zone` VALUES ('1735', '110', 'Eastern', 'EA', '1');
INSERT INTO `huannn_zone` VALUES ('1736', '110', 'Nairobi Area', 'NA', '1');
INSERT INTO `huannn_zone` VALUES ('1737', '110', 'North Eastern', 'NE', '1');
INSERT INTO `huannn_zone` VALUES ('1738', '110', 'Nyanza', 'NY', '1');
INSERT INTO `huannn_zone` VALUES ('1739', '110', 'Rift Valley', 'RV', '1');
INSERT INTO `huannn_zone` VALUES ('1740', '110', 'Western', 'WE', '1');
INSERT INTO `huannn_zone` VALUES ('1741', '111', 'Abaiang', 'AG', '1');
INSERT INTO `huannn_zone` VALUES ('1742', '111', 'Abemama', 'AM', '1');
INSERT INTO `huannn_zone` VALUES ('1743', '111', 'Aranuka', 'AK', '1');
INSERT INTO `huannn_zone` VALUES ('1744', '111', 'Arorae', 'AO', '1');
INSERT INTO `huannn_zone` VALUES ('1745', '111', 'Banaba', 'BA', '1');
INSERT INTO `huannn_zone` VALUES ('1746', '111', 'Beru', 'BE', '1');
INSERT INTO `huannn_zone` VALUES ('1747', '111', 'Butaritari', 'bT', '1');
INSERT INTO `huannn_zone` VALUES ('1748', '111', 'Kanton', 'KA', '1');
INSERT INTO `huannn_zone` VALUES ('1749', '111', 'Kiritimati', 'KR', '1');
INSERT INTO `huannn_zone` VALUES ('1750', '111', 'Kuria', 'KU', '1');
INSERT INTO `huannn_zone` VALUES ('1751', '111', 'Maiana', 'MI', '1');
INSERT INTO `huannn_zone` VALUES ('1752', '111', 'Makin', 'MN', '1');
INSERT INTO `huannn_zone` VALUES ('1753', '111', 'Marakei', 'ME', '1');
INSERT INTO `huannn_zone` VALUES ('1754', '111', 'Nikunau', 'NI', '1');
INSERT INTO `huannn_zone` VALUES ('1755', '111', 'Nonouti', 'NO', '1');
INSERT INTO `huannn_zone` VALUES ('1756', '111', 'Onotoa', 'ON', '1');
INSERT INTO `huannn_zone` VALUES ('1757', '111', 'Tabiteuea', 'TT', '1');
INSERT INTO `huannn_zone` VALUES ('1758', '111', 'Tabuaeran', 'TR', '1');
INSERT INTO `huannn_zone` VALUES ('1759', '111', 'Tamana', 'TM', '1');
INSERT INTO `huannn_zone` VALUES ('1760', '111', 'Tarawa', 'TW', '1');
INSERT INTO `huannn_zone` VALUES ('1761', '111', 'Teraina', 'TE', '1');
INSERT INTO `huannn_zone` VALUES ('1762', '112', 'Chagang-do', 'CHA', '1');
INSERT INTO `huannn_zone` VALUES ('1763', '112', 'Hamgyong-bukto', 'HAB', '1');
INSERT INTO `huannn_zone` VALUES ('1764', '112', 'Hamgyong-namdo', 'HAN', '1');
INSERT INTO `huannn_zone` VALUES ('1765', '112', 'Hwanghae-bukto', 'HWB', '1');
INSERT INTO `huannn_zone` VALUES ('1766', '112', 'Hwanghae-namdo', 'HWN', '1');
INSERT INTO `huannn_zone` VALUES ('1767', '112', 'Kangwon-do', 'KAN', '1');
INSERT INTO `huannn_zone` VALUES ('1768', '112', 'P\'yongan-bukto', 'PYB', '1');
INSERT INTO `huannn_zone` VALUES ('1769', '112', 'P\'yongan-namdo', 'PYN', '1');
INSERT INTO `huannn_zone` VALUES ('1770', '112', 'Ryanggang-do (Yanggang-do)', 'YAN', '1');
INSERT INTO `huannn_zone` VALUES ('1771', '112', 'Rason Directly Governed City', 'NAJ', '1');
INSERT INTO `huannn_zone` VALUES ('1772', '112', 'P\'yongyang Special City', 'PYO', '1');
INSERT INTO `huannn_zone` VALUES ('1773', '113', 'Ch\'ungch\'ong-bukto', 'CO', '1');
INSERT INTO `huannn_zone` VALUES ('1774', '113', 'Ch\'ungch\'ong-namdo', 'CH', '1');
INSERT INTO `huannn_zone` VALUES ('1775', '113', 'Cheju-do', 'CD', '1');
INSERT INTO `huannn_zone` VALUES ('1776', '113', 'Cholla-bukto', 'CB', '1');
INSERT INTO `huannn_zone` VALUES ('1777', '113', 'Cholla-namdo', 'CN', '1');
INSERT INTO `huannn_zone` VALUES ('1778', '113', 'Inch\'on-gwangyoksi', 'IG', '1');
INSERT INTO `huannn_zone` VALUES ('1779', '113', 'Kangwon-do', 'KA', '1');
INSERT INTO `huannn_zone` VALUES ('1780', '113', 'Kwangju-gwangyoksi', 'KG', '1');
INSERT INTO `huannn_zone` VALUES ('1781', '113', 'Kyonggi-do', 'KD', '1');
INSERT INTO `huannn_zone` VALUES ('1782', '113', 'Kyongsang-bukto', 'KB', '1');
INSERT INTO `huannn_zone` VALUES ('1783', '113', 'Kyongsang-namdo', 'KN', '1');
INSERT INTO `huannn_zone` VALUES ('1784', '113', 'Pusan-gwangyoksi', 'PG', '1');
INSERT INTO `huannn_zone` VALUES ('1785', '113', 'Soul-t\'ukpyolsi', 'SO', '1');
INSERT INTO `huannn_zone` VALUES ('1786', '113', 'Taegu-gwangyoksi', 'TA', '1');
INSERT INTO `huannn_zone` VALUES ('1787', '113', 'Taejon-gwangyoksi', 'TG', '1');
INSERT INTO `huannn_zone` VALUES ('1788', '114', 'Al \'Asimah', 'AL', '1');
INSERT INTO `huannn_zone` VALUES ('1789', '114', 'Al Ahmadi', 'AA', '1');
INSERT INTO `huannn_zone` VALUES ('1790', '114', 'Al Farwaniyah', 'AF', '1');
INSERT INTO `huannn_zone` VALUES ('1791', '114', 'Al Jahra\'', 'AJ', '1');
INSERT INTO `huannn_zone` VALUES ('1792', '114', 'Hawalli', 'HA', '1');
INSERT INTO `huannn_zone` VALUES ('1793', '115', 'Bishkek', 'GB', '1');
INSERT INTO `huannn_zone` VALUES ('1794', '115', 'Batken', 'B', '1');
INSERT INTO `huannn_zone` VALUES ('1795', '115', 'Chu', 'C', '1');
INSERT INTO `huannn_zone` VALUES ('1796', '115', 'Jalal-Abad', 'J', '1');
INSERT INTO `huannn_zone` VALUES ('1797', '115', 'Naryn', 'N', '1');
INSERT INTO `huannn_zone` VALUES ('1798', '115', 'Osh', 'O', '1');
INSERT INTO `huannn_zone` VALUES ('1799', '115', 'Talas', 'T', '1');
INSERT INTO `huannn_zone` VALUES ('1800', '115', 'Ysyk-Kol', 'Y', '1');
INSERT INTO `huannn_zone` VALUES ('1801', '116', 'Vientiane', 'VT', '1');
INSERT INTO `huannn_zone` VALUES ('1802', '116', 'Attapu', 'AT', '1');
INSERT INTO `huannn_zone` VALUES ('1803', '116', 'Bokeo', 'BK', '1');
INSERT INTO `huannn_zone` VALUES ('1804', '116', 'Bolikhamxai', 'BL', '1');
INSERT INTO `huannn_zone` VALUES ('1805', '116', 'Champasak', 'CH', '1');
INSERT INTO `huannn_zone` VALUES ('1806', '116', 'Houaphan', 'HO', '1');
INSERT INTO `huannn_zone` VALUES ('1807', '116', 'Khammouan', 'KH', '1');
INSERT INTO `huannn_zone` VALUES ('1808', '116', 'Louang Namtha', 'LM', '1');
INSERT INTO `huannn_zone` VALUES ('1809', '116', 'Louangphabang', 'LP', '1');
INSERT INTO `huannn_zone` VALUES ('1810', '116', 'Oudomxai', 'OU', '1');
INSERT INTO `huannn_zone` VALUES ('1811', '116', 'Phongsali', 'PH', '1');
INSERT INTO `huannn_zone` VALUES ('1812', '116', 'Salavan', 'SL', '1');
INSERT INTO `huannn_zone` VALUES ('1813', '116', 'Savannakhet', 'SV', '1');
INSERT INTO `huannn_zone` VALUES ('1814', '116', 'Vientiane', 'VI', '1');
INSERT INTO `huannn_zone` VALUES ('1815', '116', 'Xaignabouli', 'XA', '1');
INSERT INTO `huannn_zone` VALUES ('1816', '116', 'Xekong', 'XE', '1');
INSERT INTO `huannn_zone` VALUES ('1817', '116', 'Xiangkhoang', 'XI', '1');
INSERT INTO `huannn_zone` VALUES ('1818', '116', 'Xaisomboun', 'XN', '1');
INSERT INTO `huannn_zone` VALUES ('1852', '119', 'Berea', 'BE', '1');
INSERT INTO `huannn_zone` VALUES ('1853', '119', 'Butha-Buthe', 'BB', '1');
INSERT INTO `huannn_zone` VALUES ('1854', '119', 'Leribe', 'LE', '1');
INSERT INTO `huannn_zone` VALUES ('1855', '119', 'Mafeteng', 'MF', '1');
INSERT INTO `huannn_zone` VALUES ('1856', '119', 'Maseru', 'MS', '1');
INSERT INTO `huannn_zone` VALUES ('1857', '119', 'Mohale\'s Hoek', 'MH', '1');
INSERT INTO `huannn_zone` VALUES ('1858', '119', 'Mokhotlong', 'MK', '1');
INSERT INTO `huannn_zone` VALUES ('1859', '119', 'Qacha\'s Nek', 'QN', '1');
INSERT INTO `huannn_zone` VALUES ('1860', '119', 'Quthing', 'QT', '1');
INSERT INTO `huannn_zone` VALUES ('1861', '119', 'Thaba-Tseka', 'TT', '1');
INSERT INTO `huannn_zone` VALUES ('1862', '120', 'Bomi', 'BI', '1');
INSERT INTO `huannn_zone` VALUES ('1863', '120', 'Bong', 'BG', '1');
INSERT INTO `huannn_zone` VALUES ('1864', '120', 'Grand Bassa', 'GB', '1');
INSERT INTO `huannn_zone` VALUES ('1865', '120', 'Grand Cape Mount', 'CM', '1');
INSERT INTO `huannn_zone` VALUES ('1866', '120', 'Grand Gedeh', 'GG', '1');
INSERT INTO `huannn_zone` VALUES ('1867', '120', 'Grand Kru', 'GK', '1');
INSERT INTO `huannn_zone` VALUES ('1868', '120', 'Lofa', 'LO', '1');
INSERT INTO `huannn_zone` VALUES ('1869', '120', 'Margibi', 'MG', '1');
INSERT INTO `huannn_zone` VALUES ('1870', '120', 'Maryland', 'ML', '1');
INSERT INTO `huannn_zone` VALUES ('1871', '120', 'Montserrado', 'MS', '1');
INSERT INTO `huannn_zone` VALUES ('1872', '120', 'Nimba', 'NB', '1');
INSERT INTO `huannn_zone` VALUES ('1873', '120', 'River Cess', 'RC', '1');
INSERT INTO `huannn_zone` VALUES ('1874', '120', 'Sinoe', 'SN', '1');
INSERT INTO `huannn_zone` VALUES ('1875', '121', 'Ajdabiya', 'AJ', '1');
INSERT INTO `huannn_zone` VALUES ('1876', '121', 'Al \'Aziziyah', 'AZ', '1');
INSERT INTO `huannn_zone` VALUES ('1877', '121', 'Al Fatih', 'FA', '1');
INSERT INTO `huannn_zone` VALUES ('1878', '121', 'Al Jabal al Akhdar', 'JA', '1');
INSERT INTO `huannn_zone` VALUES ('1879', '121', 'Al Jufrah', 'JU', '1');
INSERT INTO `huannn_zone` VALUES ('1880', '121', 'Al Khums', 'KH', '1');
INSERT INTO `huannn_zone` VALUES ('1881', '121', 'Al Kufrah', 'KU', '1');
INSERT INTO `huannn_zone` VALUES ('1882', '121', 'An Nuqat al Khams', 'NK', '1');
INSERT INTO `huannn_zone` VALUES ('1883', '121', 'Ash Shati\'', 'AS', '1');
INSERT INTO `huannn_zone` VALUES ('1884', '121', 'Awbari', 'AW', '1');
INSERT INTO `huannn_zone` VALUES ('1885', '121', 'Az Zawiyah', 'ZA', '1');
INSERT INTO `huannn_zone` VALUES ('1886', '121', 'Banghazi', 'BA', '1');
INSERT INTO `huannn_zone` VALUES ('1887', '121', 'Darnah', 'DA', '1');
INSERT INTO `huannn_zone` VALUES ('1888', '121', 'Ghadamis', 'GD', '1');
INSERT INTO `huannn_zone` VALUES ('1889', '121', 'Gharyan', 'GY', '1');
INSERT INTO `huannn_zone` VALUES ('1890', '121', 'Misratah', 'MI', '1');
INSERT INTO `huannn_zone` VALUES ('1891', '121', 'Murzuq', 'MZ', '1');
INSERT INTO `huannn_zone` VALUES ('1892', '121', 'Sabha', 'SB', '1');
INSERT INTO `huannn_zone` VALUES ('1893', '121', 'Sawfajjin', 'SW', '1');
INSERT INTO `huannn_zone` VALUES ('1894', '121', 'Surt', 'SU', '1');
INSERT INTO `huannn_zone` VALUES ('1895', '121', 'Tarabulus (Tripoli)', 'TL', '1');
INSERT INTO `huannn_zone` VALUES ('1896', '121', 'Tarhunah', 'TH', '1');
INSERT INTO `huannn_zone` VALUES ('1897', '121', 'Tubruq', 'TU', '1');
INSERT INTO `huannn_zone` VALUES ('1898', '121', 'Yafran', 'YA', '1');
INSERT INTO `huannn_zone` VALUES ('1899', '121', 'Zlitan', 'ZL', '1');
INSERT INTO `huannn_zone` VALUES ('1900', '122', 'Vaduz', 'V', '1');
INSERT INTO `huannn_zone` VALUES ('1901', '122', 'Schaan', 'A', '1');
INSERT INTO `huannn_zone` VALUES ('1902', '122', 'Balzers', 'B', '1');
INSERT INTO `huannn_zone` VALUES ('1903', '122', 'Triesen', 'N', '1');
INSERT INTO `huannn_zone` VALUES ('1904', '122', 'Eschen', 'E', '1');
INSERT INTO `huannn_zone` VALUES ('1905', '122', 'Mauren', 'M', '1');
INSERT INTO `huannn_zone` VALUES ('1906', '122', 'Triesenberg', 'T', '1');
INSERT INTO `huannn_zone` VALUES ('1907', '122', 'Ruggell', 'R', '1');
INSERT INTO `huannn_zone` VALUES ('1908', '122', 'Gamprin', 'G', '1');
INSERT INTO `huannn_zone` VALUES ('1909', '122', 'Schellenberg', 'L', '1');
INSERT INTO `huannn_zone` VALUES ('1910', '122', 'Planken', 'P', '1');
INSERT INTO `huannn_zone` VALUES ('1911', '123', 'Alytus', 'AL', '1');
INSERT INTO `huannn_zone` VALUES ('1912', '123', 'Kaunas', 'KA', '1');
INSERT INTO `huannn_zone` VALUES ('1913', '123', 'Klaipeda', 'KL', '1');
INSERT INTO `huannn_zone` VALUES ('1914', '123', 'Marijampole', 'MA', '1');
INSERT INTO `huannn_zone` VALUES ('1915', '123', 'Panevezys', 'PA', '1');
INSERT INTO `huannn_zone` VALUES ('1916', '123', 'Siauliai', 'SI', '1');
INSERT INTO `huannn_zone` VALUES ('1917', '123', 'Taurage', 'TA', '1');
INSERT INTO `huannn_zone` VALUES ('1918', '123', 'Telsiai', 'TE', '1');
INSERT INTO `huannn_zone` VALUES ('1919', '123', 'Utena', 'UT', '1');
INSERT INTO `huannn_zone` VALUES ('1920', '123', 'Vilnius', 'VI', '1');
INSERT INTO `huannn_zone` VALUES ('1921', '124', 'Diekirch', 'DD', '1');
INSERT INTO `huannn_zone` VALUES ('1922', '124', 'Clervaux', 'DC', '1');
INSERT INTO `huannn_zone` VALUES ('1923', '124', 'Redange', 'DR', '1');
INSERT INTO `huannn_zone` VALUES ('1924', '124', 'Vianden', 'DV', '1');
INSERT INTO `huannn_zone` VALUES ('1925', '124', 'Wiltz', 'DW', '1');
INSERT INTO `huannn_zone` VALUES ('1926', '124', 'Grevenmacher', 'GG', '1');
INSERT INTO `huannn_zone` VALUES ('1927', '124', 'Echternach', 'GE', '1');
INSERT INTO `huannn_zone` VALUES ('1928', '124', 'Remich', 'GR', '1');
INSERT INTO `huannn_zone` VALUES ('1929', '124', 'Luxembourg', 'LL', '1');
INSERT INTO `huannn_zone` VALUES ('1930', '124', 'Capellen', 'LC', '1');
INSERT INTO `huannn_zone` VALUES ('1931', '124', 'Esch-sur-Alzette', 'LE', '1');
INSERT INTO `huannn_zone` VALUES ('1932', '124', 'Mersch', 'LM', '1');
INSERT INTO `huannn_zone` VALUES ('1933', '125', 'Our Lady Fatima Parish', 'OLF', '1');
INSERT INTO `huannn_zone` VALUES ('1934', '125', 'St. Anthony Parish', 'ANT', '1');
INSERT INTO `huannn_zone` VALUES ('1935', '125', 'St. Lazarus Parish', 'LAZ', '1');
INSERT INTO `huannn_zone` VALUES ('1936', '125', 'Cathedral Parish', 'CAT', '1');
INSERT INTO `huannn_zone` VALUES ('1937', '125', 'St. Lawrence Parish', 'LAW', '1');
INSERT INTO `huannn_zone` VALUES ('1938', '127', 'Antananarivo', 'AN', '1');
INSERT INTO `huannn_zone` VALUES ('1939', '127', 'Antsiranana', 'AS', '1');
INSERT INTO `huannn_zone` VALUES ('1940', '127', 'Fianarantsoa', 'FN', '1');
INSERT INTO `huannn_zone` VALUES ('1941', '127', 'Mahajanga', 'MJ', '1');
INSERT INTO `huannn_zone` VALUES ('1942', '127', 'Toamasina', 'TM', '1');
INSERT INTO `huannn_zone` VALUES ('1943', '127', 'Toliara', 'TL', '1');
INSERT INTO `huannn_zone` VALUES ('1944', '128', 'Balaka', 'BLK', '1');
INSERT INTO `huannn_zone` VALUES ('1945', '128', 'Blantyre', 'BLT', '1');
INSERT INTO `huannn_zone` VALUES ('1946', '128', 'Chikwawa', 'CKW', '1');
INSERT INTO `huannn_zone` VALUES ('1947', '128', 'Chiradzulu', 'CRD', '1');
INSERT INTO `huannn_zone` VALUES ('1948', '128', 'Chitipa', 'CTP', '1');
INSERT INTO `huannn_zone` VALUES ('1949', '128', 'Dedza', 'DDZ', '1');
INSERT INTO `huannn_zone` VALUES ('1950', '128', 'Dowa', 'DWA', '1');
INSERT INTO `huannn_zone` VALUES ('1951', '128', 'Karonga', 'KRG', '1');
INSERT INTO `huannn_zone` VALUES ('1952', '128', 'Kasungu', 'KSG', '1');
INSERT INTO `huannn_zone` VALUES ('1953', '128', 'Likoma', 'LKM', '1');
INSERT INTO `huannn_zone` VALUES ('1954', '128', 'Lilongwe', 'LLG', '1');
INSERT INTO `huannn_zone` VALUES ('1955', '128', 'Machinga', 'MCG', '1');
INSERT INTO `huannn_zone` VALUES ('1956', '128', 'Mangochi', 'MGC', '1');
INSERT INTO `huannn_zone` VALUES ('1957', '128', 'Mchinji', 'MCH', '1');
INSERT INTO `huannn_zone` VALUES ('1958', '128', 'Mulanje', 'MLJ', '1');
INSERT INTO `huannn_zone` VALUES ('1959', '128', 'Mwanza', 'MWZ', '1');
INSERT INTO `huannn_zone` VALUES ('1960', '128', 'Mzimba', 'MZM', '1');
INSERT INTO `huannn_zone` VALUES ('1961', '128', 'Ntcheu', 'NTU', '1');
INSERT INTO `huannn_zone` VALUES ('1962', '128', 'Nkhata Bay', 'NKB', '1');
INSERT INTO `huannn_zone` VALUES ('1963', '128', 'Nkhotakota', 'NKH', '1');
INSERT INTO `huannn_zone` VALUES ('1964', '128', 'Nsanje', 'NSJ', '1');
INSERT INTO `huannn_zone` VALUES ('1965', '128', 'Ntchisi', 'NTI', '1');
INSERT INTO `huannn_zone` VALUES ('1966', '128', 'Phalombe', 'PHL', '1');
INSERT INTO `huannn_zone` VALUES ('1967', '128', 'Rumphi', 'RMP', '1');
INSERT INTO `huannn_zone` VALUES ('1968', '128', 'Salima', 'SLM', '1');
INSERT INTO `huannn_zone` VALUES ('1969', '128', 'Thyolo', 'THY', '1');
INSERT INTO `huannn_zone` VALUES ('1970', '128', 'Zomba', 'ZBA', '1');
INSERT INTO `huannn_zone` VALUES ('1971', '129', 'Johor', 'MY-01', '1');
INSERT INTO `huannn_zone` VALUES ('1972', '129', 'Kedah', 'MY-02', '1');
INSERT INTO `huannn_zone` VALUES ('1973', '129', 'Kelantan', 'MY-03', '1');
INSERT INTO `huannn_zone` VALUES ('1974', '129', 'Labuan', 'MY-15', '1');
INSERT INTO `huannn_zone` VALUES ('1975', '129', 'Melaka', 'MY-04', '1');
INSERT INTO `huannn_zone` VALUES ('1976', '129', 'Negeri Sembilan', 'MY-05', '1');
INSERT INTO `huannn_zone` VALUES ('1977', '129', 'Pahang', 'MY-06', '1');
INSERT INTO `huannn_zone` VALUES ('1978', '129', 'Perak', 'MY-08', '1');
INSERT INTO `huannn_zone` VALUES ('1979', '129', 'Perlis', 'MY-09', '1');
INSERT INTO `huannn_zone` VALUES ('1980', '129', 'Pulau Pinang', 'MY-07', '1');
INSERT INTO `huannn_zone` VALUES ('1981', '129', 'Sabah', 'MY-12', '1');
INSERT INTO `huannn_zone` VALUES ('1982', '129', 'Sarawak', 'MY-13', '1');
INSERT INTO `huannn_zone` VALUES ('1983', '129', 'Selangor', 'MY-10', '1');
INSERT INTO `huannn_zone` VALUES ('1984', '129', 'Terengganu', 'MY-11', '1');
INSERT INTO `huannn_zone` VALUES ('1985', '129', 'Kuala Lumpur', 'MY-14', '1');
INSERT INTO `huannn_zone` VALUES ('4035', '129', 'Putrajaya', 'MY-16', '1');
INSERT INTO `huannn_zone` VALUES ('1986', '130', 'Thiladhunmathi Uthuru', 'THU', '1');
INSERT INTO `huannn_zone` VALUES ('1987', '130', 'Thiladhunmathi Dhekunu', 'THD', '1');
INSERT INTO `huannn_zone` VALUES ('1988', '130', 'Miladhunmadulu Uthuru', 'MLU', '1');
INSERT INTO `huannn_zone` VALUES ('1989', '130', 'Miladhunmadulu Dhekunu', 'MLD', '1');
INSERT INTO `huannn_zone` VALUES ('1990', '130', 'Maalhosmadulu Uthuru', 'MAU', '1');
INSERT INTO `huannn_zone` VALUES ('1991', '130', 'Maalhosmadulu Dhekunu', 'MAD', '1');
INSERT INTO `huannn_zone` VALUES ('1992', '130', 'Faadhippolhu', 'FAA', '1');
INSERT INTO `huannn_zone` VALUES ('1993', '130', 'Male Atoll', 'MAA', '1');
INSERT INTO `huannn_zone` VALUES ('1994', '130', 'Ari Atoll Uthuru', 'AAU', '1');
INSERT INTO `huannn_zone` VALUES ('1995', '130', 'Ari Atoll Dheknu', 'AAD', '1');
INSERT INTO `huannn_zone` VALUES ('1996', '130', 'Felidhe Atoll', 'FEA', '1');
INSERT INTO `huannn_zone` VALUES ('1997', '130', 'Mulaku Atoll', 'MUA', '1');
INSERT INTO `huannn_zone` VALUES ('1998', '130', 'Nilandhe Atoll Uthuru', 'NAU', '1');
INSERT INTO `huannn_zone` VALUES ('1999', '130', 'Nilandhe Atoll Dhekunu', 'NAD', '1');
INSERT INTO `huannn_zone` VALUES ('2000', '130', 'Kolhumadulu', 'KLH', '1');
INSERT INTO `huannn_zone` VALUES ('2001', '130', 'Hadhdhunmathi', 'HDH', '1');
INSERT INTO `huannn_zone` VALUES ('2002', '130', 'Huvadhu Atoll Uthuru', 'HAU', '1');
INSERT INTO `huannn_zone` VALUES ('2003', '130', 'Huvadhu Atoll Dhekunu', 'HAD', '1');
INSERT INTO `huannn_zone` VALUES ('2004', '130', 'Fua Mulaku', 'FMU', '1');
INSERT INTO `huannn_zone` VALUES ('2005', '130', 'Addu', 'ADD', '1');
INSERT INTO `huannn_zone` VALUES ('2006', '131', 'Gao', 'GA', '1');
INSERT INTO `huannn_zone` VALUES ('2007', '131', 'Kayes', 'KY', '1');
INSERT INTO `huannn_zone` VALUES ('2008', '131', 'Kidal', 'KD', '1');
INSERT INTO `huannn_zone` VALUES ('2009', '131', 'Koulikoro', 'KL', '1');
INSERT INTO `huannn_zone` VALUES ('2010', '131', 'Mopti', 'MP', '1');
INSERT INTO `huannn_zone` VALUES ('2011', '131', 'Segou', 'SG', '1');
INSERT INTO `huannn_zone` VALUES ('2012', '131', 'Sikasso', 'SK', '1');
INSERT INTO `huannn_zone` VALUES ('2013', '131', 'Tombouctou', 'TB', '1');
INSERT INTO `huannn_zone` VALUES ('2014', '131', 'Bamako Capital District', 'CD', '1');
INSERT INTO `huannn_zone` VALUES ('2015', '132', 'Attard', 'ATT', '1');
INSERT INTO `huannn_zone` VALUES ('2016', '132', 'Balzan', 'BAL', '1');
INSERT INTO `huannn_zone` VALUES ('2017', '132', 'Birgu', 'BGU', '1');
INSERT INTO `huannn_zone` VALUES ('2018', '132', 'Birkirkara', 'BKK', '1');
INSERT INTO `huannn_zone` VALUES ('2019', '132', 'Birzebbuga', 'BRZ', '1');
INSERT INTO `huannn_zone` VALUES ('2020', '132', 'Bormla', 'BOR', '1');
INSERT INTO `huannn_zone` VALUES ('2021', '132', 'Dingli', 'DIN', '1');
INSERT INTO `huannn_zone` VALUES ('2022', '132', 'Fgura', 'FGU', '1');
INSERT INTO `huannn_zone` VALUES ('2023', '132', 'Floriana', 'FLO', '1');
INSERT INTO `huannn_zone` VALUES ('2024', '132', 'Gudja', 'GDJ', '1');
INSERT INTO `huannn_zone` VALUES ('2025', '132', 'Gzira', 'GZR', '1');
INSERT INTO `huannn_zone` VALUES ('2026', '132', 'Gargur', 'GRG', '1');
INSERT INTO `huannn_zone` VALUES ('2027', '132', 'Gaxaq', 'GXQ', '1');
INSERT INTO `huannn_zone` VALUES ('2028', '132', 'Hamrun', 'HMR', '1');
INSERT INTO `huannn_zone` VALUES ('2029', '132', 'Iklin', 'IKL', '1');
INSERT INTO `huannn_zone` VALUES ('2030', '132', 'Isla', 'ISL', '1');
INSERT INTO `huannn_zone` VALUES ('2031', '132', 'Kalkara', 'KLK', '1');
INSERT INTO `huannn_zone` VALUES ('2032', '132', 'Kirkop', 'KRK', '1');
INSERT INTO `huannn_zone` VALUES ('2033', '132', 'Lija', 'LIJ', '1');
INSERT INTO `huannn_zone` VALUES ('2034', '132', 'Luqa', 'LUQ', '1');
INSERT INTO `huannn_zone` VALUES ('2035', '132', 'Marsa', 'MRS', '1');
INSERT INTO `huannn_zone` VALUES ('2036', '132', 'Marsaskala', 'MKL', '1');
INSERT INTO `huannn_zone` VALUES ('2037', '132', 'Marsaxlokk', 'MXL', '1');
INSERT INTO `huannn_zone` VALUES ('2038', '132', 'Mdina', 'MDN', '1');
INSERT INTO `huannn_zone` VALUES ('2039', '132', 'Melliea', 'MEL', '1');
INSERT INTO `huannn_zone` VALUES ('2040', '132', 'Mgarr', 'MGR', '1');
INSERT INTO `huannn_zone` VALUES ('2041', '132', 'Mosta', 'MST', '1');
INSERT INTO `huannn_zone` VALUES ('2042', '132', 'Mqabba', 'MQA', '1');
INSERT INTO `huannn_zone` VALUES ('2043', '132', 'Msida', 'MSI', '1');
INSERT INTO `huannn_zone` VALUES ('2044', '132', 'Mtarfa', 'MTF', '1');
INSERT INTO `huannn_zone` VALUES ('2045', '132', 'Naxxar', 'NAX', '1');
INSERT INTO `huannn_zone` VALUES ('2046', '132', 'Paola', 'PAO', '1');
INSERT INTO `huannn_zone` VALUES ('2047', '132', 'Pembroke', 'PEM', '1');
INSERT INTO `huannn_zone` VALUES ('2048', '132', 'Pieta', 'PIE', '1');
INSERT INTO `huannn_zone` VALUES ('2049', '132', 'Qormi', 'QOR', '1');
INSERT INTO `huannn_zone` VALUES ('2050', '132', 'Qrendi', 'QRE', '1');
INSERT INTO `huannn_zone` VALUES ('2051', '132', 'Rabat', 'RAB', '1');
INSERT INTO `huannn_zone` VALUES ('2052', '132', 'Safi', 'SAF', '1');
INSERT INTO `huannn_zone` VALUES ('2053', '132', 'San Giljan', 'SGI', '1');
INSERT INTO `huannn_zone` VALUES ('2054', '132', 'Santa Lucija', 'SLU', '1');
INSERT INTO `huannn_zone` VALUES ('2055', '132', 'San Pawl il-Bahar', 'SPB', '1');
INSERT INTO `huannn_zone` VALUES ('2056', '132', 'San Gwann', 'SGW', '1');
INSERT INTO `huannn_zone` VALUES ('2057', '132', 'Santa Venera', 'SVE', '1');
INSERT INTO `huannn_zone` VALUES ('2058', '132', 'Siggiewi', 'SIG', '1');
INSERT INTO `huannn_zone` VALUES ('2059', '132', 'Sliema', 'SLM', '1');
INSERT INTO `huannn_zone` VALUES ('2060', '132', 'Swieqi', 'SWQ', '1');
INSERT INTO `huannn_zone` VALUES ('2061', '132', 'Ta Xbiex', 'TXB', '1');
INSERT INTO `huannn_zone` VALUES ('2062', '132', 'Tarxien', 'TRX', '1');
INSERT INTO `huannn_zone` VALUES ('2063', '132', 'Valletta', 'VLT', '1');
INSERT INTO `huannn_zone` VALUES ('2064', '132', 'Xgajra', 'XGJ', '1');
INSERT INTO `huannn_zone` VALUES ('2065', '132', 'Zabbar', 'ZBR', '1');
INSERT INTO `huannn_zone` VALUES ('2066', '132', 'Zebbug', 'ZBG', '1');
INSERT INTO `huannn_zone` VALUES ('2067', '132', 'Zejtun', 'ZJT', '1');
INSERT INTO `huannn_zone` VALUES ('2068', '132', 'Zurrieq', 'ZRQ', '1');
INSERT INTO `huannn_zone` VALUES ('2069', '132', 'Fontana', 'FNT', '1');
INSERT INTO `huannn_zone` VALUES ('2070', '132', 'Ghajnsielem', 'GHJ', '1');
INSERT INTO `huannn_zone` VALUES ('2071', '132', 'Gharb', 'GHR', '1');
INSERT INTO `huannn_zone` VALUES ('2072', '132', 'Ghasri', 'GHS', '1');
INSERT INTO `huannn_zone` VALUES ('2073', '132', 'Kercem', 'KRC', '1');
INSERT INTO `huannn_zone` VALUES ('2074', '132', 'Munxar', 'MUN', '1');
INSERT INTO `huannn_zone` VALUES ('2075', '132', 'Nadur', 'NAD', '1');
INSERT INTO `huannn_zone` VALUES ('2076', '132', 'Qala', 'QAL', '1');
INSERT INTO `huannn_zone` VALUES ('2077', '132', 'Victoria', 'VIC', '1');
INSERT INTO `huannn_zone` VALUES ('2078', '132', 'San Lawrenz', 'SLA', '1');
INSERT INTO `huannn_zone` VALUES ('2079', '132', 'Sannat', 'SNT', '1');
INSERT INTO `huannn_zone` VALUES ('2080', '132', 'Xagra', 'ZAG', '1');
INSERT INTO `huannn_zone` VALUES ('2081', '132', 'Xewkija', 'XEW', '1');
INSERT INTO `huannn_zone` VALUES ('2082', '132', 'Zebbug', 'ZEB', '1');
INSERT INTO `huannn_zone` VALUES ('2083', '133', 'Ailinginae', 'ALG', '1');
INSERT INTO `huannn_zone` VALUES ('2084', '133', 'Ailinglaplap', 'ALL', '1');
INSERT INTO `huannn_zone` VALUES ('2085', '133', 'Ailuk', 'ALK', '1');
INSERT INTO `huannn_zone` VALUES ('2086', '133', 'Arno', 'ARN', '1');
INSERT INTO `huannn_zone` VALUES ('2087', '133', 'Aur', 'AUR', '1');
INSERT INTO `huannn_zone` VALUES ('2088', '133', 'Bikar', 'BKR', '1');
INSERT INTO `huannn_zone` VALUES ('2089', '133', 'Bikini', 'BKN', '1');
INSERT INTO `huannn_zone` VALUES ('2090', '133', 'Bokak', 'BKK', '1');
INSERT INTO `huannn_zone` VALUES ('2091', '133', 'Ebon', 'EBN', '1');
INSERT INTO `huannn_zone` VALUES ('2092', '133', 'Enewetak', 'ENT', '1');
INSERT INTO `huannn_zone` VALUES ('2093', '133', 'Erikub', 'EKB', '1');
INSERT INTO `huannn_zone` VALUES ('2094', '133', 'Jabat', 'JBT', '1');
INSERT INTO `huannn_zone` VALUES ('2095', '133', 'Jaluit', 'JLT', '1');
INSERT INTO `huannn_zone` VALUES ('2096', '133', 'Jemo', 'JEM', '1');
INSERT INTO `huannn_zone` VALUES ('2097', '133', 'Kili', 'KIL', '1');
INSERT INTO `huannn_zone` VALUES ('2098', '133', 'Kwajalein', 'KWJ', '1');
INSERT INTO `huannn_zone` VALUES ('2099', '133', 'Lae', 'LAE', '1');
INSERT INTO `huannn_zone` VALUES ('2100', '133', 'Lib', 'LIB', '1');
INSERT INTO `huannn_zone` VALUES ('2101', '133', 'Likiep', 'LKP', '1');
INSERT INTO `huannn_zone` VALUES ('2102', '133', 'Majuro', 'MJR', '1');
INSERT INTO `huannn_zone` VALUES ('2103', '133', 'Maloelap', 'MLP', '1');
INSERT INTO `huannn_zone` VALUES ('2104', '133', 'Mejit', 'MJT', '1');
INSERT INTO `huannn_zone` VALUES ('2105', '133', 'Mili', 'MIL', '1');
INSERT INTO `huannn_zone` VALUES ('2106', '133', 'Namorik', 'NMK', '1');
INSERT INTO `huannn_zone` VALUES ('2107', '133', 'Namu', 'NAM', '1');
INSERT INTO `huannn_zone` VALUES ('2108', '133', 'Rongelap', 'RGL', '1');
INSERT INTO `huannn_zone` VALUES ('2109', '133', 'Rongrik', 'RGK', '1');
INSERT INTO `huannn_zone` VALUES ('2110', '133', 'Toke', 'TOK', '1');
INSERT INTO `huannn_zone` VALUES ('2111', '133', 'Ujae', 'UJA', '1');
INSERT INTO `huannn_zone` VALUES ('2112', '133', 'Ujelang', 'UJL', '1');
INSERT INTO `huannn_zone` VALUES ('2113', '133', 'Utirik', 'UTK', '1');
INSERT INTO `huannn_zone` VALUES ('2114', '133', 'Wotho', 'WTH', '1');
INSERT INTO `huannn_zone` VALUES ('2115', '133', 'Wotje', 'WTJ', '1');
INSERT INTO `huannn_zone` VALUES ('2116', '135', 'Adrar', 'AD', '1');
INSERT INTO `huannn_zone` VALUES ('2117', '135', 'Assaba', 'AS', '1');
INSERT INTO `huannn_zone` VALUES ('2118', '135', 'Brakna', 'BR', '1');
INSERT INTO `huannn_zone` VALUES ('2119', '135', 'Dakhlet Nouadhibou', 'DN', '1');
INSERT INTO `huannn_zone` VALUES ('2120', '135', 'Gorgol', 'GO', '1');
INSERT INTO `huannn_zone` VALUES ('2121', '135', 'Guidimaka', 'GM', '1');
INSERT INTO `huannn_zone` VALUES ('2122', '135', 'Hodh Ech Chargui', 'HC', '1');
INSERT INTO `huannn_zone` VALUES ('2123', '135', 'Hodh El Gharbi', 'HG', '1');
INSERT INTO `huannn_zone` VALUES ('2124', '135', 'Inchiri', 'IN', '1');
INSERT INTO `huannn_zone` VALUES ('2125', '135', 'Tagant', 'TA', '1');
INSERT INTO `huannn_zone` VALUES ('2126', '135', 'Tiris Zemmour', 'TZ', '1');
INSERT INTO `huannn_zone` VALUES ('2127', '135', 'Trarza', 'TR', '1');
INSERT INTO `huannn_zone` VALUES ('2128', '135', 'Nouakchott', 'NO', '1');
INSERT INTO `huannn_zone` VALUES ('2129', '136', 'Beau Bassin-Rose Hill', 'BR', '1');
INSERT INTO `huannn_zone` VALUES ('2130', '136', 'Curepipe', 'CU', '1');
INSERT INTO `huannn_zone` VALUES ('2131', '136', 'Port Louis', 'PU', '1');
INSERT INTO `huannn_zone` VALUES ('2132', '136', 'Quatre Bornes', 'QB', '1');
INSERT INTO `huannn_zone` VALUES ('2133', '136', 'Vacoas-Phoenix', 'VP', '1');
INSERT INTO `huannn_zone` VALUES ('2134', '136', 'Agalega Islands', 'AG', '1');
INSERT INTO `huannn_zone` VALUES ('2135', '136', 'Cargados Carajos Shoals (Saint Brandon Islands)', 'CC', '1');
INSERT INTO `huannn_zone` VALUES ('2136', '136', 'Rodrigues', 'RO', '1');
INSERT INTO `huannn_zone` VALUES ('2137', '136', 'Black River', 'BL', '1');
INSERT INTO `huannn_zone` VALUES ('2138', '136', 'Flacq', 'FL', '1');
INSERT INTO `huannn_zone` VALUES ('2139', '136', 'Grand Port', 'GP', '1');
INSERT INTO `huannn_zone` VALUES ('2140', '136', 'Moka', 'MO', '1');
INSERT INTO `huannn_zone` VALUES ('2141', '136', 'Pamplemousses', 'PA', '1');
INSERT INTO `huannn_zone` VALUES ('2142', '136', 'Plaines Wilhems', 'PW', '1');
INSERT INTO `huannn_zone` VALUES ('2143', '136', 'Port Louis', 'PL', '1');
INSERT INTO `huannn_zone` VALUES ('2144', '136', 'Riviere du Rempart', 'RR', '1');
INSERT INTO `huannn_zone` VALUES ('2145', '136', 'Savanne', 'SA', '1');
INSERT INTO `huannn_zone` VALUES ('2146', '138', 'Baja California Norte', 'BN', '1');
INSERT INTO `huannn_zone` VALUES ('2147', '138', 'Baja California Sur', 'BS', '1');
INSERT INTO `huannn_zone` VALUES ('2148', '138', 'Campeche', 'CA', '1');
INSERT INTO `huannn_zone` VALUES ('2149', '138', 'Chiapas', 'CI', '1');
INSERT INTO `huannn_zone` VALUES ('2150', '138', 'Chihuahua', 'CH', '1');
INSERT INTO `huannn_zone` VALUES ('2151', '138', 'Coahuila de Zaragoza', 'CZ', '1');
INSERT INTO `huannn_zone` VALUES ('2152', '138', 'Colima', 'CL', '1');
INSERT INTO `huannn_zone` VALUES ('2153', '138', 'Distrito Federal', 'DF', '1');
INSERT INTO `huannn_zone` VALUES ('2154', '138', 'Durango', 'DU', '1');
INSERT INTO `huannn_zone` VALUES ('2155', '138', 'Guanajuato', 'GA', '1');
INSERT INTO `huannn_zone` VALUES ('2156', '138', 'Guerrero', 'GE', '1');
INSERT INTO `huannn_zone` VALUES ('2157', '138', 'Hidalgo', 'HI', '1');
INSERT INTO `huannn_zone` VALUES ('2158', '138', 'Jalisco', 'JA', '1');
INSERT INTO `huannn_zone` VALUES ('2159', '138', 'Mexico', 'ME', '1');
INSERT INTO `huannn_zone` VALUES ('2160', '138', 'Michoacan de Ocampo', 'MI', '1');
INSERT INTO `huannn_zone` VALUES ('2161', '138', 'Morelos', 'MO', '1');
INSERT INTO `huannn_zone` VALUES ('2162', '138', 'Nayarit', 'NA', '1');
INSERT INTO `huannn_zone` VALUES ('2163', '138', 'Nuevo Leon', 'NL', '1');
INSERT INTO `huannn_zone` VALUES ('2164', '138', 'Oaxaca', 'OA', '1');
INSERT INTO `huannn_zone` VALUES ('2165', '138', 'Puebla', 'PU', '1');
INSERT INTO `huannn_zone` VALUES ('2166', '138', 'Queretaro de Arteaga', 'QA', '1');
INSERT INTO `huannn_zone` VALUES ('2167', '138', 'Quintana Roo', 'QR', '1');
INSERT INTO `huannn_zone` VALUES ('2168', '138', 'San Luis Potosi', 'SA', '1');
INSERT INTO `huannn_zone` VALUES ('2169', '138', 'Sinaloa', 'SI', '1');
INSERT INTO `huannn_zone` VALUES ('2170', '138', 'Sonora', 'SO', '1');
INSERT INTO `huannn_zone` VALUES ('2171', '138', 'Tabasco', 'TB', '1');
INSERT INTO `huannn_zone` VALUES ('2172', '138', 'Tamaulipas', 'TM', '1');
INSERT INTO `huannn_zone` VALUES ('2173', '138', 'Tlaxcala', 'TL', '1');
INSERT INTO `huannn_zone` VALUES ('2174', '138', 'Veracruz-Llave', 'VE', '1');
INSERT INTO `huannn_zone` VALUES ('2175', '138', 'Yucatan', 'YU', '1');
INSERT INTO `huannn_zone` VALUES ('2176', '138', 'Zacatecas', 'ZA', '1');
INSERT INTO `huannn_zone` VALUES ('2177', '139', 'Chuuk', 'C', '1');
INSERT INTO `huannn_zone` VALUES ('2178', '139', 'Kosrae', 'K', '1');
INSERT INTO `huannn_zone` VALUES ('2179', '139', 'Pohnpei', 'P', '1');
INSERT INTO `huannn_zone` VALUES ('2180', '139', 'Yap', 'Y', '1');
INSERT INTO `huannn_zone` VALUES ('2181', '140', 'Gagauzia', 'GA', '1');
INSERT INTO `huannn_zone` VALUES ('2182', '140', 'Chisinau', 'CU', '1');
INSERT INTO `huannn_zone` VALUES ('2183', '140', 'Balti', 'BA', '1');
INSERT INTO `huannn_zone` VALUES ('2184', '140', 'Cahul', 'CA', '1');
INSERT INTO `huannn_zone` VALUES ('2185', '140', 'Edinet', 'ED', '1');
INSERT INTO `huannn_zone` VALUES ('2186', '140', 'Lapusna', 'LA', '1');
INSERT INTO `huannn_zone` VALUES ('2187', '140', 'Orhei', 'OR', '1');
INSERT INTO `huannn_zone` VALUES ('2188', '140', 'Soroca', 'SO', '1');
INSERT INTO `huannn_zone` VALUES ('2189', '140', 'Tighina', 'TI', '1');
INSERT INTO `huannn_zone` VALUES ('2190', '140', 'Ungheni', 'UN', '1');
INSERT INTO `huannn_zone` VALUES ('2191', '140', 'St‚nga Nistrului', 'SN', '1');
INSERT INTO `huannn_zone` VALUES ('2192', '141', 'Fontvieille', 'FV', '1');
INSERT INTO `huannn_zone` VALUES ('2193', '141', 'La Condamine', 'LC', '1');
INSERT INTO `huannn_zone` VALUES ('2194', '141', 'Monaco-Ville', 'MV', '1');
INSERT INTO `huannn_zone` VALUES ('2195', '141', 'Monte-Carlo', 'MC', '1');
INSERT INTO `huannn_zone` VALUES ('2196', '142', 'Ulanbaatar', '1', '1');
INSERT INTO `huannn_zone` VALUES ('2197', '142', 'Orhon', '035', '1');
INSERT INTO `huannn_zone` VALUES ('2198', '142', 'Darhan uul', '037', '1');
INSERT INTO `huannn_zone` VALUES ('2199', '142', 'Hentiy', '039', '1');
INSERT INTO `huannn_zone` VALUES ('2200', '142', 'Hovsgol', '041', '1');
INSERT INTO `huannn_zone` VALUES ('2201', '142', 'Hovd', '043', '1');
INSERT INTO `huannn_zone` VALUES ('2202', '142', 'Uvs', '046', '1');
INSERT INTO `huannn_zone` VALUES ('2203', '142', 'Tov', '047', '1');
INSERT INTO `huannn_zone` VALUES ('2204', '142', 'Selenge', '049', '1');
INSERT INTO `huannn_zone` VALUES ('2205', '142', 'Suhbaatar', '051', '1');
INSERT INTO `huannn_zone` VALUES ('2206', '142', 'Omnogovi', '053', '1');
INSERT INTO `huannn_zone` VALUES ('2207', '142', 'Ovorhangay', '055', '1');
INSERT INTO `huannn_zone` VALUES ('2208', '142', 'Dzavhan', '057', '1');
INSERT INTO `huannn_zone` VALUES ('2209', '142', 'DundgovL', '059', '1');
INSERT INTO `huannn_zone` VALUES ('2210', '142', 'Dornod', '061', '1');
INSERT INTO `huannn_zone` VALUES ('2211', '142', 'Dornogov', '063', '1');
INSERT INTO `huannn_zone` VALUES ('2212', '142', 'Govi-Sumber', '064', '1');
INSERT INTO `huannn_zone` VALUES ('2213', '142', 'Govi-Altay', '065', '1');
INSERT INTO `huannn_zone` VALUES ('2214', '142', 'Bulgan', '067', '1');
INSERT INTO `huannn_zone` VALUES ('2215', '142', 'Bayanhongor', '069', '1');
INSERT INTO `huannn_zone` VALUES ('2216', '142', 'Bayan-Olgiy', '071', '1');
INSERT INTO `huannn_zone` VALUES ('2217', '142', 'Arhangay', '073', '1');
INSERT INTO `huannn_zone` VALUES ('2218', '143', 'Saint Anthony', 'A', '1');
INSERT INTO `huannn_zone` VALUES ('2219', '143', 'Saint Georges', 'G', '1');
INSERT INTO `huannn_zone` VALUES ('2220', '143', 'Saint Peter', 'P', '1');
INSERT INTO `huannn_zone` VALUES ('2221', '144', 'Agadir', 'AGD', '1');
INSERT INTO `huannn_zone` VALUES ('2222', '144', 'Al Hoceima', 'HOC', '1');
INSERT INTO `huannn_zone` VALUES ('2223', '144', 'Azilal', 'AZI', '1');
INSERT INTO `huannn_zone` VALUES ('2224', '144', 'Beni Mellal', 'BME', '1');
INSERT INTO `huannn_zone` VALUES ('2225', '144', 'Ben Slimane', 'BSL', '1');
INSERT INTO `huannn_zone` VALUES ('2226', '144', 'Boulemane', 'BLM', '1');
INSERT INTO `huannn_zone` VALUES ('2227', '144', 'Casablanca', 'CBL', '1');
INSERT INTO `huannn_zone` VALUES ('2228', '144', 'Chaouen', 'CHA', '1');
INSERT INTO `huannn_zone` VALUES ('2229', '144', 'El Jadida', 'EJA', '1');
INSERT INTO `huannn_zone` VALUES ('2230', '144', 'El Kelaa des Sraghna', 'EKS', '1');
INSERT INTO `huannn_zone` VALUES ('2231', '144', 'Er Rachidia', 'ERA', '1');
INSERT INTO `huannn_zone` VALUES ('2232', '144', 'Essaouira', 'ESS', '1');
INSERT INTO `huannn_zone` VALUES ('2233', '144', 'Fes', 'FES', '1');
INSERT INTO `huannn_zone` VALUES ('2234', '144', 'Figuig', 'FIG', '1');
INSERT INTO `huannn_zone` VALUES ('2235', '144', 'Guelmim', 'GLM', '1');
INSERT INTO `huannn_zone` VALUES ('2236', '144', 'Ifrane', 'IFR', '1');
INSERT INTO `huannn_zone` VALUES ('2237', '144', 'Kenitra', 'KEN', '1');
INSERT INTO `huannn_zone` VALUES ('2238', '144', 'Khemisset', 'KHM', '1');
INSERT INTO `huannn_zone` VALUES ('2239', '144', 'Khenifra', 'KHN', '1');
INSERT INTO `huannn_zone` VALUES ('2240', '144', 'Khouribga', 'KHO', '1');
INSERT INTO `huannn_zone` VALUES ('2241', '144', 'Laayoune', 'LYN', '1');
INSERT INTO `huannn_zone` VALUES ('2242', '144', 'Larache', 'LAR', '1');
INSERT INTO `huannn_zone` VALUES ('2243', '144', 'Marrakech', 'MRK', '1');
INSERT INTO `huannn_zone` VALUES ('2244', '144', 'Meknes', 'MKN', '1');
INSERT INTO `huannn_zone` VALUES ('2245', '144', 'Nador', 'NAD', '1');
INSERT INTO `huannn_zone` VALUES ('2246', '144', 'Ouarzazate', 'ORZ', '1');
INSERT INTO `huannn_zone` VALUES ('2247', '144', 'Oujda', 'OUJ', '1');
INSERT INTO `huannn_zone` VALUES ('2248', '144', 'Rabat-Sale', 'RSA', '1');
INSERT INTO `huannn_zone` VALUES ('2249', '144', 'Safi', 'SAF', '1');
INSERT INTO `huannn_zone` VALUES ('2250', '144', 'Settat', 'SET', '1');
INSERT INTO `huannn_zone` VALUES ('2251', '144', 'Sidi Kacem', 'SKA', '1');
INSERT INTO `huannn_zone` VALUES ('2252', '144', 'Tangier', 'TGR', '1');
INSERT INTO `huannn_zone` VALUES ('2253', '144', 'Tan-Tan', 'TAN', '1');
INSERT INTO `huannn_zone` VALUES ('2254', '144', 'Taounate', 'TAO', '1');
INSERT INTO `huannn_zone` VALUES ('2255', '144', 'Taroudannt', 'TRD', '1');
INSERT INTO `huannn_zone` VALUES ('2256', '144', 'Tata', 'TAT', '1');
INSERT INTO `huannn_zone` VALUES ('2257', '144', 'Taza', 'TAZ', '1');
INSERT INTO `huannn_zone` VALUES ('2258', '144', 'Tetouan', 'TET', '1');
INSERT INTO `huannn_zone` VALUES ('2259', '144', 'Tiznit', 'TIZ', '1');
INSERT INTO `huannn_zone` VALUES ('2260', '144', 'Ad Dakhla', 'ADK', '1');
INSERT INTO `huannn_zone` VALUES ('2261', '144', 'Boujdour', 'BJD', '1');
INSERT INTO `huannn_zone` VALUES ('2262', '144', 'Es Smara', 'ESM', '1');
INSERT INTO `huannn_zone` VALUES ('2263', '145', 'Cabo Delgado', 'CD', '1');
INSERT INTO `huannn_zone` VALUES ('2264', '145', 'Gaza', 'GZ', '1');
INSERT INTO `huannn_zone` VALUES ('2265', '145', 'Inhambane', 'IN', '1');
INSERT INTO `huannn_zone` VALUES ('2266', '145', 'Manica', 'MN', '1');
INSERT INTO `huannn_zone` VALUES ('2267', '145', 'Maputo (city)', 'MC', '1');
INSERT INTO `huannn_zone` VALUES ('2268', '145', 'Maputo', 'MP', '1');
INSERT INTO `huannn_zone` VALUES ('2269', '145', 'Nampula', 'NA', '1');
INSERT INTO `huannn_zone` VALUES ('2270', '145', 'Niassa', 'NI', '1');
INSERT INTO `huannn_zone` VALUES ('2271', '145', 'Sofala', 'SO', '1');
INSERT INTO `huannn_zone` VALUES ('2272', '145', 'Tete', 'TE', '1');
INSERT INTO `huannn_zone` VALUES ('2273', '145', 'Zambezia', 'ZA', '1');
INSERT INTO `huannn_zone` VALUES ('2274', '146', 'Ayeyarwady', 'AY', '1');
INSERT INTO `huannn_zone` VALUES ('2275', '146', 'Bago', 'BG', '1');
INSERT INTO `huannn_zone` VALUES ('2276', '146', 'Magway', 'MG', '1');
INSERT INTO `huannn_zone` VALUES ('2277', '146', 'Mandalay', 'MD', '1');
INSERT INTO `huannn_zone` VALUES ('2278', '146', 'Sagaing', 'SG', '1');
INSERT INTO `huannn_zone` VALUES ('2279', '146', 'Tanintharyi', 'TN', '1');
INSERT INTO `huannn_zone` VALUES ('2280', '146', 'Yangon', 'YG', '1');
INSERT INTO `huannn_zone` VALUES ('2281', '146', 'Chin State', 'CH', '1');
INSERT INTO `huannn_zone` VALUES ('2282', '146', 'Kachin State', 'KC', '1');
INSERT INTO `huannn_zone` VALUES ('2283', '146', 'Kayah State', 'KH', '1');
INSERT INTO `huannn_zone` VALUES ('2284', '146', 'Kayin State', 'KN', '1');
INSERT INTO `huannn_zone` VALUES ('2285', '146', 'Mon State', 'MN', '1');
INSERT INTO `huannn_zone` VALUES ('2286', '146', 'Rakhine State', 'RK', '1');
INSERT INTO `huannn_zone` VALUES ('2287', '146', 'Shan State', 'SH', '1');
INSERT INTO `huannn_zone` VALUES ('2288', '147', 'Caprivi', 'CA', '1');
INSERT INTO `huannn_zone` VALUES ('2289', '147', 'Erongo', 'ER', '1');
INSERT INTO `huannn_zone` VALUES ('2290', '147', 'Hardap', 'HA', '1');
INSERT INTO `huannn_zone` VALUES ('2291', '147', 'Karas', 'KR', '1');
INSERT INTO `huannn_zone` VALUES ('2292', '147', 'Kavango', 'KV', '1');
INSERT INTO `huannn_zone` VALUES ('2293', '147', 'Khomas', 'KH', '1');
INSERT INTO `huannn_zone` VALUES ('2294', '147', 'Kunene', 'KU', '1');
INSERT INTO `huannn_zone` VALUES ('2295', '147', 'Ohangwena', 'OW', '1');
INSERT INTO `huannn_zone` VALUES ('2296', '147', 'Omaheke', 'OK', '1');
INSERT INTO `huannn_zone` VALUES ('2297', '147', 'Omusati', 'OT', '1');
INSERT INTO `huannn_zone` VALUES ('2298', '147', 'Oshana', 'ON', '1');
INSERT INTO `huannn_zone` VALUES ('2299', '147', 'Oshikoto', 'OO', '1');
INSERT INTO `huannn_zone` VALUES ('2300', '147', 'Otjozondjupa', 'OJ', '1');
INSERT INTO `huannn_zone` VALUES ('2301', '148', 'Aiwo', 'AO', '1');
INSERT INTO `huannn_zone` VALUES ('2302', '148', 'Anabar', 'AA', '1');
INSERT INTO `huannn_zone` VALUES ('2303', '148', 'Anetan', 'AT', '1');
INSERT INTO `huannn_zone` VALUES ('2304', '148', 'Anibare', 'AI', '1');
INSERT INTO `huannn_zone` VALUES ('2305', '148', 'Baiti', 'BA', '1');
INSERT INTO `huannn_zone` VALUES ('2306', '148', 'Boe', 'BO', '1');
INSERT INTO `huannn_zone` VALUES ('2307', '148', 'Buada', 'BU', '1');
INSERT INTO `huannn_zone` VALUES ('2308', '148', 'Denigomodu', 'DE', '1');
INSERT INTO `huannn_zone` VALUES ('2309', '148', 'Ewa', 'EW', '1');
INSERT INTO `huannn_zone` VALUES ('2310', '148', 'Ijuw', 'IJ', '1');
INSERT INTO `huannn_zone` VALUES ('2311', '148', 'Meneng', 'ME', '1');
INSERT INTO `huannn_zone` VALUES ('2312', '148', 'Nibok', 'NI', '1');
INSERT INTO `huannn_zone` VALUES ('2313', '148', 'Uaboe', 'UA', '1');
INSERT INTO `huannn_zone` VALUES ('2314', '148', 'Yaren', 'YA', '1');
INSERT INTO `huannn_zone` VALUES ('2315', '149', 'Bagmati', 'BA', '1');
INSERT INTO `huannn_zone` VALUES ('2316', '149', 'Bheri', 'BH', '1');
INSERT INTO `huannn_zone` VALUES ('2317', '149', 'Dhawalagiri', 'DH', '1');
INSERT INTO `huannn_zone` VALUES ('2318', '149', 'Gandaki', 'GA', '1');
INSERT INTO `huannn_zone` VALUES ('2319', '149', 'Janakpur', 'JA', '1');
INSERT INTO `huannn_zone` VALUES ('2320', '149', 'Karnali', 'KA', '1');
INSERT INTO `huannn_zone` VALUES ('2321', '149', 'Kosi', 'KO', '1');
INSERT INTO `huannn_zone` VALUES ('2322', '149', 'Lumbini', 'LU', '1');
INSERT INTO `huannn_zone` VALUES ('2323', '149', 'Mahakali', 'MA', '1');
INSERT INTO `huannn_zone` VALUES ('2324', '149', 'Mechi', 'ME', '1');
INSERT INTO `huannn_zone` VALUES ('2325', '149', 'Narayani', 'NA', '1');
INSERT INTO `huannn_zone` VALUES ('2326', '149', 'Rapti', 'RA', '1');
INSERT INTO `huannn_zone` VALUES ('2327', '149', 'Sagarmatha', 'SA', '1');
INSERT INTO `huannn_zone` VALUES ('2328', '149', 'Seti', 'SE', '1');
INSERT INTO `huannn_zone` VALUES ('2329', '150', 'Drenthe', 'DR', '1');
INSERT INTO `huannn_zone` VALUES ('2330', '150', 'Flevoland', 'FL', '1');
INSERT INTO `huannn_zone` VALUES ('2331', '150', 'Friesland', 'FR', '1');
INSERT INTO `huannn_zone` VALUES ('2332', '150', 'Gelderland', 'GE', '1');
INSERT INTO `huannn_zone` VALUES ('2333', '150', 'Groningen', 'GR', '1');
INSERT INTO `huannn_zone` VALUES ('2334', '150', 'Limburg', 'LI', '1');
INSERT INTO `huannn_zone` VALUES ('2335', '150', 'Noord Brabant', 'NB', '1');
INSERT INTO `huannn_zone` VALUES ('2336', '150', 'Noord Holland', 'NH', '1');
INSERT INTO `huannn_zone` VALUES ('2337', '150', 'Overijssel', 'OV', '1');
INSERT INTO `huannn_zone` VALUES ('2338', '150', 'Utrecht', 'UT', '1');
INSERT INTO `huannn_zone` VALUES ('2339', '150', 'Zeeland', 'ZE', '1');
INSERT INTO `huannn_zone` VALUES ('2340', '150', 'Zuid Holland', 'ZH', '1');
INSERT INTO `huannn_zone` VALUES ('2341', '152', 'Iles Loyaute', 'L', '1');
INSERT INTO `huannn_zone` VALUES ('2342', '152', 'Nord', 'N', '1');
INSERT INTO `huannn_zone` VALUES ('2343', '152', 'Sud', 'S', '1');
INSERT INTO `huannn_zone` VALUES ('2344', '153', 'Auckland', 'AUK', '1');
INSERT INTO `huannn_zone` VALUES ('2345', '153', 'Bay of Plenty', 'BOP', '1');
INSERT INTO `huannn_zone` VALUES ('2346', '153', 'Canterbury', 'CAN', '1');
INSERT INTO `huannn_zone` VALUES ('2347', '153', 'Coromandel', 'COR', '1');
INSERT INTO `huannn_zone` VALUES ('2348', '153', 'Gisborne', 'GIS', '1');
INSERT INTO `huannn_zone` VALUES ('2349', '153', 'Fiordland', 'FIO', '1');
INSERT INTO `huannn_zone` VALUES ('2350', '153', 'Hawke\'s Bay', 'HKB', '1');
INSERT INTO `huannn_zone` VALUES ('2351', '153', 'Marlborough', 'MBH', '1');
INSERT INTO `huannn_zone` VALUES ('2352', '153', 'Manawatu-Wanganui', 'MWT', '1');
INSERT INTO `huannn_zone` VALUES ('2353', '153', 'Mt Cook-Mackenzie', 'MCM', '1');
INSERT INTO `huannn_zone` VALUES ('2354', '153', 'Nelson', 'NSN', '1');
INSERT INTO `huannn_zone` VALUES ('2355', '153', 'Northland', 'NTL', '1');
INSERT INTO `huannn_zone` VALUES ('2356', '153', 'Otago', 'OTA', '1');
INSERT INTO `huannn_zone` VALUES ('2357', '153', 'Southland', 'STL', '1');
INSERT INTO `huannn_zone` VALUES ('2358', '153', 'Taranaki', 'TKI', '1');
INSERT INTO `huannn_zone` VALUES ('2359', '153', 'Wellington', 'WGN', '1');
INSERT INTO `huannn_zone` VALUES ('2360', '153', 'Waikato', 'WKO', '1');
INSERT INTO `huannn_zone` VALUES ('2361', '153', 'Wairarapa', 'WAI', '1');
INSERT INTO `huannn_zone` VALUES ('2362', '153', 'West Coast', 'WTC', '1');
INSERT INTO `huannn_zone` VALUES ('2363', '154', 'Atlantico Norte', 'AN', '1');
INSERT INTO `huannn_zone` VALUES ('2364', '154', 'Atlantico Sur', 'AS', '1');
INSERT INTO `huannn_zone` VALUES ('2365', '154', 'Boaco', 'BO', '1');
INSERT INTO `huannn_zone` VALUES ('2366', '154', 'Carazo', 'CA', '1');
INSERT INTO `huannn_zone` VALUES ('2367', '154', 'Chinandega', 'CI', '1');
INSERT INTO `huannn_zone` VALUES ('2368', '154', 'Chontales', 'CO', '1');
INSERT INTO `huannn_zone` VALUES ('2369', '154', 'Esteli', 'ES', '1');
INSERT INTO `huannn_zone` VALUES ('2370', '154', 'Granada', 'GR', '1');
INSERT INTO `huannn_zone` VALUES ('2371', '154', 'Jinotega', 'JI', '1');
INSERT INTO `huannn_zone` VALUES ('2372', '154', 'Leon', 'LE', '1');
INSERT INTO `huannn_zone` VALUES ('2373', '154', 'Madriz', 'MD', '1');
INSERT INTO `huannn_zone` VALUES ('2374', '154', 'Managua', 'MN', '1');
INSERT INTO `huannn_zone` VALUES ('2375', '154', 'Masaya', 'MS', '1');
INSERT INTO `huannn_zone` VALUES ('2376', '154', 'Matagalpa', 'MT', '1');
INSERT INTO `huannn_zone` VALUES ('2377', '154', 'Nuevo Segovia', 'NS', '1');
INSERT INTO `huannn_zone` VALUES ('2378', '154', 'Rio San Juan', 'RS', '1');
INSERT INTO `huannn_zone` VALUES ('2379', '154', 'Rivas', 'RI', '1');
INSERT INTO `huannn_zone` VALUES ('2380', '155', 'Agadez', 'AG', '1');
INSERT INTO `huannn_zone` VALUES ('2381', '155', 'Diffa', 'DF', '1');
INSERT INTO `huannn_zone` VALUES ('2382', '155', 'Dosso', 'DS', '1');
INSERT INTO `huannn_zone` VALUES ('2383', '155', 'Maradi', 'MA', '1');
INSERT INTO `huannn_zone` VALUES ('2384', '155', 'Niamey', 'NM', '1');
INSERT INTO `huannn_zone` VALUES ('2385', '155', 'Tahoua', 'TH', '1');
INSERT INTO `huannn_zone` VALUES ('2386', '155', 'Tillaberi', 'TL', '1');
INSERT INTO `huannn_zone` VALUES ('2387', '155', 'Zinder', 'ZD', '1');
INSERT INTO `huannn_zone` VALUES ('2388', '156', 'Abia', 'AB', '1');
INSERT INTO `huannn_zone` VALUES ('2389', '156', 'Abuja Federal Capital Territory', 'CT', '1');
INSERT INTO `huannn_zone` VALUES ('2390', '156', 'Adamawa', 'AD', '1');
INSERT INTO `huannn_zone` VALUES ('2391', '156', 'Akwa Ibom', 'AK', '1');
INSERT INTO `huannn_zone` VALUES ('2392', '156', 'Anambra', 'AN', '1');
INSERT INTO `huannn_zone` VALUES ('2393', '156', 'Bauchi', 'BC', '1');
INSERT INTO `huannn_zone` VALUES ('2394', '156', 'Bayelsa', 'BY', '1');
INSERT INTO `huannn_zone` VALUES ('2395', '156', 'Benue', 'BN', '1');
INSERT INTO `huannn_zone` VALUES ('2396', '156', 'Borno', 'BO', '1');
INSERT INTO `huannn_zone` VALUES ('2397', '156', 'Cross River', 'CR', '1');
INSERT INTO `huannn_zone` VALUES ('2398', '156', 'Delta', 'DE', '1');
INSERT INTO `huannn_zone` VALUES ('2399', '156', 'Ebonyi', 'EB', '1');
INSERT INTO `huannn_zone` VALUES ('2400', '156', 'Edo', 'ED', '1');
INSERT INTO `huannn_zone` VALUES ('2401', '156', 'Ekiti', 'EK', '1');
INSERT INTO `huannn_zone` VALUES ('2402', '156', 'Enugu', 'EN', '1');
INSERT INTO `huannn_zone` VALUES ('2403', '156', 'Gombe', 'GO', '1');
INSERT INTO `huannn_zone` VALUES ('2404', '156', 'Imo', 'IM', '1');
INSERT INTO `huannn_zone` VALUES ('2405', '156', 'Jigawa', 'JI', '1');
INSERT INTO `huannn_zone` VALUES ('2406', '156', 'Kaduna', 'KD', '1');
INSERT INTO `huannn_zone` VALUES ('2407', '156', 'Kano', 'KN', '1');
INSERT INTO `huannn_zone` VALUES ('2408', '156', 'Katsina', 'KT', '1');
INSERT INTO `huannn_zone` VALUES ('2409', '156', 'Kebbi', 'KE', '1');
INSERT INTO `huannn_zone` VALUES ('2410', '156', 'Kogi', 'KO', '1');
INSERT INTO `huannn_zone` VALUES ('2411', '156', 'Kwara', 'KW', '1');
INSERT INTO `huannn_zone` VALUES ('2412', '156', 'Lagos', 'LA', '1');
INSERT INTO `huannn_zone` VALUES ('2413', '156', 'Nassarawa', 'NA', '1');
INSERT INTO `huannn_zone` VALUES ('2414', '156', 'Niger', 'NI', '1');
INSERT INTO `huannn_zone` VALUES ('2415', '156', 'Ogun', 'OG', '1');
INSERT INTO `huannn_zone` VALUES ('2416', '156', 'Ondo', 'ONG', '1');
INSERT INTO `huannn_zone` VALUES ('2417', '156', 'Osun', 'OS', '1');
INSERT INTO `huannn_zone` VALUES ('2418', '156', 'Oyo', 'OY', '1');
INSERT INTO `huannn_zone` VALUES ('2419', '156', 'Plateau', 'PL', '1');
INSERT INTO `huannn_zone` VALUES ('2420', '156', 'Rivers', 'RI', '1');
INSERT INTO `huannn_zone` VALUES ('2421', '156', 'Sokoto', 'SO', '1');
INSERT INTO `huannn_zone` VALUES ('2422', '156', 'Taraba', 'TA', '1');
INSERT INTO `huannn_zone` VALUES ('2423', '156', 'Yobe', 'YO', '1');
INSERT INTO `huannn_zone` VALUES ('2424', '156', 'Zamfara', 'ZA', '1');
INSERT INTO `huannn_zone` VALUES ('2425', '159', 'Northern Islands', 'N', '1');
INSERT INTO `huannn_zone` VALUES ('2426', '159', 'Rota', 'R', '1');
INSERT INTO `huannn_zone` VALUES ('2427', '159', 'Saipan', 'S', '1');
INSERT INTO `huannn_zone` VALUES ('2428', '159', 'Tinian', 'T', '1');
INSERT INTO `huannn_zone` VALUES ('2429', '160', 'Akershus', 'AK', '1');
INSERT INTO `huannn_zone` VALUES ('2430', '160', 'Aust-Agder', 'AA', '1');
INSERT INTO `huannn_zone` VALUES ('2431', '160', 'Buskerud', 'BU', '1');
INSERT INTO `huannn_zone` VALUES ('2432', '160', 'Finnmark', 'FM', '1');
INSERT INTO `huannn_zone` VALUES ('2433', '160', 'Hedmark', 'HM', '1');
INSERT INTO `huannn_zone` VALUES ('2434', '160', 'Hordaland', 'HL', '1');
INSERT INTO `huannn_zone` VALUES ('2435', '160', 'More og Romdal', 'MR', '1');
INSERT INTO `huannn_zone` VALUES ('2436', '160', 'Nord-Trondelag', 'NT', '1');
INSERT INTO `huannn_zone` VALUES ('2437', '160', 'Nordland', 'NL', '1');
INSERT INTO `huannn_zone` VALUES ('2438', '160', 'Ostfold', 'OF', '1');
INSERT INTO `huannn_zone` VALUES ('2439', '160', 'Oppland', 'OP', '1');
INSERT INTO `huannn_zone` VALUES ('2440', '160', 'Oslo', 'OL', '1');
INSERT INTO `huannn_zone` VALUES ('2441', '160', 'Rogaland', 'RL', '1');
INSERT INTO `huannn_zone` VALUES ('2442', '160', 'Sor-Trondelag', 'ST', '1');
INSERT INTO `huannn_zone` VALUES ('2443', '160', 'Sogn og Fjordane', 'SJ', '1');
INSERT INTO `huannn_zone` VALUES ('2444', '160', 'Svalbard', 'SV', '1');
INSERT INTO `huannn_zone` VALUES ('2445', '160', 'Telemark', 'TM', '1');
INSERT INTO `huannn_zone` VALUES ('2446', '160', 'Troms', 'TR', '1');
INSERT INTO `huannn_zone` VALUES ('2447', '160', 'Vest-Agder', 'VA', '1');
INSERT INTO `huannn_zone` VALUES ('2448', '160', 'Vestfold', 'VF', '1');
INSERT INTO `huannn_zone` VALUES ('2449', '161', 'Ad Dakhiliyah', 'DA', '1');
INSERT INTO `huannn_zone` VALUES ('2450', '161', 'Al Batinah', 'BA', '1');
INSERT INTO `huannn_zone` VALUES ('2451', '161', 'Al Wusta', 'WU', '1');
INSERT INTO `huannn_zone` VALUES ('2452', '161', 'Ash Sharqiyah', 'SH', '1');
INSERT INTO `huannn_zone` VALUES ('2453', '161', 'Az Zahirah', 'ZA', '1');
INSERT INTO `huannn_zone` VALUES ('2454', '161', 'Masqat', 'MA', '1');
INSERT INTO `huannn_zone` VALUES ('2455', '161', 'Musandam', 'MU', '1');
INSERT INTO `huannn_zone` VALUES ('2456', '161', 'Zufar', 'ZU', '1');
INSERT INTO `huannn_zone` VALUES ('2457', '162', 'Balochistan', 'B', '1');
INSERT INTO `huannn_zone` VALUES ('2458', '162', 'Federally Administered Tribal Areas', 'T', '1');
INSERT INTO `huannn_zone` VALUES ('2459', '162', 'Islamabad Capital Territory', 'I', '1');
INSERT INTO `huannn_zone` VALUES ('2460', '162', 'North-West Frontier', 'N', '1');
INSERT INTO `huannn_zone` VALUES ('2461', '162', 'Punjab', 'P', '1');
INSERT INTO `huannn_zone` VALUES ('2462', '162', 'Sindh', 'S', '1');
INSERT INTO `huannn_zone` VALUES ('2463', '163', 'Aimeliik', 'AM', '1');
INSERT INTO `huannn_zone` VALUES ('2464', '163', 'Airai', 'AR', '1');
INSERT INTO `huannn_zone` VALUES ('2465', '163', 'Angaur', 'AN', '1');
INSERT INTO `huannn_zone` VALUES ('2466', '163', 'Hatohobei', 'HA', '1');
INSERT INTO `huannn_zone` VALUES ('2467', '163', 'Kayangel', 'KA', '1');
INSERT INTO `huannn_zone` VALUES ('2468', '163', 'Koror', 'KO', '1');
INSERT INTO `huannn_zone` VALUES ('2469', '163', 'Melekeok', 'ME', '1');
INSERT INTO `huannn_zone` VALUES ('2470', '163', 'Ngaraard', 'NA', '1');
INSERT INTO `huannn_zone` VALUES ('2471', '163', 'Ngarchelong', 'NG', '1');
INSERT INTO `huannn_zone` VALUES ('2472', '163', 'Ngardmau', 'ND', '1');
INSERT INTO `huannn_zone` VALUES ('2473', '163', 'Ngatpang', 'NT', '1');
INSERT INTO `huannn_zone` VALUES ('2474', '163', 'Ngchesar', 'NC', '1');
INSERT INTO `huannn_zone` VALUES ('2475', '163', 'Ngeremlengui', 'NR', '1');
INSERT INTO `huannn_zone` VALUES ('2476', '163', 'Ngiwal', 'NW', '1');
INSERT INTO `huannn_zone` VALUES ('2477', '163', 'Peleliu', 'PE', '1');
INSERT INTO `huannn_zone` VALUES ('2478', '163', 'Sonsorol', 'SO', '1');
INSERT INTO `huannn_zone` VALUES ('2479', '164', 'Bocas del Toro', 'BT', '1');
INSERT INTO `huannn_zone` VALUES ('2480', '164', 'Chiriqui', 'CH', '1');
INSERT INTO `huannn_zone` VALUES ('2481', '164', 'Cocle', 'CC', '1');
INSERT INTO `huannn_zone` VALUES ('2482', '164', 'Colon', 'CL', '1');
INSERT INTO `huannn_zone` VALUES ('2483', '164', 'Darien', 'DA', '1');
INSERT INTO `huannn_zone` VALUES ('2484', '164', 'Herrera', 'HE', '1');
INSERT INTO `huannn_zone` VALUES ('2485', '164', 'Los Santos', 'LS', '1');
INSERT INTO `huannn_zone` VALUES ('2486', '164', 'Panama', 'PA', '1');
INSERT INTO `huannn_zone` VALUES ('2487', '164', 'San Blas', 'SB', '1');
INSERT INTO `huannn_zone` VALUES ('2488', '164', 'Veraguas', 'VG', '1');
INSERT INTO `huannn_zone` VALUES ('2489', '165', 'Bougainville', 'BV', '1');
INSERT INTO `huannn_zone` VALUES ('2490', '165', 'Central', 'CE', '1');
INSERT INTO `huannn_zone` VALUES ('2491', '165', 'Chimbu', 'CH', '1');
INSERT INTO `huannn_zone` VALUES ('2492', '165', 'Eastern Highlands', 'EH', '1');
INSERT INTO `huannn_zone` VALUES ('2493', '165', 'East New Britain', 'EB', '1');
INSERT INTO `huannn_zone` VALUES ('2494', '165', 'East Sepik', 'ES', '1');
INSERT INTO `huannn_zone` VALUES ('2495', '165', 'Enga', 'EN', '1');
INSERT INTO `huannn_zone` VALUES ('2496', '165', 'Gulf', 'GU', '1');
INSERT INTO `huannn_zone` VALUES ('2497', '165', 'Madang', 'MD', '1');
INSERT INTO `huannn_zone` VALUES ('2498', '165', 'Manus', 'MN', '1');
INSERT INTO `huannn_zone` VALUES ('2499', '165', 'Milne Bay', 'MB', '1');
INSERT INTO `huannn_zone` VALUES ('2500', '165', 'Morobe', 'MR', '1');
INSERT INTO `huannn_zone` VALUES ('2501', '165', 'National Capital', 'NC', '1');
INSERT INTO `huannn_zone` VALUES ('2502', '165', 'New Ireland', 'NI', '1');
INSERT INTO `huannn_zone` VALUES ('2503', '165', 'Northern', 'NO', '1');
INSERT INTO `huannn_zone` VALUES ('2504', '165', 'Sandaun', 'SA', '1');
INSERT INTO `huannn_zone` VALUES ('2505', '165', 'Southern Highlands', 'SH', '1');
INSERT INTO `huannn_zone` VALUES ('2506', '165', 'Western', 'WE', '1');
INSERT INTO `huannn_zone` VALUES ('2507', '165', 'Western Highlands', 'WH', '1');
INSERT INTO `huannn_zone` VALUES ('2508', '165', 'West New Britain', 'WB', '1');
INSERT INTO `huannn_zone` VALUES ('2509', '166', 'Alto Paraguay', 'AG', '1');
INSERT INTO `huannn_zone` VALUES ('2510', '166', 'Alto Parana', 'AN', '1');
INSERT INTO `huannn_zone` VALUES ('2511', '166', 'Amambay', 'AM', '1');
INSERT INTO `huannn_zone` VALUES ('2512', '166', 'Asuncion', 'AS', '1');
INSERT INTO `huannn_zone` VALUES ('2513', '166', 'Boqueron', 'BO', '1');
INSERT INTO `huannn_zone` VALUES ('2514', '166', 'Caaguazu', 'CG', '1');
INSERT INTO `huannn_zone` VALUES ('2515', '166', 'Caazapa', 'CZ', '1');
INSERT INTO `huannn_zone` VALUES ('2516', '166', 'Canindeyu', 'CN', '1');
INSERT INTO `huannn_zone` VALUES ('2517', '166', 'Central', 'CE', '1');
INSERT INTO `huannn_zone` VALUES ('2518', '166', 'Concepcion', 'CC', '1');
INSERT INTO `huannn_zone` VALUES ('2519', '166', 'Cordillera', 'CD', '1');
INSERT INTO `huannn_zone` VALUES ('2520', '166', 'Guaira', 'GU', '1');
INSERT INTO `huannn_zone` VALUES ('2521', '166', 'Itapua', 'IT', '1');
INSERT INTO `huannn_zone` VALUES ('2522', '166', 'Misiones', 'MI', '1');
INSERT INTO `huannn_zone` VALUES ('2523', '166', 'Neembucu', 'NE', '1');
INSERT INTO `huannn_zone` VALUES ('2524', '166', 'Paraguari', 'PA', '1');
INSERT INTO `huannn_zone` VALUES ('2525', '166', 'Presidente Hayes', 'PH', '1');
INSERT INTO `huannn_zone` VALUES ('2526', '166', 'San Pedro', 'SP', '1');
INSERT INTO `huannn_zone` VALUES ('2527', '167', 'Amazonas', 'AM', '1');
INSERT INTO `huannn_zone` VALUES ('2528', '167', 'Ancash', 'AN', '1');
INSERT INTO `huannn_zone` VALUES ('2529', '167', 'Apurimac', 'AP', '1');
INSERT INTO `huannn_zone` VALUES ('2530', '167', 'Arequipa', 'AR', '1');
INSERT INTO `huannn_zone` VALUES ('2531', '167', 'Ayacucho', 'AY', '1');
INSERT INTO `huannn_zone` VALUES ('2532', '167', 'Cajamarca', 'CJ', '1');
INSERT INTO `huannn_zone` VALUES ('2533', '167', 'Callao', 'CL', '1');
INSERT INTO `huannn_zone` VALUES ('2534', '167', 'Cusco', 'CU', '1');
INSERT INTO `huannn_zone` VALUES ('2535', '167', 'Huancavelica', 'HV', '1');
INSERT INTO `huannn_zone` VALUES ('2536', '167', 'Huanuco', 'HO', '1');
INSERT INTO `huannn_zone` VALUES ('2537', '167', 'Ica', 'IC', '1');
INSERT INTO `huannn_zone` VALUES ('2538', '167', 'Junin', 'JU', '1');
INSERT INTO `huannn_zone` VALUES ('2539', '167', 'La Libertad', 'LD', '1');
INSERT INTO `huannn_zone` VALUES ('2540', '167', 'Lambayeque', 'LY', '1');
INSERT INTO `huannn_zone` VALUES ('2541', '167', 'Lima', 'LI', '1');
INSERT INTO `huannn_zone` VALUES ('2542', '167', 'Loreto', 'LO', '1');
INSERT INTO `huannn_zone` VALUES ('2543', '167', 'Madre de Dios', 'MD', '1');
INSERT INTO `huannn_zone` VALUES ('2544', '167', 'Moquegua', 'MO', '1');
INSERT INTO `huannn_zone` VALUES ('2545', '167', 'Pasco', 'PA', '1');
INSERT INTO `huannn_zone` VALUES ('2546', '167', 'Piura', 'PI', '1');
INSERT INTO `huannn_zone` VALUES ('2547', '167', 'Puno', 'PU', '1');
INSERT INTO `huannn_zone` VALUES ('2548', '167', 'San Martin', 'SM', '1');
INSERT INTO `huannn_zone` VALUES ('2549', '167', 'Tacna', 'TA', '1');
INSERT INTO `huannn_zone` VALUES ('2550', '167', 'Tumbes', 'TU', '1');
INSERT INTO `huannn_zone` VALUES ('2551', '167', 'Ucayali', 'UC', '1');
INSERT INTO `huannn_zone` VALUES ('2552', '168', 'Abra', 'ABR', '1');
INSERT INTO `huannn_zone` VALUES ('2553', '168', 'Agusan del Norte', 'ANO', '1');
INSERT INTO `huannn_zone` VALUES ('2554', '168', 'Agusan del Sur', 'ASU', '1');
INSERT INTO `huannn_zone` VALUES ('2555', '168', 'Aklan', 'AKL', '1');
INSERT INTO `huannn_zone` VALUES ('2556', '168', 'Albay', 'ALB', '1');
INSERT INTO `huannn_zone` VALUES ('2557', '168', 'Antique', 'ANT', '1');
INSERT INTO `huannn_zone` VALUES ('2558', '168', 'Apayao', 'APY', '1');
INSERT INTO `huannn_zone` VALUES ('2559', '168', 'Aurora', 'AUR', '1');
INSERT INTO `huannn_zone` VALUES ('2560', '168', 'Basilan', 'BAS', '1');
INSERT INTO `huannn_zone` VALUES ('2561', '168', 'Bataan', 'BTA', '1');
INSERT INTO `huannn_zone` VALUES ('2562', '168', 'Batanes', 'BTE', '1');
INSERT INTO `huannn_zone` VALUES ('2563', '168', 'Batangas', 'BTG', '1');
INSERT INTO `huannn_zone` VALUES ('2564', '168', 'Biliran', 'BLR', '1');
INSERT INTO `huannn_zone` VALUES ('2565', '168', 'Benguet', 'BEN', '1');
INSERT INTO `huannn_zone` VALUES ('2566', '168', 'Bohol', 'BOL', '1');
INSERT INTO `huannn_zone` VALUES ('2567', '168', 'Bukidnon', 'BUK', '1');
INSERT INTO `huannn_zone` VALUES ('2568', '168', 'Bulacan', 'BUL', '1');
INSERT INTO `huannn_zone` VALUES ('2569', '168', 'Cagayan', 'CAG', '1');
INSERT INTO `huannn_zone` VALUES ('2570', '168', 'Camarines Norte', 'CNO', '1');
INSERT INTO `huannn_zone` VALUES ('2571', '168', 'Camarines Sur', 'CSU', '1');
INSERT INTO `huannn_zone` VALUES ('2572', '168', 'Camiguin', 'CAM', '1');
INSERT INTO `huannn_zone` VALUES ('2573', '168', 'Capiz', 'CAP', '1');
INSERT INTO `huannn_zone` VALUES ('2574', '168', 'Catanduanes', 'CAT', '1');
INSERT INTO `huannn_zone` VALUES ('2575', '168', 'Cavite', 'CAV', '1');
INSERT INTO `huannn_zone` VALUES ('2576', '168', 'Cebu', 'CEB', '1');
INSERT INTO `huannn_zone` VALUES ('2577', '168', 'Compostela', 'CMP', '1');
INSERT INTO `huannn_zone` VALUES ('2578', '168', 'Davao del Norte', 'DNO', '1');
INSERT INTO `huannn_zone` VALUES ('2579', '168', 'Davao del Sur', 'DSU', '1');
INSERT INTO `huannn_zone` VALUES ('2580', '168', 'Davao Oriental', 'DOR', '1');
INSERT INTO `huannn_zone` VALUES ('2581', '168', 'Eastern Samar', 'ESA', '1');
INSERT INTO `huannn_zone` VALUES ('2582', '168', 'Guimaras', 'GUI', '1');
INSERT INTO `huannn_zone` VALUES ('2583', '168', 'Ifugao', 'IFU', '1');
INSERT INTO `huannn_zone` VALUES ('2584', '168', 'Ilocos Norte', 'INO', '1');
INSERT INTO `huannn_zone` VALUES ('2585', '168', 'Ilocos Sur', 'ISU', '1');
INSERT INTO `huannn_zone` VALUES ('2586', '168', 'Iloilo', 'ILO', '1');
INSERT INTO `huannn_zone` VALUES ('2587', '168', 'Isabela', 'ISA', '1');
INSERT INTO `huannn_zone` VALUES ('2588', '168', 'Kalinga', 'KAL', '1');
INSERT INTO `huannn_zone` VALUES ('2589', '168', 'Laguna', 'LAG', '1');
INSERT INTO `huannn_zone` VALUES ('2590', '168', 'Lanao del Norte', 'LNO', '1');
INSERT INTO `huannn_zone` VALUES ('2591', '168', 'Lanao del Sur', 'LSU', '1');
INSERT INTO `huannn_zone` VALUES ('2592', '168', 'La Union', 'UNI', '1');
INSERT INTO `huannn_zone` VALUES ('2593', '168', 'Leyte', 'LEY', '1');
INSERT INTO `huannn_zone` VALUES ('2594', '168', 'Maguindanao', 'MAG', '1');
INSERT INTO `huannn_zone` VALUES ('2595', '168', 'Marinduque', 'MRN', '1');
INSERT INTO `huannn_zone` VALUES ('2596', '168', 'Masbate', 'MSB', '1');
INSERT INTO `huannn_zone` VALUES ('2597', '168', 'Mindoro Occidental', 'MIC', '1');
INSERT INTO `huannn_zone` VALUES ('2598', '168', 'Mindoro Oriental', 'MIR', '1');
INSERT INTO `huannn_zone` VALUES ('2599', '168', 'Misamis Occidental', 'MSC', '1');
INSERT INTO `huannn_zone` VALUES ('2600', '168', 'Misamis Oriental', 'MOR', '1');
INSERT INTO `huannn_zone` VALUES ('2601', '168', 'Mountain', 'MOP', '1');
INSERT INTO `huannn_zone` VALUES ('2602', '168', 'Negros Occidental', 'NOC', '1');
INSERT INTO `huannn_zone` VALUES ('2603', '168', 'Negros Oriental', 'NOR', '1');
INSERT INTO `huannn_zone` VALUES ('2604', '168', 'North Cotabato', 'NCT', '1');
INSERT INTO `huannn_zone` VALUES ('2605', '168', 'Northern Samar', 'NSM', '1');
INSERT INTO `huannn_zone` VALUES ('2606', '168', 'Nueva Ecija', 'NEC', '1');
INSERT INTO `huannn_zone` VALUES ('2607', '168', 'Nueva Vizcaya', 'NVZ', '1');
INSERT INTO `huannn_zone` VALUES ('2608', '168', 'Palawan', 'PLW', '1');
INSERT INTO `huannn_zone` VALUES ('2609', '168', 'Pampanga', 'PMP', '1');
INSERT INTO `huannn_zone` VALUES ('2610', '168', 'Pangasinan', 'PNG', '1');
INSERT INTO `huannn_zone` VALUES ('2611', '168', 'Quezon', 'QZN', '1');
INSERT INTO `huannn_zone` VALUES ('2612', '168', 'Quirino', 'QRN', '1');
INSERT INTO `huannn_zone` VALUES ('2613', '168', 'Rizal', 'RIZ', '1');
INSERT INTO `huannn_zone` VALUES ('2614', '168', 'Romblon', 'ROM', '1');
INSERT INTO `huannn_zone` VALUES ('2615', '168', 'Samar', 'SMR', '1');
INSERT INTO `huannn_zone` VALUES ('2616', '168', 'Sarangani', 'SRG', '1');
INSERT INTO `huannn_zone` VALUES ('2617', '168', 'Siquijor', 'SQJ', '1');
INSERT INTO `huannn_zone` VALUES ('2618', '168', 'Sorsogon', 'SRS', '1');
INSERT INTO `huannn_zone` VALUES ('2619', '168', 'South Cotabato', 'SCO', '1');
INSERT INTO `huannn_zone` VALUES ('2620', '168', 'Southern Leyte', 'SLE', '1');
INSERT INTO `huannn_zone` VALUES ('2621', '168', 'Sultan Kudarat', 'SKU', '1');
INSERT INTO `huannn_zone` VALUES ('2622', '168', 'Sulu', 'SLU', '1');
INSERT INTO `huannn_zone` VALUES ('2623', '168', 'Surigao del Norte', 'SNO', '1');
INSERT INTO `huannn_zone` VALUES ('2624', '168', 'Surigao del Sur', 'SSU', '1');
INSERT INTO `huannn_zone` VALUES ('2625', '168', 'Tarlac', 'TAR', '1');
INSERT INTO `huannn_zone` VALUES ('2626', '168', 'Tawi-Tawi', 'TAW', '1');
INSERT INTO `huannn_zone` VALUES ('2627', '168', 'Zambales', 'ZBL', '1');
INSERT INTO `huannn_zone` VALUES ('2628', '168', 'Zamboanga del Norte', 'ZNO', '1');
INSERT INTO `huannn_zone` VALUES ('2629', '168', 'Zamboanga del Sur', 'ZSU', '1');
INSERT INTO `huannn_zone` VALUES ('2630', '168', 'Zamboanga Sibugay', 'ZSI', '1');
INSERT INTO `huannn_zone` VALUES ('2631', '170', 'Dolnoslaskie', 'DO', '1');
INSERT INTO `huannn_zone` VALUES ('2632', '170', 'Kujawsko-Pomorskie', 'KP', '1');
INSERT INTO `huannn_zone` VALUES ('2633', '170', 'Lodzkie', 'LO', '1');
INSERT INTO `huannn_zone` VALUES ('2634', '170', 'Lubelskie', 'LL', '1');
INSERT INTO `huannn_zone` VALUES ('2635', '170', 'Lubuskie', 'LU', '1');
INSERT INTO `huannn_zone` VALUES ('2636', '170', 'Malopolskie', 'ML', '1');
INSERT INTO `huannn_zone` VALUES ('2637', '170', 'Mazowieckie', 'MZ', '1');
INSERT INTO `huannn_zone` VALUES ('2638', '170', 'Opolskie', 'OP', '1');
INSERT INTO `huannn_zone` VALUES ('2639', '170', 'Podkarpackie', 'PP', '1');
INSERT INTO `huannn_zone` VALUES ('2640', '170', 'Podlaskie', 'PL', '1');
INSERT INTO `huannn_zone` VALUES ('2641', '170', 'Pomorskie', 'PM', '1');
INSERT INTO `huannn_zone` VALUES ('2642', '170', 'Slaskie', 'SL', '1');
INSERT INTO `huannn_zone` VALUES ('2643', '170', 'Swietokrzyskie', 'SW', '1');
INSERT INTO `huannn_zone` VALUES ('2644', '170', 'Warminsko-Mazurskie', 'WM', '1');
INSERT INTO `huannn_zone` VALUES ('2645', '170', 'Wielkopolskie', 'WP', '1');
INSERT INTO `huannn_zone` VALUES ('2646', '170', 'Zachodniopomorskie', 'ZA', '1');
INSERT INTO `huannn_zone` VALUES ('2647', '198', 'Saint Pierre', 'P', '1');
INSERT INTO `huannn_zone` VALUES ('2648', '198', 'Miquelon', 'M', '1');
INSERT INTO `huannn_zone` VALUES ('2649', '171', 'A&ccedil;ores', 'AC', '1');
INSERT INTO `huannn_zone` VALUES ('2650', '171', 'Aveiro', 'AV', '1');
INSERT INTO `huannn_zone` VALUES ('2651', '171', 'Beja', 'BE', '1');
INSERT INTO `huannn_zone` VALUES ('2652', '171', 'Braga', 'BR', '1');
INSERT INTO `huannn_zone` VALUES ('2653', '171', 'Bragan&ccedil;a', 'BA', '1');
INSERT INTO `huannn_zone` VALUES ('2654', '171', 'Castelo Branco', 'CB', '1');
INSERT INTO `huannn_zone` VALUES ('2655', '171', 'Coimbra', 'CO', '1');
INSERT INTO `huannn_zone` VALUES ('2656', '171', '&Eacute;vora', 'EV', '1');
INSERT INTO `huannn_zone` VALUES ('2657', '171', 'Faro', 'FA', '1');
INSERT INTO `huannn_zone` VALUES ('2658', '171', 'Guarda', 'GU', '1');
INSERT INTO `huannn_zone` VALUES ('2659', '171', 'Leiria', 'LE', '1');
INSERT INTO `huannn_zone` VALUES ('2660', '171', 'Lisboa', 'LI', '1');
INSERT INTO `huannn_zone` VALUES ('2661', '171', 'Madeira', 'ME', '1');
INSERT INTO `huannn_zone` VALUES ('2662', '171', 'Portalegre', 'PO', '1');
INSERT INTO `huannn_zone` VALUES ('2663', '171', 'Porto', 'PR', '1');
INSERT INTO `huannn_zone` VALUES ('2664', '171', 'Santar&eacute;m', 'SA', '1');
INSERT INTO `huannn_zone` VALUES ('2665', '171', 'Set&uacute;bal', 'SE', '1');
INSERT INTO `huannn_zone` VALUES ('2666', '171', 'Viana do Castelo', 'VC', '1');
INSERT INTO `huannn_zone` VALUES ('2667', '171', 'Vila Real', 'VR', '1');
INSERT INTO `huannn_zone` VALUES ('2668', '171', 'Viseu', 'VI', '1');
INSERT INTO `huannn_zone` VALUES ('2669', '173', 'Ad Dawhah', 'DW', '1');
INSERT INTO `huannn_zone` VALUES ('2670', '173', 'Al Ghuwayriyah', 'GW', '1');
INSERT INTO `huannn_zone` VALUES ('2671', '173', 'Al Jumayliyah', 'JM', '1');
INSERT INTO `huannn_zone` VALUES ('2672', '173', 'Al Khawr', 'KR', '1');
INSERT INTO `huannn_zone` VALUES ('2673', '173', 'Al Wakrah', 'WK', '1');
INSERT INTO `huannn_zone` VALUES ('2674', '173', 'Ar Rayyan', 'RN', '1');
INSERT INTO `huannn_zone` VALUES ('2675', '173', 'Jarayan al Batinah', 'JB', '1');
INSERT INTO `huannn_zone` VALUES ('2676', '173', 'Madinat ash Shamal', 'MS', '1');
INSERT INTO `huannn_zone` VALUES ('2677', '173', 'Umm Sa\'id', 'UD', '1');
INSERT INTO `huannn_zone` VALUES ('2678', '173', 'Umm Salal', 'UL', '1');
INSERT INTO `huannn_zone` VALUES ('2679', '175', 'Alba', 'AB', '1');
INSERT INTO `huannn_zone` VALUES ('2680', '175', 'Arad', 'AR', '1');
INSERT INTO `huannn_zone` VALUES ('2681', '175', 'Arges', 'AG', '1');
INSERT INTO `huannn_zone` VALUES ('2682', '175', 'Bacau', 'BC', '1');
INSERT INTO `huannn_zone` VALUES ('2683', '175', 'Bihor', 'BH', '1');
INSERT INTO `huannn_zone` VALUES ('2684', '175', 'Bistrita-Nasaud', 'BN', '1');
INSERT INTO `huannn_zone` VALUES ('2685', '175', 'Botosani', 'BT', '1');
INSERT INTO `huannn_zone` VALUES ('2686', '175', 'Brasov', 'BV', '1');
INSERT INTO `huannn_zone` VALUES ('2687', '175', 'Braila', 'BR', '1');
INSERT INTO `huannn_zone` VALUES ('2688', '175', 'Bucuresti', 'B', '1');
INSERT INTO `huannn_zone` VALUES ('2689', '175', 'Buzau', 'BZ', '1');
INSERT INTO `huannn_zone` VALUES ('2690', '175', 'Caras-Severin', 'CS', '1');
INSERT INTO `huannn_zone` VALUES ('2691', '175', 'Calarasi', 'CL', '1');
INSERT INTO `huannn_zone` VALUES ('2692', '175', 'Cluj', 'CJ', '1');
INSERT INTO `huannn_zone` VALUES ('2693', '175', 'Constanta', 'CT', '1');
INSERT INTO `huannn_zone` VALUES ('2694', '175', 'Covasna', 'CV', '1');
INSERT INTO `huannn_zone` VALUES ('2695', '175', 'Dimbovita', 'DB', '1');
INSERT INTO `huannn_zone` VALUES ('2696', '175', 'Dolj', 'DJ', '1');
INSERT INTO `huannn_zone` VALUES ('2697', '175', 'Galati', 'GL', '1');
INSERT INTO `huannn_zone` VALUES ('2698', '175', 'Giurgiu', 'GR', '1');
INSERT INTO `huannn_zone` VALUES ('2699', '175', 'Gorj', 'GJ', '1');
INSERT INTO `huannn_zone` VALUES ('2700', '175', 'Harghita', 'HR', '1');
INSERT INTO `huannn_zone` VALUES ('2701', '175', 'Hunedoara', 'HD', '1');
INSERT INTO `huannn_zone` VALUES ('2702', '175', 'Ialomita', 'IL', '1');
INSERT INTO `huannn_zone` VALUES ('2703', '175', 'Iasi', 'IS', '1');
INSERT INTO `huannn_zone` VALUES ('2704', '175', 'Ilfov', 'IF', '1');
INSERT INTO `huannn_zone` VALUES ('2705', '175', 'Maramures', 'MM', '1');
INSERT INTO `huannn_zone` VALUES ('2706', '175', 'Mehedinti', 'MH', '1');
INSERT INTO `huannn_zone` VALUES ('2707', '175', 'Mures', 'MS', '1');
INSERT INTO `huannn_zone` VALUES ('2708', '175', 'Neamt', 'NT', '1');
INSERT INTO `huannn_zone` VALUES ('2709', '175', 'Olt', 'OT', '1');
INSERT INTO `huannn_zone` VALUES ('2710', '175', 'Prahova', 'PH', '1');
INSERT INTO `huannn_zone` VALUES ('2711', '175', 'Satu-Mare', 'SM', '1');
INSERT INTO `huannn_zone` VALUES ('2712', '175', 'Salaj', 'SJ', '1');
INSERT INTO `huannn_zone` VALUES ('2713', '175', 'Sibiu', 'SB', '1');
INSERT INTO `huannn_zone` VALUES ('2714', '175', 'Suceava', 'SV', '1');
INSERT INTO `huannn_zone` VALUES ('2715', '175', 'Teleorman', 'TR', '1');
INSERT INTO `huannn_zone` VALUES ('2716', '175', 'Timis', 'TM', '1');
INSERT INTO `huannn_zone` VALUES ('2717', '175', 'Tulcea', 'TL', '1');
INSERT INTO `huannn_zone` VALUES ('2718', '175', 'Vaslui', 'VS', '1');
INSERT INTO `huannn_zone` VALUES ('2719', '175', 'Valcea', 'VL', '1');
INSERT INTO `huannn_zone` VALUES ('2720', '175', 'Vrancea', 'VN', '1');
INSERT INTO `huannn_zone` VALUES ('2721', '176', 'Abakan', 'AB', '1');
INSERT INTO `huannn_zone` VALUES ('2722', '176', 'Aginskoye', 'AG', '1');
INSERT INTO `huannn_zone` VALUES ('2723', '176', 'Anadyr', 'AN', '1');
INSERT INTO `huannn_zone` VALUES ('2724', '176', 'Arkahangelsk', 'AR', '1');
INSERT INTO `huannn_zone` VALUES ('2725', '176', 'Astrakhan', 'AS', '1');
INSERT INTO `huannn_zone` VALUES ('2726', '176', 'Barnaul', 'BA', '1');
INSERT INTO `huannn_zone` VALUES ('2727', '176', 'Belgorod', 'BE', '1');
INSERT INTO `huannn_zone` VALUES ('2728', '176', 'Birobidzhan', 'BI', '1');
INSERT INTO `huannn_zone` VALUES ('2729', '176', 'Blagoveshchensk', 'BL', '1');
INSERT INTO `huannn_zone` VALUES ('2730', '176', 'Bryansk', 'BR', '1');
INSERT INTO `huannn_zone` VALUES ('2731', '176', 'Cheboksary', 'CH', '1');
INSERT INTO `huannn_zone` VALUES ('2732', '176', 'Chelyabinsk', 'CL', '1');
INSERT INTO `huannn_zone` VALUES ('2733', '176', 'Cherkessk', 'CR', '1');
INSERT INTO `huannn_zone` VALUES ('2734', '176', 'Chita', 'CI', '1');
INSERT INTO `huannn_zone` VALUES ('2735', '176', 'Dudinka', 'DU', '1');
INSERT INTO `huannn_zone` VALUES ('2736', '176', 'Elista', 'EL', '1');
INSERT INTO `huannn_zone` VALUES ('2738', '176', 'Gorno-Altaysk', 'GA', '1');
INSERT INTO `huannn_zone` VALUES ('2739', '176', 'Groznyy', 'GR', '1');
INSERT INTO `huannn_zone` VALUES ('2740', '176', 'Irkutsk', 'IR', '1');
INSERT INTO `huannn_zone` VALUES ('2741', '176', 'Ivanovo', 'IV', '1');
INSERT INTO `huannn_zone` VALUES ('2742', '176', 'Izhevsk', 'IZ', '1');
INSERT INTO `huannn_zone` VALUES ('2743', '176', 'Kalinigrad', 'KA', '1');
INSERT INTO `huannn_zone` VALUES ('2744', '176', 'Kaluga', 'KL', '1');
INSERT INTO `huannn_zone` VALUES ('2745', '176', 'Kasnodar', 'KS', '1');
INSERT INTO `huannn_zone` VALUES ('2746', '176', 'Kazan', 'KZ', '1');
INSERT INTO `huannn_zone` VALUES ('2747', '176', 'Kemerovo', 'KE', '1');
INSERT INTO `huannn_zone` VALUES ('2748', '176', 'Khabarovsk', 'KH', '1');
INSERT INTO `huannn_zone` VALUES ('2749', '176', 'Khanty-Mansiysk', 'KM', '1');
INSERT INTO `huannn_zone` VALUES ('2750', '176', 'Kostroma', 'KO', '1');
INSERT INTO `huannn_zone` VALUES ('2751', '176', 'Krasnodar', 'KR', '1');
INSERT INTO `huannn_zone` VALUES ('2752', '176', 'Krasnoyarsk', 'KN', '1');
INSERT INTO `huannn_zone` VALUES ('2753', '176', 'Kudymkar', 'KU', '1');
INSERT INTO `huannn_zone` VALUES ('2754', '176', 'Kurgan', 'KG', '1');
INSERT INTO `huannn_zone` VALUES ('2755', '176', 'Kursk', 'KK', '1');
INSERT INTO `huannn_zone` VALUES ('2756', '176', 'Kyzyl', 'KY', '1');
INSERT INTO `huannn_zone` VALUES ('2757', '176', 'Lipetsk', 'LI', '1');
INSERT INTO `huannn_zone` VALUES ('2758', '176', 'Magadan', 'MA', '1');
INSERT INTO `huannn_zone` VALUES ('2759', '176', 'Makhachkala', 'MK', '1');
INSERT INTO `huannn_zone` VALUES ('2760', '176', 'Maykop', 'MY', '1');
INSERT INTO `huannn_zone` VALUES ('2761', '176', 'Moscow', 'MO', '1');
INSERT INTO `huannn_zone` VALUES ('2762', '176', 'Murmansk', 'MU', '1');
INSERT INTO `huannn_zone` VALUES ('2763', '176', 'Nalchik', 'NA', '1');
INSERT INTO `huannn_zone` VALUES ('2764', '176', 'Naryan Mar', 'NR', '1');
INSERT INTO `huannn_zone` VALUES ('2765', '176', 'Nazran', 'NZ', '1');
INSERT INTO `huannn_zone` VALUES ('2766', '176', 'Nizhniy Novgorod', 'NI', '1');
INSERT INTO `huannn_zone` VALUES ('2767', '176', 'Novgorod', 'NO', '1');
INSERT INTO `huannn_zone` VALUES ('2768', '176', 'Novosibirsk', 'NV', '1');
INSERT INTO `huannn_zone` VALUES ('2769', '176', 'Omsk', 'OM', '1');
INSERT INTO `huannn_zone` VALUES ('2770', '176', 'Orel', 'OR', '1');
INSERT INTO `huannn_zone` VALUES ('2771', '176', 'Orenburg', 'OE', '1');
INSERT INTO `huannn_zone` VALUES ('2772', '176', 'Palana', 'PA', '1');
INSERT INTO `huannn_zone` VALUES ('2773', '176', 'Penza', 'PE', '1');
INSERT INTO `huannn_zone` VALUES ('2774', '176', 'Perm', 'PR', '1');
INSERT INTO `huannn_zone` VALUES ('2775', '176', 'Petropavlovsk-Kamchatskiy', 'PK', '1');
INSERT INTO `huannn_zone` VALUES ('2776', '176', 'Petrozavodsk', 'PT', '1');
INSERT INTO `huannn_zone` VALUES ('2777', '176', 'Pskov', 'PS', '1');
INSERT INTO `huannn_zone` VALUES ('2778', '176', 'Rostov-na-Donu', 'RO', '1');
INSERT INTO `huannn_zone` VALUES ('2779', '176', 'Ryazan', 'RY', '1');
INSERT INTO `huannn_zone` VALUES ('2780', '176', 'Salekhard', 'SL', '1');
INSERT INTO `huannn_zone` VALUES ('2781', '176', 'Samara', 'SA', '1');
INSERT INTO `huannn_zone` VALUES ('2782', '176', 'Saransk', 'SR', '1');
INSERT INTO `huannn_zone` VALUES ('2783', '176', 'Saratov', 'SV', '1');
INSERT INTO `huannn_zone` VALUES ('2784', '176', 'Smolensk', 'SM', '1');
INSERT INTO `huannn_zone` VALUES ('2785', '176', 'St. Petersburg', 'SP', '1');
INSERT INTO `huannn_zone` VALUES ('2786', '176', 'Stavropol', 'ST', '1');
INSERT INTO `huannn_zone` VALUES ('2787', '176', 'Syktyvkar', 'SY', '1');
INSERT INTO `huannn_zone` VALUES ('2788', '176', 'Tambov', 'TA', '1');
INSERT INTO `huannn_zone` VALUES ('2789', '176', 'Tomsk', 'TO', '1');
INSERT INTO `huannn_zone` VALUES ('2790', '176', 'Tula', 'TU', '1');
INSERT INTO `huannn_zone` VALUES ('2791', '176', 'Tura', 'TR', '1');
INSERT INTO `huannn_zone` VALUES ('2792', '176', 'Tver', 'TV', '1');
INSERT INTO `huannn_zone` VALUES ('2793', '176', 'Tyumen', 'TY', '1');
INSERT INTO `huannn_zone` VALUES ('2794', '176', 'Ufa', 'UF', '1');
INSERT INTO `huannn_zone` VALUES ('2795', '176', 'Ul\'yanovsk', 'UL', '1');
INSERT INTO `huannn_zone` VALUES ('2796', '176', 'Ulan-Ude', 'UU', '1');
INSERT INTO `huannn_zone` VALUES ('2797', '176', 'Ust\'-Ordynskiy', 'US', '1');
INSERT INTO `huannn_zone` VALUES ('2798', '176', 'Vladikavkaz', 'VL', '1');
INSERT INTO `huannn_zone` VALUES ('2799', '176', 'Vladimir', 'VA', '1');
INSERT INTO `huannn_zone` VALUES ('2800', '176', 'Vladivostok', 'VV', '1');
INSERT INTO `huannn_zone` VALUES ('2801', '176', 'Volgograd', 'VG', '1');
INSERT INTO `huannn_zone` VALUES ('2802', '176', 'Vologda', 'VD', '1');
INSERT INTO `huannn_zone` VALUES ('2803', '176', 'Voronezh', 'VO', '1');
INSERT INTO `huannn_zone` VALUES ('2804', '176', 'Vyatka', 'VY', '1');
INSERT INTO `huannn_zone` VALUES ('2805', '176', 'Yakutsk', 'YA', '1');
INSERT INTO `huannn_zone` VALUES ('2806', '176', 'Yaroslavl', 'YR', '1');
INSERT INTO `huannn_zone` VALUES ('2807', '176', 'Yekaterinburg', 'YE', '1');
INSERT INTO `huannn_zone` VALUES ('2808', '176', 'Yoshkar-Ola', 'YO', '1');
INSERT INTO `huannn_zone` VALUES ('2809', '177', 'Butare', 'BU', '1');
INSERT INTO `huannn_zone` VALUES ('2810', '177', 'Byumba', 'BY', '1');
INSERT INTO `huannn_zone` VALUES ('2811', '177', 'Cyangugu', 'CY', '1');
INSERT INTO `huannn_zone` VALUES ('2812', '177', 'Gikongoro', 'GK', '1');
INSERT INTO `huannn_zone` VALUES ('2813', '177', 'Gisenyi', 'GS', '1');
INSERT INTO `huannn_zone` VALUES ('2814', '177', 'Gitarama', 'GT', '1');
INSERT INTO `huannn_zone` VALUES ('2815', '177', 'Kibungo', 'KG', '1');
INSERT INTO `huannn_zone` VALUES ('2816', '177', 'Kibuye', 'KY', '1');
INSERT INTO `huannn_zone` VALUES ('2817', '177', 'Kigali Rurale', 'KR', '1');
INSERT INTO `huannn_zone` VALUES ('2818', '177', 'Kigali-ville', 'KV', '1');
INSERT INTO `huannn_zone` VALUES ('2819', '177', 'Ruhengeri', 'RU', '1');
INSERT INTO `huannn_zone` VALUES ('2820', '177', 'Umutara', 'UM', '1');
INSERT INTO `huannn_zone` VALUES ('2821', '178', 'Christ Church Nichola Town', 'CCN', '1');
INSERT INTO `huannn_zone` VALUES ('2822', '178', 'Saint Anne Sandy Point', 'SAS', '1');
INSERT INTO `huannn_zone` VALUES ('2823', '178', 'Saint George Basseterre', 'SGB', '1');
INSERT INTO `huannn_zone` VALUES ('2824', '178', 'Saint George Gingerland', 'SGG', '1');
INSERT INTO `huannn_zone` VALUES ('2825', '178', 'Saint James Windward', 'SJW', '1');
INSERT INTO `huannn_zone` VALUES ('2826', '178', 'Saint John Capesterre', 'SJC', '1');
INSERT INTO `huannn_zone` VALUES ('2827', '178', 'Saint John Figtree', 'SJF', '1');
INSERT INTO `huannn_zone` VALUES ('2828', '178', 'Saint Mary Cayon', 'SMC', '1');
INSERT INTO `huannn_zone` VALUES ('2829', '178', 'Saint Paul Capesterre', 'CAP', '1');
INSERT INTO `huannn_zone` VALUES ('2830', '178', 'Saint Paul Charlestown', 'CHA', '1');
INSERT INTO `huannn_zone` VALUES ('2831', '178', 'Saint Peter Basseterre', 'SPB', '1');
INSERT INTO `huannn_zone` VALUES ('2832', '178', 'Saint Thomas Lowland', 'STL', '1');
INSERT INTO `huannn_zone` VALUES ('2833', '178', 'Saint Thomas Middle Island', 'STM', '1');
INSERT INTO `huannn_zone` VALUES ('2834', '178', 'Trinity Palmetto Point', 'TPP', '1');
INSERT INTO `huannn_zone` VALUES ('2835', '179', 'Anse-la-Raye', 'AR', '1');
INSERT INTO `huannn_zone` VALUES ('2836', '179', 'Castries', 'CA', '1');
INSERT INTO `huannn_zone` VALUES ('2837', '179', 'Choiseul', 'CH', '1');
INSERT INTO `huannn_zone` VALUES ('2838', '179', 'Dauphin', 'DA', '1');
INSERT INTO `huannn_zone` VALUES ('2839', '179', 'Dennery', 'DE', '1');
INSERT INTO `huannn_zone` VALUES ('2840', '179', 'Gros-Islet', 'GI', '1');
INSERT INTO `huannn_zone` VALUES ('2841', '179', 'Laborie', 'LA', '1');
INSERT INTO `huannn_zone` VALUES ('2842', '179', 'Micoud', 'MI', '1');
INSERT INTO `huannn_zone` VALUES ('2843', '179', 'Praslin', 'PR', '1');
INSERT INTO `huannn_zone` VALUES ('2844', '179', 'Soufriere', 'SO', '1');
INSERT INTO `huannn_zone` VALUES ('2845', '179', 'Vieux-Fort', 'VF', '1');
INSERT INTO `huannn_zone` VALUES ('2846', '180', 'Charlotte', 'C', '1');
INSERT INTO `huannn_zone` VALUES ('2847', '180', 'Grenadines', 'R', '1');
INSERT INTO `huannn_zone` VALUES ('2848', '180', 'Saint Andrew', 'A', '1');
INSERT INTO `huannn_zone` VALUES ('2849', '180', 'Saint David', 'D', '1');
INSERT INTO `huannn_zone` VALUES ('2850', '180', 'Saint George', 'G', '1');
INSERT INTO `huannn_zone` VALUES ('2851', '180', 'Saint Patrick', 'P', '1');
INSERT INTO `huannn_zone` VALUES ('2852', '181', 'A\'ana', 'AN', '1');
INSERT INTO `huannn_zone` VALUES ('2853', '181', 'Aiga-i-le-Tai', 'AI', '1');
INSERT INTO `huannn_zone` VALUES ('2854', '181', 'Atua', 'AT', '1');
INSERT INTO `huannn_zone` VALUES ('2855', '181', 'Fa\'asaleleaga', 'FA', '1');
INSERT INTO `huannn_zone` VALUES ('2856', '181', 'Gaga\'emauga', 'GE', '1');
INSERT INTO `huannn_zone` VALUES ('2857', '181', 'Gagaifomauga', 'GF', '1');
INSERT INTO `huannn_zone` VALUES ('2858', '181', 'Palauli', 'PA', '1');
INSERT INTO `huannn_zone` VALUES ('2859', '181', 'Satupa\'itea', 'SA', '1');
INSERT INTO `huannn_zone` VALUES ('2860', '181', 'Tuamasaga', 'TU', '1');
INSERT INTO `huannn_zone` VALUES ('2861', '181', 'Va\'a-o-Fonoti', 'VF', '1');
INSERT INTO `huannn_zone` VALUES ('2862', '181', 'Vaisigano', 'VS', '1');
INSERT INTO `huannn_zone` VALUES ('2863', '182', 'Acquaviva', 'AC', '1');
INSERT INTO `huannn_zone` VALUES ('2864', '182', 'Borgo Maggiore', 'BM', '1');
INSERT INTO `huannn_zone` VALUES ('2865', '182', 'Chiesanuova', 'CH', '1');
INSERT INTO `huannn_zone` VALUES ('2866', '182', 'Domagnano', 'DO', '1');
INSERT INTO `huannn_zone` VALUES ('2867', '182', 'Faetano', 'FA', '1');
INSERT INTO `huannn_zone` VALUES ('2868', '182', 'Fiorentino', 'FI', '1');
INSERT INTO `huannn_zone` VALUES ('2869', '182', 'Montegiardino', 'MO', '1');
INSERT INTO `huannn_zone` VALUES ('2870', '182', 'Citta di San Marino', 'SM', '1');
INSERT INTO `huannn_zone` VALUES ('2871', '182', 'Serravalle', 'SE', '1');
INSERT INTO `huannn_zone` VALUES ('2872', '183', 'Sao Tome', 'S', '1');
INSERT INTO `huannn_zone` VALUES ('2873', '183', 'Principe', 'P', '1');
INSERT INTO `huannn_zone` VALUES ('2874', '184', 'Al Bahah', 'BH', '1');
INSERT INTO `huannn_zone` VALUES ('2875', '184', 'Al Hudud ash Shamaliyah', 'HS', '1');
INSERT INTO `huannn_zone` VALUES ('2876', '184', 'Al Jawf', 'JF', '1');
INSERT INTO `huannn_zone` VALUES ('2877', '184', 'Al Madinah', 'MD', '1');
INSERT INTO `huannn_zone` VALUES ('2878', '184', 'Al Qasim', 'QS', '1');
INSERT INTO `huannn_zone` VALUES ('2879', '184', 'Ar Riyad', 'RD', '1');
INSERT INTO `huannn_zone` VALUES ('2880', '184', 'Ash Sharqiyah (Eastern)', 'AQ', '1');
INSERT INTO `huannn_zone` VALUES ('2881', '184', '\'Asir', 'AS', '1');
INSERT INTO `huannn_zone` VALUES ('2882', '184', 'Ha\'il', 'HL', '1');
INSERT INTO `huannn_zone` VALUES ('2883', '184', 'Jizan', 'JZ', '1');
INSERT INTO `huannn_zone` VALUES ('2884', '184', 'Makkah', 'ML', '1');
INSERT INTO `huannn_zone` VALUES ('2885', '184', 'Najran', 'NR', '1');
INSERT INTO `huannn_zone` VALUES ('2886', '184', 'Tabuk', 'TB', '1');
INSERT INTO `huannn_zone` VALUES ('2887', '185', 'Dakar', 'DA', '1');
INSERT INTO `huannn_zone` VALUES ('2888', '185', 'Diourbel', 'DI', '1');
INSERT INTO `huannn_zone` VALUES ('2889', '185', 'Fatick', 'FA', '1');
INSERT INTO `huannn_zone` VALUES ('2890', '185', 'Kaolack', 'KA', '1');
INSERT INTO `huannn_zone` VALUES ('2891', '185', 'Kolda', 'KO', '1');
INSERT INTO `huannn_zone` VALUES ('2892', '185', 'Louga', 'LO', '1');
INSERT INTO `huannn_zone` VALUES ('2893', '185', 'Matam', 'MA', '1');
INSERT INTO `huannn_zone` VALUES ('2894', '185', 'Saint-Louis', 'SL', '1');
INSERT INTO `huannn_zone` VALUES ('2895', '185', 'Tambacounda', 'TA', '1');
INSERT INTO `huannn_zone` VALUES ('2896', '185', 'Thies', 'TH', '1');
INSERT INTO `huannn_zone` VALUES ('2897', '185', 'Ziguinchor', 'ZI', '1');
INSERT INTO `huannn_zone` VALUES ('2898', '186', 'Anse aux Pins', 'AP', '1');
INSERT INTO `huannn_zone` VALUES ('2899', '186', 'Anse Boileau', 'AB', '1');
INSERT INTO `huannn_zone` VALUES ('2900', '186', 'Anse Etoile', 'AE', '1');
INSERT INTO `huannn_zone` VALUES ('2901', '186', 'Anse Louis', 'AL', '1');
INSERT INTO `huannn_zone` VALUES ('2902', '186', 'Anse Royale', 'AR', '1');
INSERT INTO `huannn_zone` VALUES ('2903', '186', 'Baie Lazare', 'BL', '1');
INSERT INTO `huannn_zone` VALUES ('2904', '186', 'Baie Sainte Anne', 'BS', '1');
INSERT INTO `huannn_zone` VALUES ('2905', '186', 'Beau Vallon', 'BV', '1');
INSERT INTO `huannn_zone` VALUES ('2906', '186', 'Bel Air', 'BA', '1');
INSERT INTO `huannn_zone` VALUES ('2907', '186', 'Bel Ombre', 'BO', '1');
INSERT INTO `huannn_zone` VALUES ('2908', '186', 'Cascade', 'CA', '1');
INSERT INTO `huannn_zone` VALUES ('2909', '186', 'Glacis', 'GL', '1');
INSERT INTO `huannn_zone` VALUES ('2910', '186', 'Grand\' Anse (on Mahe)', 'GM', '1');
INSERT INTO `huannn_zone` VALUES ('2911', '186', 'Grand\' Anse (on Praslin)', 'GP', '1');
INSERT INTO `huannn_zone` VALUES ('2912', '186', 'La Digue', 'DG', '1');
INSERT INTO `huannn_zone` VALUES ('2913', '186', 'La Riviere Anglaise', 'RA', '1');
INSERT INTO `huannn_zone` VALUES ('2914', '186', 'Mont Buxton', 'MB', '1');
INSERT INTO `huannn_zone` VALUES ('2915', '186', 'Mont Fleuri', 'MF', '1');
INSERT INTO `huannn_zone` VALUES ('2916', '186', 'Plaisance', 'PL', '1');
INSERT INTO `huannn_zone` VALUES ('2917', '186', 'Pointe La Rue', 'PR', '1');
INSERT INTO `huannn_zone` VALUES ('2918', '186', 'Port Glaud', 'PG', '1');
INSERT INTO `huannn_zone` VALUES ('2919', '186', 'Saint Louis', 'SL', '1');
INSERT INTO `huannn_zone` VALUES ('2920', '186', 'Takamaka', 'TA', '1');
INSERT INTO `huannn_zone` VALUES ('2921', '187', 'Eastern', 'E', '1');
INSERT INTO `huannn_zone` VALUES ('2922', '187', 'Northern', 'N', '1');
INSERT INTO `huannn_zone` VALUES ('2923', '187', 'Southern', 'S', '1');
INSERT INTO `huannn_zone` VALUES ('2924', '187', 'Western', 'W', '1');
INSERT INTO `huannn_zone` VALUES ('2925', '189', 'Banskobystrický', 'BA', '1');
INSERT INTO `huannn_zone` VALUES ('2926', '189', 'Bratislavský', 'BR', '1');
INSERT INTO `huannn_zone` VALUES ('2927', '189', 'Košický', 'KO', '1');
INSERT INTO `huannn_zone` VALUES ('2928', '189', 'Nitriansky', 'NI', '1');
INSERT INTO `huannn_zone` VALUES ('2929', '189', 'Prešovský', 'PR', '1');
INSERT INTO `huannn_zone` VALUES ('2930', '189', 'Trenčiansky', 'TC', '1');
INSERT INTO `huannn_zone` VALUES ('2931', '189', 'Trnavský', 'TV', '1');
INSERT INTO `huannn_zone` VALUES ('2932', '189', 'Žilinský', 'ZI', '1');
INSERT INTO `huannn_zone` VALUES ('2933', '191', 'Central', 'CE', '1');
INSERT INTO `huannn_zone` VALUES ('2934', '191', 'Choiseul', 'CH', '1');
INSERT INTO `huannn_zone` VALUES ('2935', '191', 'Guadalcanal', 'GC', '1');
INSERT INTO `huannn_zone` VALUES ('2936', '191', 'Honiara', 'HO', '1');
INSERT INTO `huannn_zone` VALUES ('2937', '191', 'Isabel', 'IS', '1');
INSERT INTO `huannn_zone` VALUES ('2938', '191', 'Makira', 'MK', '1');
INSERT INTO `huannn_zone` VALUES ('2939', '191', 'Malaita', 'ML', '1');
INSERT INTO `huannn_zone` VALUES ('2940', '191', 'Rennell and Bellona', 'RB', '1');
INSERT INTO `huannn_zone` VALUES ('2941', '191', 'Temotu', 'TM', '1');
INSERT INTO `huannn_zone` VALUES ('2942', '191', 'Western', 'WE', '1');
INSERT INTO `huannn_zone` VALUES ('2943', '192', 'Awdal', 'AW', '1');
INSERT INTO `huannn_zone` VALUES ('2944', '192', 'Bakool', 'BK', '1');
INSERT INTO `huannn_zone` VALUES ('2945', '192', 'Banaadir', 'BN', '1');
INSERT INTO `huannn_zone` VALUES ('2946', '192', 'Bari', 'BR', '1');
INSERT INTO `huannn_zone` VALUES ('2947', '192', 'Bay', 'BY', '1');
INSERT INTO `huannn_zone` VALUES ('2948', '192', 'Galguduud', 'GA', '1');
INSERT INTO `huannn_zone` VALUES ('2949', '192', 'Gedo', 'GE', '1');
INSERT INTO `huannn_zone` VALUES ('2950', '192', 'Hiiraan', 'HI', '1');
INSERT INTO `huannn_zone` VALUES ('2951', '192', 'Jubbada Dhexe', 'JD', '1');
INSERT INTO `huannn_zone` VALUES ('2952', '192', 'Jubbada Hoose', 'JH', '1');
INSERT INTO `huannn_zone` VALUES ('2953', '192', 'Mudug', 'MU', '1');
INSERT INTO `huannn_zone` VALUES ('2954', '192', 'Nugaal', 'NU', '1');
INSERT INTO `huannn_zone` VALUES ('2955', '192', 'Sanaag', 'SA', '1');
INSERT INTO `huannn_zone` VALUES ('2956', '192', 'Shabeellaha Dhexe', 'SD', '1');
INSERT INTO `huannn_zone` VALUES ('2957', '192', 'Shabeellaha Hoose', 'SH', '1');
INSERT INTO `huannn_zone` VALUES ('2958', '192', 'Sool', 'SL', '1');
INSERT INTO `huannn_zone` VALUES ('2959', '192', 'Togdheer', 'TO', '1');
INSERT INTO `huannn_zone` VALUES ('2960', '192', 'Woqooyi Galbeed', 'WG', '1');
INSERT INTO `huannn_zone` VALUES ('2961', '193', 'Eastern Cape', 'EC', '1');
INSERT INTO `huannn_zone` VALUES ('2962', '193', 'Free State', 'FS', '1');
INSERT INTO `huannn_zone` VALUES ('2963', '193', 'Gauteng', 'GT', '1');
INSERT INTO `huannn_zone` VALUES ('2964', '193', 'KwaZulu-Natal', 'KN', '1');
INSERT INTO `huannn_zone` VALUES ('2965', '193', 'Limpopo', 'LP', '1');
INSERT INTO `huannn_zone` VALUES ('2966', '193', 'Mpumalanga', 'MP', '1');
INSERT INTO `huannn_zone` VALUES ('2967', '193', 'North West', 'NW', '1');
INSERT INTO `huannn_zone` VALUES ('2968', '193', 'Northern Cape', 'NC', '1');
INSERT INTO `huannn_zone` VALUES ('2969', '193', 'Western Cape', 'WC', '1');
INSERT INTO `huannn_zone` VALUES ('2970', '195', 'La Coru&ntilde;a', 'CA', '1');
INSERT INTO `huannn_zone` VALUES ('2971', '195', '&Aacute;lava', 'AL', '1');
INSERT INTO `huannn_zone` VALUES ('2972', '195', 'Albacete', 'AB', '1');
INSERT INTO `huannn_zone` VALUES ('2973', '195', 'Alicante', 'AC', '1');
INSERT INTO `huannn_zone` VALUES ('2974', '195', 'Almeria', 'AM', '1');
INSERT INTO `huannn_zone` VALUES ('2975', '195', 'Asturias', 'AS', '1');
INSERT INTO `huannn_zone` VALUES ('2976', '195', '&Aacute;vila', 'AV', '1');
INSERT INTO `huannn_zone` VALUES ('2977', '195', 'Badajoz', 'BJ', '1');
INSERT INTO `huannn_zone` VALUES ('2978', '195', 'Baleares', 'IB', '1');
INSERT INTO `huannn_zone` VALUES ('2979', '195', 'Barcelona', 'BA', '1');
INSERT INTO `huannn_zone` VALUES ('2980', '195', 'Burgos', 'BU', '1');
INSERT INTO `huannn_zone` VALUES ('2981', '195', 'C&aacute;ceres', 'CC', '1');
INSERT INTO `huannn_zone` VALUES ('2982', '195', 'C&aacute;diz', 'CZ', '1');
INSERT INTO `huannn_zone` VALUES ('2983', '195', 'Cantabria', 'CT', '1');
INSERT INTO `huannn_zone` VALUES ('2984', '195', 'Castell&oacute;n', 'CL', '1');
INSERT INTO `huannn_zone` VALUES ('2985', '195', 'Ceuta', 'CE', '1');
INSERT INTO `huannn_zone` VALUES ('2986', '195', 'Ciudad Real', 'CR', '1');
INSERT INTO `huannn_zone` VALUES ('2987', '195', 'C&oacute;rdoba', 'CD', '1');
INSERT INTO `huannn_zone` VALUES ('2988', '195', 'Cuenca', 'CU', '1');
INSERT INTO `huannn_zone` VALUES ('2989', '195', 'Girona', 'GI', '1');
INSERT INTO `huannn_zone` VALUES ('2990', '195', 'Granada', 'GD', '1');
INSERT INTO `huannn_zone` VALUES ('2991', '195', 'Guadalajara', 'GJ', '1');
INSERT INTO `huannn_zone` VALUES ('2992', '195', 'Guip&uacute;zcoa', 'GP', '1');
INSERT INTO `huannn_zone` VALUES ('2993', '195', 'Huelva', 'HL', '1');
INSERT INTO `huannn_zone` VALUES ('2994', '195', 'Huesca', 'HS', '1');
INSERT INTO `huannn_zone` VALUES ('2995', '195', 'Ja&eacute;n', 'JN', '1');
INSERT INTO `huannn_zone` VALUES ('2996', '195', 'La Rioja', 'RJ', '1');
INSERT INTO `huannn_zone` VALUES ('2997', '195', 'Las Palmas', 'PM', '1');
INSERT INTO `huannn_zone` VALUES ('2998', '195', 'Leon', 'LE', '1');
INSERT INTO `huannn_zone` VALUES ('2999', '195', 'Lleida', 'LL', '1');
INSERT INTO `huannn_zone` VALUES ('3000', '195', 'Lugo', 'LG', '1');
INSERT INTO `huannn_zone` VALUES ('3001', '195', 'Madrid', 'MD', '1');
INSERT INTO `huannn_zone` VALUES ('3002', '195', 'Malaga', 'MA', '1');
INSERT INTO `huannn_zone` VALUES ('3003', '195', 'Melilla', 'ML', '1');
INSERT INTO `huannn_zone` VALUES ('3004', '195', 'Murcia', 'MU', '1');
INSERT INTO `huannn_zone` VALUES ('3005', '195', 'Navarra', 'NV', '1');
INSERT INTO `huannn_zone` VALUES ('3006', '195', 'Ourense', 'OU', '1');
INSERT INTO `huannn_zone` VALUES ('3007', '195', 'Palencia', 'PL', '1');
INSERT INTO `huannn_zone` VALUES ('3008', '195', 'Pontevedra', 'PO', '1');
INSERT INTO `huannn_zone` VALUES ('3009', '195', 'Salamanca', 'SL', '1');
INSERT INTO `huannn_zone` VALUES ('3010', '195', 'Santa Cruz de Tenerife', 'SC', '1');
INSERT INTO `huannn_zone` VALUES ('3011', '195', 'Segovia', 'SG', '1');
INSERT INTO `huannn_zone` VALUES ('3012', '195', 'Sevilla', 'SV', '1');
INSERT INTO `huannn_zone` VALUES ('3013', '195', 'Soria', 'SO', '1');
INSERT INTO `huannn_zone` VALUES ('3014', '195', 'Tarragona', 'TA', '1');
INSERT INTO `huannn_zone` VALUES ('3015', '195', 'Teruel', 'TE', '1');
INSERT INTO `huannn_zone` VALUES ('3016', '195', 'Toledo', 'TO', '1');
INSERT INTO `huannn_zone` VALUES ('3017', '195', 'Valencia', 'VC', '1');
INSERT INTO `huannn_zone` VALUES ('3018', '195', 'Valladolid', 'VD', '1');
INSERT INTO `huannn_zone` VALUES ('3019', '195', 'Vizcaya', 'VZ', '1');
INSERT INTO `huannn_zone` VALUES ('3020', '195', 'Zamora', 'ZM', '1');
INSERT INTO `huannn_zone` VALUES ('3021', '195', 'Zaragoza', 'ZR', '1');
INSERT INTO `huannn_zone` VALUES ('3022', '196', 'Central', 'CE', '1');
INSERT INTO `huannn_zone` VALUES ('3023', '196', 'Eastern', 'EA', '1');
INSERT INTO `huannn_zone` VALUES ('3024', '196', 'North Central', 'NC', '1');
INSERT INTO `huannn_zone` VALUES ('3025', '196', 'Northern', 'NO', '1');
INSERT INTO `huannn_zone` VALUES ('3026', '196', 'North Western', 'NW', '1');
INSERT INTO `huannn_zone` VALUES ('3027', '196', 'Sabaragamuwa', 'SA', '1');
INSERT INTO `huannn_zone` VALUES ('3028', '196', 'Southern', 'SO', '1');
INSERT INTO `huannn_zone` VALUES ('3029', '196', 'Uva', 'UV', '1');
INSERT INTO `huannn_zone` VALUES ('3030', '196', 'Western', 'WE', '1');
INSERT INTO `huannn_zone` VALUES ('3032', '197', 'Saint Helena', 'S', '1');
INSERT INTO `huannn_zone` VALUES ('3034', '199', 'A\'ali an Nil', 'ANL', '1');
INSERT INTO `huannn_zone` VALUES ('3035', '199', 'Al Bahr al Ahmar', 'BAM', '1');
INSERT INTO `huannn_zone` VALUES ('3036', '199', 'Al Buhayrat', 'BRT', '1');
INSERT INTO `huannn_zone` VALUES ('3037', '199', 'Al Jazirah', 'JZR', '1');
INSERT INTO `huannn_zone` VALUES ('3038', '199', 'Al Khartum', 'KRT', '1');
INSERT INTO `huannn_zone` VALUES ('3039', '199', 'Al Qadarif', 'QDR', '1');
INSERT INTO `huannn_zone` VALUES ('3040', '199', 'Al Wahdah', 'WDH', '1');
INSERT INTO `huannn_zone` VALUES ('3041', '199', 'An Nil al Abyad', 'ANB', '1');
INSERT INTO `huannn_zone` VALUES ('3042', '199', 'An Nil al Azraq', 'ANZ', '1');
INSERT INTO `huannn_zone` VALUES ('3043', '199', 'Ash Shamaliyah', 'ASH', '1');
INSERT INTO `huannn_zone` VALUES ('3044', '199', 'Bahr al Jabal', 'BJA', '1');
INSERT INTO `huannn_zone` VALUES ('3045', '199', 'Gharb al Istiwa\'iyah', 'GIS', '1');
INSERT INTO `huannn_zone` VALUES ('3046', '199', 'Gharb Bahr al Ghazal', 'GBG', '1');
INSERT INTO `huannn_zone` VALUES ('3047', '199', 'Gharb Darfur', 'GDA', '1');
INSERT INTO `huannn_zone` VALUES ('3048', '199', 'Gharb Kurdufan', 'GKU', '1');
INSERT INTO `huannn_zone` VALUES ('3049', '199', 'Janub Darfur', 'JDA', '1');
INSERT INTO `huannn_zone` VALUES ('3050', '199', 'Janub Kurdufan', 'JKU', '1');
INSERT INTO `huannn_zone` VALUES ('3051', '199', 'Junqali', 'JQL', '1');
INSERT INTO `huannn_zone` VALUES ('3052', '199', 'Kassala', 'KSL', '1');
INSERT INTO `huannn_zone` VALUES ('3053', '199', 'Nahr an Nil', 'NNL', '1');
INSERT INTO `huannn_zone` VALUES ('3054', '199', 'Shamal Bahr al Ghazal', 'SBG', '1');
INSERT INTO `huannn_zone` VALUES ('3055', '199', 'Shamal Darfur', 'SDA', '1');
INSERT INTO `huannn_zone` VALUES ('3056', '199', 'Shamal Kurdufan', 'SKU', '1');
INSERT INTO `huannn_zone` VALUES ('3057', '199', 'Sharq al Istiwa\'iyah', 'SIS', '1');
INSERT INTO `huannn_zone` VALUES ('3058', '199', 'Sinnar', 'SNR', '1');
INSERT INTO `huannn_zone` VALUES ('3059', '199', 'Warab', 'WRB', '1');
INSERT INTO `huannn_zone` VALUES ('3060', '200', 'Brokopondo', 'BR', '1');
INSERT INTO `huannn_zone` VALUES ('3061', '200', 'Commewijne', 'CM', '1');
INSERT INTO `huannn_zone` VALUES ('3062', '200', 'Coronie', 'CR', '1');
INSERT INTO `huannn_zone` VALUES ('3063', '200', 'Marowijne', 'MA', '1');
INSERT INTO `huannn_zone` VALUES ('3064', '200', 'Nickerie', 'NI', '1');
INSERT INTO `huannn_zone` VALUES ('3065', '200', 'Para', 'PA', '1');
INSERT INTO `huannn_zone` VALUES ('3066', '200', 'Paramaribo', 'PM', '1');
INSERT INTO `huannn_zone` VALUES ('3067', '200', 'Saramacca', 'SA', '1');
INSERT INTO `huannn_zone` VALUES ('3068', '200', 'Sipaliwini', 'SI', '1');
INSERT INTO `huannn_zone` VALUES ('3069', '200', 'Wanica', 'WA', '1');
INSERT INTO `huannn_zone` VALUES ('3070', '202', 'Hhohho', 'H', '1');
INSERT INTO `huannn_zone` VALUES ('3071', '202', 'Lubombo', 'L', '1');
INSERT INTO `huannn_zone` VALUES ('3072', '202', 'Manzini', 'M', '1');
INSERT INTO `huannn_zone` VALUES ('3073', '202', 'Shishelweni', 'S', '1');
INSERT INTO `huannn_zone` VALUES ('3074', '203', 'Blekinge', 'K', '1');
INSERT INTO `huannn_zone` VALUES ('3075', '203', 'Dalarna', 'W', '1');
INSERT INTO `huannn_zone` VALUES ('3076', '203', 'Gävleborg', 'X', '1');
INSERT INTO `huannn_zone` VALUES ('3077', '203', 'Gotland', 'I', '1');
INSERT INTO `huannn_zone` VALUES ('3078', '203', 'Halland', 'N', '1');
INSERT INTO `huannn_zone` VALUES ('3079', '203', 'Jämtland', 'Z', '1');
INSERT INTO `huannn_zone` VALUES ('3080', '203', 'Jönköping', 'F', '1');
INSERT INTO `huannn_zone` VALUES ('3081', '203', 'Kalmar', 'H', '1');
INSERT INTO `huannn_zone` VALUES ('3082', '203', 'Kronoberg', 'G', '1');
INSERT INTO `huannn_zone` VALUES ('3083', '203', 'Norrbotten', 'BD', '1');
INSERT INTO `huannn_zone` VALUES ('3084', '203', 'Örebro', 'T', '1');
INSERT INTO `huannn_zone` VALUES ('3085', '203', 'Östergötland', 'E', '1');
INSERT INTO `huannn_zone` VALUES ('3086', '203', 'Sk&aring;ne', 'M', '1');
INSERT INTO `huannn_zone` VALUES ('3087', '203', 'Södermanland', 'D', '1');
INSERT INTO `huannn_zone` VALUES ('3088', '203', 'Stockholm', 'AB', '1');
INSERT INTO `huannn_zone` VALUES ('3089', '203', 'Uppsala', 'C', '1');
INSERT INTO `huannn_zone` VALUES ('3090', '203', 'Värmland', 'S', '1');
INSERT INTO `huannn_zone` VALUES ('3091', '203', 'Västerbotten', 'AC', '1');
INSERT INTO `huannn_zone` VALUES ('3092', '203', 'Västernorrland', 'Y', '1');
INSERT INTO `huannn_zone` VALUES ('3093', '203', 'Västmanland', 'U', '1');
INSERT INTO `huannn_zone` VALUES ('3094', '203', 'Västra Götaland', 'O', '1');
INSERT INTO `huannn_zone` VALUES ('3095', '204', 'Aargau', 'AG', '1');
INSERT INTO `huannn_zone` VALUES ('3096', '204', 'Appenzell Ausserrhoden', 'AR', '1');
INSERT INTO `huannn_zone` VALUES ('3097', '204', 'Appenzell Innerrhoden', 'AI', '1');
INSERT INTO `huannn_zone` VALUES ('3098', '204', 'Basel-Stadt', 'BS', '1');
INSERT INTO `huannn_zone` VALUES ('3099', '204', 'Basel-Landschaft', 'BL', '1');
INSERT INTO `huannn_zone` VALUES ('3100', '204', 'Bern', 'BE', '1');
INSERT INTO `huannn_zone` VALUES ('3101', '204', 'Fribourg', 'FR', '1');
INSERT INTO `huannn_zone` VALUES ('3102', '204', 'Gen&egrave;ve', 'GE', '1');
INSERT INTO `huannn_zone` VALUES ('3103', '204', 'Glarus', 'GL', '1');
INSERT INTO `huannn_zone` VALUES ('3104', '204', 'Graubünden', 'GR', '1');
INSERT INTO `huannn_zone` VALUES ('3105', '204', 'Jura', 'JU', '1');
INSERT INTO `huannn_zone` VALUES ('3106', '204', 'Luzern', 'LU', '1');
INSERT INTO `huannn_zone` VALUES ('3107', '204', 'Neuch&acirc;tel', 'NE', '1');
INSERT INTO `huannn_zone` VALUES ('3108', '204', 'Nidwald', 'NW', '1');
INSERT INTO `huannn_zone` VALUES ('3109', '204', 'Obwald', 'OW', '1');
INSERT INTO `huannn_zone` VALUES ('3110', '204', 'St. Gallen', 'SG', '1');
INSERT INTO `huannn_zone` VALUES ('3111', '204', 'Schaffhausen', 'SH', '1');
INSERT INTO `huannn_zone` VALUES ('3112', '204', 'Schwyz', 'SZ', '1');
INSERT INTO `huannn_zone` VALUES ('3113', '204', 'Solothurn', 'SO', '1');
INSERT INTO `huannn_zone` VALUES ('3114', '204', 'Thurgau', 'TG', '1');
INSERT INTO `huannn_zone` VALUES ('3115', '204', 'Ticino', 'TI', '1');
INSERT INTO `huannn_zone` VALUES ('3116', '204', 'Uri', 'UR', '1');
INSERT INTO `huannn_zone` VALUES ('3117', '204', 'Valais', 'VS', '1');
INSERT INTO `huannn_zone` VALUES ('3118', '204', 'Vaud', 'VD', '1');
INSERT INTO `huannn_zone` VALUES ('3119', '204', 'Zug', 'ZG', '1');
INSERT INTO `huannn_zone` VALUES ('3120', '204', 'Zürich', 'ZH', '1');
INSERT INTO `huannn_zone` VALUES ('3121', '205', 'Al Hasakah', 'HA', '1');
INSERT INTO `huannn_zone` VALUES ('3122', '205', 'Al Ladhiqiyah', 'LA', '1');
INSERT INTO `huannn_zone` VALUES ('3123', '205', 'Al Qunaytirah', 'QU', '1');
INSERT INTO `huannn_zone` VALUES ('3124', '205', 'Ar Raqqah', 'RQ', '1');
INSERT INTO `huannn_zone` VALUES ('3125', '205', 'As Suwayda', 'SU', '1');
INSERT INTO `huannn_zone` VALUES ('3126', '205', 'Dara', 'DA', '1');
INSERT INTO `huannn_zone` VALUES ('3127', '205', 'Dayr az Zawr', 'DZ', '1');
INSERT INTO `huannn_zone` VALUES ('3128', '205', 'Dimashq', 'DI', '1');
INSERT INTO `huannn_zone` VALUES ('3129', '205', 'Halab', 'HL', '1');
INSERT INTO `huannn_zone` VALUES ('3130', '205', 'Hamah', 'HM', '1');
INSERT INTO `huannn_zone` VALUES ('3131', '205', 'Hims', 'HI', '1');
INSERT INTO `huannn_zone` VALUES ('3132', '205', 'Idlib', 'ID', '1');
INSERT INTO `huannn_zone` VALUES ('3133', '205', 'Rif Dimashq', 'RD', '1');
INSERT INTO `huannn_zone` VALUES ('3134', '205', 'Tartus', 'TA', '1');
INSERT INTO `huannn_zone` VALUES ('3135', '206', 'Chang-hua', 'CH', '1');
INSERT INTO `huannn_zone` VALUES ('3136', '206', 'Chia-i', 'CI', '1');
INSERT INTO `huannn_zone` VALUES ('3137', '206', 'Hsin-chu', 'HS', '1');
INSERT INTO `huannn_zone` VALUES ('3138', '206', 'Hua-lien', 'HL', '1');
INSERT INTO `huannn_zone` VALUES ('3139', '206', 'I-lan', 'IL', '1');
INSERT INTO `huannn_zone` VALUES ('3140', '206', 'Kao-hsiung county', 'KH', '1');
INSERT INTO `huannn_zone` VALUES ('3141', '206', 'Kin-men', 'KM', '1');
INSERT INTO `huannn_zone` VALUES ('3142', '206', 'Lien-chiang', 'LC', '1');
INSERT INTO `huannn_zone` VALUES ('3143', '206', 'Miao-li', 'ML', '1');
INSERT INTO `huannn_zone` VALUES ('3144', '206', 'Nan-t\'ou', 'NT', '1');
INSERT INTO `huannn_zone` VALUES ('3145', '206', 'P\'eng-hu', 'PH', '1');
INSERT INTO `huannn_zone` VALUES ('3146', '206', 'P\'ing-tung', 'PT', '1');
INSERT INTO `huannn_zone` VALUES ('3147', '206', 'T\'ai-chung', 'TG', '1');
INSERT INTO `huannn_zone` VALUES ('3148', '206', 'T\'ai-nan', 'TA', '1');
INSERT INTO `huannn_zone` VALUES ('3149', '206', 'T\'ai-pei county', 'TP', '1');
INSERT INTO `huannn_zone` VALUES ('3150', '206', 'T\'ai-tung', 'TT', '1');
INSERT INTO `huannn_zone` VALUES ('3151', '206', 'T\'ao-yuan', 'TY', '1');
INSERT INTO `huannn_zone` VALUES ('3152', '206', 'Yun-lin', 'YL', '1');
INSERT INTO `huannn_zone` VALUES ('3153', '206', 'Chia-i city', 'CC', '1');
INSERT INTO `huannn_zone` VALUES ('3154', '206', 'Chi-lung', 'CL', '1');
INSERT INTO `huannn_zone` VALUES ('3155', '206', 'Hsin-chu', 'HC', '1');
INSERT INTO `huannn_zone` VALUES ('3156', '206', 'T\'ai-chung', 'TH', '1');
INSERT INTO `huannn_zone` VALUES ('3157', '206', 'T\'ai-nan', 'TN', '1');
INSERT INTO `huannn_zone` VALUES ('3158', '206', 'Kao-hsiung city', 'KC', '1');
INSERT INTO `huannn_zone` VALUES ('3159', '206', 'T\'ai-pei city', 'TC', '1');
INSERT INTO `huannn_zone` VALUES ('3160', '207', 'Gorno-Badakhstan', 'GB', '1');
INSERT INTO `huannn_zone` VALUES ('3161', '207', 'Khatlon', 'KT', '1');
INSERT INTO `huannn_zone` VALUES ('3162', '207', 'Sughd', 'SU', '1');
INSERT INTO `huannn_zone` VALUES ('3163', '208', 'Arusha', 'AR', '1');
INSERT INTO `huannn_zone` VALUES ('3164', '208', 'Dar es Salaam', 'DS', '1');
INSERT INTO `huannn_zone` VALUES ('3165', '208', 'Dodoma', 'DO', '1');
INSERT INTO `huannn_zone` VALUES ('3166', '208', 'Iringa', 'IR', '1');
INSERT INTO `huannn_zone` VALUES ('3167', '208', 'Kagera', 'KA', '1');
INSERT INTO `huannn_zone` VALUES ('3168', '208', 'Kigoma', 'KI', '1');
INSERT INTO `huannn_zone` VALUES ('3169', '208', 'Kilimanjaro', 'KJ', '1');
INSERT INTO `huannn_zone` VALUES ('3170', '208', 'Lindi', 'LN', '1');
INSERT INTO `huannn_zone` VALUES ('3171', '208', 'Manyara', 'MY', '1');
INSERT INTO `huannn_zone` VALUES ('3172', '208', 'Mara', 'MR', '1');
INSERT INTO `huannn_zone` VALUES ('3173', '208', 'Mbeya', 'MB', '1');
INSERT INTO `huannn_zone` VALUES ('3174', '208', 'Morogoro', 'MO', '1');
INSERT INTO `huannn_zone` VALUES ('3175', '208', 'Mtwara', 'MT', '1');
INSERT INTO `huannn_zone` VALUES ('3176', '208', 'Mwanza', 'MW', '1');
INSERT INTO `huannn_zone` VALUES ('3177', '208', 'Pemba North', 'PN', '1');
INSERT INTO `huannn_zone` VALUES ('3178', '208', 'Pemba South', 'PS', '1');
INSERT INTO `huannn_zone` VALUES ('3179', '208', 'Pwani', 'PW', '1');
INSERT INTO `huannn_zone` VALUES ('3180', '208', 'Rukwa', 'RK', '1');
INSERT INTO `huannn_zone` VALUES ('3181', '208', 'Ruvuma', 'RV', '1');
INSERT INTO `huannn_zone` VALUES ('3182', '208', 'Shinyanga', 'SH', '1');
INSERT INTO `huannn_zone` VALUES ('3183', '208', 'Singida', 'SI', '1');
INSERT INTO `huannn_zone` VALUES ('3184', '208', 'Tabora', 'TB', '1');
INSERT INTO `huannn_zone` VALUES ('3185', '208', 'Tanga', 'TN', '1');
INSERT INTO `huannn_zone` VALUES ('3186', '208', 'Zanzibar Central/South', 'ZC', '1');
INSERT INTO `huannn_zone` VALUES ('3187', '208', 'Zanzibar North', 'ZN', '1');
INSERT INTO `huannn_zone` VALUES ('3188', '208', 'Zanzibar Urban/West', 'ZU', '1');
INSERT INTO `huannn_zone` VALUES ('3189', '209', 'Amnat Charoen', 'Amnat Charoen', '1');
INSERT INTO `huannn_zone` VALUES ('3190', '209', 'Ang Thong', 'Ang Thong', '1');
INSERT INTO `huannn_zone` VALUES ('3191', '209', 'Ayutthaya', 'Ayutthaya', '1');
INSERT INTO `huannn_zone` VALUES ('3192', '209', 'Bangkok', 'Bangkok', '1');
INSERT INTO `huannn_zone` VALUES ('3193', '209', 'Buriram', 'Buriram', '1');
INSERT INTO `huannn_zone` VALUES ('3194', '209', 'Chachoengsao', 'Chachoengsao', '1');
INSERT INTO `huannn_zone` VALUES ('3195', '209', 'Chai Nat', 'Chai Nat', '1');
INSERT INTO `huannn_zone` VALUES ('3196', '209', 'Chaiyaphum', 'Chaiyaphum', '1');
INSERT INTO `huannn_zone` VALUES ('3197', '209', 'Chanthaburi', 'Chanthaburi', '1');
INSERT INTO `huannn_zone` VALUES ('3198', '209', 'Chiang Mai', 'Chiang Mai', '1');
INSERT INTO `huannn_zone` VALUES ('3199', '209', 'Chiang Rai', 'Chiang Rai', '1');
INSERT INTO `huannn_zone` VALUES ('3200', '209', 'Chon Buri', 'Chon Buri', '1');
INSERT INTO `huannn_zone` VALUES ('3201', '209', 'Chumphon', 'Chumphon', '1');
INSERT INTO `huannn_zone` VALUES ('3202', '209', 'Kalasin', 'Kalasin', '1');
INSERT INTO `huannn_zone` VALUES ('3203', '209', 'Kamphaeng Phet', 'Kamphaeng Phet', '1');
INSERT INTO `huannn_zone` VALUES ('3204', '209', 'Kanchanaburi', 'Kanchanaburi', '1');
INSERT INTO `huannn_zone` VALUES ('3205', '209', 'Khon Kaen', 'Khon Kaen', '1');
INSERT INTO `huannn_zone` VALUES ('3206', '209', 'Krabi', 'Krabi', '1');
INSERT INTO `huannn_zone` VALUES ('3207', '209', 'Lampang', 'Lampang', '1');
INSERT INTO `huannn_zone` VALUES ('3208', '209', 'Lamphun', 'Lamphun', '1');
INSERT INTO `huannn_zone` VALUES ('3209', '209', 'Loei', 'Loei', '1');
INSERT INTO `huannn_zone` VALUES ('3210', '209', 'Lop Buri', 'Lop Buri', '1');
INSERT INTO `huannn_zone` VALUES ('3211', '209', 'Mae Hong Son', 'Mae Hong Son', '1');
INSERT INTO `huannn_zone` VALUES ('3212', '209', 'Maha Sarakham', 'Maha Sarakham', '1');
INSERT INTO `huannn_zone` VALUES ('3213', '209', 'Mukdahan', 'Mukdahan', '1');
INSERT INTO `huannn_zone` VALUES ('3214', '209', 'Nakhon Nayok', 'Nakhon Nayok', '1');
INSERT INTO `huannn_zone` VALUES ('3215', '209', 'Nakhon Pathom', 'Nakhon Pathom', '1');
INSERT INTO `huannn_zone` VALUES ('3216', '209', 'Nakhon Phanom', 'Nakhon Phanom', '1');
INSERT INTO `huannn_zone` VALUES ('3217', '209', 'Nakhon Ratchasima', 'Nakhon Ratchasima', '1');
INSERT INTO `huannn_zone` VALUES ('3218', '209', 'Nakhon Sawan', 'Nakhon Sawan', '1');
INSERT INTO `huannn_zone` VALUES ('3219', '209', 'Nakhon Si Thammarat', 'Nakhon Si Thammarat', '1');
INSERT INTO `huannn_zone` VALUES ('3220', '209', 'Nan', 'Nan', '1');
INSERT INTO `huannn_zone` VALUES ('3221', '209', 'Narathiwat', 'Narathiwat', '1');
INSERT INTO `huannn_zone` VALUES ('3222', '209', 'Nong Bua Lamphu', 'Nong Bua Lamphu', '1');
INSERT INTO `huannn_zone` VALUES ('3223', '209', 'Nong Khai', 'Nong Khai', '1');
INSERT INTO `huannn_zone` VALUES ('3224', '209', 'Nonthaburi', 'Nonthaburi', '1');
INSERT INTO `huannn_zone` VALUES ('3225', '209', 'Pathum Thani', 'Pathum Thani', '1');
INSERT INTO `huannn_zone` VALUES ('3226', '209', 'Pattani', 'Pattani', '1');
INSERT INTO `huannn_zone` VALUES ('3227', '209', 'Phangnga', 'Phangnga', '1');
INSERT INTO `huannn_zone` VALUES ('3228', '209', 'Phatthalung', 'Phatthalung', '1');
INSERT INTO `huannn_zone` VALUES ('3229', '209', 'Phayao', 'Phayao', '1');
INSERT INTO `huannn_zone` VALUES ('3230', '209', 'Phetchabun', 'Phetchabun', '1');
INSERT INTO `huannn_zone` VALUES ('3231', '209', 'Phetchaburi', 'Phetchaburi', '1');
INSERT INTO `huannn_zone` VALUES ('3232', '209', 'Phichit', 'Phichit', '1');
INSERT INTO `huannn_zone` VALUES ('3233', '209', 'Phitsanulok', 'Phitsanulok', '1');
INSERT INTO `huannn_zone` VALUES ('3234', '209', 'Phrae', 'Phrae', '1');
INSERT INTO `huannn_zone` VALUES ('3235', '209', 'Phuket', 'Phuket', '1');
INSERT INTO `huannn_zone` VALUES ('3236', '209', 'Prachin Buri', 'Prachin Buri', '1');
INSERT INTO `huannn_zone` VALUES ('3237', '209', 'Prachuap Khiri Khan', 'Prachuap Khiri Khan', '1');
INSERT INTO `huannn_zone` VALUES ('3238', '209', 'Ranong', 'Ranong', '1');
INSERT INTO `huannn_zone` VALUES ('3239', '209', 'Ratchaburi', 'Ratchaburi', '1');
INSERT INTO `huannn_zone` VALUES ('3240', '209', 'Rayong', 'Rayong', '1');
INSERT INTO `huannn_zone` VALUES ('3241', '209', 'Roi Et', 'Roi Et', '1');
INSERT INTO `huannn_zone` VALUES ('3242', '209', 'Sa Kaeo', 'Sa Kaeo', '1');
INSERT INTO `huannn_zone` VALUES ('3243', '209', 'Sakon Nakhon', 'Sakon Nakhon', '1');
INSERT INTO `huannn_zone` VALUES ('3244', '209', 'Samut Prakan', 'Samut Prakan', '1');
INSERT INTO `huannn_zone` VALUES ('3245', '209', 'Samut Sakhon', 'Samut Sakhon', '1');
INSERT INTO `huannn_zone` VALUES ('3246', '209', 'Samut Songkhram', 'Samut Songkhram', '1');
INSERT INTO `huannn_zone` VALUES ('3247', '209', 'Sara Buri', 'Sara Buri', '1');
INSERT INTO `huannn_zone` VALUES ('3248', '209', 'Satun', 'Satun', '1');
INSERT INTO `huannn_zone` VALUES ('3249', '209', 'Sing Buri', 'Sing Buri', '1');
INSERT INTO `huannn_zone` VALUES ('3250', '209', 'Sisaket', 'Sisaket', '1');
INSERT INTO `huannn_zone` VALUES ('3251', '209', 'Songkhla', 'Songkhla', '1');
INSERT INTO `huannn_zone` VALUES ('3252', '209', 'Sukhothai', 'Sukhothai', '1');
INSERT INTO `huannn_zone` VALUES ('3253', '209', 'Suphan Buri', 'Suphan Buri', '1');
INSERT INTO `huannn_zone` VALUES ('3254', '209', 'Surat Thani', 'Surat Thani', '1');
INSERT INTO `huannn_zone` VALUES ('3255', '209', 'Surin', 'Surin', '1');
INSERT INTO `huannn_zone` VALUES ('3256', '209', 'Tak', 'Tak', '1');
INSERT INTO `huannn_zone` VALUES ('3257', '209', 'Trang', 'Trang', '1');
INSERT INTO `huannn_zone` VALUES ('3258', '209', 'Trat', 'Trat', '1');
INSERT INTO `huannn_zone` VALUES ('3259', '209', 'Ubon Ratchathani', 'Ubon Ratchathani', '1');
INSERT INTO `huannn_zone` VALUES ('3260', '209', 'Udon Thani', 'Udon Thani', '1');
INSERT INTO `huannn_zone` VALUES ('3261', '209', 'Uthai Thani', 'Uthai Thani', '1');
INSERT INTO `huannn_zone` VALUES ('3262', '209', 'Uttaradit', 'Uttaradit', '1');
INSERT INTO `huannn_zone` VALUES ('3263', '209', 'Yala', 'Yala', '1');
INSERT INTO `huannn_zone` VALUES ('3264', '209', 'Yasothon', 'Yasothon', '1');
INSERT INTO `huannn_zone` VALUES ('3265', '210', 'Kara', 'K', '1');
INSERT INTO `huannn_zone` VALUES ('3266', '210', 'Plateaux', 'P', '1');
INSERT INTO `huannn_zone` VALUES ('3267', '210', 'Savanes', 'S', '1');
INSERT INTO `huannn_zone` VALUES ('3268', '210', 'Centrale', 'C', '1');
INSERT INTO `huannn_zone` VALUES ('3269', '210', 'Maritime', 'M', '1');
INSERT INTO `huannn_zone` VALUES ('3270', '211', 'Atafu', 'A', '1');
INSERT INTO `huannn_zone` VALUES ('3271', '211', 'Fakaofo', 'F', '1');
INSERT INTO `huannn_zone` VALUES ('3272', '211', 'Nukunonu', 'N', '1');
INSERT INTO `huannn_zone` VALUES ('3273', '212', 'Ha\'apai', 'H', '1');
INSERT INTO `huannn_zone` VALUES ('3274', '212', 'Tongatapu', 'T', '1');
INSERT INTO `huannn_zone` VALUES ('3275', '212', 'Vava\'u', 'V', '1');
INSERT INTO `huannn_zone` VALUES ('3276', '213', 'Couva/Tabaquite/Talparo', 'CT', '1');
INSERT INTO `huannn_zone` VALUES ('3277', '213', 'Diego Martin', 'DM', '1');
INSERT INTO `huannn_zone` VALUES ('3278', '213', 'Mayaro/Rio Claro', 'MR', '1');
INSERT INTO `huannn_zone` VALUES ('3279', '213', 'Penal/Debe', 'PD', '1');
INSERT INTO `huannn_zone` VALUES ('3280', '213', 'Princes Town', 'PT', '1');
INSERT INTO `huannn_zone` VALUES ('3281', '213', 'Sangre Grande', 'SG', '1');
INSERT INTO `huannn_zone` VALUES ('3282', '213', 'San Juan/Laventille', 'SL', '1');
INSERT INTO `huannn_zone` VALUES ('3283', '213', 'Siparia', 'SI', '1');
INSERT INTO `huannn_zone` VALUES ('3284', '213', 'Tunapuna/Piarco', 'TP', '1');
INSERT INTO `huannn_zone` VALUES ('3285', '213', 'Port of Spain', 'PS', '1');
INSERT INTO `huannn_zone` VALUES ('3286', '213', 'San Fernando', 'SF', '1');
INSERT INTO `huannn_zone` VALUES ('3287', '213', 'Arima', 'AR', '1');
INSERT INTO `huannn_zone` VALUES ('3288', '213', 'Point Fortin', 'PF', '1');
INSERT INTO `huannn_zone` VALUES ('3289', '213', 'Chaguanas', 'CH', '1');
INSERT INTO `huannn_zone` VALUES ('3290', '213', 'Tobago', 'TO', '1');
INSERT INTO `huannn_zone` VALUES ('3291', '214', 'Ariana', 'AR', '1');
INSERT INTO `huannn_zone` VALUES ('3292', '214', 'Beja', 'BJ', '1');
INSERT INTO `huannn_zone` VALUES ('3293', '214', 'Ben Arous', 'BA', '1');
INSERT INTO `huannn_zone` VALUES ('3294', '214', 'Bizerte', 'BI', '1');
INSERT INTO `huannn_zone` VALUES ('3295', '214', 'Gabes', 'GB', '1');
INSERT INTO `huannn_zone` VALUES ('3296', '214', 'Gafsa', 'GF', '1');
INSERT INTO `huannn_zone` VALUES ('3297', '214', 'Jendouba', 'JE', '1');
INSERT INTO `huannn_zone` VALUES ('3298', '214', 'Kairouan', 'KR', '1');
INSERT INTO `huannn_zone` VALUES ('3299', '214', 'Kasserine', 'KS', '1');
INSERT INTO `huannn_zone` VALUES ('3300', '214', 'Kebili', 'KB', '1');
INSERT INTO `huannn_zone` VALUES ('3301', '214', 'Kef', 'KF', '1');
INSERT INTO `huannn_zone` VALUES ('3302', '214', 'Mahdia', 'MH', '1');
INSERT INTO `huannn_zone` VALUES ('3303', '214', 'Manouba', 'MN', '1');
INSERT INTO `huannn_zone` VALUES ('3304', '214', 'Medenine', 'ME', '1');
INSERT INTO `huannn_zone` VALUES ('3305', '214', 'Monastir', 'MO', '1');
INSERT INTO `huannn_zone` VALUES ('3306', '214', 'Nabeul', 'NA', '1');
INSERT INTO `huannn_zone` VALUES ('3307', '214', 'Sfax', 'SF', '1');
INSERT INTO `huannn_zone` VALUES ('3308', '214', 'Sidi', 'SD', '1');
INSERT INTO `huannn_zone` VALUES ('3309', '214', 'Siliana', 'SL', '1');
INSERT INTO `huannn_zone` VALUES ('3310', '214', 'Sousse', 'SO', '1');
INSERT INTO `huannn_zone` VALUES ('3311', '214', 'Tataouine', 'TA', '1');
INSERT INTO `huannn_zone` VALUES ('3312', '214', 'Tozeur', 'TO', '1');
INSERT INTO `huannn_zone` VALUES ('3313', '214', 'Tunis', 'TU', '1');
INSERT INTO `huannn_zone` VALUES ('3314', '214', 'Zaghouan', 'ZA', '1');
INSERT INTO `huannn_zone` VALUES ('3315', '215', 'Adana', 'ADA', '1');
INSERT INTO `huannn_zone` VALUES ('3316', '215', 'Adıyaman', 'ADI', '1');
INSERT INTO `huannn_zone` VALUES ('3317', '215', 'Afyonkarahisar', 'AFY', '1');
INSERT INTO `huannn_zone` VALUES ('3318', '215', 'Ağrı', 'AGR', '1');
INSERT INTO `huannn_zone` VALUES ('3319', '215', 'Aksaray', 'AKS', '1');
INSERT INTO `huannn_zone` VALUES ('3320', '215', 'Amasya', 'AMA', '1');
INSERT INTO `huannn_zone` VALUES ('3321', '215', 'Ankara', 'ANK', '1');
INSERT INTO `huannn_zone` VALUES ('3322', '215', 'Antalya', 'ANT', '1');
INSERT INTO `huannn_zone` VALUES ('3323', '215', 'Ardahan', 'ARD', '1');
INSERT INTO `huannn_zone` VALUES ('3324', '215', 'Artvin', 'ART', '1');
INSERT INTO `huannn_zone` VALUES ('3325', '215', 'Aydın', 'AYI', '1');
INSERT INTO `huannn_zone` VALUES ('3326', '215', 'Balıkesir', 'BAL', '1');
INSERT INTO `huannn_zone` VALUES ('3327', '215', 'Bartın', 'BAR', '1');
INSERT INTO `huannn_zone` VALUES ('3328', '215', 'Batman', 'BAT', '1');
INSERT INTO `huannn_zone` VALUES ('3329', '215', 'Bayburt', 'BAY', '1');
INSERT INTO `huannn_zone` VALUES ('3330', '215', 'Bilecik', 'BIL', '1');
INSERT INTO `huannn_zone` VALUES ('3331', '215', 'Bingöl', 'BIN', '1');
INSERT INTO `huannn_zone` VALUES ('3332', '215', 'Bitlis', 'BIT', '1');
INSERT INTO `huannn_zone` VALUES ('3333', '215', 'Bolu', 'BOL', '1');
INSERT INTO `huannn_zone` VALUES ('3334', '215', 'Burdur', 'BRD', '1');
INSERT INTO `huannn_zone` VALUES ('3335', '215', 'Bursa', 'BRS', '1');
INSERT INTO `huannn_zone` VALUES ('3336', '215', 'Çanakkale', 'CKL', '1');
INSERT INTO `huannn_zone` VALUES ('3337', '215', 'Çankırı', 'CKR', '1');
INSERT INTO `huannn_zone` VALUES ('3338', '215', 'Çorum', 'COR', '1');
INSERT INTO `huannn_zone` VALUES ('3339', '215', 'Denizli', 'DEN', '1');
INSERT INTO `huannn_zone` VALUES ('3340', '215', 'Diyarbakır', 'DIY', '1');
INSERT INTO `huannn_zone` VALUES ('3341', '215', 'Düzce', 'DUZ', '1');
INSERT INTO `huannn_zone` VALUES ('3342', '215', 'Edirne', 'EDI', '1');
INSERT INTO `huannn_zone` VALUES ('3343', '215', 'Elazığ', 'ELA', '1');
INSERT INTO `huannn_zone` VALUES ('3344', '215', 'Erzincan', 'EZC', '1');
INSERT INTO `huannn_zone` VALUES ('3345', '215', 'Erzurum', 'EZR', '1');
INSERT INTO `huannn_zone` VALUES ('3346', '215', 'Eskişehir', 'ESK', '1');
INSERT INTO `huannn_zone` VALUES ('3347', '215', 'Gaziantep', 'GAZ', '1');
INSERT INTO `huannn_zone` VALUES ('3348', '215', 'Giresun', 'GIR', '1');
INSERT INTO `huannn_zone` VALUES ('3349', '215', 'Gümüşhane', 'GMS', '1');
INSERT INTO `huannn_zone` VALUES ('3350', '215', 'Hakkari', 'HKR', '1');
INSERT INTO `huannn_zone` VALUES ('3351', '215', 'Hatay', 'HTY', '1');
INSERT INTO `huannn_zone` VALUES ('3352', '215', 'Iğdır', 'IGD', '1');
INSERT INTO `huannn_zone` VALUES ('3353', '215', 'Isparta', 'ISP', '1');
INSERT INTO `huannn_zone` VALUES ('3354', '215', 'İstanbul', 'IST', '1');
INSERT INTO `huannn_zone` VALUES ('3355', '215', 'İzmir', 'IZM', '1');
INSERT INTO `huannn_zone` VALUES ('3356', '215', 'Kahramanmaraş', 'KAH', '1');
INSERT INTO `huannn_zone` VALUES ('3357', '215', 'Karabük', 'KRB', '1');
INSERT INTO `huannn_zone` VALUES ('3358', '215', 'Karaman', 'KRM', '1');
INSERT INTO `huannn_zone` VALUES ('3359', '215', 'Kars', 'KRS', '1');
INSERT INTO `huannn_zone` VALUES ('3360', '215', 'Kastamonu', 'KAS', '1');
INSERT INTO `huannn_zone` VALUES ('3361', '215', 'Kayseri', 'KAY', '1');
INSERT INTO `huannn_zone` VALUES ('3362', '215', 'Kilis', 'KLS', '1');
INSERT INTO `huannn_zone` VALUES ('3363', '215', 'Kırıkkale', 'KRK', '1');
INSERT INTO `huannn_zone` VALUES ('3364', '215', 'Kırklareli', 'KLR', '1');
INSERT INTO `huannn_zone` VALUES ('3365', '215', 'Kırşehir', 'KRH', '1');
INSERT INTO `huannn_zone` VALUES ('3366', '215', 'Kocaeli', 'KOC', '1');
INSERT INTO `huannn_zone` VALUES ('3367', '215', 'Konya', 'KON', '1');
INSERT INTO `huannn_zone` VALUES ('3368', '215', 'Kütahya', 'KUT', '1');
INSERT INTO `huannn_zone` VALUES ('3369', '215', 'Malatya', 'MAL', '1');
INSERT INTO `huannn_zone` VALUES ('3370', '215', 'Manisa', 'MAN', '1');
INSERT INTO `huannn_zone` VALUES ('3371', '215', 'Mardin', 'MAR', '1');
INSERT INTO `huannn_zone` VALUES ('3372', '215', 'Mersin', 'MER', '1');
INSERT INTO `huannn_zone` VALUES ('3373', '215', 'Muğla', 'MUG', '1');
INSERT INTO `huannn_zone` VALUES ('3374', '215', 'Muş', 'MUS', '1');
INSERT INTO `huannn_zone` VALUES ('3375', '215', 'Nevşehir', 'NEV', '1');
INSERT INTO `huannn_zone` VALUES ('3376', '215', 'Niğde', 'NIG', '1');
INSERT INTO `huannn_zone` VALUES ('3377', '215', 'Ordu', 'ORD', '1');
INSERT INTO `huannn_zone` VALUES ('3378', '215', 'Osmaniye', 'OSM', '1');
INSERT INTO `huannn_zone` VALUES ('3379', '215', 'Rize', 'RIZ', '1');
INSERT INTO `huannn_zone` VALUES ('3380', '215', 'Sakarya', 'SAK', '1');
INSERT INTO `huannn_zone` VALUES ('3381', '215', 'Samsun', 'SAM', '1');
INSERT INTO `huannn_zone` VALUES ('3382', '215', 'Şanlıurfa', 'SAN', '1');
INSERT INTO `huannn_zone` VALUES ('3383', '215', 'Siirt', 'SII', '1');
INSERT INTO `huannn_zone` VALUES ('3384', '215', 'Sinop', 'SIN', '1');
INSERT INTO `huannn_zone` VALUES ('3385', '215', 'Şırnak', 'SIR', '1');
INSERT INTO `huannn_zone` VALUES ('3386', '215', 'Sivas', 'SIV', '1');
INSERT INTO `huannn_zone` VALUES ('3387', '215', 'Tekirdağ', 'TEL', '1');
INSERT INTO `huannn_zone` VALUES ('3388', '215', 'Tokat', 'TOK', '1');
INSERT INTO `huannn_zone` VALUES ('3389', '215', 'Trabzon', 'TRA', '1');
INSERT INTO `huannn_zone` VALUES ('3390', '215', 'Tunceli', 'TUN', '1');
INSERT INTO `huannn_zone` VALUES ('3391', '215', 'Uşak', 'USK', '1');
INSERT INTO `huannn_zone` VALUES ('3392', '215', 'Van', 'VAN', '1');
INSERT INTO `huannn_zone` VALUES ('3393', '215', 'Yalova', 'YAL', '1');
INSERT INTO `huannn_zone` VALUES ('3394', '215', 'Yozgat', 'YOZ', '1');
INSERT INTO `huannn_zone` VALUES ('3395', '215', 'Zonguldak', 'ZON', '1');
INSERT INTO `huannn_zone` VALUES ('3396', '216', 'Ahal Welayaty', 'A', '1');
INSERT INTO `huannn_zone` VALUES ('3397', '216', 'Balkan Welayaty', 'B', '1');
INSERT INTO `huannn_zone` VALUES ('3398', '216', 'Dashhowuz Welayaty', 'D', '1');
INSERT INTO `huannn_zone` VALUES ('3399', '216', 'Lebap Welayaty', 'L', '1');
INSERT INTO `huannn_zone` VALUES ('3400', '216', 'Mary Welayaty', 'M', '1');
INSERT INTO `huannn_zone` VALUES ('3401', '217', 'Ambergris Cays', 'AC', '1');
INSERT INTO `huannn_zone` VALUES ('3402', '217', 'Dellis Cay', 'DC', '1');
INSERT INTO `huannn_zone` VALUES ('3403', '217', 'French Cay', 'FC', '1');
INSERT INTO `huannn_zone` VALUES ('3404', '217', 'Little Water Cay', 'LW', '1');
INSERT INTO `huannn_zone` VALUES ('3405', '217', 'Parrot Cay', 'RC', '1');
INSERT INTO `huannn_zone` VALUES ('3406', '217', 'Pine Cay', 'PN', '1');
INSERT INTO `huannn_zone` VALUES ('3407', '217', 'Salt Cay', 'SL', '1');
INSERT INTO `huannn_zone` VALUES ('3408', '217', 'Grand Turk', 'GT', '1');
INSERT INTO `huannn_zone` VALUES ('3409', '217', 'South Caicos', 'SC', '1');
INSERT INTO `huannn_zone` VALUES ('3410', '217', 'East Caicos', 'EC', '1');
INSERT INTO `huannn_zone` VALUES ('3411', '217', 'Middle Caicos', 'MC', '1');
INSERT INTO `huannn_zone` VALUES ('3412', '217', 'North Caicos', 'NC', '1');
INSERT INTO `huannn_zone` VALUES ('3413', '217', 'Providenciales', 'PR', '1');
INSERT INTO `huannn_zone` VALUES ('3414', '217', 'West Caicos', 'WC', '1');
INSERT INTO `huannn_zone` VALUES ('3415', '218', 'Nanumanga', 'NMG', '1');
INSERT INTO `huannn_zone` VALUES ('3416', '218', 'Niulakita', 'NLK', '1');
INSERT INTO `huannn_zone` VALUES ('3417', '218', 'Niutao', 'NTO', '1');
INSERT INTO `huannn_zone` VALUES ('3418', '218', 'Funafuti', 'FUN', '1');
INSERT INTO `huannn_zone` VALUES ('3419', '218', 'Nanumea', 'NME', '1');
INSERT INTO `huannn_zone` VALUES ('3420', '218', 'Nui', 'NUI', '1');
INSERT INTO `huannn_zone` VALUES ('3421', '218', 'Nukufetau', 'NFT', '1');
INSERT INTO `huannn_zone` VALUES ('3422', '218', 'Nukulaelae', 'NLL', '1');
INSERT INTO `huannn_zone` VALUES ('3423', '218', 'Vaitupu', 'VAI', '1');
INSERT INTO `huannn_zone` VALUES ('3424', '219', 'Kalangala', 'KAL', '1');
INSERT INTO `huannn_zone` VALUES ('3425', '219', 'Kampala', 'KMP', '1');
INSERT INTO `huannn_zone` VALUES ('3426', '219', 'Kayunga', 'KAY', '1');
INSERT INTO `huannn_zone` VALUES ('3427', '219', 'Kiboga', 'KIB', '1');
INSERT INTO `huannn_zone` VALUES ('3428', '219', 'Luwero', 'LUW', '1');
INSERT INTO `huannn_zone` VALUES ('3429', '219', 'Masaka', 'MAS', '1');
INSERT INTO `huannn_zone` VALUES ('3430', '219', 'Mpigi', 'MPI', '1');
INSERT INTO `huannn_zone` VALUES ('3431', '219', 'Mubende', 'MUB', '1');
INSERT INTO `huannn_zone` VALUES ('3432', '219', 'Mukono', 'MUK', '1');
INSERT INTO `huannn_zone` VALUES ('3433', '219', 'Nakasongola', 'NKS', '1');
INSERT INTO `huannn_zone` VALUES ('3434', '219', 'Rakai', 'RAK', '1');
INSERT INTO `huannn_zone` VALUES ('3435', '219', 'Sembabule', 'SEM', '1');
INSERT INTO `huannn_zone` VALUES ('3436', '219', 'Wakiso', 'WAK', '1');
INSERT INTO `huannn_zone` VALUES ('3437', '219', 'Bugiri', 'BUG', '1');
INSERT INTO `huannn_zone` VALUES ('3438', '219', 'Busia', 'BUS', '1');
INSERT INTO `huannn_zone` VALUES ('3439', '219', 'Iganga', 'IGA', '1');
INSERT INTO `huannn_zone` VALUES ('3440', '219', 'Jinja', 'JIN', '1');
INSERT INTO `huannn_zone` VALUES ('3441', '219', 'Kaberamaido', 'KAB', '1');
INSERT INTO `huannn_zone` VALUES ('3442', '219', 'Kamuli', 'KML', '1');
INSERT INTO `huannn_zone` VALUES ('3443', '219', 'Kapchorwa', 'KPC', '1');
INSERT INTO `huannn_zone` VALUES ('3444', '219', 'Katakwi', 'KTK', '1');
INSERT INTO `huannn_zone` VALUES ('3445', '219', 'Kumi', 'KUM', '1');
INSERT INTO `huannn_zone` VALUES ('3446', '219', 'Mayuge', 'MAY', '1');
INSERT INTO `huannn_zone` VALUES ('3447', '219', 'Mbale', 'MBA', '1');
INSERT INTO `huannn_zone` VALUES ('3448', '219', 'Pallisa', 'PAL', '1');
INSERT INTO `huannn_zone` VALUES ('3449', '219', 'Sironko', 'SIR', '1');
INSERT INTO `huannn_zone` VALUES ('3450', '219', 'Soroti', 'SOR', '1');
INSERT INTO `huannn_zone` VALUES ('3451', '219', 'Tororo', 'TOR', '1');
INSERT INTO `huannn_zone` VALUES ('3452', '219', 'Adjumani', 'ADJ', '1');
INSERT INTO `huannn_zone` VALUES ('3453', '219', 'Apac', 'APC', '1');
INSERT INTO `huannn_zone` VALUES ('3454', '219', 'Arua', 'ARU', '1');
INSERT INTO `huannn_zone` VALUES ('3455', '219', 'Gulu', 'GUL', '1');
INSERT INTO `huannn_zone` VALUES ('3456', '219', 'Kitgum', 'KIT', '1');
INSERT INTO `huannn_zone` VALUES ('3457', '219', 'Kotido', 'KOT', '1');
INSERT INTO `huannn_zone` VALUES ('3458', '219', 'Lira', 'LIR', '1');
INSERT INTO `huannn_zone` VALUES ('3459', '219', 'Moroto', 'MRT', '1');
INSERT INTO `huannn_zone` VALUES ('3460', '219', 'Moyo', 'MOY', '1');
INSERT INTO `huannn_zone` VALUES ('3461', '219', 'Nakapiripirit', 'NAK', '1');
INSERT INTO `huannn_zone` VALUES ('3462', '219', 'Nebbi', 'NEB', '1');
INSERT INTO `huannn_zone` VALUES ('3463', '219', 'Pader', 'PAD', '1');
INSERT INTO `huannn_zone` VALUES ('3464', '219', 'Yumbe', 'YUM', '1');
INSERT INTO `huannn_zone` VALUES ('3465', '219', 'Bundibugyo', 'BUN', '1');
INSERT INTO `huannn_zone` VALUES ('3466', '219', 'Bushenyi', 'BSH', '1');
INSERT INTO `huannn_zone` VALUES ('3467', '219', 'Hoima', 'HOI', '1');
INSERT INTO `huannn_zone` VALUES ('3468', '219', 'Kabale', 'KBL', '1');
INSERT INTO `huannn_zone` VALUES ('3469', '219', 'Kabarole', 'KAR', '1');
INSERT INTO `huannn_zone` VALUES ('3470', '219', 'Kamwenge', 'KAM', '1');
INSERT INTO `huannn_zone` VALUES ('3471', '219', 'Kanungu', 'KAN', '1');
INSERT INTO `huannn_zone` VALUES ('3472', '219', 'Kasese', 'KAS', '1');
INSERT INTO `huannn_zone` VALUES ('3473', '219', 'Kibaale', 'KBA', '1');
INSERT INTO `huannn_zone` VALUES ('3474', '219', 'Kisoro', 'KIS', '1');
INSERT INTO `huannn_zone` VALUES ('3475', '219', 'Kyenjojo', 'KYE', '1');
INSERT INTO `huannn_zone` VALUES ('3476', '219', 'Masindi', 'MSN', '1');
INSERT INTO `huannn_zone` VALUES ('3477', '219', 'Mbarara', 'MBR', '1');
INSERT INTO `huannn_zone` VALUES ('3478', '219', 'Ntungamo', 'NTU', '1');
INSERT INTO `huannn_zone` VALUES ('3479', '219', 'Rukungiri', 'RUK', '1');
INSERT INTO `huannn_zone` VALUES ('3480', '220', 'Cherkas\'ka Oblast\'', '71', '1');
INSERT INTO `huannn_zone` VALUES ('3481', '220', 'Chernihivs\'ka Oblast\'', '74', '1');
INSERT INTO `huannn_zone` VALUES ('3482', '220', 'Chernivets\'ka Oblast\'', '77', '1');
INSERT INTO `huannn_zone` VALUES ('3483', '220', 'Crimea', '43', '1');
INSERT INTO `huannn_zone` VALUES ('3484', '220', 'Dnipropetrovs\'ka Oblast\'', '12', '1');
INSERT INTO `huannn_zone` VALUES ('3485', '220', 'Donets\'ka Oblast\'', '14', '1');
INSERT INTO `huannn_zone` VALUES ('3486', '220', 'Ivano-Frankivs\'ka Oblast\'', '26', '1');
INSERT INTO `huannn_zone` VALUES ('3487', '220', 'Khersons\'ka Oblast\'', '65', '1');
INSERT INTO `huannn_zone` VALUES ('3488', '220', 'Khmel\'nyts\'ka Oblast\'', '68', '1');
INSERT INTO `huannn_zone` VALUES ('3489', '220', 'Kirovohrads\'ka Oblast\'', '35', '1');
INSERT INTO `huannn_zone` VALUES ('3490', '220', 'Kyiv', '30', '1');
INSERT INTO `huannn_zone` VALUES ('3491', '220', 'Kyivs\'ka Oblast\'', '32', '1');
INSERT INTO `huannn_zone` VALUES ('3492', '220', 'Luhans\'ka Oblast\'', '09', '1');
INSERT INTO `huannn_zone` VALUES ('3493', '220', 'L\'vivs\'ka Oblast\'', '46', '1');
INSERT INTO `huannn_zone` VALUES ('3494', '220', 'Mykolayivs\'ka Oblast\'', '48', '1');
INSERT INTO `huannn_zone` VALUES ('3495', '220', 'Odes\'ka Oblast\'', '51', '1');
INSERT INTO `huannn_zone` VALUES ('3496', '220', 'Poltavs\'ka Oblast\'', '53', '1');
INSERT INTO `huannn_zone` VALUES ('3497', '220', 'Rivnens\'ka Oblast\'', '56', '1');
INSERT INTO `huannn_zone` VALUES ('3498', '220', 'Sevastopol\'', '40', '1');
INSERT INTO `huannn_zone` VALUES ('3499', '220', 'Sums\'ka Oblast\'', '59', '1');
INSERT INTO `huannn_zone` VALUES ('3500', '220', 'Ternopil\'s\'ka Oblast\'', '61', '1');
INSERT INTO `huannn_zone` VALUES ('3501', '220', 'Vinnyts\'ka Oblast\'', '05', '1');
INSERT INTO `huannn_zone` VALUES ('3502', '220', 'Volyns\'ka Oblast\'', '07', '1');
INSERT INTO `huannn_zone` VALUES ('3503', '220', 'Zakarpats\'ka Oblast\'', '21', '1');
INSERT INTO `huannn_zone` VALUES ('3504', '220', 'Zaporiz\'ka Oblast\'', '23', '1');
INSERT INTO `huannn_zone` VALUES ('3505', '220', 'Zhytomyrs\'ka oblast\'', '18', '1');
INSERT INTO `huannn_zone` VALUES ('3506', '221', 'Abu Dhabi', 'ADH', '1');
INSERT INTO `huannn_zone` VALUES ('3507', '221', '\'Ajman', 'AJ', '1');
INSERT INTO `huannn_zone` VALUES ('3508', '221', 'Al Fujayrah', 'FU', '1');
INSERT INTO `huannn_zone` VALUES ('3509', '221', 'Ash Shariqah', 'SH', '1');
INSERT INTO `huannn_zone` VALUES ('3510', '221', 'Dubai', 'DU', '1');
INSERT INTO `huannn_zone` VALUES ('3511', '221', 'R\'as al Khaymah', 'RK', '1');
INSERT INTO `huannn_zone` VALUES ('3512', '221', 'Umm al Qaywayn', 'UQ', '1');
INSERT INTO `huannn_zone` VALUES ('3513', '222', 'Aberdeen', 'ABN', '1');
INSERT INTO `huannn_zone` VALUES ('3514', '222', 'Aberdeenshire', 'ABNS', '1');
INSERT INTO `huannn_zone` VALUES ('3515', '222', 'Anglesey', 'ANG', '1');
INSERT INTO `huannn_zone` VALUES ('3516', '222', 'Angus', 'AGS', '1');
INSERT INTO `huannn_zone` VALUES ('3517', '222', 'Argyll and Bute', 'ARY', '1');
INSERT INTO `huannn_zone` VALUES ('3518', '222', 'Bedfordshire', 'BEDS', '1');
INSERT INTO `huannn_zone` VALUES ('3519', '222', 'Berkshire', 'BERKS', '1');
INSERT INTO `huannn_zone` VALUES ('3520', '222', 'Blaenau Gwent', 'BLA', '1');
INSERT INTO `huannn_zone` VALUES ('3521', '222', 'Bridgend', 'BRI', '1');
INSERT INTO `huannn_zone` VALUES ('3522', '222', 'Bristol', 'BSTL', '1');
INSERT INTO `huannn_zone` VALUES ('3523', '222', 'Buckinghamshire', 'BUCKS', '1');
INSERT INTO `huannn_zone` VALUES ('3524', '222', 'Caerphilly', 'CAE', '1');
INSERT INTO `huannn_zone` VALUES ('3525', '222', 'Cambridgeshire', 'CAMBS', '1');
INSERT INTO `huannn_zone` VALUES ('3526', '222', 'Cardiff', 'CDF', '1');
INSERT INTO `huannn_zone` VALUES ('3527', '222', 'Carmarthenshire', 'CARM', '1');
INSERT INTO `huannn_zone` VALUES ('3528', '222', 'Ceredigion', 'CDGN', '1');
INSERT INTO `huannn_zone` VALUES ('3529', '222', 'Cheshire', 'CHES', '1');
INSERT INTO `huannn_zone` VALUES ('3530', '222', 'Clackmannanshire', 'CLACK', '1');
INSERT INTO `huannn_zone` VALUES ('3531', '222', 'Conwy', 'CON', '1');
INSERT INTO `huannn_zone` VALUES ('3532', '222', 'Cornwall', 'CORN', '1');
INSERT INTO `huannn_zone` VALUES ('3533', '222', 'Denbighshire', 'DNBG', '1');
INSERT INTO `huannn_zone` VALUES ('3534', '222', 'Derbyshire', 'DERBY', '1');
INSERT INTO `huannn_zone` VALUES ('3535', '222', 'Devon', 'DVN', '1');
INSERT INTO `huannn_zone` VALUES ('3536', '222', 'Dorset', 'DOR', '1');
INSERT INTO `huannn_zone` VALUES ('3537', '222', 'Dumfries and Galloway', 'DGL', '1');
INSERT INTO `huannn_zone` VALUES ('3538', '222', 'Dundee', 'DUND', '1');
INSERT INTO `huannn_zone` VALUES ('3539', '222', 'Durham', 'DHM', '1');
INSERT INTO `huannn_zone` VALUES ('3540', '222', 'East Ayrshire', 'ARYE', '1');
INSERT INTO `huannn_zone` VALUES ('3541', '222', 'East Dunbartonshire', 'DUNBE', '1');
INSERT INTO `huannn_zone` VALUES ('3542', '222', 'East Lothian', 'LOTE', '1');
INSERT INTO `huannn_zone` VALUES ('3543', '222', 'East Renfrewshire', 'RENE', '1');
INSERT INTO `huannn_zone` VALUES ('3544', '222', 'East Riding of Yorkshire', 'ERYS', '1');
INSERT INTO `huannn_zone` VALUES ('3545', '222', 'East Sussex', 'SXE', '1');
INSERT INTO `huannn_zone` VALUES ('3546', '222', 'Edinburgh', 'EDIN', '1');
INSERT INTO `huannn_zone` VALUES ('3547', '222', 'Essex', 'ESX', '1');
INSERT INTO `huannn_zone` VALUES ('3548', '222', 'Falkirk', 'FALK', '1');
INSERT INTO `huannn_zone` VALUES ('3549', '222', 'Fife', 'FFE', '1');
INSERT INTO `huannn_zone` VALUES ('3550', '222', 'Flintshire', 'FLINT', '1');
INSERT INTO `huannn_zone` VALUES ('3551', '222', 'Glasgow', 'GLAS', '1');
INSERT INTO `huannn_zone` VALUES ('3552', '222', 'Gloucestershire', 'GLOS', '1');
INSERT INTO `huannn_zone` VALUES ('3553', '222', 'Greater London', 'LDN', '1');
INSERT INTO `huannn_zone` VALUES ('3554', '222', 'Greater Manchester', 'MCH', '1');
INSERT INTO `huannn_zone` VALUES ('3555', '222', 'Gwynedd', 'GDD', '1');
INSERT INTO `huannn_zone` VALUES ('3556', '222', 'Hampshire', 'HANTS', '1');
INSERT INTO `huannn_zone` VALUES ('3557', '222', 'Herefordshire', 'HWR', '1');
INSERT INTO `huannn_zone` VALUES ('3558', '222', 'Hertfordshire', 'HERTS', '1');
INSERT INTO `huannn_zone` VALUES ('3559', '222', 'Highlands', 'HLD', '1');
INSERT INTO `huannn_zone` VALUES ('3560', '222', 'Inverclyde', 'IVER', '1');
INSERT INTO `huannn_zone` VALUES ('3561', '222', 'Isle of Wight', 'IOW', '1');
INSERT INTO `huannn_zone` VALUES ('3562', '222', 'Kent', 'KNT', '1');
INSERT INTO `huannn_zone` VALUES ('3563', '222', 'Lancashire', 'LANCS', '1');
INSERT INTO `huannn_zone` VALUES ('3564', '222', 'Leicestershire', 'LEICS', '1');
INSERT INTO `huannn_zone` VALUES ('3565', '222', 'Lincolnshire', 'LINCS', '1');
INSERT INTO `huannn_zone` VALUES ('3566', '222', 'Merseyside', 'MSY', '1');
INSERT INTO `huannn_zone` VALUES ('3567', '222', 'Merthyr Tydfil', 'MERT', '1');
INSERT INTO `huannn_zone` VALUES ('3568', '222', 'Midlothian', 'MLOT', '1');
INSERT INTO `huannn_zone` VALUES ('3569', '222', 'Monmouthshire', 'MMOUTH', '1');
INSERT INTO `huannn_zone` VALUES ('3570', '222', 'Moray', 'MORAY', '1');
INSERT INTO `huannn_zone` VALUES ('3571', '222', 'Neath Port Talbot', 'NPRTAL', '1');
INSERT INTO `huannn_zone` VALUES ('3572', '222', 'Newport', 'NEWPT', '1');
INSERT INTO `huannn_zone` VALUES ('3573', '222', 'Norfolk', 'NOR', '1');
INSERT INTO `huannn_zone` VALUES ('3574', '222', 'North Ayrshire', 'ARYN', '1');
INSERT INTO `huannn_zone` VALUES ('3575', '222', 'North Lanarkshire', 'LANN', '1');
INSERT INTO `huannn_zone` VALUES ('3576', '222', 'North Yorkshire', 'YSN', '1');
INSERT INTO `huannn_zone` VALUES ('3577', '222', 'Northamptonshire', 'NHM', '1');
INSERT INTO `huannn_zone` VALUES ('3578', '222', 'Northumberland', 'NLD', '1');
INSERT INTO `huannn_zone` VALUES ('3579', '222', 'Nottinghamshire', 'NOT', '1');
INSERT INTO `huannn_zone` VALUES ('3580', '222', 'Orkney Islands', 'ORK', '1');
INSERT INTO `huannn_zone` VALUES ('3581', '222', 'Oxfordshire', 'OFE', '1');
INSERT INTO `huannn_zone` VALUES ('3582', '222', 'Pembrokeshire', 'PEM', '1');
INSERT INTO `huannn_zone` VALUES ('3583', '222', 'Perth and Kinross', 'PERTH', '1');
INSERT INTO `huannn_zone` VALUES ('3584', '222', 'Powys', 'PWS', '1');
INSERT INTO `huannn_zone` VALUES ('3585', '222', 'Renfrewshire', 'REN', '1');
INSERT INTO `huannn_zone` VALUES ('3586', '222', 'Rhondda Cynon Taff', 'RHON', '1');
INSERT INTO `huannn_zone` VALUES ('3587', '222', 'Rutland', 'RUT', '1');
INSERT INTO `huannn_zone` VALUES ('3588', '222', 'Scottish Borders', 'BOR', '1');
INSERT INTO `huannn_zone` VALUES ('3589', '222', 'Shetland Islands', 'SHET', '1');
INSERT INTO `huannn_zone` VALUES ('3590', '222', 'Shropshire', 'SPE', '1');
INSERT INTO `huannn_zone` VALUES ('3591', '222', 'Somerset', 'SOM', '1');
INSERT INTO `huannn_zone` VALUES ('3592', '222', 'South Ayrshire', 'ARYS', '1');
INSERT INTO `huannn_zone` VALUES ('3593', '222', 'South Lanarkshire', 'LANS', '1');
INSERT INTO `huannn_zone` VALUES ('3594', '222', 'South Yorkshire', 'YSS', '1');
INSERT INTO `huannn_zone` VALUES ('3595', '222', 'Staffordshire', 'SFD', '1');
INSERT INTO `huannn_zone` VALUES ('3596', '222', 'Stirling', 'STIR', '1');
INSERT INTO `huannn_zone` VALUES ('3597', '222', 'Suffolk', 'SFK', '1');
INSERT INTO `huannn_zone` VALUES ('3598', '222', 'Surrey', 'SRY', '1');
INSERT INTO `huannn_zone` VALUES ('3599', '222', 'Swansea', 'SWAN', '1');
INSERT INTO `huannn_zone` VALUES ('3600', '222', 'Torfaen', 'TORF', '1');
INSERT INTO `huannn_zone` VALUES ('3601', '222', 'Tyne and Wear', 'TWR', '1');
INSERT INTO `huannn_zone` VALUES ('3602', '222', 'Vale of Glamorgan', 'VGLAM', '1');
INSERT INTO `huannn_zone` VALUES ('3603', '222', 'Warwickshire', 'WARKS', '1');
INSERT INTO `huannn_zone` VALUES ('3604', '222', 'West Dunbartonshire', 'WDUN', '1');
INSERT INTO `huannn_zone` VALUES ('3605', '222', 'West Lothian', 'WLOT', '1');
INSERT INTO `huannn_zone` VALUES ('3606', '222', 'West Midlands', 'WMD', '1');
INSERT INTO `huannn_zone` VALUES ('3607', '222', 'West Sussex', 'SXW', '1');
INSERT INTO `huannn_zone` VALUES ('3608', '222', 'West Yorkshire', 'YSW', '1');
INSERT INTO `huannn_zone` VALUES ('3609', '222', 'Western Isles', 'WIL', '1');
INSERT INTO `huannn_zone` VALUES ('3610', '222', 'Wiltshire', 'WLT', '1');
INSERT INTO `huannn_zone` VALUES ('3611', '222', 'Worcestershire', 'WORCS', '1');
INSERT INTO `huannn_zone` VALUES ('3612', '222', 'Wrexham', 'WRX', '1');
INSERT INTO `huannn_zone` VALUES ('3613', '223', 'Alabama', 'AL', '1');
INSERT INTO `huannn_zone` VALUES ('3614', '223', 'Alaska', 'AK', '1');
INSERT INTO `huannn_zone` VALUES ('3615', '223', 'American Samoa', 'AS', '1');
INSERT INTO `huannn_zone` VALUES ('3616', '223', 'Arizona', 'AZ', '1');
INSERT INTO `huannn_zone` VALUES ('3617', '223', 'Arkansas', 'AR', '1');
INSERT INTO `huannn_zone` VALUES ('3618', '223', 'Armed Forces Africa', 'AF', '1');
INSERT INTO `huannn_zone` VALUES ('3619', '223', 'Armed Forces Americas', 'AA', '1');
INSERT INTO `huannn_zone` VALUES ('3620', '223', 'Armed Forces Canada', 'AC', '1');
INSERT INTO `huannn_zone` VALUES ('3621', '223', 'Armed Forces Europe', 'AE', '1');
INSERT INTO `huannn_zone` VALUES ('3622', '223', 'Armed Forces Middle East', 'AM', '1');
INSERT INTO `huannn_zone` VALUES ('3623', '223', 'Armed Forces Pacific', 'AP', '1');
INSERT INTO `huannn_zone` VALUES ('3624', '223', 'California', 'CA', '1');
INSERT INTO `huannn_zone` VALUES ('3625', '223', 'Colorado', 'CO', '1');
INSERT INTO `huannn_zone` VALUES ('3626', '223', 'Connecticut', 'CT', '1');
INSERT INTO `huannn_zone` VALUES ('3627', '223', 'Delaware', 'DE', '1');
INSERT INTO `huannn_zone` VALUES ('3628', '223', 'District of Columbia', 'DC', '1');
INSERT INTO `huannn_zone` VALUES ('3629', '223', 'Federated States Of Micronesia', 'FM', '1');
INSERT INTO `huannn_zone` VALUES ('3630', '223', 'Florida', 'FL', '1');
INSERT INTO `huannn_zone` VALUES ('3631', '223', 'Georgia', 'GA', '1');
INSERT INTO `huannn_zone` VALUES ('3632', '223', 'Guam', 'GU', '1');
INSERT INTO `huannn_zone` VALUES ('3633', '223', 'Hawaii', 'HI', '1');
INSERT INTO `huannn_zone` VALUES ('3634', '223', 'Idaho', 'ID', '1');
INSERT INTO `huannn_zone` VALUES ('3635', '223', 'Illinois', 'IL', '1');
INSERT INTO `huannn_zone` VALUES ('3636', '223', 'Indiana', 'IN', '1');
INSERT INTO `huannn_zone` VALUES ('3637', '223', 'Iowa', 'IA', '1');
INSERT INTO `huannn_zone` VALUES ('3638', '223', 'Kansas', 'KS', '1');
INSERT INTO `huannn_zone` VALUES ('3639', '223', 'Kentucky', 'KY', '1');
INSERT INTO `huannn_zone` VALUES ('3640', '223', 'Louisiana', 'LA', '1');
INSERT INTO `huannn_zone` VALUES ('3641', '223', 'Maine', 'ME', '1');
INSERT INTO `huannn_zone` VALUES ('3642', '223', 'Marshall Islands', 'MH', '1');
INSERT INTO `huannn_zone` VALUES ('3643', '223', 'Maryland', 'MD', '1');
INSERT INTO `huannn_zone` VALUES ('3644', '223', 'Massachusetts', 'MA', '1');
INSERT INTO `huannn_zone` VALUES ('3645', '223', 'Michigan', 'MI', '1');
INSERT INTO `huannn_zone` VALUES ('3646', '223', 'Minnesota', 'MN', '1');
INSERT INTO `huannn_zone` VALUES ('3647', '223', 'Mississippi', 'MS', '1');
INSERT INTO `huannn_zone` VALUES ('3648', '223', 'Missouri', 'MO', '1');
INSERT INTO `huannn_zone` VALUES ('3649', '223', 'Montana', 'MT', '1');
INSERT INTO `huannn_zone` VALUES ('3650', '223', 'Nebraska', 'NE', '1');
INSERT INTO `huannn_zone` VALUES ('3651', '223', 'Nevada', 'NV', '1');
INSERT INTO `huannn_zone` VALUES ('3652', '223', 'New Hampshire', 'NH', '1');
INSERT INTO `huannn_zone` VALUES ('3653', '223', 'New Jersey', 'NJ', '1');
INSERT INTO `huannn_zone` VALUES ('3654', '223', 'New Mexico', 'NM', '1');
INSERT INTO `huannn_zone` VALUES ('3655', '223', 'New York', 'NY', '1');
INSERT INTO `huannn_zone` VALUES ('3656', '223', 'North Carolina', 'NC', '1');
INSERT INTO `huannn_zone` VALUES ('3657', '223', 'North Dakota', 'ND', '1');
INSERT INTO `huannn_zone` VALUES ('3658', '223', 'Northern Mariana Islands', 'MP', '1');
INSERT INTO `huannn_zone` VALUES ('3659', '223', 'Ohio', 'OH', '1');
INSERT INTO `huannn_zone` VALUES ('3660', '223', 'Oklahoma', 'OK', '1');
INSERT INTO `huannn_zone` VALUES ('3661', '223', 'Oregon', 'OR', '1');
INSERT INTO `huannn_zone` VALUES ('3662', '223', 'Palau', 'PW', '1');
INSERT INTO `huannn_zone` VALUES ('3663', '223', 'Pennsylvania', 'PA', '1');
INSERT INTO `huannn_zone` VALUES ('3664', '223', 'Puerto Rico', 'PR', '1');
INSERT INTO `huannn_zone` VALUES ('3665', '223', 'Rhode Island', 'RI', '1');
INSERT INTO `huannn_zone` VALUES ('3666', '223', 'South Carolina', 'SC', '1');
INSERT INTO `huannn_zone` VALUES ('3667', '223', 'South Dakota', 'SD', '1');
INSERT INTO `huannn_zone` VALUES ('3668', '223', 'Tennessee', 'TN', '1');
INSERT INTO `huannn_zone` VALUES ('3669', '223', 'Texas', 'TX', '1');
INSERT INTO `huannn_zone` VALUES ('3670', '223', 'Utah', 'UT', '1');
INSERT INTO `huannn_zone` VALUES ('3671', '223', 'Vermont', 'VT', '1');
INSERT INTO `huannn_zone` VALUES ('3672', '223', 'Virgin Islands', 'VI', '1');
INSERT INTO `huannn_zone` VALUES ('3673', '223', 'Virginia', 'VA', '1');
INSERT INTO `huannn_zone` VALUES ('3674', '223', 'Washington', 'WA', '1');
INSERT INTO `huannn_zone` VALUES ('3675', '223', 'West Virginia', 'WV', '1');
INSERT INTO `huannn_zone` VALUES ('3676', '223', 'Wisconsin', 'WI', '1');
INSERT INTO `huannn_zone` VALUES ('3677', '223', 'Wyoming', 'WY', '1');
INSERT INTO `huannn_zone` VALUES ('3678', '224', 'Baker Island', 'BI', '1');
INSERT INTO `huannn_zone` VALUES ('3679', '224', 'Howland Island', 'HI', '1');
INSERT INTO `huannn_zone` VALUES ('3680', '224', 'Jarvis Island', 'JI', '1');
INSERT INTO `huannn_zone` VALUES ('3681', '224', 'Johnston Atoll', 'JA', '1');
INSERT INTO `huannn_zone` VALUES ('3682', '224', 'Kingman Reef', 'KR', '1');
INSERT INTO `huannn_zone` VALUES ('3683', '224', 'Midway Atoll', 'MA', '1');
INSERT INTO `huannn_zone` VALUES ('3684', '224', 'Navassa Island', 'NI', '1');
INSERT INTO `huannn_zone` VALUES ('3685', '224', 'Palmyra Atoll', 'PA', '1');
INSERT INTO `huannn_zone` VALUES ('3686', '224', 'Wake Island', 'WI', '1');
INSERT INTO `huannn_zone` VALUES ('3687', '225', 'Artigas', 'AR', '1');
INSERT INTO `huannn_zone` VALUES ('3688', '225', 'Canelones', 'CA', '1');
INSERT INTO `huannn_zone` VALUES ('3689', '225', 'Cerro Largo', 'CL', '1');
INSERT INTO `huannn_zone` VALUES ('3690', '225', 'Colonia', 'CO', '1');
INSERT INTO `huannn_zone` VALUES ('3691', '225', 'Durazno', 'DU', '1');
INSERT INTO `huannn_zone` VALUES ('3692', '225', 'Flores', 'FS', '1');
INSERT INTO `huannn_zone` VALUES ('3693', '225', 'Florida', 'FA', '1');
INSERT INTO `huannn_zone` VALUES ('3694', '225', 'Lavalleja', 'LA', '1');
INSERT INTO `huannn_zone` VALUES ('3695', '225', 'Maldonado', 'MA', '1');
INSERT INTO `huannn_zone` VALUES ('3696', '225', 'Montevideo', 'MO', '1');
INSERT INTO `huannn_zone` VALUES ('3697', '225', 'Paysandu', 'PA', '1');
INSERT INTO `huannn_zone` VALUES ('3698', '225', 'Rio Negro', 'RN', '1');
INSERT INTO `huannn_zone` VALUES ('3699', '225', 'Rivera', 'RV', '1');
INSERT INTO `huannn_zone` VALUES ('3700', '225', 'Rocha', 'RO', '1');
INSERT INTO `huannn_zone` VALUES ('3701', '225', 'Salto', 'SL', '1');
INSERT INTO `huannn_zone` VALUES ('3702', '225', 'San Jose', 'SJ', '1');
INSERT INTO `huannn_zone` VALUES ('3703', '225', 'Soriano', 'SO', '1');
INSERT INTO `huannn_zone` VALUES ('3704', '225', 'Tacuarembo', 'TA', '1');
INSERT INTO `huannn_zone` VALUES ('3705', '225', 'Treinta y Tres', 'TT', '1');
INSERT INTO `huannn_zone` VALUES ('3706', '226', 'Andijon', 'AN', '1');
INSERT INTO `huannn_zone` VALUES ('3707', '226', 'Buxoro', 'BU', '1');
INSERT INTO `huannn_zone` VALUES ('3708', '226', 'Farg\'ona', 'FA', '1');
INSERT INTO `huannn_zone` VALUES ('3709', '226', 'Jizzax', 'JI', '1');
INSERT INTO `huannn_zone` VALUES ('3710', '226', 'Namangan', 'NG', '1');
INSERT INTO `huannn_zone` VALUES ('3711', '226', 'Navoiy', 'NW', '1');
INSERT INTO `huannn_zone` VALUES ('3712', '226', 'Qashqadaryo', 'QA', '1');
INSERT INTO `huannn_zone` VALUES ('3713', '226', 'Qoraqalpog\'iston Republikasi', 'QR', '1');
INSERT INTO `huannn_zone` VALUES ('3714', '226', 'Samarqand', 'SA', '1');
INSERT INTO `huannn_zone` VALUES ('3715', '226', 'Sirdaryo', 'SI', '1');
INSERT INTO `huannn_zone` VALUES ('3716', '226', 'Surxondaryo', 'SU', '1');
INSERT INTO `huannn_zone` VALUES ('3717', '226', 'Toshkent City', 'TK', '1');
INSERT INTO `huannn_zone` VALUES ('3718', '226', 'Toshkent Region', 'TO', '1');
INSERT INTO `huannn_zone` VALUES ('3719', '226', 'Xorazm', 'XO', '1');
INSERT INTO `huannn_zone` VALUES ('3720', '227', 'Malampa', 'MA', '1');
INSERT INTO `huannn_zone` VALUES ('3721', '227', 'Penama', 'PE', '1');
INSERT INTO `huannn_zone` VALUES ('3722', '227', 'Sanma', 'SA', '1');
INSERT INTO `huannn_zone` VALUES ('3723', '227', 'Shefa', 'SH', '1');
INSERT INTO `huannn_zone` VALUES ('3724', '227', 'Tafea', 'TA', '1');
INSERT INTO `huannn_zone` VALUES ('3725', '227', 'Torba', 'TO', '1');
INSERT INTO `huannn_zone` VALUES ('3726', '229', 'Amazonas', 'AM', '1');
INSERT INTO `huannn_zone` VALUES ('3727', '229', 'Anzoategui', 'AN', '1');
INSERT INTO `huannn_zone` VALUES ('3728', '229', 'Apure', 'AP', '1');
INSERT INTO `huannn_zone` VALUES ('3729', '229', 'Aragua', 'AR', '1');
INSERT INTO `huannn_zone` VALUES ('3730', '229', 'Barinas', 'BA', '1');
INSERT INTO `huannn_zone` VALUES ('3731', '229', 'Bolivar', 'BO', '1');
INSERT INTO `huannn_zone` VALUES ('3732', '229', 'Carabobo', 'CA', '1');
INSERT INTO `huannn_zone` VALUES ('3733', '229', 'Cojedes', 'CO', '1');
INSERT INTO `huannn_zone` VALUES ('3734', '229', 'Delta Amacuro', 'DA', '1');
INSERT INTO `huannn_zone` VALUES ('3735', '229', 'Dependencias Federales', 'DF', '1');
INSERT INTO `huannn_zone` VALUES ('3736', '229', 'Distrito Federal', 'DI', '1');
INSERT INTO `huannn_zone` VALUES ('3737', '229', 'Falcon', 'FA', '1');
INSERT INTO `huannn_zone` VALUES ('3738', '229', 'Guarico', 'GU', '1');
INSERT INTO `huannn_zone` VALUES ('3739', '229', 'Lara', 'LA', '1');
INSERT INTO `huannn_zone` VALUES ('3740', '229', 'Merida', 'ME', '1');
INSERT INTO `huannn_zone` VALUES ('3741', '229', 'Miranda', 'MI', '1');
INSERT INTO `huannn_zone` VALUES ('3742', '229', 'Monagas', 'MO', '1');
INSERT INTO `huannn_zone` VALUES ('3743', '229', 'Nueva Esparta', 'NE', '1');
INSERT INTO `huannn_zone` VALUES ('3744', '229', 'Portuguesa', 'PO', '1');
INSERT INTO `huannn_zone` VALUES ('3745', '229', 'Sucre', 'SU', '1');
INSERT INTO `huannn_zone` VALUES ('3746', '229', 'Tachira', 'TA', '1');
INSERT INTO `huannn_zone` VALUES ('3747', '229', 'Trujillo', 'TR', '1');
INSERT INTO `huannn_zone` VALUES ('3748', '229', 'Vargas', 'VA', '1');
INSERT INTO `huannn_zone` VALUES ('3749', '229', 'Yaracuy', 'YA', '1');
INSERT INTO `huannn_zone` VALUES ('3750', '229', 'Zulia', 'ZU', '1');
INSERT INTO `huannn_zone` VALUES ('3751', '230', 'An Giang', 'AG', '1');
INSERT INTO `huannn_zone` VALUES ('3752', '230', 'Bac Giang', 'BG', '1');
INSERT INTO `huannn_zone` VALUES ('3753', '230', 'Bac Kan', 'BK', '1');
INSERT INTO `huannn_zone` VALUES ('3754', '230', 'Bac Lieu', 'BL', '1');
INSERT INTO `huannn_zone` VALUES ('3755', '230', 'Bac Ninh', 'BC', '1');
INSERT INTO `huannn_zone` VALUES ('3756', '230', 'Ba Ria-Vung Tau', 'BR', '1');
INSERT INTO `huannn_zone` VALUES ('3757', '230', 'Ben Tre', 'BN', '1');
INSERT INTO `huannn_zone` VALUES ('3758', '230', 'Binh Dinh', 'BH', '1');
INSERT INTO `huannn_zone` VALUES ('3759', '230', 'Binh Duong', 'BU', '1');
INSERT INTO `huannn_zone` VALUES ('3760', '230', 'Binh Phuoc', 'BP', '1');
INSERT INTO `huannn_zone` VALUES ('3761', '230', 'Binh Thuan', 'BT', '1');
INSERT INTO `huannn_zone` VALUES ('3762', '230', 'Ca Mau', 'CM', '1');
INSERT INTO `huannn_zone` VALUES ('3763', '230', 'Can Tho', 'CT', '1');
INSERT INTO `huannn_zone` VALUES ('3764', '230', 'Cao Bang', 'CB', '1');
INSERT INTO `huannn_zone` VALUES ('3765', '230', 'Dak Lak', 'DL', '1');
INSERT INTO `huannn_zone` VALUES ('3766', '230', 'Dak Nong', 'DG', '1');
INSERT INTO `huannn_zone` VALUES ('3767', '230', 'Da Nang', 'DN', '1');
INSERT INTO `huannn_zone` VALUES ('3768', '230', 'Dien Bien', 'DB', '1');
INSERT INTO `huannn_zone` VALUES ('3769', '230', 'Dong Nai', 'DI', '1');
INSERT INTO `huannn_zone` VALUES ('3770', '230', 'Dong Thap', 'DT', '1');
INSERT INTO `huannn_zone` VALUES ('3771', '230', 'Gia Lai', 'GL', '1');
INSERT INTO `huannn_zone` VALUES ('3772', '230', 'Ha Giang', 'HG', '1');
INSERT INTO `huannn_zone` VALUES ('3773', '230', 'Hai Duong', 'HD', '1');
INSERT INTO `huannn_zone` VALUES ('3774', '230', 'Hai Phong', 'HP', '1');
INSERT INTO `huannn_zone` VALUES ('3775', '230', 'Ha Nam', 'HM', '1');
INSERT INTO `huannn_zone` VALUES ('3776', '230', 'Ha Noi', 'HI', '1');
INSERT INTO `huannn_zone` VALUES ('3777', '230', 'Ha Tay', 'HT', '1');
INSERT INTO `huannn_zone` VALUES ('3778', '230', 'Ha Tinh', 'HH', '1');
INSERT INTO `huannn_zone` VALUES ('3779', '230', 'Hoa Binh', 'HB', '1');
INSERT INTO `huannn_zone` VALUES ('3780', '230', 'Ho Chi Minh City', 'HC', '1');
INSERT INTO `huannn_zone` VALUES ('3781', '230', 'Hau Giang', 'HU', '1');
INSERT INTO `huannn_zone` VALUES ('3782', '230', 'Hung Yen', 'HY', '1');
INSERT INTO `huannn_zone` VALUES ('3783', '232', 'Saint Croix', 'C', '1');
INSERT INTO `huannn_zone` VALUES ('3784', '232', 'Saint John', 'J', '1');
INSERT INTO `huannn_zone` VALUES ('3785', '232', 'Saint Thomas', 'T', '1');
INSERT INTO `huannn_zone` VALUES ('3786', '233', 'Alo', 'A', '1');
INSERT INTO `huannn_zone` VALUES ('3787', '233', 'Sigave', 'S', '1');
INSERT INTO `huannn_zone` VALUES ('3788', '233', 'Wallis', 'W', '1');
INSERT INTO `huannn_zone` VALUES ('3789', '235', 'Abyan', 'AB', '1');
INSERT INTO `huannn_zone` VALUES ('3790', '235', 'Adan', 'AD', '1');
INSERT INTO `huannn_zone` VALUES ('3791', '235', 'Amran', 'AM', '1');
INSERT INTO `huannn_zone` VALUES ('3792', '235', 'Al Bayda', 'BA', '1');
INSERT INTO `huannn_zone` VALUES ('3793', '235', 'Ad Dali', 'DA', '1');
INSERT INTO `huannn_zone` VALUES ('3794', '235', 'Dhamar', 'DH', '1');
INSERT INTO `huannn_zone` VALUES ('3795', '235', 'Hadramawt', 'HD', '1');
INSERT INTO `huannn_zone` VALUES ('3796', '235', 'Hajjah', 'HJ', '1');
INSERT INTO `huannn_zone` VALUES ('3797', '235', 'Al Hudaydah', 'HU', '1');
INSERT INTO `huannn_zone` VALUES ('3798', '235', 'Ibb', 'IB', '1');
INSERT INTO `huannn_zone` VALUES ('3799', '235', 'Al Jawf', 'JA', '1');
INSERT INTO `huannn_zone` VALUES ('3800', '235', 'Lahij', 'LA', '1');
INSERT INTO `huannn_zone` VALUES ('3801', '235', 'Ma\'rib', 'MA', '1');
INSERT INTO `huannn_zone` VALUES ('3802', '235', 'Al Mahrah', 'MR', '1');
INSERT INTO `huannn_zone` VALUES ('3803', '235', 'Al Mahwit', 'MW', '1');
INSERT INTO `huannn_zone` VALUES ('3804', '235', 'Sa\'dah', 'SD', '1');
INSERT INTO `huannn_zone` VALUES ('3805', '235', 'San\'a', 'SN', '1');
INSERT INTO `huannn_zone` VALUES ('3806', '235', 'Shabwah', 'SH', '1');
INSERT INTO `huannn_zone` VALUES ('3807', '235', 'Ta\'izz', 'TA', '1');
INSERT INTO `huannn_zone` VALUES ('3812', '237', 'Bas-Congo', 'BC', '1');
INSERT INTO `huannn_zone` VALUES ('3813', '237', 'Bandundu', 'BN', '1');
INSERT INTO `huannn_zone` VALUES ('3814', '237', 'Equateur', 'EQ', '1');
INSERT INTO `huannn_zone` VALUES ('3815', '237', 'Katanga', 'KA', '1');
INSERT INTO `huannn_zone` VALUES ('3816', '237', 'Kasai-Oriental', 'KE', '1');
INSERT INTO `huannn_zone` VALUES ('3817', '237', 'Kinshasa', 'KN', '1');
INSERT INTO `huannn_zone` VALUES ('3818', '237', 'Kasai-Occidental', 'KW', '1');
INSERT INTO `huannn_zone` VALUES ('3819', '237', 'Maniema', 'MA', '1');
INSERT INTO `huannn_zone` VALUES ('3820', '237', 'Nord-Kivu', 'NK', '1');
INSERT INTO `huannn_zone` VALUES ('3821', '237', 'Orientale', 'OR', '1');
INSERT INTO `huannn_zone` VALUES ('3822', '237', 'Sud-Kivu', 'SK', '1');
INSERT INTO `huannn_zone` VALUES ('3823', '238', 'Central', 'CE', '1');
INSERT INTO `huannn_zone` VALUES ('3824', '238', 'Copperbelt', 'CB', '1');
INSERT INTO `huannn_zone` VALUES ('3825', '238', 'Eastern', 'EA', '1');
INSERT INTO `huannn_zone` VALUES ('3826', '238', 'Luapula', 'LP', '1');
INSERT INTO `huannn_zone` VALUES ('3827', '238', 'Lusaka', 'LK', '1');
INSERT INTO `huannn_zone` VALUES ('3828', '238', 'Northern', 'NO', '1');
INSERT INTO `huannn_zone` VALUES ('3829', '238', 'North-Western', 'NW', '1');
INSERT INTO `huannn_zone` VALUES ('3830', '238', 'Southern', 'SO', '1');
INSERT INTO `huannn_zone` VALUES ('3831', '238', 'Western', 'WE', '1');
INSERT INTO `huannn_zone` VALUES ('3832', '239', 'Bulawayo', 'BU', '1');
INSERT INTO `huannn_zone` VALUES ('3833', '239', 'Harare', 'HA', '1');
INSERT INTO `huannn_zone` VALUES ('3834', '239', 'Manicaland', 'ML', '1');
INSERT INTO `huannn_zone` VALUES ('3835', '239', 'Mashonaland Central', 'MC', '1');
INSERT INTO `huannn_zone` VALUES ('3836', '239', 'Mashonaland East', 'ME', '1');
INSERT INTO `huannn_zone` VALUES ('3837', '239', 'Mashonaland West', 'MW', '1');
INSERT INTO `huannn_zone` VALUES ('3838', '239', 'Masvingo', 'MV', '1');
INSERT INTO `huannn_zone` VALUES ('3839', '239', 'Matabeleland North', 'MN', '1');
INSERT INTO `huannn_zone` VALUES ('3840', '239', 'Matabeleland South', 'MS', '1');
INSERT INTO `huannn_zone` VALUES ('3841', '239', 'Midlands', 'MD', '1');
INSERT INTO `huannn_zone` VALUES ('3861', '105', 'Campobasso', 'CB', '1');
INSERT INTO `huannn_zone` VALUES ('3862', '105', 'Carbonia-Iglesias', 'CI', '1');
INSERT INTO `huannn_zone` VALUES ('3863', '105', 'Caserta', 'CE', '1');
INSERT INTO `huannn_zone` VALUES ('3864', '105', 'Catania', 'CT', '1');
INSERT INTO `huannn_zone` VALUES ('3865', '105', 'Catanzaro', 'CZ', '1');
INSERT INTO `huannn_zone` VALUES ('3866', '105', 'Chieti', 'CH', '1');
INSERT INTO `huannn_zone` VALUES ('3867', '105', 'Como', 'CO', '1');
INSERT INTO `huannn_zone` VALUES ('3868', '105', 'Cosenza', 'CS', '1');
INSERT INTO `huannn_zone` VALUES ('3869', '105', 'Cremona', 'CR', '1');
INSERT INTO `huannn_zone` VALUES ('3870', '105', 'Crotone', 'KR', '1');
INSERT INTO `huannn_zone` VALUES ('3871', '105', 'Cuneo', 'CN', '1');
INSERT INTO `huannn_zone` VALUES ('3872', '105', 'Enna', 'EN', '1');
INSERT INTO `huannn_zone` VALUES ('3873', '105', 'Ferrara', 'FE', '1');
INSERT INTO `huannn_zone` VALUES ('3874', '105', 'Firenze', 'FI', '1');
INSERT INTO `huannn_zone` VALUES ('3875', '105', 'Foggia', 'FG', '1');
INSERT INTO `huannn_zone` VALUES ('3876', '105', 'Forli-Cesena', 'FC', '1');
INSERT INTO `huannn_zone` VALUES ('3877', '105', 'Frosinone', 'FR', '1');
INSERT INTO `huannn_zone` VALUES ('3878', '105', 'Genova', 'GE', '1');
INSERT INTO `huannn_zone` VALUES ('3879', '105', 'Gorizia', 'GO', '1');
INSERT INTO `huannn_zone` VALUES ('3880', '105', 'Grosseto', 'GR', '1');
INSERT INTO `huannn_zone` VALUES ('3881', '105', 'Imperia', 'IM', '1');
INSERT INTO `huannn_zone` VALUES ('3882', '105', 'Isernia', 'IS', '1');
INSERT INTO `huannn_zone` VALUES ('3883', '105', 'L&#39;Aquila', 'AQ', '1');
INSERT INTO `huannn_zone` VALUES ('3884', '105', 'La Spezia', 'SP', '1');
INSERT INTO `huannn_zone` VALUES ('3885', '105', 'Latina', 'LT', '1');
INSERT INTO `huannn_zone` VALUES ('3886', '105', 'Lecce', 'LE', '1');
INSERT INTO `huannn_zone` VALUES ('3887', '105', 'Lecco', 'LC', '1');
INSERT INTO `huannn_zone` VALUES ('3888', '105', 'Livorno', 'LI', '1');
INSERT INTO `huannn_zone` VALUES ('3889', '105', 'Lodi', 'LO', '1');
INSERT INTO `huannn_zone` VALUES ('3890', '105', 'Lucca', 'LU', '1');
INSERT INTO `huannn_zone` VALUES ('3891', '105', 'Macerata', 'MC', '1');
INSERT INTO `huannn_zone` VALUES ('3892', '105', 'Mantova', 'MN', '1');
INSERT INTO `huannn_zone` VALUES ('3893', '105', 'Massa-Carrara', 'MS', '1');
INSERT INTO `huannn_zone` VALUES ('3894', '105', 'Matera', 'MT', '1');
INSERT INTO `huannn_zone` VALUES ('3895', '105', 'Medio Campidano', 'VS', '1');
INSERT INTO `huannn_zone` VALUES ('3896', '105', 'Messina', 'ME', '1');
INSERT INTO `huannn_zone` VALUES ('3897', '105', 'Milano', 'MI', '1');
INSERT INTO `huannn_zone` VALUES ('3898', '105', 'Modena', 'MO', '1');
INSERT INTO `huannn_zone` VALUES ('3899', '105', 'Napoli', 'NA', '1');
INSERT INTO `huannn_zone` VALUES ('3900', '105', 'Novara', 'NO', '1');
INSERT INTO `huannn_zone` VALUES ('3901', '105', 'Nuoro', 'NU', '1');
INSERT INTO `huannn_zone` VALUES ('3902', '105', 'Ogliastra', 'OG', '1');
INSERT INTO `huannn_zone` VALUES ('3903', '105', 'Olbia-Tempio', 'OT', '1');
INSERT INTO `huannn_zone` VALUES ('3904', '105', 'Oristano', 'OR', '1');
INSERT INTO `huannn_zone` VALUES ('3905', '105', 'Padova', 'PD', '1');
INSERT INTO `huannn_zone` VALUES ('3906', '105', 'Palermo', 'PA', '1');
INSERT INTO `huannn_zone` VALUES ('3907', '105', 'Parma', 'PR', '1');
INSERT INTO `huannn_zone` VALUES ('3908', '105', 'Pavia', 'PV', '1');
INSERT INTO `huannn_zone` VALUES ('3909', '105', 'Perugia', 'PG', '1');
INSERT INTO `huannn_zone` VALUES ('3910', '105', 'Pesaro e Urbino', 'PU', '1');
INSERT INTO `huannn_zone` VALUES ('3911', '105', 'Pescara', 'PE', '1');
INSERT INTO `huannn_zone` VALUES ('3912', '105', 'Piacenza', 'PC', '1');
INSERT INTO `huannn_zone` VALUES ('3913', '105', 'Pisa', 'PI', '1');
INSERT INTO `huannn_zone` VALUES ('3914', '105', 'Pistoia', 'PT', '1');
INSERT INTO `huannn_zone` VALUES ('3915', '105', 'Pordenone', 'PN', '1');
INSERT INTO `huannn_zone` VALUES ('3916', '105', 'Potenza', 'PZ', '1');
INSERT INTO `huannn_zone` VALUES ('3917', '105', 'Prato', 'PO', '1');
INSERT INTO `huannn_zone` VALUES ('3918', '105', 'Ragusa', 'RG', '1');
INSERT INTO `huannn_zone` VALUES ('3919', '105', 'Ravenna', 'RA', '1');
INSERT INTO `huannn_zone` VALUES ('3920', '105', 'Reggio Calabria', 'RC', '1');
INSERT INTO `huannn_zone` VALUES ('3921', '105', 'Reggio Emilia', 'RE', '1');
INSERT INTO `huannn_zone` VALUES ('3922', '105', 'Rieti', 'RI', '1');
INSERT INTO `huannn_zone` VALUES ('3923', '105', 'Rimini', 'RN', '1');
INSERT INTO `huannn_zone` VALUES ('3924', '105', 'Roma', 'RM', '1');
INSERT INTO `huannn_zone` VALUES ('3925', '105', 'Rovigo', 'RO', '1');
INSERT INTO `huannn_zone` VALUES ('3926', '105', 'Salerno', 'SA', '1');
INSERT INTO `huannn_zone` VALUES ('3927', '105', 'Sassari', 'SS', '1');
INSERT INTO `huannn_zone` VALUES ('3928', '105', 'Savona', 'SV', '1');
INSERT INTO `huannn_zone` VALUES ('3929', '105', 'Siena', 'SI', '1');
INSERT INTO `huannn_zone` VALUES ('3930', '105', 'Siracusa', 'SR', '1');
INSERT INTO `huannn_zone` VALUES ('3931', '105', 'Sondrio', 'SO', '1');
INSERT INTO `huannn_zone` VALUES ('3932', '105', 'Taranto', 'TA', '1');
INSERT INTO `huannn_zone` VALUES ('3933', '105', 'Teramo', 'TE', '1');
INSERT INTO `huannn_zone` VALUES ('3934', '105', 'Terni', 'TR', '1');
INSERT INTO `huannn_zone` VALUES ('3935', '105', 'Torino', 'TO', '1');
INSERT INTO `huannn_zone` VALUES ('3936', '105', 'Trapani', 'TP', '1');
INSERT INTO `huannn_zone` VALUES ('3937', '105', 'Trento', 'TN', '1');
INSERT INTO `huannn_zone` VALUES ('3938', '105', 'Treviso', 'TV', '1');
INSERT INTO `huannn_zone` VALUES ('3939', '105', 'Trieste', 'TS', '1');
INSERT INTO `huannn_zone` VALUES ('3940', '105', 'Udine', 'UD', '1');
INSERT INTO `huannn_zone` VALUES ('3941', '105', 'Varese', 'VA', '1');
INSERT INTO `huannn_zone` VALUES ('3942', '105', 'Venezia', 'VE', '1');
INSERT INTO `huannn_zone` VALUES ('3943', '105', 'Verbano-Cusio-Ossola', 'VB', '1');
INSERT INTO `huannn_zone` VALUES ('3944', '105', 'Vercelli', 'VC', '1');
INSERT INTO `huannn_zone` VALUES ('3945', '105', 'Verona', 'VR', '1');
INSERT INTO `huannn_zone` VALUES ('3946', '105', 'Vibo Valentia', 'VV', '1');
INSERT INTO `huannn_zone` VALUES ('3947', '105', 'Vicenza', 'VI', '1');
INSERT INTO `huannn_zone` VALUES ('3948', '105', 'Viterbo', 'VT', '1');
INSERT INTO `huannn_zone` VALUES ('3949', '222', 'County Antrim', 'ANT', '1');
INSERT INTO `huannn_zone` VALUES ('3950', '222', 'County Armagh', 'ARM', '1');
INSERT INTO `huannn_zone` VALUES ('3951', '222', 'County Down', 'DOW', '1');
INSERT INTO `huannn_zone` VALUES ('3952', '222', 'County Fermanagh', 'FER', '1');
INSERT INTO `huannn_zone` VALUES ('3953', '222', 'County Londonderry', 'LDY', '1');
INSERT INTO `huannn_zone` VALUES ('3954', '222', 'County Tyrone', 'TYR', '1');
INSERT INTO `huannn_zone` VALUES ('3955', '222', 'Cumbria', 'CMA', '1');
INSERT INTO `huannn_zone` VALUES ('3956', '190', 'Pomurska', '1', '1');
INSERT INTO `huannn_zone` VALUES ('3957', '190', 'Podravska', '2', '1');
INSERT INTO `huannn_zone` VALUES ('3958', '190', 'Koroška', '3', '1');
INSERT INTO `huannn_zone` VALUES ('3959', '190', 'Savinjska', '4', '1');
INSERT INTO `huannn_zone` VALUES ('3960', '190', 'Zasavska', '5', '1');
INSERT INTO `huannn_zone` VALUES ('3961', '190', 'Spodnjeposavska', '6', '1');
INSERT INTO `huannn_zone` VALUES ('3962', '190', 'Jugovzhodna Slovenija', '7', '1');
INSERT INTO `huannn_zone` VALUES ('3963', '190', 'Osrednjeslovenska', '8', '1');
INSERT INTO `huannn_zone` VALUES ('3964', '190', 'Gorenjska', '9', '1');
INSERT INTO `huannn_zone` VALUES ('3965', '190', 'Notranjsko-kraška', '10', '1');
INSERT INTO `huannn_zone` VALUES ('3966', '190', 'Goriška', '11', '1');
INSERT INTO `huannn_zone` VALUES ('3967', '190', 'Obalno-kraška', '12', '1');
INSERT INTO `huannn_zone` VALUES ('3968', '33', 'Ruse', '', '1');
INSERT INTO `huannn_zone` VALUES ('3969', '101', 'Alborz', 'ALB', '1');
INSERT INTO `huannn_zone` VALUES ('3970', '21', 'Brussels-Capital Region', 'BRU', '1');
INSERT INTO `huannn_zone` VALUES ('3971', '138', 'Aguascalientes', 'AG', '1');
INSERT INTO `huannn_zone` VALUES ('3973', '242', 'Andrijevica', '01', '1');
INSERT INTO `huannn_zone` VALUES ('3974', '242', 'Bar', '02', '1');
INSERT INTO `huannn_zone` VALUES ('3975', '242', 'Berane', '03', '1');
INSERT INTO `huannn_zone` VALUES ('3976', '242', 'Bijelo Polje', '04', '1');
INSERT INTO `huannn_zone` VALUES ('3977', '242', 'Budva', '05', '1');
INSERT INTO `huannn_zone` VALUES ('3978', '242', 'Cetinje', '06', '1');
INSERT INTO `huannn_zone` VALUES ('3979', '242', 'Danilovgrad', '07', '1');
INSERT INTO `huannn_zone` VALUES ('3980', '242', 'Herceg-Novi', '08', '1');
INSERT INTO `huannn_zone` VALUES ('3981', '242', 'Kolašin', '09', '1');
INSERT INTO `huannn_zone` VALUES ('3982', '242', 'Kotor', '10', '1');
INSERT INTO `huannn_zone` VALUES ('3983', '242', 'Mojkovac', '11', '1');
INSERT INTO `huannn_zone` VALUES ('3984', '242', 'Nikšić', '12', '1');
INSERT INTO `huannn_zone` VALUES ('3985', '242', 'Plav', '13', '1');
INSERT INTO `huannn_zone` VALUES ('3986', '242', 'Pljevlja', '14', '1');
INSERT INTO `huannn_zone` VALUES ('3987', '242', 'Plužine', '15', '1');
INSERT INTO `huannn_zone` VALUES ('3988', '242', 'Podgorica', '16', '1');
INSERT INTO `huannn_zone` VALUES ('3989', '242', 'Rožaje', '17', '1');
INSERT INTO `huannn_zone` VALUES ('3990', '242', 'Šavnik', '18', '1');
INSERT INTO `huannn_zone` VALUES ('3991', '242', 'Tivat', '19', '1');
INSERT INTO `huannn_zone` VALUES ('3992', '242', 'Ulcinj', '20', '1');
INSERT INTO `huannn_zone` VALUES ('3993', '242', 'Žabljak', '21', '1');
INSERT INTO `huannn_zone` VALUES ('3994', '243', 'Belgrade', '00', '1');
INSERT INTO `huannn_zone` VALUES ('3995', '243', 'North Bačka', '01', '1');
INSERT INTO `huannn_zone` VALUES ('3996', '243', 'Central Banat', '02', '1');
INSERT INTO `huannn_zone` VALUES ('3997', '243', 'North Banat', '03', '1');
INSERT INTO `huannn_zone` VALUES ('3998', '243', 'South Banat', '04', '1');
INSERT INTO `huannn_zone` VALUES ('3999', '243', 'West Bačka', '05', '1');
INSERT INTO `huannn_zone` VALUES ('4000', '243', 'South Bačka', '06', '1');
INSERT INTO `huannn_zone` VALUES ('4001', '243', 'Srem', '07', '1');
INSERT INTO `huannn_zone` VALUES ('4002', '243', 'Mačva', '08', '1');
INSERT INTO `huannn_zone` VALUES ('4003', '243', 'Kolubara', '09', '1');
INSERT INTO `huannn_zone` VALUES ('4004', '243', 'Podunavlje', '10', '1');
INSERT INTO `huannn_zone` VALUES ('4005', '243', 'Braničevo', '11', '1');
INSERT INTO `huannn_zone` VALUES ('4006', '243', 'Šumadija', '12', '1');
INSERT INTO `huannn_zone` VALUES ('4007', '243', 'Pomoravlje', '13', '1');
INSERT INTO `huannn_zone` VALUES ('4008', '243', 'Bor', '14', '1');
INSERT INTO `huannn_zone` VALUES ('4009', '243', 'Zaječar', '15', '1');
INSERT INTO `huannn_zone` VALUES ('4010', '243', 'Zlatibor', '16', '1');
INSERT INTO `huannn_zone` VALUES ('4011', '243', 'Moravica', '17', '1');
INSERT INTO `huannn_zone` VALUES ('4012', '243', 'Raška', '18', '1');
INSERT INTO `huannn_zone` VALUES ('4013', '243', 'Rasina', '19', '1');
INSERT INTO `huannn_zone` VALUES ('4014', '243', 'Nišava', '20', '1');
INSERT INTO `huannn_zone` VALUES ('4015', '243', 'Toplica', '21', '1');
INSERT INTO `huannn_zone` VALUES ('4016', '243', 'Pirot', '22', '1');
INSERT INTO `huannn_zone` VALUES ('4017', '243', 'Jablanica', '23', '1');
INSERT INTO `huannn_zone` VALUES ('4018', '243', 'Pčinja', '24', '1');
INSERT INTO `huannn_zone` VALUES ('4020', '245', 'Bonaire', 'BO', '1');
INSERT INTO `huannn_zone` VALUES ('4021', '245', 'Saba', 'SA', '1');
INSERT INTO `huannn_zone` VALUES ('4022', '245', 'Sint Eustatius', 'SE', '1');
INSERT INTO `huannn_zone` VALUES ('4023', '248', 'Central Equatoria', 'EC', '1');
INSERT INTO `huannn_zone` VALUES ('4024', '248', 'Eastern Equatoria', 'EE', '1');
INSERT INTO `huannn_zone` VALUES ('4025', '248', 'Jonglei', 'JG', '1');
INSERT INTO `huannn_zone` VALUES ('4026', '248', 'Lakes', 'LK', '1');
INSERT INTO `huannn_zone` VALUES ('4027', '248', 'Northern Bahr el-Ghazal', 'BN', '1');
INSERT INTO `huannn_zone` VALUES ('4028', '248', 'Unity', 'UY', '1');
INSERT INTO `huannn_zone` VALUES ('4029', '248', 'Upper Nile', 'NU', '1');
INSERT INTO `huannn_zone` VALUES ('4030', '248', 'Warrap', 'WR', '1');
INSERT INTO `huannn_zone` VALUES ('4031', '248', 'Western Bahr el-Ghazal', 'BW', '1');
INSERT INTO `huannn_zone` VALUES ('4032', '248', 'Western Equatoria', 'EW', '1');
INSERT INTO `huannn_zone` VALUES ('4036', '117', 'Ainaži, Salacgrīvas novads', '0661405', '1');
INSERT INTO `huannn_zone` VALUES ('4037', '117', 'Aizkraukle, Aizkraukles novads', '0320201', '1');
INSERT INTO `huannn_zone` VALUES ('4038', '117', 'Aizkraukles novads', '0320200', '1');
INSERT INTO `huannn_zone` VALUES ('4039', '117', 'Aizpute, Aizputes novads', '0640605', '1');
INSERT INTO `huannn_zone` VALUES ('4040', '117', 'Aizputes novads', '0640600', '1');
INSERT INTO `huannn_zone` VALUES ('4041', '117', 'Aknīste, Aknīstes novads', '0560805', '1');
INSERT INTO `huannn_zone` VALUES ('4042', '117', 'Aknīstes novads', '0560800', '1');
INSERT INTO `huannn_zone` VALUES ('4043', '117', 'Aloja, Alojas novads', '0661007', '1');
INSERT INTO `huannn_zone` VALUES ('4044', '117', 'Alojas novads', '0661000', '1');
INSERT INTO `huannn_zone` VALUES ('4045', '117', 'Alsungas novads', '0624200', '1');
INSERT INTO `huannn_zone` VALUES ('4046', '117', 'Alūksne, Alūksnes novads', '0360201', '1');
INSERT INTO `huannn_zone` VALUES ('4047', '117', 'Alūksnes novads', '0360200', '1');
INSERT INTO `huannn_zone` VALUES ('4048', '117', 'Amatas novads', '0424701', '1');
INSERT INTO `huannn_zone` VALUES ('4049', '117', 'Ape, Apes novads', '0360805', '1');
INSERT INTO `huannn_zone` VALUES ('4050', '117', 'Apes novads', '0360800', '1');
INSERT INTO `huannn_zone` VALUES ('4051', '117', 'Auce, Auces novads', '0460805', '1');
INSERT INTO `huannn_zone` VALUES ('4052', '117', 'Auces novads', '0460800', '1');
INSERT INTO `huannn_zone` VALUES ('4053', '117', 'Ādažu novads', '0804400', '1');
INSERT INTO `huannn_zone` VALUES ('4054', '117', 'Babītes novads', '0804900', '1');
INSERT INTO `huannn_zone` VALUES ('4055', '117', 'Baldone, Baldones novads', '0800605', '1');
INSERT INTO `huannn_zone` VALUES ('4056', '117', 'Baldones novads', '0800600', '1');
INSERT INTO `huannn_zone` VALUES ('4057', '117', 'Baloži, Ķekavas novads', '0800807', '1');
INSERT INTO `huannn_zone` VALUES ('4058', '117', 'Baltinavas novads', '0384400', '1');
INSERT INTO `huannn_zone` VALUES ('4059', '117', 'Balvi, Balvu novads', '0380201', '1');
INSERT INTO `huannn_zone` VALUES ('4060', '117', 'Balvu novads', '0380200', '1');
INSERT INTO `huannn_zone` VALUES ('4061', '117', 'Bauska, Bauskas novads', '0400201', '1');
INSERT INTO `huannn_zone` VALUES ('4062', '117', 'Bauskas novads', '0400200', '1');
INSERT INTO `huannn_zone` VALUES ('4063', '117', 'Beverīnas novads', '0964700', '1');
INSERT INTO `huannn_zone` VALUES ('4064', '117', 'Brocēni, Brocēnu novads', '0840605', '1');
INSERT INTO `huannn_zone` VALUES ('4065', '117', 'Brocēnu novads', '0840601', '1');
INSERT INTO `huannn_zone` VALUES ('4066', '117', 'Burtnieku novads', '0967101', '1');
INSERT INTO `huannn_zone` VALUES ('4067', '117', 'Carnikavas novads', '0805200', '1');
INSERT INTO `huannn_zone` VALUES ('4068', '117', 'Cesvaine, Cesvaines novads', '0700807', '1');
INSERT INTO `huannn_zone` VALUES ('4069', '117', 'Cesvaines novads', '0700800', '1');
INSERT INTO `huannn_zone` VALUES ('4070', '117', 'Cēsis, Cēsu novads', '0420201', '1');
INSERT INTO `huannn_zone` VALUES ('4071', '117', 'Cēsu novads', '0420200', '1');
INSERT INTO `huannn_zone` VALUES ('4072', '117', 'Ciblas novads', '0684901', '1');
INSERT INTO `huannn_zone` VALUES ('4073', '117', 'Dagda, Dagdas novads', '0601009', '1');
INSERT INTO `huannn_zone` VALUES ('4074', '117', 'Dagdas novads', '0601000', '1');
INSERT INTO `huannn_zone` VALUES ('4075', '117', 'Daugavpils', '0050000', '1');
INSERT INTO `huannn_zone` VALUES ('4076', '117', 'Daugavpils novads', '0440200', '1');
INSERT INTO `huannn_zone` VALUES ('4077', '117', 'Dobele, Dobeles novads', '0460201', '1');
INSERT INTO `huannn_zone` VALUES ('4078', '117', 'Dobeles novads', '0460200', '1');
INSERT INTO `huannn_zone` VALUES ('4079', '117', 'Dundagas novads', '0885100', '1');
INSERT INTO `huannn_zone` VALUES ('4080', '117', 'Durbe, Durbes novads', '0640807', '1');
INSERT INTO `huannn_zone` VALUES ('4081', '117', 'Durbes novads', '0640801', '1');
INSERT INTO `huannn_zone` VALUES ('4082', '117', 'Engures novads', '0905100', '1');
INSERT INTO `huannn_zone` VALUES ('4083', '117', 'Ērgļu novads', '0705500', '1');
INSERT INTO `huannn_zone` VALUES ('4084', '117', 'Garkalnes novads', '0806000', '1');
INSERT INTO `huannn_zone` VALUES ('4085', '117', 'Grobiņa, Grobiņas novads', '0641009', '1');
INSERT INTO `huannn_zone` VALUES ('4086', '117', 'Grobiņas novads', '0641000', '1');
INSERT INTO `huannn_zone` VALUES ('4087', '117', 'Gulbene, Gulbenes novads', '0500201', '1');
INSERT INTO `huannn_zone` VALUES ('4088', '117', 'Gulbenes novads', '0500200', '1');
INSERT INTO `huannn_zone` VALUES ('4089', '117', 'Iecavas novads', '0406400', '1');
INSERT INTO `huannn_zone` VALUES ('4090', '117', 'Ikšķile, Ikšķiles novads', '0740605', '1');
INSERT INTO `huannn_zone` VALUES ('4091', '117', 'Ikšķiles novads', '0740600', '1');
INSERT INTO `huannn_zone` VALUES ('4092', '117', 'Ilūkste, Ilūkstes novads', '0440807', '1');
INSERT INTO `huannn_zone` VALUES ('4093', '117', 'Ilūkstes novads', '0440801', '1');
INSERT INTO `huannn_zone` VALUES ('4094', '117', 'Inčukalna novads', '0801800', '1');
INSERT INTO `huannn_zone` VALUES ('4095', '117', 'Jaunjelgava, Jaunjelgavas novads', '0321007', '1');
INSERT INTO `huannn_zone` VALUES ('4096', '117', 'Jaunjelgavas novads', '0321000', '1');
INSERT INTO `huannn_zone` VALUES ('4097', '117', 'Jaunpiebalgas novads', '0425700', '1');
INSERT INTO `huannn_zone` VALUES ('4098', '117', 'Jaunpils novads', '0905700', '1');
INSERT INTO `huannn_zone` VALUES ('4099', '117', 'Jelgava', '0090000', '1');
INSERT INTO `huannn_zone` VALUES ('4100', '117', 'Jelgavas novads', '0540200', '1');
INSERT INTO `huannn_zone` VALUES ('4101', '117', 'Jēkabpils', '0110000', '1');
INSERT INTO `huannn_zone` VALUES ('4102', '117', 'Jēkabpils novads', '0560200', '1');
INSERT INTO `huannn_zone` VALUES ('4103', '117', 'Jūrmala', '0130000', '1');
INSERT INTO `huannn_zone` VALUES ('4104', '117', 'Kalnciems, Jelgavas novads', '0540211', '1');
INSERT INTO `huannn_zone` VALUES ('4105', '117', 'Kandava, Kandavas novads', '0901211', '1');
INSERT INTO `huannn_zone` VALUES ('4106', '117', 'Kandavas novads', '0901201', '1');
INSERT INTO `huannn_zone` VALUES ('4107', '117', 'Kārsava, Kārsavas novads', '0681009', '1');
INSERT INTO `huannn_zone` VALUES ('4108', '117', 'Kārsavas novads', '0681000', '1');
INSERT INTO `huannn_zone` VALUES ('4109', '117', 'Kocēnu novads ,bij. Valmieras)', '0960200', '1');
INSERT INTO `huannn_zone` VALUES ('4110', '117', 'Kokneses novads', '0326100', '1');
INSERT INTO `huannn_zone` VALUES ('4111', '117', 'Krāslava, Krāslavas novads', '0600201', '1');
INSERT INTO `huannn_zone` VALUES ('4112', '117', 'Krāslavas novads', '0600202', '1');
INSERT INTO `huannn_zone` VALUES ('4113', '117', 'Krimuldas novads', '0806900', '1');
INSERT INTO `huannn_zone` VALUES ('4114', '117', 'Krustpils novads', '0566900', '1');
INSERT INTO `huannn_zone` VALUES ('4115', '117', 'Kuldīga, Kuldīgas novads', '0620201', '1');
INSERT INTO `huannn_zone` VALUES ('4116', '117', 'Kuldīgas novads', '0620200', '1');
INSERT INTO `huannn_zone` VALUES ('4117', '117', 'Ķeguma novads', '0741001', '1');
INSERT INTO `huannn_zone` VALUES ('4118', '117', 'Ķegums, Ķeguma novads', '0741009', '1');
INSERT INTO `huannn_zone` VALUES ('4119', '117', 'Ķekavas novads', '0800800', '1');
INSERT INTO `huannn_zone` VALUES ('4120', '117', 'Lielvārde, Lielvārdes novads', '0741413', '1');
INSERT INTO `huannn_zone` VALUES ('4121', '117', 'Lielvārdes novads', '0741401', '1');
INSERT INTO `huannn_zone` VALUES ('4122', '117', 'Liepāja', '0170000', '1');
INSERT INTO `huannn_zone` VALUES ('4123', '117', 'Limbaži, Limbažu novads', '0660201', '1');
INSERT INTO `huannn_zone` VALUES ('4124', '117', 'Limbažu novads', '0660200', '1');
INSERT INTO `huannn_zone` VALUES ('4125', '117', 'Līgatne, Līgatnes novads', '0421211', '1');
INSERT INTO `huannn_zone` VALUES ('4126', '117', 'Līgatnes novads', '0421200', '1');
INSERT INTO `huannn_zone` VALUES ('4127', '117', 'Līvāni, Līvānu novads', '0761211', '1');
INSERT INTO `huannn_zone` VALUES ('4128', '117', 'Līvānu novads', '0761201', '1');
INSERT INTO `huannn_zone` VALUES ('4129', '117', 'Lubāna, Lubānas novads', '0701413', '1');
INSERT INTO `huannn_zone` VALUES ('4130', '117', 'Lubānas novads', '0701400', '1');
INSERT INTO `huannn_zone` VALUES ('4131', '117', 'Ludza, Ludzas novads', '0680201', '1');
INSERT INTO `huannn_zone` VALUES ('4132', '117', 'Ludzas novads', '0680200', '1');
INSERT INTO `huannn_zone` VALUES ('4133', '117', 'Madona, Madonas novads', '0700201', '1');
INSERT INTO `huannn_zone` VALUES ('4134', '117', 'Madonas novads', '0700200', '1');
INSERT INTO `huannn_zone` VALUES ('4135', '117', 'Mazsalaca, Mazsalacas novads', '0961011', '1');
INSERT INTO `huannn_zone` VALUES ('4136', '117', 'Mazsalacas novads', '0961000', '1');
INSERT INTO `huannn_zone` VALUES ('4137', '117', 'Mālpils novads', '0807400', '1');
INSERT INTO `huannn_zone` VALUES ('4138', '117', 'Mārupes novads', '0807600', '1');
INSERT INTO `huannn_zone` VALUES ('4139', '117', 'Mērsraga novads', '0887600', '1');
INSERT INTO `huannn_zone` VALUES ('4140', '117', 'Naukšēnu novads', '0967300', '1');
INSERT INTO `huannn_zone` VALUES ('4141', '117', 'Neretas novads', '0327100', '1');
INSERT INTO `huannn_zone` VALUES ('4142', '117', 'Nīcas novads', '0647900', '1');
INSERT INTO `huannn_zone` VALUES ('4143', '117', 'Ogre, Ogres novads', '0740201', '1');
INSERT INTO `huannn_zone` VALUES ('4144', '117', 'Ogres novads', '0740202', '1');
INSERT INTO `huannn_zone` VALUES ('4145', '117', 'Olaine, Olaines novads', '0801009', '1');
INSERT INTO `huannn_zone` VALUES ('4146', '117', 'Olaines novads', '0801000', '1');
INSERT INTO `huannn_zone` VALUES ('4147', '117', 'Ozolnieku novads', '0546701', '1');
INSERT INTO `huannn_zone` VALUES ('4148', '117', 'Pārgaujas novads', '0427500', '1');
INSERT INTO `huannn_zone` VALUES ('4149', '117', 'Pāvilosta, Pāvilostas novads', '0641413', '1');
INSERT INTO `huannn_zone` VALUES ('4150', '117', 'Pāvilostas novads', '0641401', '1');
INSERT INTO `huannn_zone` VALUES ('4151', '117', 'Piltene, Ventspils novads', '0980213', '1');
INSERT INTO `huannn_zone` VALUES ('4152', '117', 'Pļaviņas, Pļaviņu novads', '0321413', '1');
INSERT INTO `huannn_zone` VALUES ('4153', '117', 'Pļaviņu novads', '0321400', '1');
INSERT INTO `huannn_zone` VALUES ('4154', '117', 'Preiļi, Preiļu novads', '0760201', '1');
INSERT INTO `huannn_zone` VALUES ('4155', '117', 'Preiļu novads', '0760202', '1');
INSERT INTO `huannn_zone` VALUES ('4156', '117', 'Priekule, Priekules novads', '0641615', '1');
INSERT INTO `huannn_zone` VALUES ('4157', '117', 'Priekules novads', '0641600', '1');
INSERT INTO `huannn_zone` VALUES ('4158', '117', 'Priekuļu novads', '0427300', '1');
INSERT INTO `huannn_zone` VALUES ('4159', '117', 'Raunas novads', '0427700', '1');
INSERT INTO `huannn_zone` VALUES ('4160', '117', 'Rēzekne', '0210000', '1');
INSERT INTO `huannn_zone` VALUES ('4161', '117', 'Rēzeknes novads', '0780200', '1');
INSERT INTO `huannn_zone` VALUES ('4162', '117', 'Riebiņu novads', '0766300', '1');
INSERT INTO `huannn_zone` VALUES ('4163', '117', 'Rīga', '0010000', '1');
INSERT INTO `huannn_zone` VALUES ('4164', '117', 'Rojas novads', '0888300', '1');
INSERT INTO `huannn_zone` VALUES ('4165', '117', 'Ropažu novads', '0808400', '1');
INSERT INTO `huannn_zone` VALUES ('4166', '117', 'Rucavas novads', '0648500', '1');
INSERT INTO `huannn_zone` VALUES ('4167', '117', 'Rugāju novads', '0387500', '1');
INSERT INTO `huannn_zone` VALUES ('4168', '117', 'Rundāles novads', '0407700', '1');
INSERT INTO `huannn_zone` VALUES ('4169', '117', 'Rūjiena, Rūjienas novads', '0961615', '1');
INSERT INTO `huannn_zone` VALUES ('4170', '117', 'Rūjienas novads', '0961600', '1');
INSERT INTO `huannn_zone` VALUES ('4171', '117', 'Sabile, Talsu novads', '0880213', '1');
INSERT INTO `huannn_zone` VALUES ('4172', '117', 'Salacgrīva, Salacgrīvas novads', '0661415', '1');
INSERT INTO `huannn_zone` VALUES ('4173', '117', 'Salacgrīvas novads', '0661400', '1');
INSERT INTO `huannn_zone` VALUES ('4174', '117', 'Salas novads', '0568700', '1');
INSERT INTO `huannn_zone` VALUES ('4175', '117', 'Salaspils novads', '0801200', '1');
INSERT INTO `huannn_zone` VALUES ('4176', '117', 'Salaspils, Salaspils novads', '0801211', '1');
INSERT INTO `huannn_zone` VALUES ('4177', '117', 'Saldus novads', '0840200', '1');
INSERT INTO `huannn_zone` VALUES ('4178', '117', 'Saldus, Saldus novads', '0840201', '1');
INSERT INTO `huannn_zone` VALUES ('4179', '117', 'Saulkrasti, Saulkrastu novads', '0801413', '1');
INSERT INTO `huannn_zone` VALUES ('4180', '117', 'Saulkrastu novads', '0801400', '1');
INSERT INTO `huannn_zone` VALUES ('4181', '117', 'Seda, Strenču novads', '0941813', '1');
INSERT INTO `huannn_zone` VALUES ('4182', '117', 'Sējas novads', '0809200', '1');
INSERT INTO `huannn_zone` VALUES ('4183', '117', 'Sigulda, Siguldas novads', '0801615', '1');
INSERT INTO `huannn_zone` VALUES ('4184', '117', 'Siguldas novads', '0801601', '1');
INSERT INTO `huannn_zone` VALUES ('4185', '117', 'Skrīveru novads', '0328200', '1');
INSERT INTO `huannn_zone` VALUES ('4186', '117', 'Skrunda, Skrundas novads', '0621209', '1');
INSERT INTO `huannn_zone` VALUES ('4187', '117', 'Skrundas novads', '0621200', '1');
INSERT INTO `huannn_zone` VALUES ('4188', '117', 'Smiltene, Smiltenes novads', '0941615', '1');
INSERT INTO `huannn_zone` VALUES ('4189', '117', 'Smiltenes novads', '0941600', '1');
INSERT INTO `huannn_zone` VALUES ('4190', '117', 'Staicele, Alojas novads', '0661017', '1');
INSERT INTO `huannn_zone` VALUES ('4191', '117', 'Stende, Talsu novads', '0880215', '1');
INSERT INTO `huannn_zone` VALUES ('4192', '117', 'Stopiņu novads', '0809600', '1');
INSERT INTO `huannn_zone` VALUES ('4193', '117', 'Strenči, Strenču novads', '0941817', '1');
INSERT INTO `huannn_zone` VALUES ('4194', '117', 'Strenču novads', '0941800', '1');
INSERT INTO `huannn_zone` VALUES ('4195', '117', 'Subate, Ilūkstes novads', '0440815', '1');
INSERT INTO `huannn_zone` VALUES ('4196', '117', 'Talsi, Talsu novads', '0880201', '1');
INSERT INTO `huannn_zone` VALUES ('4197', '117', 'Talsu novads', '0880200', '1');
INSERT INTO `huannn_zone` VALUES ('4198', '117', 'Tērvetes novads', '0468900', '1');
INSERT INTO `huannn_zone` VALUES ('4199', '117', 'Tukuma novads', '0900200', '1');
INSERT INTO `huannn_zone` VALUES ('4200', '117', 'Tukums, Tukuma novads', '0900201', '1');
INSERT INTO `huannn_zone` VALUES ('4201', '117', 'Vaiņodes novads', '0649300', '1');
INSERT INTO `huannn_zone` VALUES ('4202', '117', 'Valdemārpils, Talsu novads', '0880217', '1');
INSERT INTO `huannn_zone` VALUES ('4203', '117', 'Valka, Valkas novads', '0940201', '1');
INSERT INTO `huannn_zone` VALUES ('4204', '117', 'Valkas novads', '0940200', '1');
INSERT INTO `huannn_zone` VALUES ('4205', '117', 'Valmiera', '0250000', '1');
INSERT INTO `huannn_zone` VALUES ('4206', '117', 'Vangaži, Inčukalna novads', '0801817', '1');
INSERT INTO `huannn_zone` VALUES ('4207', '117', 'Varakļāni, Varakļānu novads', '0701817', '1');
INSERT INTO `huannn_zone` VALUES ('4208', '117', 'Varakļānu novads', '0701800', '1');
INSERT INTO `huannn_zone` VALUES ('4209', '117', 'Vārkavas novads', '0769101', '1');
INSERT INTO `huannn_zone` VALUES ('4210', '117', 'Vecpiebalgas novads', '0429300', '1');
INSERT INTO `huannn_zone` VALUES ('4211', '117', 'Vecumnieku novads', '0409500', '1');
INSERT INTO `huannn_zone` VALUES ('4212', '117', 'Ventspils', '0270000', '1');
INSERT INTO `huannn_zone` VALUES ('4213', '117', 'Ventspils novads', '0980200', '1');
INSERT INTO `huannn_zone` VALUES ('4214', '117', 'Viesīte, Viesītes novads', '0561815', '1');
INSERT INTO `huannn_zone` VALUES ('4215', '117', 'Viesītes novads', '0561800', '1');
INSERT INTO `huannn_zone` VALUES ('4216', '117', 'Viļaka, Viļakas novads', '0381615', '1');
INSERT INTO `huannn_zone` VALUES ('4217', '117', 'Viļakas novads', '0381600', '1');
INSERT INTO `huannn_zone` VALUES ('4218', '117', 'Viļāni, Viļānu novads', '0781817', '1');
INSERT INTO `huannn_zone` VALUES ('4219', '117', 'Viļānu novads', '0781800', '1');
INSERT INTO `huannn_zone` VALUES ('4220', '117', 'Zilupe, Zilupes novads', '0681817', '1');
INSERT INTO `huannn_zone` VALUES ('4221', '117', 'Zilupes novads', '0681801', '1');
INSERT INTO `huannn_zone` VALUES ('4222', '43', 'Arica y Parinacota', 'AP', '1');
INSERT INTO `huannn_zone` VALUES ('4223', '43', 'Los Rios', 'LR', '1');
INSERT INTO `huannn_zone` VALUES ('4224', '220', 'Kharkivs\'ka Oblast\'', '63', '1');
INSERT INTO `huannn_zone` VALUES ('4225', '118', 'Beirut', 'LB-BR', '1');
INSERT INTO `huannn_zone` VALUES ('4226', '118', 'Bekaa', 'LB-BE', '1');
INSERT INTO `huannn_zone` VALUES ('4227', '118', 'Mount Lebanon', 'LB-ML', '1');
INSERT INTO `huannn_zone` VALUES ('4228', '118', 'Nabatieh', 'LB-NB', '1');
INSERT INTO `huannn_zone` VALUES ('4229', '118', 'North', 'LB-NR', '1');
INSERT INTO `huannn_zone` VALUES ('4230', '118', 'South', 'LB-ST', '1');
INSERT INTO `huannn_zone` VALUES ('4231', '99', 'Telangana', 'TS', '1');

-- ----------------------------
-- Table structure for huannn_zone_to_geo_zone
-- ----------------------------
DROP TABLE IF EXISTS `huannn_zone_to_geo_zone`;
CREATE TABLE `huannn_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`zone_to_geo_zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huannn_zone_to_geo_zone
-- ----------------------------
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('1', '222', '0', '4', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('2', '222', '3513', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('3', '222', '3514', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('4', '222', '3515', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('5', '222', '3516', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('6', '222', '3517', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('7', '222', '3518', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('8', '222', '3519', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('9', '222', '3520', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('10', '222', '3521', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('11', '222', '3522', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('12', '222', '3523', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('13', '222', '3524', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('14', '222', '3525', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('15', '222', '3526', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('16', '222', '3527', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('17', '222', '3528', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('18', '222', '3529', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('19', '222', '3530', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('20', '222', '3531', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('21', '222', '3532', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('22', '222', '3533', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('23', '222', '3534', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('24', '222', '3535', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('25', '222', '3536', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('26', '222', '3537', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('27', '222', '3538', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('28', '222', '3539', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('29', '222', '3540', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('30', '222', '3541', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('31', '222', '3542', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('32', '222', '3543', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('33', '222', '3544', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('34', '222', '3545', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('35', '222', '3546', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('36', '222', '3547', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('37', '222', '3548', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('38', '222', '3549', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('39', '222', '3550', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('40', '222', '3551', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('41', '222', '3552', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('42', '222', '3553', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('43', '222', '3554', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('44', '222', '3555', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('45', '222', '3556', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('46', '222', '3557', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('47', '222', '3558', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('48', '222', '3559', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('49', '222', '3560', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('50', '222', '3561', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('51', '222', '3562', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('52', '222', '3563', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('53', '222', '3564', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('54', '222', '3565', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('55', '222', '3566', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('56', '222', '3567', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('57', '222', '3568', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('58', '222', '3569', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('59', '222', '3570', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('60', '222', '3571', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('61', '222', '3572', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('62', '222', '3573', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('63', '222', '3574', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('64', '222', '3575', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('65', '222', '3576', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('66', '222', '3577', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('67', '222', '3578', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('68', '222', '3579', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('69', '222', '3580', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('70', '222', '3581', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('71', '222', '3582', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('72', '222', '3583', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('73', '222', '3584', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('74', '222', '3585', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('75', '222', '3586', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('76', '222', '3587', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('77', '222', '3588', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('78', '222', '3589', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('79', '222', '3590', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('80', '222', '3591', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('81', '222', '3592', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('82', '222', '3593', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('83', '222', '3594', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('84', '222', '3595', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('85', '222', '3596', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('86', '222', '3597', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('87', '222', '3598', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('88', '222', '3599', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('89', '222', '3600', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('90', '222', '3601', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('91', '222', '3602', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('92', '222', '3603', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('93', '222', '3604', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('94', '222', '3605', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('95', '222', '3606', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('96', '222', '3607', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('97', '222', '3608', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('98', '222', '3609', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('99', '222', '3610', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('100', '222', '3611', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('101', '222', '3612', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('102', '222', '3949', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('103', '222', '3950', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('104', '222', '3951', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('105', '222', '3952', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('106', '222', '3953', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('107', '222', '3954', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('108', '222', '3955', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `huannn_zone_to_geo_zone` VALUES ('109', '222', '3972', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

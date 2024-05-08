-- phpMyAdmin SQL Dump
-- version 4.4.15.9
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 21, 2017 at 04:37 AM
-- Server version: 5.6.35
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thoitrangnv`
--

-- --------------------------------------------------------

--
-- Table structure for table `nv3_authors`
--

CREATE TABLE IF NOT EXISTS `nv3_authors` (
  `admin_id` mediumint(8) unsigned NOT NULL,
  `editor` varchar(100) NOT NULL,
  `lev` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `files_level` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `addtime` int(11) NOT NULL DEFAULT '0',
  `edittime` int(11) NOT NULL DEFAULT '0',
  `is_suspend` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `susp_reason` mediumtext NOT NULL,
  `check_num` varchar(40) NOT NULL,
  `last_login` int(11) unsigned NOT NULL DEFAULT '0',
  `last_ip` varchar(45) NOT NULL,
  `last_agent` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nv3_authors`
--

INSERT INTO `nv3_authors` (`admin_id`, `editor`, `lev`, `files_level`, `position`, `addtime`, `edittime`, `is_suspend`, `susp_reason`, `check_num`, `last_login`, `last_ip`, `last_agent`) VALUES
(1, 'ckeditor', 1, 'adobe,archives,audio,documents,flash,images,real,video|1|1|1', 'Administrator', 0, 0, 0, '', '07843077ef01c38cd09580f4d772bfcb55974db0', 1500611346, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/64.4.144 Chrome/58.4.3029.144 Safari/537.36');

-- --------------------------------------------------------

--
-- Table structure for table `nv3_authors_config`
--

CREATE TABLE IF NOT EXISTS `nv3_authors_config` (
  `id` mediumint(8) unsigned NOT NULL,
  `keyname` varchar(32) DEFAULT NULL,
  `mask` tinyint(4) NOT NULL DEFAULT '0',
  `begintime` int(11) DEFAULT NULL,
  `endtime` int(11) DEFAULT NULL,
  `notice` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `nv3_banip`
--

CREATE TABLE IF NOT EXISTS `nv3_banip` (
  `id` int(11) NOT NULL,
  `ip` varchar(32) DEFAULT NULL,
  `mask` tinyint(4) NOT NULL DEFAULT '0',
  `area` tinyint(3) NOT NULL,
  `begintime` int(11) DEFAULT NULL,
  `endtime` int(11) DEFAULT NULL,
  `notice` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `nv3_banners_click`
--

CREATE TABLE IF NOT EXISTS `nv3_banners_click` (
  `bid` mediumint(8) NOT NULL DEFAULT '0',
  `click_time` int(11) unsigned NOT NULL DEFAULT '0',
  `click_day` int(2) NOT NULL,
  `click_ip` varchar(15) NOT NULL,
  `click_country` varchar(10) NOT NULL,
  `click_browse_key` varchar(100) NOT NULL,
  `click_browse_name` varchar(100) NOT NULL,
  `click_os_key` varchar(100) NOT NULL,
  `click_os_name` varchar(100) NOT NULL,
  `click_ref` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nv3_banners_click`
--

INSERT INTO `nv3_banners_click` (`bid`, `click_time`, `click_day`, `click_ip`, `click_country`, `click_browse_key`, `click_browse_name`, `click_os_key`, `click_os_name`, `click_ref`) VALUES
(3, 1465402133, 0, '127.0.0.1', 'ZZ', '', 'chrome', '', 'Windows 7', 'http://localhost/shopthoitrang/index.php/vi/shops/order/');

-- --------------------------------------------------------

--
-- Table structure for table `nv3_banners_clients`
--

CREATE TABLE IF NOT EXISTS `nv3_banners_clients` (
  `id` mediumint(8) unsigned NOT NULL,
  `login` varchar(60) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `reg_time` int(11) unsigned NOT NULL DEFAULT '0',
  `full_name` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `website` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `yim` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `fax` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `act` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `check_num` varchar(40) NOT NULL,
  `last_login` int(11) unsigned NOT NULL DEFAULT '0',
  `last_ip` varchar(15) NOT NULL,
  `last_agent` varchar(255) NOT NULL,
  `uploadtype` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `nv3_banners_plans`
--

CREATE TABLE IF NOT EXISTS `nv3_banners_plans` (
  `id` mediumint(8) unsigned NOT NULL,
  `blang` char(2) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `form` varchar(100) NOT NULL,
  `width` smallint(4) unsigned NOT NULL DEFAULT '0',
  `height` smallint(4) unsigned NOT NULL DEFAULT '0',
  `act` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nv3_banners_plans`
--

INSERT INTO `nv3_banners_plans` (`id`, `blang`, `title`, `description`, `form`, `width`, `height`, `act`) VALUES
(1, '', 'Quang cao giua trang', '', 'sequential', 510, 100, 1),
(2, '', 'Quang cao trai', '', 'sequential', 190, 500, 1),
(3, '', 'ADV1', '', 'sequential', 230, 300, 1),
(4, '', 'ADV2', '', 'sequential', 230, 300, 1),
(5, '', 'ADV3', '', 'sequential', 230, 300, 1),
(6, '', 'ADV4', '', 'sequential', 230, 300, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv3_banners_rows`
--

CREATE TABLE IF NOT EXISTS `nv3_banners_rows` (
  `id` mediumint(8) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `pid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `clid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `file_name` varchar(255) NOT NULL,
  `file_ext` varchar(100) NOT NULL,
  `file_mime` varchar(100) NOT NULL,
  `width` int(4) unsigned NOT NULL DEFAULT '0',
  `height` int(4) unsigned NOT NULL DEFAULT '0',
  `file_alt` varchar(255) NOT NULL,
  `click_url` varchar(255) NOT NULL,
  `file_name_tmp` varchar(255) NOT NULL,
  `file_alt_tmp` varchar(255) NOT NULL,
  `click_url_tmp` varchar(255) NOT NULL,
  `add_time` int(11) unsigned NOT NULL DEFAULT '0',
  `publ_time` int(11) unsigned NOT NULL DEFAULT '0',
  `exp_time` int(11) unsigned NOT NULL DEFAULT '0',
  `hits_total` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `act` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nv3_banners_rows`
--

INSERT INTO `nv3_banners_rows` (`id`, `title`, `pid`, `clid`, `file_name`, `file_ext`, `file_mime`, `width`, `height`, `file_alt`, `click_url`, `file_name_tmp`, `file_alt_tmp`, `click_url_tmp`, `add_time`, `publ_time`, `exp_time`, `hits_total`, `act`, `weight`) VALUES
(1, 'Bo ngoai giao', 2, 0, 'bongoaigiao.jpg', 'jpg', 'image/jpeg', 160, 54, '', 'http://www.mofa.gov.vn', '', '', '', 1373785399, 1373785399, 0, 0, 1, 1),
(2, 'vinades', 2, 0, 'vinades.jpg', 'jpg', 'image/jpeg', 190, 454, '', 'http://vinades.vn', '', '', '', 1373785399, 1373785399, 0, 0, 1, 2),
(3, 'Quang cao giua trang', 1, 0, 'webnhanh_vn-copy.jpg', 'jpg', 'image/jpeg', 610, 78, '', 'http://codewebre.wordpress.com', '', '', '', 1373785399, 1373785399, 0, 1, 1, 1),
(4, 'ADV1', 3, 0, '9b7f65d6b9be5bab3da1787294501e79.png', 'png', 'image/png', 230, 300, '', '', '', '', '', 1374334871, 1374334871, 0, 0, 1, 1),
(5, 'ADV2', 4, 0, '12c4368021b10fa6790c8c3587d2ab0c.jpg', 'jpg', 'image/jpeg', 230, 300, '', '', '', '', '', 1374335116, 1374335116, 0, 0, 1, 1),
(6, 'ADV3', 5, 0, 'f74da87206c82debeeb6958b07c129dc.jpg', 'jpg', 'image/jpeg', 230, 300, '', '', '', '', '', 1374335234, 1374335234, 0, 0, 1, 1),
(7, 'ADV4', 6, 0, '3afdf096dcf8c6e2069e1e3ce0fda2f8.jpg', 'jpg', 'image/jpeg', 230, 300, '', '', '', '', '', 1374335260, 1374335260, 0, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv3_config`
--

CREATE TABLE IF NOT EXISTS `nv3_config` (
  `lang` char(3) NOT NULL DEFAULT 'sys',
  `module` varchar(25) NOT NULL DEFAULT 'global',
  `config_name` varchar(30) NOT NULL DEFAULT '',
  `config_value` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nv3_config`
--

INSERT INTO `nv3_config` (`lang`, `module`, `config_name`, `config_value`) VALUES
('sys', 'global', 'closed_site', '0'),
('sys', 'global', 'site_keywords', 'NukeViet, portal, mysql, php'),
('sys', 'global', 'site_phone', ''),
('sys', 'global', 'site_lang', 'vi'),
('sys', 'global', 'admin_theme', 'admin_full'),
('sys', 'global', 'date_pattern', 'l, d-m-Y'),
('sys', 'global', 'time_pattern', 'H&#x3A;i'),
('sys', 'global', 'block_admin_ip', '0'),
('sys', 'global', 'admfirewall', '0'),
('sys', 'global', 'online_upd', '1'),
('sys', 'global', 'statistic', '1'),
('sys', 'global', 'dump_autobackup', '1'),
('sys', 'global', 'dump_backup_ext', 'gz'),
('sys', 'global', 'dump_backup_day', '30'),
('sys', 'global', 'gfx_chk', '3'),
('sys', 'global', 'file_allowed_ext', 'adobe,archives,audio,documents,flash,images,real,video'),
('sys', 'global', 'forbid_extensions', 'php'),
('sys', 'global', 'forbid_mimes', ''),
('sys', 'global', 'nv_max_size', '83886080'),
('sys', 'global', 'upload_checking_mode', 'strong'),
('sys', 'global', 'upload_logo', 'images/logo.png'),
('sys', 'global', 'str_referer_blocker', '0'),
('sys', 'global', 'getloadavg', '0'),
('sys', 'global', 'mailer_mode', ''),
('sys', 'global', 'smtp_host', 'smtp.gmail.com'),
('sys', 'global', 'smtp_ssl', '1'),
('sys', 'global', 'smtp_port', '465'),
('sys', 'global', 'smtp_username', 'user@gmail.com'),
('sys', 'global', 'smtp_password', 'userpass'),
('sys', 'global', 'allowuserreg', '1'),
('sys', 'global', 'allowuserlogin', '1'),
('sys', 'global', 'allowloginchange', '0'),
('sys', 'global', 'allowquestion', '1'),
('sys', 'global', 'allowuserpublic', '0'),
('sys', 'global', 'useactivate', '2'),
('sys', 'global', 'allowmailchange', '1'),
('sys', 'global', 'allow_sitelangs', 'vi'),
('sys', 'global', 'allow_adminlangs', 'cs,en,fr,tr,vi'),
('sys', 'global', 'read_type', '0'),
('sys', 'global', 'is_url_rewrite', '1'),
('sys', 'global', 'rewrite_optional', '0'),
('sys', 'global', 'rewrite_endurl', '/'),
('sys', 'global', 'rewrite_exturl', '.html'),
('sys', 'global', 'autocheckupdate', '1'),
('sys', 'global', 'autologomod', ''),
('sys', 'global', 'autologosize1', '50'),
('sys', 'global', 'autologosize2', '40'),
('sys', 'global', 'autologosize3', '30'),
('sys', 'global', 'autoupdatetime', '24'),
('sys', 'global', 'gzip_method', '1'),
('sys', 'global', 'is_user_forum', '0'),
('sys', 'global', 'openid_mode', '1'),
('sys', 'global', 'authors_detail_main', '0'),
('sys', 'global', 'spadmin_add_admin', '1'),
('sys', 'global', 'openid_servers', 'yahoo,google,myopenid'),
('sys', 'global', 'optActive', '0'),
('sys', 'global', 'timestamp', '195'),
('sys', 'global', 'googleAnalyticsID', ''),
('sys', 'global', 'googleAnalyticsSetDomainName', '0'),
('sys', 'global', 'searchEngineUniqueID', ''),
('sys', 'global', 'captcha_type', '0'),
('sys', 'global', 'revision', '1929'),
('sys', 'global', 'version', '3.4.02'),
('sys', 'global', 'whoviewuser', '2'),
('vi', 'global', 'site_name', 'SHOPS'),
('vi', 'global', 'site_logo', 'images/logo_1-1_2.png'),
('vi', 'global', 'site_description', 'NukeViet CMS 3.x Developed by VINADES.,JSC'),
('vi', 'global', 'site_keywords', ''),
('vi', 'global', 'site_theme', 'modern'),
('vi', 'global', 'site_home_module', 'shops'),
('vi', 'global', 'switch_mobi_des', '1'),
('vi', 'global', 'disable_site_content', 'Vì lý do kỹ thuật website tạm ngưng hoạt động. Thành thật xin lỗi các bạn vì sự bất tiện này!'),
('vi', 'news', 'indexfile', 'viewcat_main_right'),
('vi', 'news', 'per_page', '20'),
('vi', 'news', 'st_links', '10'),
('vi', 'news', 'auto_postcomm', '1'),
('vi', 'news', 'homewidth', '200'),
('vi', 'news', 'homeheight', '250'),
('vi', 'news', 'blockwidth', '152'),
('vi', 'news', 'blockheight', '175'),
('vi', 'news', 'imagefull', '460'),
('vi', 'news', 'setcomm', '2'),
('vi', 'news', 'copyright', 'Chú ý&#x3A; Việc đăng lại bài viết trên ở website hoặc các phương tiện truyền thông khác mà không ghi rõ nguồn http&#x3A;&#x002F;&#x002F;nukeviet.vn là vi phạm bản quyền'),
('vi', 'news', 'showhometext', '1'),
('vi', 'news', 'activecomm', '1'),
('vi', 'news', 'emailcomm', '1'),
('vi', 'news', 'timecheckstatus', '0'),
('vi', 'news', 'config_source', '0'),
('sys', 'global', 'site_email', 'admin@mail.com'),
('sys', 'global', 'error_send_email', 'admin@mail.com'),
('sys', 'global', 'my_domains', 'localhost,localhost/shopthoitrang'),
('sys', 'global', 'cookie_prefix', 'nv3c_Ldg9b'),
('sys', 'global', 'session_prefix', 'nv3s_Zmb2q3'),
('sys', 'global', 'site_timezone', 'byCountry'),
('sys', 'global', 'statistics_timezone', 'Asia/Bangkok'),
('sys', 'global', 'proxy_blocker', '0'),
('sys', 'global', 'lang_multi', '1'),
('sys', 'global', 'lang_geo', '0'),
('sys', 'global', 'ftp_server', 'localhost'),
('sys', 'global', 'ftp_port', '21'),
('sys', 'global', 'ftp_user_name', ''),
('sys', 'global', 'ftp_user_pass', ''),
('sys', 'global', 'ftp_path', '/'),
('sys', 'global', 'ftp_check_login', '0'),
('vi', 'shops', 'image_size', '300x350'),
('vi', 'shops', 'home_view', 'view_home_cat'),
('vi', 'shops', 'per_page', '20'),
('vi', 'shops', 'per_row', '4'),
('vi', 'shops', 'comment', '1'),
('vi', 'shops', 'comment_auto', '1'),
('vi', 'shops', 'who_comment', '0'),
('vi', 'shops', 'groups_comment', ''),
('vi', 'shops', 'money_unit', 'VND'),
('vi', 'shops', 'post_auto_member', '0'),
('vi', 'shops', 'auto_check_order', '1'),
('vi', 'shops', 'format_order_id', 'S%06s'),
('vi', 'shops', 'format_code_id', 'S%06s'),
('vi', 'shops', 'active_showhomtext', '1'),
('vi', 'shops', 'active_order', '1'),
('vi', 'shops', 'active_price', '1'),
('vi', 'shops', 'active_order_number', '0'),
('vi', 'shops', 'active_payment', '1'),
('vi', 'shops', 'active_tooltip', '0'),
('vi', 'shops', 'timecheckstatus', '0'),
('vi', 'shops', 'show_product_code', '0'),
('vi', 'shops', 'homewidth', '300'),
('vi', 'shops', 'homeheight', '350'),
('vi', 'news', 'module_logo', 'images/logo_header.png'),
('vi', 'news', 'structure_upload', 'Ym');

-- --------------------------------------------------------

--
-- Table structure for table `nv3_cronjobs`
--

CREATE TABLE IF NOT EXISTS `nv3_cronjobs` (
  `id` mediumint(8) unsigned NOT NULL,
  `start_time` int(11) unsigned NOT NULL DEFAULT '0',
  `interval` int(11) unsigned NOT NULL DEFAULT '0',
  `run_file` varchar(255) NOT NULL,
  `run_func` varchar(255) NOT NULL,
  `params` varchar(255) NOT NULL,
  `del` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_sys` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `act` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `last_time` int(11) unsigned NOT NULL DEFAULT '0',
  `last_result` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `vi_cron_name` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nv3_cronjobs`
--

INSERT INTO `nv3_cronjobs` (`id`, `start_time`, `interval`, `run_file`, `run_func`, `params`, `del`, `is_sys`, `act`, `last_time`, `last_result`, `vi_cron_name`) VALUES
(1, 1373785399, 5, 'online_expired_del.php', 'cron_online_expired_del', '', 0, 1, 1, 1500611603, 1, 'Xóa các dòng ghi trạng thái online đã cũ trong CSDL'),
(2, 1373785399, 1440, 'dump_autobackup.php', 'cron_dump_autobackup', '', 0, 1, 1, 1500611336, 1, 'Tự động lưu CSDL'),
(3, 1373785399, 60, 'temp_download_destroy.php', 'cron_auto_del_temp_download', '', 0, 1, 1, 1500611336, 1, 'Xóa các file tạm trong thư mục tmp'),
(4, 1373785399, 30, 'ip_logs_destroy.php', 'cron_del_ip_logs', '', 0, 1, 1, 1500611603, 1, 'Xóa IP log files Xóa các file logo truy cập'),
(5, 1373785399, 1440, 'error_log_destroy.php', 'cron_auto_del_error_log', '', 0, 1, 1, 1500611336, 1, 'Xóa các file error_log quá hạn'),
(6, 1373785399, 360, 'error_log_sendmail.php', 'cron_auto_sendmail_error_log', '', 0, 1, 0, 0, 0, 'Gửi email các thông báo lỗi cho admin'),
(7, 1373785399, 60, 'ref_expired_del.php', 'cron_ref_expired_del', '', 0, 1, 1, 1500611336, 1, 'Xóa các referer quá hạn'),
(8, 1373785399, 1440, 'siteDiagnostic_update.php', 'cron_siteDiagnostic_update', '', 0, 1, 1, 1500611336, 1, 'Cập nhật đánh giá site từ các máy chủ tìm kiếm'),
(9, 1373785399, 60, 'check_version.php', 'cron_auto_check_version', '', 0, 1, 1, 1500611336, 1, 'Kiểm tra phiên bản NukeViet');

-- --------------------------------------------------------

--
-- Table structure for table `nv3_groups`
--

CREATE TABLE IF NOT EXISTS `nv3_groups` (
  `group_id` mediumint(8) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` mediumtext NOT NULL,
  `add_time` int(11) NOT NULL,
  `exp_time` int(11) NOT NULL,
  `users` mediumtext NOT NULL,
  `public` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` int(11) unsigned NOT NULL DEFAULT '0',
  `act` tinyint(1) unsigned NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `nv3_ipcountry`
--

CREATE TABLE IF NOT EXISTS `nv3_ipcountry` (
  `ip_from` int(11) unsigned NOT NULL,
  `ip_to` int(11) unsigned NOT NULL,
  `country` char(2) NOT NULL,
  `ip_file` smallint(5) unsigned NOT NULL,
  `time` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nv3_ipcountry`
--

INSERT INTO `nv3_ipcountry` (`ip_from`, `ip_to`, `country`, `ip_file`, `time`) VALUES
(2130706432, 2130771967, 'ZZ', 127, 1373785498);

-- --------------------------------------------------------

--
-- Table structure for table `nv3_language`
--

CREATE TABLE IF NOT EXISTS `nv3_language` (
  `id` mediumint(8) unsigned NOT NULL,
  `idfile` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lang_key` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `nv3_language_file`
--

CREATE TABLE IF NOT EXISTS `nv3_language_file` (
  `idfile` mediumint(8) unsigned NOT NULL,
  `module` varchar(50) NOT NULL,
  `admin_file` varchar(255) NOT NULL DEFAULT '0',
  `langtype` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `nv3_logs`
--

CREATE TABLE IF NOT EXISTS `nv3_logs` (
  `id` int(11) NOT NULL,
  `lang` varchar(10) NOT NULL,
  `module_name` varchar(150) NOT NULL,
  `name_key` varchar(255) NOT NULL,
  `note_action` text NOT NULL,
  `link_acess` varchar(255) NOT NULL,
  `userid` int(11) NOT NULL,
  `log_time` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=583 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nv3_logs`
--

INSERT INTO `nv3_logs` (`id`, `lang`, `module_name`, `name_key`, `note_action`, `link_acess`, `userid`, `log_time`) VALUES
(1, 'vi', 'upload', 'Upload file', 'images/logo_header.png', 'images/logo_header.png', 1, 1373785568),
(2, 'vi', 'modules', 'Cài đặt gói Module + Block', 'module-shops-3-4-02.zip', 'module-shops-3-4-02.zip', 1, 1373785945),
(3, 'vi', 'modules', 'Thiết lập module mới shops"', '', '', 1, 1373785958),
(4, 'vi', 'modules', 'Sửa module &ldquo;shops&rdquo;', '', '', 1, 1373785964),
(5, 'vi', 'modules', 'Thứ tự module "shops"', '11 -> 3', '11 -> 3', 1, 1373786175),
(6, 'vi', 'shops', 'log_add_catalog', 'id 1', 'id 1', 1, 1373786191),
(7, 'vi', 'upload', 'Upload file', 'uploads/shops/2013_07/b15d5f518683e3b38fc286eb6ac11776.jpg', 'uploads/shops/2013_07/b15d5f518683e3b38fc286eb6ac11776.jpg', 1, 1373786336),
(8, 'vi', 'shops', 'Add A Product', 'ID: 1', 'ID: 1', 1, 1373786362),
(9, 'vi', 'shops', 'Thêm nhóm sản phẩm', 'Sản phẩm hot', 'Sản phẩm hot', 1, 1373786391),
(10, 'vi', 'shops', 'Thêm nhóm sản phẩm', 'Sản phẩm mới', 'Sản phẩm mới', 1, 1373786399),
(11, 'vi', 'shops', 'Thêm nhóm sản phẩm', 'Sản phẩm thương hiệu', 'Sản phẩm thương hiệu', 1, 1373786457),
(12, 'vi', 'upload', 'Upload file', 'uploads/shops/2013_07/1a71436bc9f39277e739ff38d5d4dd7e.jpg', 'uploads/shops/2013_07/1a71436bc9f39277e739ff38d5d4dd7e.jpg', 1, 1373786592),
(13, 'vi', 'shops', 'Add A Product', 'ID: 2', 'ID: 2', 1, 1373786596),
(14, 'vi', 'upload', 'Upload file', 'uploads/shops/2013_07/12972145061390188572_574_0.jpg', 'uploads/shops/2013_07/12972145061390188572_574_0.jpg', 1, 1373786703),
(15, 'vi', 'shops', 'Add A Product', 'ID: 3', 'ID: 3', 1, 1373786724),
(16, 'vi', 'upload', 'Upload file', 'uploads/shops/2013_07/e35bb603554387b98b6cf8f82fffcb9f.jpg', 'uploads/shops/2013_07/e35bb603554387b98b6cf8f82fffcb9f.jpg', 1, 1373786817),
(17, 'vi', 'shops', 'Add A Product', 'ID: 4', 'ID: 4', 1, 1373786835),
(18, 'vi', 'upload', 'Upload file', 'uploads/shops/2013_07/4bb277decc493d4dcc0acccacd12134e.jpg', 'uploads/shops/2013_07/4bb277decc493d4dcc0acccacd12134e.jpg', 1, 1373787061),
(19, 'vi', 'shops', 'Add A Product', 'ID: 5', 'ID: 5', 1, 1373787072),
(20, 'vi', 'upload', 'Upload file', 'uploads/shops/2013_07/98d66014b387ec9940e23a00d4ecf054.jpg', 'uploads/shops/2013_07/98d66014b387ec9940e23a00d4ecf054.jpg', 1, 1373787256),
(21, 'vi', 'shops', 'Add A Product', 'ID: 6', 'ID: 6', 1, 1373787261),
(22, 'vi', 'upload', 'Upload file', 'uploads/shops/2013_07/863f07ed6a0352d9092f6a332d274e22.jpg', 'uploads/shops/2013_07/863f07ed6a0352d9092f6a332d274e22.jpg', 1, 1373787345),
(23, 'vi', 'shops', 'Add A Product', 'ID: 7', 'ID: 7', 1, 1373787441),
(24, 'vi', 'upload', 'Upload file', 'uploads/shops/2013_07/f08440ec124962698aff5a22de39406d.jpg', 'uploads/shops/2013_07/f08440ec124962698aff5a22de39406d.jpg', 1, 1373787537),
(25, 'vi', 'shops', 'Add A Product', 'ID: 8', 'ID: 8', 1, 1373787573),
(26, 'vi', 'upload', 'Upload file', 'uploads/shops/2013_07/56f265c8cd139bd5e6c48af31b1bb389.jpg', 'uploads/shops/2013_07/56f265c8cd139bd5e6c48af31b1bb389.jpg', 1, 1373787662),
(27, 'vi', 'shops', 'Add A Product', 'ID: 9', 'ID: 9', 1, 1373787700),
(28, 'vi', 'upload', 'Upload file', 'uploads/shops/2013_07/b2a7c48c570e65f609cf84e076d4bd1c.jpg', 'uploads/shops/2013_07/b2a7c48c570e65f609cf84e076d4bd1c.jpg', 1, 1373787753),
(29, 'vi', 'shops', 'Add A Product', 'ID: 10', 'ID: 10', 1, 1373787820),
(30, 'vi', 'upload', 'Upload file', 'uploads/shops/2013_07/c29225b099c81947ca6842a45d012e82.jpg', 'uploads/shops/2013_07/c29225b099c81947ca6842a45d012e82.jpg', 1, 1373787922),
(31, 'vi', 'shops', 'Add A Product', 'ID: 11', 'ID: 11', 1, 1373788004),
(32, 'vi', 'upload', 'Upload file', 'uploads/shops/2013_07/b42-12.jpg', 'uploads/shops/2013_07/b42-12.jpg', 1, 1373788132),
(33, 'vi', 'shops', 'Add A Product', 'ID: 12', 'ID: 12', 1, 1373788220),
(34, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1373788303),
(35, 'vi', 'shops', 'log_add_catalog', 'id 2', 'id 2', 1, 1373790623),
(36, 'vi', 'upload', 'Upload file', 'uploads/shops/2013_07/fa415a2760f557a655e276834687b0f4.jpg', 'uploads/shops/2013_07/fa415a2760f557a655e276834687b0f4.jpg', 1, 1373790675),
(37, 'vi', 'shops', 'Add A Product', 'ID: 13', 'ID: 13', 1, 1373790693),
(38, 'vi', 'upload', 'Upload file', 'uploads/shops/2013_07/93a1b2fd532dae44da1e25047da5ce4f.jpg', 'uploads/shops/2013_07/93a1b2fd532dae44da1e25047da5ce4f.jpg', 1, 1373790812),
(39, 'vi', 'shops', 'Add A Product', 'ID: 14', 'ID: 14', 1, 1373790836),
(40, 'vi', 'shops', 'Cấu hình module', 'Setting', 'Setting', 1, 1373790843),
(41, 'vi', 'upload', 'Upload file', 'uploads/shops/2013_07/8aac21576cdac5724d339a9c871c6e3c.jpg', 'uploads/shops/2013_07/8aac21576cdac5724d339a9c871c6e3c.jpg', 1, 1373790921),
(42, 'vi', 'shops', 'Add A Product', 'ID: 15', 'ID: 15', 1, 1373791019),
(43, 'vi', 'shops', 'Edit A Product', 'ID: 15', 'ID: 15', 1, 1373791055),
(44, 'vi', 'shops', 'Edit A Product', 'ID: 15', 'ID: 15', 1, 1373791075),
(45, 'vi', 'shops', 'Edit A Product', 'ID: 15', 'ID: 15', 1, 1373791097),
(46, 'vi', 'shops', 'Edit A Product', 'ID: 15', 'ID: 15', 1, 1373791111),
(47, 'vi', 'shops', 'Edit A Product', 'ID: 15', 'ID: 15', 1, 1373791129),
(48, 'vi', 'shops', 'Edit A Product', 'ID: 15', 'ID: 15', 1, 1373791170),
(49, 'vi', 'shops', 'Edit A Product', 'ID: 15', 'ID: 15', 1, 1373791191),
(50, 'vi', 'shops', 'Edit A Product', 'ID: 15', 'ID: 15', 1, 1373791222),
(51, 'vi', 'upload', 'Upload file', 'uploads/shops/2013_07/0e49e6475522a6640d9b27f9406a4db1.jpg', 'uploads/shops/2013_07/0e49e6475522a6640d9b27f9406a4db1.jpg', 1, 1373791263),
(52, 'vi', 'shops', 'Add A Product', 'ID: 16', 'ID: 16', 1, 1373791345),
(53, 'vi', 'shops', 'Edit A Product', 'ID: 15', 'ID: 15', 1, 1373791370),
(54, 'vi', 'upload', 'Upload file', 'uploads/shops/2013_07/6b11ed9e45dc1346327abfb590acecfa.jpg', 'uploads/shops/2013_07/6b11ed9e45dc1346327abfb590acecfa.jpg', 1, 1373791434),
(55, 'vi', 'shops', 'Add A Product', 'ID: 17', 'ID: 17', 1, 1373791491),
(56, 'vi', 'upload', 'Upload file', 'uploads/shops/2013_07/507e94380fa70b5072bafa02018658e0.jpg', 'uploads/shops/2013_07/507e94380fa70b5072bafa02018658e0.jpg', 1, 1373791566),
(57, 'vi', 'shops', 'Add A Product', 'ID: 18', 'ID: 18', 1, 1373791635),
(58, 'vi', 'upload', 'Upload file', 'uploads/shops/2013_07/810e5377da25d57aa9840573d335dc22.jpg', 'uploads/shops/2013_07/810e5377da25d57aa9840573d335dc22.jpg', 1, 1373791797),
(59, 'vi', 'shops', 'Add A Product', 'ID: 19', 'ID: 19', 1, 1373791839),
(60, 'vi', 'upload', 'Upload file', 'uploads/shops/2013_07/1335250174807026211_574_574.jpg', 'uploads/shops/2013_07/1335250174807026211_574_574.jpg', 1, 1373791972),
(61, 'vi', 'shops', 'Add A Product', 'ID: 20', 'ID: 20', 1, 1373792024),
(62, 'vi', 'shops', 'Edit A Product', 'ID: 20', 'ID: 20', 1, 1373792031),
(63, 'vi', 'upload', 'Upload file', 'uploads/shops/2013_07/653afbb41d57bd94b4cb75bde35e0a87.jpg', 'uploads/shops/2013_07/653afbb41d57bd94b4cb75bde35e0a87.jpg', 1, 1373792164),
(64, 'vi', 'shops', 'Add A Product', 'ID: 21', 'ID: 21', 1, 1373792228),
(65, 'vi', 'upload', 'Upload file', 'uploads/shops/2013_07/8e5ea65e42c99aeacfdb8d17386fb0d4.jpg', 'uploads/shops/2013_07/8e5ea65e42c99aeacfdb8d17386fb0d4.jpg', 1, 1373792302),
(66, 'vi', 'shops', 'Add A Product', 'ID: 22', 'ID: 22', 1, 1373792329),
(67, 'vi', 'upload', 'Upload file', 'uploads/shops/2013_07/00b4eb6b9815223da72eb6eb457aeff8.jpg', 'uploads/shops/2013_07/00b4eb6b9815223da72eb6eb457aeff8.jpg', 1, 1373792411),
(68, 'vi', 'shops', 'Add A Product', 'ID: 23', 'ID: 23', 1, 1373792435),
(69, 'vi', 'upload', 'Upload file', 'uploads/shops/2013_07/ef101baf654b80a705c42afb4b4775e9.jpg', 'uploads/shops/2013_07/ef101baf654b80a705c42afb4b4775e9.jpg', 1, 1373792527),
(70, 'vi', 'shops', 'Add A Product', 'ID: 24', 'ID: 24', 1, 1373792541),
(71, 'vi', 'shops', 'log_add_catalog', 'id 3', 'id 3', 1, 1373792605),
(72, 'vi', 'upload', 'Upload file', 'uploads/shops/2013_07/c749b55f061feff6a60a2baa4af69e63.jpg', 'uploads/shops/2013_07/c749b55f061feff6a60a2baa4af69e63.jpg', 1, 1373792699),
(73, 'vi', 'shops', 'Add A Product', 'ID: 25', 'ID: 25', 1, 1373792775),
(74, 'vi', 'upload', 'Upload file', 'uploads/shops/2013_07/c291906737791099b5c8f4ee75d4a310.jpg', 'uploads/shops/2013_07/c291906737791099b5c8f4ee75d4a310.jpg', 1, 1373792853),
(75, 'vi', 'shops', 'Add A Product', 'ID: 26', 'ID: 26', 1, 1373792902),
(76, 'vi', 'upload', 'Upload file', 'uploads/shops/2013_07/856930d8868af8d0f6f7a2dd08392b64.jpg', 'uploads/shops/2013_07/856930d8868af8d0f6f7a2dd08392b64.jpg', 1, 1373793019),
(77, 'vi', 'shops', 'Add A Product', 'ID: 27', 'ID: 27', 1, 1373793098),
(78, 'vi', 'upload', 'Upload file', 'uploads/shops/2013_07/6acfaf42066b068e3165695c4c7ccbbc.jpg', 'uploads/shops/2013_07/6acfaf42066b068e3165695c4c7ccbbc.jpg', 1, 1373793215),
(79, 'vi', 'shops', 'Add A Product', 'ID: 28', 'ID: 28', 1, 1373793229),
(80, 'vi', 'upload', 'Upload file', 'uploads/shops/2013_07/b52c696e74a4f959aff62acd862c5c3d.jpg', 'uploads/shops/2013_07/b52c696e74a4f959aff62acd862c5c3d.jpg', 1, 1373793335),
(81, 'vi', 'shops', 'Add A Product', 'ID: 29', 'ID: 29', 1, 1373793374),
(82, 'vi', 'shops', 'Edit A Product', 'ID: 29', 'ID: 29', 1, 1373793416),
(83, 'vi', 'upload', 'Upload file', 'uploads/shops/2013_07/09948cc36d281b8cbad27a1577a26d90.jpg', 'uploads/shops/2013_07/09948cc36d281b8cbad27a1577a26d90.jpg', 1, 1373793497),
(84, 'vi', 'shops', 'Add A Product', 'ID: 30', 'ID: 30', 1, 1373793535),
(85, 'vi', 'upload', 'Upload file', 'uploads/shops/2013_07/8b85a7fdd40e8444815c037feb972469.jpg', 'uploads/shops/2013_07/8b85a7fdd40e8444815c037feb972469.jpg', 1, 1373793657),
(86, 'vi', 'shops', 'Add A Product', 'ID: 31', 'ID: 31', 1, 1373793675),
(87, 'vi', 'upload', 'Upload file', 'uploads/shops/2013_07/a28e92bef2076fcb76507b329873b360.jpg', 'uploads/shops/2013_07/a28e92bef2076fcb76507b329873b360.jpg', 1, 1373793901),
(88, 'vi', 'shops', 'Add A Product', 'ID: 32', 'ID: 32', 1, 1373793959),
(89, 'vi', 'upload', 'Upload file', 'uploads/shops/2013_07/iphone5-ban-lock-gia-re-1.jpg', 'uploads/shops/2013_07/iphone5-ban-lock-gia-re-1.jpg', 1, 1373794021),
(90, 'vi', 'shops', 'Add A Product', 'ID: 33', 'ID: 33', 1, 1373794059),
(91, 'vi', 'upload', 'Upload file', 'uploads/shops/2013_07/dien-thoai-sky-a840-white-500x500.jpg', 'uploads/shops/2013_07/dien-thoai-sky-a840-white-500x500.jpg', 1, 1373794120),
(92, 'vi', 'shops', 'Add A Product', 'ID: 34', 'ID: 34', 1, 1373794159),
(93, 'vi', 'upload', 'Upload file', 'uploads/shops/2013_07/dien-thoai-sky-a850k-black-500x500.jpg', 'uploads/shops/2013_07/dien-thoai-sky-a850k-black-500x500.jpg', 1, 1373794261),
(94, 'vi', 'shops', 'Add A Product', 'ID: 35', 'ID: 35', 1, 1373794294),
(95, 'vi', 'upload', 'Upload file', 'uploads/shops/2013_07/sky-iron-a870-white-1-500x500.jpg', 'uploads/shops/2013_07/sky-iron-a870-white-1-500x500.jpg', 1, 1373794364),
(96, 'vi', 'shops', 'Add A Product', 'ID: 36', 'ID: 36', 1, 1373794414),
(97, 'vi', 'shops', 'log_add_catalog', 'id 4', 'id 4', 1, 1373794554),
(98, 'vi', 'upload', 'Upload file', 'uploads/shops/2013_07/64a8678d2c1948dc8b71104148bc98ef.jpg', 'uploads/shops/2013_07/64a8678d2c1948dc8b71104148bc98ef.jpg', 1, 1373794617),
(99, 'vi', 'shops', 'Add A Product', 'ID: 37', 'ID: 37', 1, 1373794648),
(100, 'vi', 'upload', 'Upload file', 'uploads/shops/2013_07/1372905130_20130703084420bia-yeu-em-khong-can-qua-cuong-si.jpg', 'uploads/shops/2013_07/1372905130_20130703084420bia-yeu-em-khong-can-qua-cuong-si.jpg', 1, 1373794862),
(101, 'vi', 'shops', 'Add A Product', 'ID: 38', 'ID: 38', 1, 1373794866),
(102, 'vi', 'upload', 'Upload file', 'uploads/shops/2013_07/1361249998_sach-to-1348823874_480x0.jpg', 'uploads/shops/2013_07/1361249998_sach-to-1348823874_480x0.jpg', 1, 1373794948),
(103, 'vi', 'shops', 'Add A Product', 'ID: 39', 'ID: 39', 1, 1373794978),
(104, 'vi', 'upload', 'Upload file', 'uploads/shops/2013_07/1356509763_tu-gian-du-den-binh-an-kem-cd-mike-george-32297.jpg', 'uploads/shops/2013_07/1356509763_tu-gian-du-den-binh-an-kem-cd-mike-george-32297.jpg', 1, 1373795018),
(105, 'vi', 'shops', 'Add A Product', 'ID: 40', 'ID: 40', 1, 1373795052),
(106, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1373795064),
(107, 'vi', 'upload', 'Upload file', 'uploads/shops/2013_07/1371535976_dong-phuong-my-nhan-3-song-chet-cung-nhau_1_2.jpg', 'uploads/shops/2013_07/1371535976_dong-phuong-my-nhan-3-song-chet-cung-nhau_1_2.jpg', 1, 1373805308),
(108, 'vi', 'shops', 'Add A Product', 'ID: 41', 'ID: 41', 1, 1373805328),
(109, 'vi', 'upload', 'Upload file', 'uploads/shops/2013_07/1359446238_san-chong-jennifer-cruise-21080.jpg', 'uploads/shops/2013_07/1359446238_san-chong-jennifer-cruise-21080.jpg', 1, 1373805383),
(110, 'vi', 'shops', 'Add A Product', 'ID: 42', 'ID: 42', 1, 1373805400),
(111, 'vi', 'upload', 'Upload file', 'uploads/shops/2013_07/1365654565_thuong-vu-hon-nhan.jpg', 'uploads/shops/2013_07/1365654565_thuong-vu-hon-nhan.jpg', 1, 1373805450),
(112, 'vi', 'shops', 'Add A Product', 'ID: 43', 'ID: 43', 1, 1373805480),
(113, 'vi', 'upload', 'Upload file', 'uploads/shops/2013_07/1370247754_nxbtrestoryfull_30202013_042054.jpg', 'uploads/shops/2013_07/1370247754_nxbtrestoryfull_30202013_042054.jpg', 1, 1373805518),
(114, 'vi', 'shops', 'Add A Product', 'ID: 44', 'ID: 44', 1, 1373805550),
(115, 'vi', 'upload', 'Upload file', 'uploads/shops/2013_07/1366792749_game_of_thrornes_3a-01.jpg', 'uploads/shops/2013_07/1366792749_game_of_thrornes_3a-01.jpg', 1, 1373805598),
(116, 'vi', 'shops', 'Add A Product', 'ID: 45', 'ID: 45', 1, 1373805623),
(117, 'vi', 'shops', 'Edit A Product', 'ID: 45', 'ID: 45', 1, 1373805636),
(118, 'vi', 'upload', 'Upload file', 'uploads/shops/2013_07/1367805062_130427_img_1885.jpg', 'uploads/shops/2013_07/1367805062_130427_img_1885.jpg', 1, 1373805675),
(119, 'vi', 'shops', 'Add A Product', 'ID: 46', 'ID: 46', 1, 1373805696),
(120, 'vi', 'upload', 'Upload file', 'uploads/shops/2013_07/1370054615_939093594_bia_mong-sao-cuoc-doi-nay-chua-tung-gap-a_7.5.2013.jpg', 'uploads/shops/2013_07/1370054615_939093594_bia_mong-sao-cuoc-doi-nay-chua-tung-gap-a_7.5.2013.jpg', 1, 1373805736),
(121, 'vi', 'shops', 'Add A Product', 'ID: 47', 'ID: 47', 1, 1373805768),
(122, 'vi', 'upload', 'Upload file', 'uploads/shops/2013_07/1372214234_tap1.jpg', 'uploads/shops/2013_07/1372214234_tap1.jpg', 1, 1373805817),
(123, 'vi', 'shops', 'Add A Product', 'ID: 48', 'ID: 48', 1, 1373805846),
(124, 'vi', 'shops', 'log_edit_catalog', 'id 2', 'id 2', 1, 1373805950),
(125, 'vi', 'shops', 'log_edit_catalog', 'id 2', 'id 2', 1, 1373805975),
(126, 'vi', 'shops', 'log_add_catalog', 'id 5', 'id 5', 1, 1373805985),
(127, 'vi', 'upload', 'Upload file', 'uploads/shops/2013_07/1366785606_foci_20130413_1929-cam.jpg', 'uploads/shops/2013_07/1366785606_foci_20130413_1929-cam.jpg', 1, 1373806013),
(128, 'vi', 'shops', 'Add A Product', 'ID: 49', 'ID: 49', 1, 1373806043),
(129, 'vi', 'upload', 'Upload file', 'uploads/shops/2013_07/1358407321_trendhousecasways_20130110_448.jpg', 'uploads/shops/2013_07/1358407321_trendhousecasways_20130110_448.jpg', 1, 1373806110),
(130, 'vi', 'shops', 'Add A Product', 'ID: 50', 'ID: 50', 1, 1373806135),
(131, 'vi', 'upload', 'Upload file', 'uploads/shops/2013_07/1355461258_sonnguyen_20121211_214.jpg', 'uploads/shops/2013_07/1355461258_sonnguyen_20121211_214.jpg', 1, 1373806181),
(132, 'vi', 'shops', 'Add A Product', 'ID: 51', 'ID: 51', 1, 1373806209),
(133, 'vi', 'upload', 'Upload file', 'uploads/shops/2013_07/1358913019_milaross_20130117_0616.jpg', 'uploads/shops/2013_07/1358913019_milaross_20130117_0616.jpg', 1, 1373806262),
(134, 'vi', 'shops', 'Add A Product', 'ID: 52', 'ID: 52', 1, 1373806290),
(135, 'vi', 'upload', 'Upload file', 'uploads/shops/2013_07/1355568109_nguyetboutique_20121211_076.jpg', 'uploads/shops/2013_07/1355568109_nguyetboutique_20121211_076.jpg', 1, 1373806349),
(136, 'vi', 'shops', 'Add A Product', 'ID: 53', 'ID: 53', 1, 1373806377),
(137, 'vi', 'upload', 'Upload file', 'uploads/shops/2013_07/1358914679_milaross_20130117_0268.jpg', 'uploads/shops/2013_07/1358914679_milaross_20130117_0268.jpg', 1, 1373806428),
(138, 'vi', 'shops', 'Add A Product', 'ID: 54', 'ID: 54', 1, 1373806471),
(139, 'vi', 'upload', 'Upload file', 'uploads/shops/2013_07/1339931495_vng4284.jpg', 'uploads/shops/2013_07/1339931495_vng4284.jpg', 1, 1373806523),
(140, 'vi', 'shops', 'Add A Product', 'ID: 55', 'ID: 55', 1, 1373806552),
(141, 'vi', 'upload', 'Upload file', 'uploads/shops/2013_07/1339930929_vng4065.jpg', 'uploads/shops/2013_07/1339930929_vng4065.jpg', 1, 1373806735),
(142, 'vi', 'shops', 'Add A Product', 'ID: 56', 'ID: 56', 1, 1373806769),
(143, 'vi', 'shops', 'Cấu hình module', 'Setting', 'Setting', 1, 1373806829),
(144, 'vi', 'upload', 'Upload file', 'uploads/shops/2013_07/1339930187_vng4137.jpg', 'uploads/shops/2013_07/1339930187_vng4137.jpg', 1, 1373806859),
(145, 'vi', 'shops', 'Add A Product', 'ID: 57', 'ID: 57', 1, 1373806886),
(146, 'vi', 'shops', 'Cấu hình module', 'Setting', 'Setting', 1, 1373806955),
(147, 'vi', 'shops', 'Add A Product', 'ID: 58', 'ID: 58', 1, 1373807038),
(148, 'vi', 'upload', 'Upload file', 'uploads/shops/2013_07/1355126365_foci_20121206_117.jpg', 'uploads/shops/2013_07/1355126365_foci_20121206_117.jpg', 1, 1373807055),
(149, 'vi', 'shops', 'Edit A Product', 'ID: 58', 'ID: 58', 1, 1373807059),
(150, 'vi', 'upload', 'Upload file', 'uploads/shops/2013_07/1357207717_81005b.jpg', 'uploads/shops/2013_07/1357207717_81005b.jpg', 1, 1373807276),
(151, 'vi', 'shops', 'Add A Product', 'ID: 59', 'ID: 59', 1, 1373807301),
(152, 'vi', 'upload', 'Upload file', 'uploads/shops/2013_07/1366007745_foci_20130412_584.jpg', 'uploads/shops/2013_07/1366007745_foci_20130412_584.jpg', 1, 1373807353),
(153, 'vi', 'shops', 'Add A Product', 'ID: 60', 'ID: 60', 1, 1373807383),
(154, 'vi', 'shops', 'log_add_catalog', 'id 6', 'id 6', 1, 1373807647),
(155, 'vi', 'upload', 'Upload file', 'uploads/shops/2013_07/1373275502_kleinschmidt_20130703_4210.jpg', 'uploads/shops/2013_07/1373275502_kleinschmidt_20130703_4210.jpg', 1, 1373807682),
(156, 'vi', 'shops', 'Add A Product', 'ID: 61', 'ID: 61', 1, 1373807712),
(157, 'vi', 'upload', 'Upload file', 'uploads/shops/2013_07/1373274683_kleinschmidt_20130703_4465.jpg', 'uploads/shops/2013_07/1373274683_kleinschmidt_20130703_4465.jpg', 1, 1373807764),
(158, 'vi', 'shops', 'Add A Product', 'ID: 62', 'ID: 62', 1, 1373807789),
(159, 'vi', 'upload', 'Upload file', 'uploads/shops/2013_07/1373273081_kleinschmidt_20130703_4390.jpg', 'uploads/shops/2013_07/1373273081_kleinschmidt_20130703_4390.jpg', 1, 1373807825),
(160, 'vi', 'shops', 'Add A Product', 'ID: 63', 'ID: 63', 1, 1373807856),
(161, 'vi', 'upload', 'Upload file', 'uploads/shops/2013_07/1373273127_kleinschmidt_20130703_4336.jpg', 'uploads/shops/2013_07/1373273127_kleinschmidt_20130703_4336.jpg', 1, 1373807902),
(162, 'vi', 'shops', 'Add A Product', 'ID: 64', 'ID: 64', 1, 1373807933),
(163, 'vi', 'upload', 'Upload file', 'uploads/shops/2013_07/1354776676_magic_20121205_028.jpg', 'uploads/shops/2013_07/1354776676_magic_20121205_028.jpg', 1, 1373808009),
(164, 'vi', 'shops', 'Add A Product', 'ID: 65', 'ID: 65', 1, 1373808040),
(165, 'vi', 'upload', 'Upload file', 'uploads/shops/2013_07/1350620405_48621.jpg', 'uploads/shops/2013_07/1350620405_48621.jpg', 1, 1373808070),
(166, 'vi', 'shops', 'Add A Product', 'ID: 66', 'ID: 66', 1, 1373808097),
(167, 'vi', 'upload', 'Upload file', 'uploads/shops/2013_07/1352979178_mino_02.jpg', 'uploads/shops/2013_07/1352979178_mino_02.jpg', 1, 1373808139),
(168, 'vi', 'shops', 'Add A Product', 'ID: 67', 'ID: 67', 1, 1373808163),
(169, 'vi', 'upload', 'Upload file', 'uploads/shops/2013_07/1369905179_bkids_20130528_004357.jpg', 'uploads/shops/2013_07/1369905179_bkids_20130528_004357.jpg', 1, 1373808234),
(170, 'vi', 'shops', 'Add A Product', 'ID: 68', 'ID: 68', 1, 1373808262),
(171, 'vi', 'themes', 'Thiết lập layout theme: "istore"', '', '', 1, 1373808581),
(172, 'vi', 'themes', 'Sao chép block', ' từ theme  modern  sang theme  istore', ' từ theme  modern  sang theme  istore', 1, 1373808596),
(173, 'vi', 'themes', 'Kích hoạt theme: "istore"', '', '', 1, 1373808603),
(174, 'vi', 'themes', 'Thêm block', 'Name : Giới thiệu', 'Name : Giới thiệu', 1, 1373808622),
(175, 'vi', 'themes', 'Thêm block', 'Name : Tiêu điểm', 'Name : Tiêu điểm', 1, 1373808634),
(176, 'vi', 'themes', 'Thêm block', 'Name : Sản phẩm hot', 'Name : Sản phẩm hot', 1, 1373808652),
(177, 'vi', 'themes', 'Sửa block', 'Name : Sản phẩm hot', 'Name : Sản phẩm hot', 1, 1373808745),
(178, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1373809294),
(179, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1373809381),
(180, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1373809621),
(181, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1373810126),
(182, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1373811306),
(183, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1373862758),
(184, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1373863354),
(185, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1373863900),
(186, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1373872106),
(187, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1373872714),
(188, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1373873603),
(189, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1373874571),
(190, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1373874619),
(191, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1373874789),
(192, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1373874806),
(193, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1373875155),
(194, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1373875685),
(195, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1373875838),
(196, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1373876346),
(197, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1373876515),
(198, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1373894734),
(199, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1373895886),
(200, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1373895973),
(201, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1373896869),
(202, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1373896932),
(203, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1373897847),
(204, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1373898216),
(205, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1373898703),
(206, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1373899828),
(207, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1373899896),
(208, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1373940547),
(209, 'vi', 'shops', 'Edit A Product', 'ID: 12', 'ID: 12', 1, 1373940679),
(210, 'vi', 'shops', 'Edit A Product', 'ID: 11', 'ID: 11', 1, 1373940705),
(211, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1373943386),
(212, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1373948837),
(213, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1373948930),
(214, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1373949073),
(215, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1373949392),
(216, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1373949786),
(217, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1373950538),
(218, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1373950603),
(219, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1373951059),
(220, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1373951086),
(221, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1373959389),
(222, 'vi', 'themes', 'Sửa block', 'Name : Menu site', 'Name : Menu site', 1, 1374220228),
(223, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1374220455),
(224, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1374220776),
(225, 'vi', 'themes', 'Thêm block', 'Name : Slide shops', 'Name : Slide shops', 1, 1374222420),
(226, 'vi', 'themes', 'Thêm block', 'Name : Giỏ hàng', 'Name : Giỏ hàng', 1, 1374223750),
(227, 'vi', 'themes', 'Thêm block', 'Name : Tìm kiếm', 'Name : Tìm kiếm', 1, 1374224895),
(228, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1374225240),
(229, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1374226099),
(230, 'vi', 'themes', 'Sửa block', 'Name : Tìm kiếm', 'Name : Tìm kiếm', 1, 1374226449),
(231, 'vi', 'themes', 'Sửa block', 'Name : Tìm kiếm', 'Name : Tìm kiếm', 1, 1374226467),
(232, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1374226889),
(233, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1374227823),
(234, 'vi', 'themes', 'Thêm block', 'Name : Giới thiệu', 'Name : Giới thiệu', 1, 1374241570),
(235, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1374242152),
(236, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1374242439),
(237, 'vi', 'themes', 'Thêm block', 'Name : Menu shop', 'Name : Menu shop', 1, 1374243443),
(238, 'vi', 'themes', 'Thêm block', 'Name : Bản đồ', 'Name : Bản đồ', 1, 1374243613),
(239, 'vi', 'themes', 'Sửa block', 'Name : Bản đồ', 'Name : Bản đồ', 1, 1374243673),
(240, 'vi', 'themes', 'Sửa block', 'Name : Bản đồ', 'Name : Bản đồ', 1, 1374243687),
(241, 'vi', 'themes', 'Sửa block', 'Name : Bản đồ', 'Name : Bản đồ', 1, 1374243717),
(242, 'vi', 'themes', 'Sửa block', 'Name : Bản đồ', 'Name : Bản đồ', 1, 1374243766),
(243, 'vi', 'themes', 'Sửa block', 'Name : Bản đồ', 'Name : Bản đồ', 1, 1374244038),
(244, 'vi', 'themes', 'Sửa block', 'Name : Giới thiệu', 'Name : Giới thiệu', 1, 1374244070),
(245, 'vi', 'themes', 'Sửa block', 'Name : Bản đồ', 'Name : Bản đồ', 1, 1374244085),
(246, 'vi', 'themes', 'Thêm block', 'Name : Bản đồ', 'Name : Bản đồ', 1, 1374244124),
(247, 'vi', 'themes', 'Sửa block', 'Name : Bản đồ', 'Name : Bản đồ', 1, 1374244690),
(248, 'vi', 'themes', 'Sửa block', 'Name : Bản đồ', 'Name : Bản đồ', 1, 1374244820),
(249, 'vi', 'themes', 'Thêm block', 'Name : Bản đồ', 'Name : Bản đồ', 1, 1374244909),
(250, 'vi', 'themes', 'Sửa block', 'Name : Thành viên', 'Name : Thành viên', 1, 1374244947),
(251, 'vi', 'themes', 'Sửa block', 'Name : Giới thiệu', 'Name : Giới thiệu', 1, 1374244979),
(252, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1374244992),
(253, 'vi', 'themes', 'Sửa block', 'Name : footer site', 'Name : footer site', 1, 1374245134),
(254, 'vi', 'themes', 'Sửa block', 'Name : footer site', 'Name : footer site', 1, 1374245163),
(255, 'vi', 'themes', 'Thêm block', 'Name : Footer site', 'Name : Footer site', 1, 1374245314),
(256, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1374246168),
(257, 'vi', 'themes', 'Thiết lập layout theme: "istore"', '', '', 1, 1374246619),
(258, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1374246925),
(259, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1374248579),
(260, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1374248585),
(261, 'vi', 'themes', 'Thêm block', 'Name : Sản phẩm hot', 'Name : Sản phẩm hot', 1, 1374290800),
(262, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1374290837),
(263, 'vi', 'themes', 'Sửa block', 'Name : Sản phẩm hot', 'Name : Sản phẩm hot', 1, 1374291025),
(264, 'vi', 'themes', 'Thêm block', 'Name : Sản phẩm mới', 'Name : Sản phẩm mới', 1, 1374291177),
(265, 'vi', 'themes', 'Sửa block', 'Name : Sản phẩm mới', 'Name : Sản phẩm mới', 1, 1374292223),
(266, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1374294096),
(267, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1374294111),
(268, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1374294237),
(269, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1374294304),
(270, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1374294400),
(271, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1374295603),
(272, 'vi', 'shops', 'Edit A Product', 'ID: 66', 'ID: 66', 1, 1374296061),
(273, 'vi', 'shops', 'Edit A Product', 'ID: 66', 'ID: 66', 1, 1374296351),
(274, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1374296484),
(275, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1374296674),
(276, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1374296723),
(277, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1374296798),
(278, 'vi', 'themes', 'Thiết lập layout theme: "freshmarket"', '', '', 1, 1374325081),
(279, 'vi', 'themes', 'Sao chép block', ' từ theme  modern  sang theme  freshmarket', ' từ theme  modern  sang theme  freshmarket', 1, 1374325093),
(280, 'vi', 'themes', 'Kích hoạt theme: "freshmarket"', '', '', 1, 1374325102),
(281, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1374326619),
(282, 'vi', 'themes', 'Sửa block', 'Name : Tin mới', 'Name : Tin mới', 1, 1374327865),
(283, 'vi', 'themes', 'Sửa block', 'Name : Giới thiệu', 'Name : Giới thiệu', 1, 1374329263),
(284, 'vi', 'themes', 'Sửa block', 'Name : Giới thiệu', 'Name : Giới thiệu', 1, 1374329556),
(285, 'vi', 'shops', 'Edit A Product', 'ID: 11', 'ID: 11', 1, 1374334673),
(286, 'vi', 'banners', 'log_add_plan', 'planid 3', 'planid 3', 1, 1374334852),
(287, 'vi', 'banners', 'log_add_banner', 'bannerid 4', 'bannerid 4', 1, 1374334871),
(288, 'vi', 'themes', 'Thêm block', 'Name : adv1', 'Name : adv1', 1, 1374334900),
(289, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1374334976),
(290, 'vi', 'banners', 'log_add_plan', 'planid 4', 'planid 4', 1, 1374335099),
(291, 'vi', 'banners', 'log_add_banner', 'bannerid 5', 'bannerid 5', 1, 1374335116),
(292, 'vi', 'themes', 'Thêm block', 'Name : adv2', 'Name : adv2', 1, 1374335141),
(293, 'vi', 'banners', 'log_edit_banner', 'bannerid 4', 'bannerid 4', 1, 1374335181),
(294, 'vi', 'banners', 'log_add_plan', 'planid 5', 'planid 5', 1, 1374335213),
(295, 'vi', 'banners', 'log_add_banner', 'bannerid 6', 'bannerid 6', 1, 1374335234),
(296, 'vi', 'banners', 'log_add_plan', 'planid 6', 'planid 6', 1, 1374335246),
(297, 'vi', 'banners', 'log_add_banner', 'bannerid 7', 'bannerid 7', 1, 1374335260),
(298, 'vi', 'themes', 'Thêm block', 'Name : adv4', 'Name : adv4', 1, 1374335286),
(299, 'vi', 'themes', 'Thêm block', 'Name : adv3', 'Name : adv3', 1, 1374335310),
(300, 'vi', 'shops', 'Cấu hình module', 'Setting', 'Setting', 1, 1374335352),
(301, 'vi', 'themes', 'Thêm block', 'Name : Giỏ hàng', 'Name : Giỏ hàng', 1, 1374336364),
(302, 'vi', 'themes', 'Thiết lập lại vị trí các block', 'reset position all block', 'reset position all block', 1, 1374336388),
(303, 'vi', 'themes', 'Thêm block', 'Name : Giỏ hàng', 'Name : Giỏ hàng', 1, 1374336954),
(304, 'vi', 'themes', 'Thiết lập lại vị trí các block', 'reset position all block', 'reset position all block', 1, 1374336961),
(305, 'vi', 'themes', 'Thiết lập lại vị trí các block', 'reset position all block', 'reset position all block', 1, 1374337389),
(306, 'vi', 'themes', 'Thêm block', 'Name : Giỏ hàng', 'Name : Giỏ hàng', 1, 1374338147),
(307, 'vi', 'themes', 'Sửa block', 'Name : Giỏ hàng', 'Name : Giỏ hàng', 1, 1374338359),
(308, 'vi', 'themes', 'Sửa block', 'Name : Giỏ hàng', 'Name : Giỏ hàng', 1, 1374339170),
(309, 'vi', 'themes', 'Sửa block', 'Name : Giỏ hàng', 'Name : Giỏ hàng', 1, 1374339196),
(310, 'vi', 'themes', 'Thêm block', 'Name : Sản phẩm hot', 'Name : Sản phẩm hot', 1, 1374340500),
(311, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1374341736),
(312, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1374341778),
(313, 'vi', 'upload', 'Upload file', 'uploads/shops/2013_07/b6a43a9bf5ed9476f0278bfa51903e2a.jpg', 'uploads/shops/2013_07/b6a43a9bf5ed9476f0278bfa51903e2a.jpg', 1, 1374381037),
(314, 'vi', 'shops', 'Add A Product', 'ID: 69', 'ID: 69', 1, 1374381051),
(315, 'vi', 'upload', 'Upload file', 'uploads/shops/2013_07/044d1645293953eff22453792438c513.jpg', 'uploads/shops/2013_07/044d1645293953eff22453792438c513.jpg', 1, 1374381565),
(316, 'vi', 'shops', 'Add A Product', 'ID: 70', 'ID: 70', 1, 1374381576),
(317, 'vi', 'shops', 'Edit A Product', 'ID: 69', 'ID: 69', 1, 1374381651),
(318, 'vi', 'shops', 'Edit A Product', 'ID: 70', 'ID: 70', 1, 1374381658),
(319, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1374381745),
(320, 'vi', 'upload', 'Upload file', 'uploads/shops/2013_07/2188e329ec4acfe314d19899fb1c6af1.jpg', 'uploads/shops/2013_07/2188e329ec4acfe314d19899fb1c6af1.jpg', 1, 1374384181),
(321, 'vi', 'shops', 'Add A Product', 'ID: 71', 'ID: 71', 1, 1374384195),
(322, 'vi', 'shops', 'Edit A Product', 'ID: 71', 'ID: 71', 1, 1374384215),
(323, 'vi', 'themes', 'Sửa block', 'Name : Sản phẩm hot', 'Name : Sản phẩm hot', 1, 1374384296),
(324, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1374384758),
(325, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1374384957),
(326, 'vi', 'themes', 'Sửa block', 'Name : Sản phẩm hot', 'Name : Sản phẩm hot', 1, 1374384986),
(327, 'vi', 'upload', 'Upload file', 'uploads/shops/2013_07/yki1372082741.jpg', 'uploads/shops/2013_07/yki1372082741.jpg', 1, 1374385142),
(328, 'vi', 'shops', 'Add A Product', 'ID: 72', 'ID: 72', 1, 1374385186),
(329, 'vi', 'shops', 'Edit A Product', 'ID: 72', 'ID: 72', 1, 1374385212),
(330, 'vi', 'upload', 'Upload file', 'uploads/shops/2013_07/t2vxxlxj8axxxxxxxx_116457923.jpg', 'uploads/shops/2013_07/t2vxxlxj8axxxxxxxx_116457923.jpg', 1, 1374385314),
(331, 'vi', 'shops', 'Add A Product', 'ID: 73', 'ID: 73', 1, 1374385324),
(332, 'vi', 'upload', 'Upload file', 'uploads/shops/2013_07/4ab40346ab0b7984f3507adc89f4968d.jpg', 'uploads/shops/2013_07/4ab40346ab0b7984f3507adc89f4968d.jpg', 1, 1374385511),
(333, 'vi', 'shops', 'Add A Product', 'ID: 74', 'ID: 74', 1, 1374385518),
(334, 'vi', 'upload', 'Upload file', 'uploads/shops/2013_07/3b6e35ded5fc8ca815b5c103e92f9488.jpg', 'uploads/shops/2013_07/3b6e35ded5fc8ca815b5c103e92f9488.jpg', 1, 1374385612),
(335, 'vi', 'shops', 'Add A Product', 'ID: 75', 'ID: 75', 1, 1374385617),
(336, 'vi', 'upload', 'Upload file', 'uploads/shops/2013_07/6ce7a70426b73fa2c20c11e4a6eb5d9c.jpg', 'uploads/shops/2013_07/6ce7a70426b73fa2c20c11e4a6eb5d9c.jpg', 1, 1374385722),
(337, 'vi', 'shops', 'Add A Product', 'ID: 76', 'ID: 76', 1, 1374385771),
(338, 'vi', 'upload', 'Upload file', 'uploads/shops/2013_07/46d1b598031db4c1d1bfc1561ddfcd55.jpg', 'uploads/shops/2013_07/46d1b598031db4c1d1bfc1561ddfcd55.jpg', 1, 1374385851),
(339, 'vi', 'shops', 'Add A Product', 'ID: 77', 'ID: 77', 1, 1374385856),
(340, 'vi', 'themes', 'Thêm block', 'Name : Tiêu điểm', 'Name : Tiêu điểm', 1, 1374387133),
(341, 'vi', 'themes', 'Sửa block', 'Name : Menu', 'Name : Menu', 1, 1374388407),
(342, 'vi', 'themes', 'Sửa block', 'Name : Menu', 'Name : Menu', 1, 1374388448),
(343, 'vi', 'themes', 'Sửa block', 'Name : Menu', 'Name : Menu', 1, 1374389068),
(344, 'vi', 'themes', 'Sửa block', 'Name : Menu', 'Name : Menu', 1, 1374389314),
(345, 'vi', 'themes', 'Sửa block', 'Name : Menu', 'Name : Menu', 1, 1374389724),
(346, 'vi', 'themes', 'Sửa block', 'Name : Menu', 'Name : Menu', 1, 1374390617),
(347, 'vi', 'themes', 'Sửa block', 'Name : Menu', 'Name : Menu', 1, 1374391000),
(348, 'vi', 'themes', 'Sửa block', 'Name : Menu', 'Name : Menu', 1, 1374391262),
(349, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1374392707),
(350, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1374392781),
(351, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1374392973),
(352, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1374393192),
(353, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1374393459),
(354, 'vi', 'themes', 'Thêm block', 'Name : Sản phẩm mới', 'Name : Sản phẩm mới', 1, 1374394170),
(355, 'vi', 'themes', 'Sửa block', 'Name : Sản phẩm mới', 'Name : Sản phẩm mới', 1, 1374394182),
(356, 'vi', 'themes', 'Sửa block', 'Name : Tìm kiếm', 'Name : Tìm kiếm', 1, 1374394229),
(357, 'vi', 'themes', 'Sửa block', 'Name : Sản phẩm mới', 'Name : Sản phẩm mới', 1, 1374394239),
(358, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1374394270),
(359, 'vi', 'shops', 'Edit A Product', 'ID: 71', 'ID: 71', 1, 1374409835),
(360, 'vi', 'shops', 'Edit A Product', 'ID: 73', 'ID: 73', 1, 1374409869),
(361, 'vi', 'themes', 'Sửa block', 'Name : footer site', 'Name : footer site', 1, 1374411495),
(362, 'vi', 'themes', 'Sửa block', 'Name : footer site', 'Name : footer site', 1, 1374411511),
(363, 'vi', 'themes', 'Thêm block', 'Name : Bản đồ', 'Name : Bản đồ', 1, 1374411837),
(364, 'vi', 'themes', 'Sửa block', 'Name : Bản đồ', 'Name : Bản đồ', 1, 1374412102),
(365, 'vi', 'themes', 'Thêm block', 'Name : Support', 'Name : Support', 1, 1374412683),
(366, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1374413435),
(367, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1374413507),
(368, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1374414084),
(369, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1374414111),
(370, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1374417308),
(371, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1374417399),
(372, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1374417492),
(373, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1374417792),
(374, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1374419450),
(375, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1374419974),
(376, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1374420112),
(377, 'vi', 'shops', 'Edit A Product', 'ID: 72', 'ID: 72', 1, 1374420737),
(378, 'vi', 'shops', 'Edit A Product', 'ID: 72', 'ID: 72', 1, 1374420771),
(379, 'vi', 'shops', 'Cấu hình module', 'Setting', 'Setting', 1, 1374420798),
(380, 'vi', 'shops', 'Cấu hình module', 'Setting', 'Setting', 1, 1374420833),
(381, 'vi', 'themes', 'Sửa block', 'Name : Tin tiêu điểm', 'Name : Tin tiêu điểm', 1, 1374421637),
(382, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1374421665),
(383, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1374467664),
(384, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1374468544),
(385, 'vi', 'themes', 'Kích hoạt theme: "istore"', '', '', 1, 1374469468),
(386, 'vi', 'themes', 'Kích hoạt theme: "freshmarket"', '', '', 1, 1374469799);
INSERT INTO `nv3_logs` (`id`, `lang`, `module_name`, `name_key`, `note_action`, `link_acess`, `userid`, `log_time`) VALUES
(387, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1374469944),
(388, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1374469997),
(389, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1374470055),
(390, 'vi', 'themes', 'Thiết lập layout theme: "hamruou"', '', '', 1, 1376752688),
(391, 'vi', 'themes', 'Sao chép block', ' từ theme  modern  sang theme  hamruou', ' từ theme  modern  sang theme  hamruou', 1, 1376752701),
(392, 'vi', 'themes', 'Kích hoạt theme: "hamruou"', '', '', 1, 1376752708),
(393, 'vi', 'themes', 'log_del_theme', 'theme  istore', 'theme  istore', 1, 1376752711),
(394, 'vi', 'themes', 'log_del_theme', 'theme  freshmarket', 'theme  freshmarket', 1, 1376752725),
(395, 'vi', 'themes', 'Thêm block', 'Name : Sản phẩm', 'Name : Sản phẩm', 1, 1376754991),
(396, 'vi', 'themes', 'Sửa block', 'Name : Sản phẩm', 'Name : Sản phẩm', 1, 1376755415),
(397, 'vi', 'shops', 'Edit A Product', 'ID: 68', 'ID: 68', 1, 1376756516),
(398, 'vi', 'shops', 'Edit A Product', 'ID: 67', 'ID: 67', 1, 1376757385),
(399, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1376757506),
(400, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1376803826),
(401, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1376805927),
(402, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1376806576),
(403, 'vi', 'shops', 'Cấu hình module', 'Setting', 'Setting', 1, 1376807389),
(404, 'vi', 'shops', 'Cấu hình module', 'Setting', 'Setting', 1, 1376807405),
(405, 'vi', 'themes', 'Thiết lập layout theme: "hamruou"', '', '', 1, 1376809229),
(406, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1376810692),
(407, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1376820703),
(408, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1376820841),
(409, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1376821253),
(410, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1376822671),
(411, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1376823480),
(412, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1376823592),
(413, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1376823597),
(414, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1376830730),
(415, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1376832448),
(416, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1376832632),
(417, 'vi', 'shops', 'Edit A Product', 'ID: 73', 'ID: 73', 1, 1376834566),
(418, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1376835068),
(419, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1376835226),
(420, 'vi', 'themes', 'Thiết lập layout theme: "hamruou"', '', '', 1, 1376894250),
(421, 'vi', 'themes', 'Thiết lập layout theme: "hamruou"', '', '', 1, 1376894516),
(422, 'vi', 'themes', 'Thiết lập layout theme: "hamruou"', '', '', 1, 1376894613),
(423, 'vi', 'modules', 'Kích hoạt module "shops"', 'Có', 'Có', 1, 1376896203),
(424, 'vi', 'themes', 'Thiết lập layout theme: "hamruou"', '', '', 1, 1376897798),
(425, 'vi', 'themes', 'Thiết lập layout theme: "hamruou"', '', '', 1, 1376897945),
(426, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1376898266),
(427, 'vi', 'themes', 'Thiết lập layout theme: "hamruou"', '', '', 1, 1376901377),
(428, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1376902961),
(429, 'vi', 'themes', 'Thiết lập layout theme: "hamruou"', '', '', 1, 1376919429),
(430, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1376919434),
(431, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1376919483),
(432, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1376919639),
(433, 'vi', 'themes', 'Thiết lập layout theme: "hamruou"', '', '', 1, 1376968417),
(434, 'vi', 'themes', 'Thiết lập layout theme: "hamruou"', '', '', 1, 1376968566),
(435, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1376968677),
(436, 'vi', 'themes', 'Thiết lập layout theme: "hamruou"', '', '', 1, 1376968709),
(437, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1376969216),
(438, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1376969489),
(439, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1377004806),
(440, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1377005600),
(441, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1377006765),
(442, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1377012892),
(443, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1377013149),
(444, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1377013532),
(445, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1377013689),
(446, 'vi', 'themes', 'Thiết lập layout theme: "hamruou"', '', '', 1, 1377017626),
(447, 'vi', 'themes', 'Thiết lập layout theme: "hamruou"', '', '', 1, 1377017655),
(448, 'vi', 'themes', 'Thiết lập layout theme: "hamruou"', '', '', 1, 1377017810),
(449, 'vi', 'themes', 'Thiết lập layout theme: "hamruou"', '', '', 1, 1377018222),
(450, 'vi', 'themes', 'Thiết lập layout theme: "hamruou"', '', '', 1, 1377018903),
(451, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1377019478),
(452, 'vi', 'shops', 'Edit A Product', 'ID: 73', 'ID: 73', 1, 1377078274),
(453, 'vi', 'shops', 'Edit A Product', 'ID: 73', 'ID: 73', 1, 1377078337),
(454, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1377078915),
(455, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1377078919),
(456, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1377080318),
(457, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1377080432),
(458, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1377081133),
(459, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1377081439),
(460, 'vi', 'shops', 'Edit A Product', 'ID: 73', 'ID: 73', 1, 1377081571),
(461, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1377082245),
(462, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1377082334),
(463, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1377090536),
(464, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1377090649),
(465, 'vi', 'themes', 'Thiết lập layout theme: "hamruou"', '', '', 1, 1377091174),
(466, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1377092038),
(467, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1377092132),
(468, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1377093198),
(469, 'vi', 'shops', 'Cấu hình module', 'Setting', 'Setting', 1, 1377093406),
(470, 'vi', 'shops', 'Cấu hình module', 'Setting', 'Setting', 1, 1377093420),
(471, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1377093566),
(472, 'vi', 'shops', 'Cấu hình module', 'Setting', 'Setting', 1, 1381556340),
(473, 'vi', 'themes', 'Kích hoạt theme: "modern"', '', '', 1, 1381556351),
(474, 'vi', 'shops', 'Cấu hình module', 'Setting', 'Setting', 1, 1381556743),
(475, 'vi', 'shops', 'Cấu hình module', 'Setting', 'Setting', 1, 1381557101),
(476, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1381557351),
(477, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1381559077),
(478, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1381559243),
(479, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1381559582),
(480, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1381560027),
(481, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1381560184),
(482, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1381560376),
(483, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1381560994),
(484, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1381561146),
(485, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1381561457),
(486, 'vi', 'themes', 'Thêm block', 'Name : Sản phẩm', 'Name : Sản phẩm', 1, 1381561635),
(487, 'vi', 'themes', 'Sửa block', 'Name : Sản phẩm', 'Name : Sản phẩm', 1, 1381561652),
(488, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1381561676),
(489, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1381561695),
(490, 'vi', 'themes', 'log_del_theme', 'theme  hamruou', 'theme  hamruou', 1, 1381561811),
(491, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1381562353),
(492, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1381562741),
(493, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1381562776),
(494, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1381563089),
(495, 'vi', 'themes', 'Sửa block', 'Name : Tìm kiếm', 'Name : Tìm kiếm', 1, 1381563203),
(496, 'vi', 'themes', 'Thêm block', 'Name : Giỏ hàng', 'Name : Giỏ hàng', 1, 1381563377),
(497, 'vi', 'themes', 'Thiết lập lại vị trí các block', 'reset position all block', 'reset position all block', 1, 1381563404),
(498, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1381563408),
(499, 'vi', 'upload', 'Upload file', 'images/logo_1.png', 'images/logo_1.png', 1, 1381563634),
(500, 'vi', 'themes', 'Sửa block', 'Name : global menu theme modern', 'Name : global menu theme modern', 1, 1381563756),
(501, 'vi', 'shops', 'Edit A Product', 'ID: 73', 'ID: 73', 1, 1381564458),
(502, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1381564757),
(503, 'vi', 'shops', 'Edit A Product', 'ID: 73', 'ID: 73', 1, 1381565256),
(504, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1381565284),
(505, 'vi', 'themes', 'Sửa block', 'Name : Tìm kiếm', 'Name : Tìm kiếm', 1, 1381581852),
(506, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1381582964),
(507, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1381583570),
(508, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1381584062),
(509, 'vi', 'shops', 'Cấu hình module', 'Setting', 'Setting', 1, 1381584159),
(510, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1381585214),
(511, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1381585278),
(512, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1381585719),
(513, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1381586192),
(514, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1381589010),
(515, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1381590647),
(516, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1381590739),
(517, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1381590831),
(518, 'vi', 'shops', 'Edit A Product', 'ID: 73', 'ID: 73', 1, 1381637465),
(519, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1381637590),
(520, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1381637695),
(521, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1381641614),
(522, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1381642957),
(523, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1381643175),
(524, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1381643246),
(525, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1381643535),
(526, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1381643586),
(527, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1381644004),
(528, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1381645524),
(529, 'vi', 'themes', 'Thêm block', 'Name : Sản phẩm hot', 'Name : Sản phẩm hot', 1, 1381645953),
(530, 'vi', 'themes', 'Sửa block', 'Name : Sản phẩm hot', 'Name : Sản phẩm hot', 1, 1381645966),
(531, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1381646280),
(532, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1381646721),
(533, 'vi', 'menu', 'De-lete menu item', 'Item ID  6', 'Item ID  6', 1, 1381648530),
(534, 'vi', 'menu', 'De-lete menu item', 'Item ID  5', 'Item ID  5', 1, 1381648534),
(535, 'vi', 'menu', 'De-lete menu item', 'Item ID  4', 'Item ID  4', 1, 1381648537),
(536, 'vi', 'menu', 'De-lete menu item', 'Item ID  3', 'Item ID  3', 1, 1381648539),
(537, 'vi', 'menu', 'De-lete menu item', 'Item ID  1', 'Item ID  1', 1, 1381648541),
(538, 'vi', 'menu', 'De-lete menu item', 'Item ID  2', 'Item ID  2', 1, 1381648544),
(539, 'vi', 'menu', 'De-lete menu item', 'Item ID  11', 'Item ID  11', 1, 1381648549),
(540, 'vi', 'menu', 'De-lete menu item', 'Item ID  10', 'Item ID  10', 1, 1381648551),
(541, 'vi', 'menu', 'De-lete menu item', 'Item ID  9', 'Item ID  9', 1, 1381648553),
(542, 'vi', 'menu', 'De-lete menu item', 'Item ID  8', 'Item ID  8', 1, 1381648556),
(543, 'vi', 'menu', 'De-lete menu item', 'Item ID  7', 'Item ID  7', 1, 1381648560),
(544, 'vi', 'menu', 'log_del_about', 'aboutid  1', 'aboutid  1', 1, 1381648565),
(545, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1381648810),
(546, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1385995113),
(547, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1465402643),
(548, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 'clearcache, clearsession, clearfiletemp, clearerrorlogs, clearip_logs', 1, 1465402643),
(549, 'vi', 'themes', 'Thêm block', 'Name : global html', 'Name : global html', 1, 1465403162),
(550, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:127.0.0.1', ' Client IP:127.0.0.1', 0, 1465443703),
(551, 'vi', 'themes', 'Thêm block', 'Name : Liên hệ', 'Name : Liên hệ', 1, 1465444805),
(552, 'vi', 'themes', 'Thêm block', 'Name : Liên hệ', 'Name : Liên hệ', 1, 1465444805),
(553, 'vi', 'themes', 'Sửa block', 'Name : Liên hệ', 'Name : Liên hệ', 1, 1465444832),
(554, 'vi', 'themes', 'Sửa block', 'Name : Liên hệ', 'Name : Liên hệ', 1, 1465444867),
(555, 'vi', 'themes', 'Sửa block', 'Name : Liên hệ', 'Name : Liên hệ', 1, 1465444907),
(556, 'vi', 'themes', 'Sửa block', 'Name : Liên hệ', 'Name : Liên hệ', 1, 1465444989),
(557, 'vi', 'themes', 'Sửa block', 'Name : Liên hệ', 'Name : Liên hệ', 1, 1465445082),
(558, 'vi', 'themes', 'Sửa block', 'Name : Liên hệ', 'Name : Liên hệ', 1, 1465445119),
(559, 'vi', 'themes', 'Sửa block', 'Name : Liên hệ', 'Name : Liên hệ', 1, 1465445195),
(560, 'vi', 'themes', 'Sửa block', 'Name : global html', 'Name : global html', 1, 1465445568),
(561, 'vi', 'themes', 'Sửa block', 'Name : global html', 'Name : global html', 1, 1465445755),
(562, 'vi', 'themes', 'Sửa block', 'Name : global html', 'Name : global html', 1, 1465445818),
(563, 'vi', 'themes', 'Thêm block', 'Name : global html', 'Name : global html', 1, 1465445910),
(564, 'vi', 'themes', 'Thêm block', 'Name : chay quang cao', 'Name : chay quang cao', 1, 1465445962),
(565, 'vi', 'themes', 'Thêm block', 'Name : chay quang cao', 'Name : chay quang cao', 1, 1465446026),
(566, 'vi', 'themes', 'Thêm block', 'Name : chay quang cao', 'Name : chay quang cao', 1, 1465446337),
(567, 'vi', 'themes', 'Thêm block', 'Name : global menu nukeviet', 'Name : global menu nukeviet', 1, 1465446681),
(568, 'vi', 'themes', 'Sửa block', 'Name : global menu nukeviet', 'Name : global menu nukeviet', 1, 1465446759),
(569, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:127.0.0.1', ' Client IP:127.0.0.1', 0, 1465450545),
(570, 'vi', 'themes', 'Sửa block', 'Name : Liên hệ', 'Name : Liên hệ', 1, 1465450678),
(571, 'vi', 'themes', 'Sửa block', 'Name : Liên hệ', 'Name : Liên hệ', 1, 1465450930),
(572, 'vi', 'themes', 'Sửa block', 'Name : Liên hệ', 'Name : Liên hệ', 1, 1465450956),
(573, 'vi', 'themes', 'Sửa block', 'Name : Liên hệ', 'Name : Liên hệ', 1, 1465450974),
(574, 'vi', 'themes', 'Thêm block', 'Name : global html', 'Name : global html', 1, 1465451290),
(575, 'vi', 'themes', 'Thêm block', 'Name : global html', 'Name : global html', 1, 1465452420),
(576, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:127.0.0.1', ' Client IP:127.0.0.1', 0, 1465736843),
(577, 'vi', 'upload', 'Upload file', 'images/logo_1-1.png', 'images/logo_1-1.png', 1, 1465736942),
(578, 'vi', 'upload', 'Upload file', 'images/logo_1-1_1.png', 'images/logo_1-1_1.png', 1, 1465736942),
(579, 'vi', 'upload', 'Upload file', 'images/logo_1-1_2.png', 'images/logo_1-1_2.png', 1, 1465737024),
(580, 'vi', 'upload', 'Upload file', 'images/logo_1-1_3.png', 'images/logo_1-1_3.png', 1, 1465737024),
(581, 'vi', 'banners', 'log_edit_banner', 'bannerid 3', 'bannerid 3', 1, 1465738103),
(582, 'vi', 'banners', 'log_edit_banner', 'bannerid 3', 'bannerid 3', 1, 1465738181);

-- --------------------------------------------------------

--
-- Table structure for table `nv3_sessions`
--

CREATE TABLE IF NOT EXISTS `nv3_sessions` (
  `session_id` varchar(50) DEFAULT NULL,
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `full_name` varchar(100) NOT NULL,
  `onl_time` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nv3_sessions`
--

INSERT INTO `nv3_sessions` (`session_id`, `uid`, `full_name`, `onl_time`) VALUES
('94171132a5c332031eebe65d5bf1ef0a2130706433', 1, 'admin', 1500611823);

-- --------------------------------------------------------

--
-- Table structure for table `nv3_setup`
--

CREATE TABLE IF NOT EXISTS `nv3_setup` (
  `lang` char(2) NOT NULL,
  `module` varchar(50) NOT NULL,
  `tables` varchar(255) NOT NULL,
  `version` varchar(100) NOT NULL,
  `setup_time` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `nv3_setup_language`
--

CREATE TABLE IF NOT EXISTS `nv3_setup_language` (
  `lang` char(2) NOT NULL,
  `setup` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nv3_setup_language`
--

INSERT INTO `nv3_setup_language` (`lang`, `setup`) VALUES
('vi', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv3_setup_modules`
--

CREATE TABLE IF NOT EXISTS `nv3_setup_modules` (
  `title` varchar(55) NOT NULL,
  `is_sysmod` tinyint(1) NOT NULL DEFAULT '0',
  `virtual` tinyint(1) NOT NULL DEFAULT '0',
  `module_file` varchar(50) NOT NULL DEFAULT '',
  `module_data` varchar(55) NOT NULL DEFAULT '',
  `mod_version` varchar(50) NOT NULL,
  `addtime` int(11) NOT NULL DEFAULT '0',
  `author` text NOT NULL,
  `note` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nv3_setup_modules`
--

INSERT INTO `nv3_setup_modules` (`title`, `is_sysmod`, `virtual`, `module_file`, `module_data`, `mod_version`, `addtime`, `author`, `note`) VALUES
('about', 0, 1, 'about', 'about', '3.0.01 1287532800', 1373785399, 'VINADES (contact@vinades.vn)', ''),
('banners', 1, 0, 'banners', 'banners', '3.0.01 1287532800', 1373785399, 'VINADES (contact@vinades.vn)', ''),
('contact', 0, 1, 'contact', 'contact', '3.0.01 1287532800', 1373785399, 'VINADES (contact@vinades.vn)', ''),
('news', 0, 1, 'news', 'news', '3.0.01 1287532800', 1373785399, 'VINADES (contact@vinades.vn)', ''),
('voting', 0, 0, 'voting', 'voting', '3.1.01 1287532800', 1373785399, 'VINADES (contact@vinades.vn)', ''),
('forum', 0, 0, 'forum', 'forum', '3.0.01 1287532800', 1373785399, 'VINADES (contact@vinades.vn)', ''),
('search', 1, 0, 'search', 'search', '3.0.01 1287532800', 1373785399, 'VINADES (contact@vinades.vn)', ''),
('users', 1, 0, 'users', 'users', '3.0.01 1287532800', 1373785399, 'VINADES (contact@vinades.vn)', ''),
('download', 0, 1, 'download', 'download', '3.0.01 1287532800', 1373785399, 'VINADES (contact@vinades.vn)', ''),
('weblinks', 0, 1, 'weblinks', 'weblinks', '3.0.01 1287532800', 1373785399, 'VINADES (contact@vinades.vn)', ''),
('statistics', 0, 0, 'statistics', 'statistics', '3.0.01 1287532800', 1373785399, 'VINADES (contact@vinades.vn)', ''),
('faq', 0, 1, 'faq', 'faq', '3.0.01 1287532800', 1373785399, 'VINADES (contact@vinades.vn)', ''),
('menu', 0, 1, 'menu', 'menu', '3.1.00 1273225635', 1373785399, 'VINADES (contact@vinades.vn)', ''),
('rss', 1, 0, 'rss', 'rss', '3.0.01 1287532800', 1373785399, 'VINADES (contact@vinades.vn)', ''),
('shops', 0, 1, 'shops', 'shops', '3.4.02 1353196800', 1373785956, 'VINADES (contact@vinades.vn)', '');

-- --------------------------------------------------------

--
-- Table structure for table `nv3_shops_block`
--

CREATE TABLE IF NOT EXISTS `nv3_shops_block` (
  `bid` int(11) unsigned NOT NULL,
  `id` int(11) unsigned NOT NULL,
  `weight` int(11) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nv3_shops_block`
--

INSERT INTO `nv3_shops_block` (`bid`, `id`, `weight`) VALUES
(1, 53, 9),
(1, 52, 8),
(1, 51, 7),
(1, 50, 6),
(1, 49, 5),
(2, 68, 26),
(2, 67, 25),
(2, 66, 24),
(2, 65, 23),
(2, 64, 22),
(2, 63, 21),
(2, 62, 9),
(2, 61, 8),
(2, 60, 7),
(2, 59, 6),
(2, 58, 5),
(2, 57, 4),
(2, 56, 3),
(2, 55, 2),
(2, 54, 10),
(2, 53, 11),
(2, 52, 12),
(2, 51, 20),
(2, 50, 19),
(2, 49, 18),
(2, 48, 17),
(2, 47, 16),
(2, 46, 15),
(2, 45, 14),
(2, 44, 13),
(2, 43, 1),
(1, 12, 1),
(1, 70, 4),
(1, 69, 3),
(1, 71, 2);

-- --------------------------------------------------------

--
-- Table structure for table `nv3_shops_block_cat`
--

CREATE TABLE IF NOT EXISTS `nv3_shops_block_cat` (
  `bid` mediumint(8) unsigned NOT NULL,
  `adddefault` tinyint(4) NOT NULL DEFAULT '0',
  `image` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `weight` smallint(4) NOT NULL DEFAULT '0',
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0',
  `vi_title` varchar(255) NOT NULL DEFAULT '',
  `vi_alias` varchar(255) NOT NULL DEFAULT '',
  `vi_description` varchar(255) NOT NULL DEFAULT '',
  `vi_keywords` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nv3_shops_block_cat`
--

INSERT INTO `nv3_shops_block_cat` (`bid`, `adddefault`, `image`, `thumbnail`, `weight`, `add_time`, `edit_time`, `vi_title`, `vi_alias`, `vi_description`, `vi_keywords`) VALUES
(1, 0, '', '', 1, 1373808704, 1373808704, 'Sản phẩm hot', 'San-pham-hot', '', ''),
(2, 0, '', '', 2, 1373808723, 1373808723, 'Sản phẩm mới', 'San-pham-moi', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `nv3_shops_catalogs`
--

CREATE TABLE IF NOT EXISTS `nv3_shops_catalogs` (
  `catid` mediumint(8) unsigned NOT NULL,
  `parentid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) NOT NULL DEFAULT '',
  `thumbnail` varchar(255) NOT NULL DEFAULT '',
  `weight` smallint(4) unsigned NOT NULL DEFAULT '0',
  `order` mediumint(8) NOT NULL DEFAULT '0',
  `lev` smallint(4) NOT NULL DEFAULT '0',
  `viewcat` varchar(50) NOT NULL DEFAULT 'viewcat_page_new',
  `numsubcat` int(11) NOT NULL DEFAULT '0',
  `subcatid` varchar(255) NOT NULL DEFAULT '',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `numlinks` tinyint(2) unsigned NOT NULL DEFAULT '3',
  `admins` mediumtext NOT NULL,
  `add_time` int(11) unsigned NOT NULL DEFAULT '0',
  `edit_time` int(11) unsigned NOT NULL DEFAULT '0',
  `who_view` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `groups_view` varchar(255) NOT NULL DEFAULT '',
  `vi_title` varchar(255) NOT NULL DEFAULT '',
  `vi_alias` varchar(255) NOT NULL DEFAULT '',
  `vi_description` varchar(255) NOT NULL DEFAULT '',
  `vi_keywords` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nv3_shops_catalogs`
--

INSERT INTO `nv3_shops_catalogs` (`catid`, `parentid`, `image`, `thumbnail`, `weight`, `order`, `lev`, `viewcat`, `numsubcat`, `subcatid`, `inhome`, `numlinks`, `admins`, `add_time`, `edit_time`, `who_view`, `groups_view`, `vi_title`, `vi_alias`, `vi_description`, `vi_keywords`) VALUES
(1, 0, ' ', ' ', 1, 1, 0, 'viewcat_page_gird', 0, '', 1, 4, '', 1373786191, 1373786191, 0, '', 'Hoa - Quà tặng', 'Hoa-Qua-tang', '', ''),
(2, 0, ' ', ' ', 2, 2, 0, 'viewcat_page_gird', 0, '', 1, 4, '', 1373790623, 1373805975, 0, '', 'Đồng hồ', 'Dong-ho', '', ''),
(3, 0, ' ', ' ', 3, 3, 0, 'viewcat_page_gird', 0, '', 1, 4, '', 1373792605, 1373792605, 0, '', 'Điện thoại', 'Dien-thoai', '', ''),
(4, 0, ' ', ' ', 4, 4, 0, 'viewcat_page_gird', 0, '', 0, 4, '', 1373794554, 1373794554, 0, '', 'Sách - Tạp chí', 'Sach-Tap-chi', '', ''),
(5, 0, ' ', ' ', 5, 5, 0, 'viewcat_page_gird', 0, '', 1, 4, '', 1373805985, 1373805985, 0, '', 'Thời trang', 'Thoi-trang', '', ''),
(6, 0, ' ', ' ', 6, 6, 0, 'viewcat_page_gird', 0, '', 0, 4, '', 1373807648, 1373807648, 0, '', 'Đồ chơi cho bé', 'Do-choi-cho-be', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `nv3_shops_comments_vi`
--

CREATE TABLE IF NOT EXISTS `nv3_shops_comments_vi` (
  `cid` mediumint(8) unsigned NOT NULL,
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `post_time` int(11) unsigned NOT NULL DEFAULT '0',
  `post_name` varchar(100) NOT NULL,
  `post_id` int(11) NOT NULL,
  `post_email` varchar(100) NOT NULL,
  `post_ip` varchar(15) NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `photo` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `nv3_shops_group`
--

CREATE TABLE IF NOT EXISTS `nv3_shops_group` (
  `groupid` mediumint(8) unsigned NOT NULL,
  `parentid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `cateid` int(11) NOT NULL DEFAULT '0',
  `image` varchar(255) NOT NULL DEFAULT '',
  `thumbnail` varchar(255) NOT NULL DEFAULT '',
  `weight` smallint(4) unsigned NOT NULL DEFAULT '0',
  `order` mediumint(8) NOT NULL DEFAULT '0',
  `lev` smallint(4) NOT NULL DEFAULT '0',
  `viewgroup` varchar(50) NOT NULL DEFAULT 'viewcat_page_new',
  `numsubgroup` int(11) NOT NULL DEFAULT '0',
  `subgroupid` varchar(255) NOT NULL DEFAULT '',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `numlinks` tinyint(2) unsigned NOT NULL DEFAULT '3',
  `admins` mediumtext NOT NULL,
  `add_time` int(11) unsigned NOT NULL DEFAULT '0',
  `edit_time` int(11) unsigned NOT NULL DEFAULT '0',
  `who_view` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `groups_view` varchar(255) NOT NULL DEFAULT '',
  `numpro` int(11) unsigned NOT NULL DEFAULT '0',
  `vi_title` varchar(255) NOT NULL DEFAULT '',
  `vi_alias` varchar(255) NOT NULL DEFAULT '',
  `vi_description` varchar(255) NOT NULL DEFAULT '',
  `vi_keywords` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nv3_shops_group`
--

INSERT INTO `nv3_shops_group` (`groupid`, `parentid`, `cateid`, `image`, `thumbnail`, `weight`, `order`, `lev`, `viewgroup`, `numsubgroup`, `subgroupid`, `inhome`, `numlinks`, `admins`, `add_time`, `edit_time`, `who_view`, `groups_view`, `numpro`, `vi_title`, `vi_alias`, `vi_description`, `vi_keywords`) VALUES
(1, 0, 0, ' ', ' ', 1, 1, 0, 'viewcat_page_list', 0, '', 1, 4, '', 1373786391, 1373786391, 0, '', 0, 'Sản phẩm hot', 'San-pham-hot', '', ''),
(2, 0, 0, ' ', ' ', 2, 2, 0, 'viewcat_page_list', 0, '', 1, 4, '', 1373786400, 1373786400, 0, '', 0, 'Sản phẩm mới', 'San-pham-moi', '', ''),
(3, 0, 0, ' ', ' ', 3, 3, 0, 'viewcat_page_list', 0, '', 1, 4, '', 1373786457, 1373786457, 0, '', 0, 'Sản phẩm thương hiệu', 'San-pham-thuong-hieu', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `nv3_shops_money_vi`
--

CREATE TABLE IF NOT EXISTS `nv3_shops_money_vi` (
  `id` mediumint(11) NOT NULL,
  `code` char(3) NOT NULL,
  `currency` varchar(255) NOT NULL,
  `exchange` float NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nv3_shops_money_vi`
--

INSERT INTO `nv3_shops_money_vi` (`id`, `code`, `currency`, `exchange`) VALUES
(840, 'USD', 'US Dollar', 21000),
(704, 'VND', 'Vietnam Dong', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv3_shops_orders`
--

CREATE TABLE IF NOT EXISTS `nv3_shops_orders` (
  `order_id` int(11) unsigned NOT NULL,
  `order_code` varchar(30) NOT NULL DEFAULT '',
  `lang` char(2) NOT NULL DEFAULT 'en',
  `order_name` varchar(255) NOT NULL,
  `order_email` varchar(255) NOT NULL,
  `order_address` text NOT NULL,
  `order_phone` varchar(20) NOT NULL,
  `order_note` text NOT NULL,
  `listid` text NOT NULL,
  `listnum` text NOT NULL,
  `listprice` text NOT NULL,
  `user_id` int(11) unsigned NOT NULL DEFAULT '0',
  `admin_id` int(11) unsigned NOT NULL DEFAULT '0',
  `shop_id` int(11) unsigned NOT NULL DEFAULT '0',
  `who_is` int(2) unsigned NOT NULL DEFAULT '0',
  `unit_total` char(3) NOT NULL,
  `order_total` double unsigned NOT NULL DEFAULT '0',
  `order_time` int(11) unsigned NOT NULL DEFAULT '0',
  `postip` varchar(100) NOT NULL,
  `view` tinyint(2) NOT NULL DEFAULT '0',
  `transaction_status` tinyint(4) NOT NULL,
  `transaction_id` int(11) NOT NULL DEFAULT '0',
  `transaction_count` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `nv3_shops_payment`
--

CREATE TABLE IF NOT EXISTS `nv3_shops_payment` (
  `payment` varchar(100) NOT NULL,
  `paymentname` varchar(255) NOT NULL,
  `domain` varchar(255) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '0',
  `weight` int(11) NOT NULL DEFAULT '0',
  `config` text NOT NULL,
  `images_button` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `nv3_shops_rows`
--

CREATE TABLE IF NOT EXISTS `nv3_shops_rows` (
  `id` int(11) unsigned NOT NULL,
  `listcatid` int(11) NOT NULL DEFAULT '0',
  `group_id` varchar(255) NOT NULL DEFAULT '',
  `user_id` mediumint(8) NOT NULL DEFAULT '0',
  `source_id` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `product_code` varchar(255) NOT NULL DEFAULT '',
  `product_number` int(11) NOT NULL DEFAULT '0',
  `product_price` double NOT NULL DEFAULT '0',
  `product_discounts` int(11) NOT NULL DEFAULT '0',
  `money_unit` char(3) NOT NULL,
  `product_unit` int(11) NOT NULL,
  `homeimgfile` varchar(255) NOT NULL DEFAULT '',
  `homeimgthumb` varchar(255) NOT NULL DEFAULT '',
  `homeimgalt` varchar(255) NOT NULL,
  `otherimage` text NOT NULL,
  `imgposition` tinyint(1) NOT NULL DEFAULT '1',
  `copyright` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ratingdetail` varchar(255) NOT NULL DEFAULT '',
  `allowed_send` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_print` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_save` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitslm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `showprice` tinyint(2) NOT NULL DEFAULT '0',
  `vi_title` varchar(255) NOT NULL DEFAULT '',
  `vi_alias` varchar(255) NOT NULL DEFAULT '',
  `vi_description` varchar(255) NOT NULL DEFAULT '',
  `vi_keywords` text NOT NULL,
  `vi_note` text NOT NULL,
  `vi_hometext` text NOT NULL,
  `vi_bodytext` mediumtext NOT NULL,
  `vi_address` text NOT NULL,
  `vi_warranty` text NOT NULL,
  `vi_promotional` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nv3_shops_rows`
--

INSERT INTO `nv3_shops_rows` (`id`, `listcatid`, `group_id`, `user_id`, `source_id`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `product_code`, `product_number`, `product_price`, `product_discounts`, `money_unit`, `product_unit`, `homeimgfile`, `homeimgthumb`, `homeimgalt`, `otherimage`, `imgposition`, `copyright`, `inhome`, `allowed_comm`, `allowed_rating`, `ratingdetail`, `allowed_send`, `allowed_print`, `allowed_save`, `hitstotal`, `hitscm`, `hitslm`, `showprice`, `vi_title`, `vi_alias`, `vi_description`, `vi_keywords`, `vi_note`, `vi_hometext`, `vi_bodytext`, `vi_address`, `vi_warranty`, `vi_promotional`) VALUES
(1, 1, '', 1, 0, 1373786362, 1373786362, 1, 1373786362, 0, 2, 'S000001', 1, 190000, 0, 'VND', 1, '2013_07/b15d5f518683e3b38fc286eb6ac11776.jpg', 'thumb/b15d5f518683e3b38fc286eb6ac11776.jpg|block/b15d5f518683e3b38fc286eb6ac11776.jpg', '', '', 0, 0, 1, 1, 1, '0', 1, 1, 1, 0, 0, 0, 1, 'Mèo thần tài may mắn Maneki Neko Nhật Bản', 'Meo-than-tai-may-man-Maneki-Neko-Nhat-Ban', '', 'may mắn', '', 'Mèo thần tài Maneki Neko Nhật Bản mang lại may mắn cho bạn', '<h2 class="summary-product" style="margin: 0px 0px 10px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; font-size: 11px; vertical-align: baseline; font-weight: normal; text-rendering: optimizelegibility; color: rgb(102, 102, 102); line-height: 14px; font-family: Arial, Geneva, sans-serif;"> Mèo thần tài Maneki Neko Nhật Bản mang lại may mắn cho bạn</h2>', '', '', ''),
(2, 1, '', 1, 0, 1373786596, 1373786596, 1, 1373786596, 0, 2, 'S000002', 1, 140000, 0, 'VND', 1, '2013_07/1a71436bc9f39277e739ff38d5d4dd7e.jpg', 'thumb/1a71436bc9f39277e739ff38d5d4dd7e.jpg|block/1a71436bc9f39277e739ff38d5d4dd7e.jpg', '', '', 0, 0, 1, 1, 1, '0', 1, 1, 1, 0, 0, 0, 1, 'Gấu bông in hình chân dung bạn.', 'Gau-bong-in-hinh-chan-dung-ban', '', 'mặt hàng,ý nghĩa,pha lê', '', 'Shop chuyên cung cấp các mặt hàng quà tặng độc đáo, ý nghĩa là các vật dụng hằng ngày như: ly, pha lê, áo, vỏ điện thoại, tranh ghép... in hình bất kỳ bạn thix lên đó.', '<h1> <span style="font-size:12px;">Shop chuyên cung cấp các mặt hàng quà tặng độc đáo, ý nghĩa là các vật dụng hằng ngày như: ly, pha lê, áo, vỏ điện thoại, tranh ghép... in hình bất kỳ bạn thix lên đó.</span></h1>', '', '', ''),
(3, 1, '', 1, 0, 1373786724, 1373786724, 1, 1373786724, 0, 2, 'S000003', 1, 320000, 0, 'VND', 1, '2013_07/12972145061390188572_574_0.jpg', 'thumb/12972145061390188572_574_0.jpg|block/12972145061390188572_574_0.jpg', '', '', 0, 0, 1, 1, 1, '0', 1, 1, 1, 0, 0, 0, 1, 'Hoa cho lễ tình nhân 14-2 và 8-3', 'Hoa-cho-le-tinh-nhan-14-2-va-8-3', '', 'kinh doanh,mặt hàng,hoa hồng,tài tình,sản xuất,sở hữu,rực rỡ,màu sắc,dĩ nhiên,mềm mại,tuyệt đối', '', 'Ant Shop chúng tôi chuyên kinh doanh mặt hàng hoa tươi quản bảo, là những hoa hồng đơn giản, nhưng qua sự pha trộn tài tình của những nhà sản xuất mà chúng tôi đang sở hữu trong tay những bông hoa hồng rực rỡ, đầy màu sắc. Và dĩ nhiên là cánh hoa vẫn mềm mại, tuyệt đối không phải là hoa khô nhé!', '<span style="color: rgb(51, 51, 51); font-family: &#039;times new roman&#039;, times; font-size: large; line-height: 21px; text-align: justify;">Ant Shop chúng tôi chuyên kinh doanh mặt hàng hoa tươi quản bảo, là những hoa hồng đơn giản, nhưng qua sự pha trộn tài tình của những nhà sản xuất mà chúng tôi đang sở hữu trong tay những bông hoa hồng rực rỡ, đầy màu sắc. Và dĩ nhiên là cánh hoa vẫn mềm mại, tuyệt đối không phải là hoa khô nhé!</span>', '', '', ''),
(4, 1, '', 1, 0, 1373786835, 1373786835, 1, 1373786835, 0, 2, 'S000004', 1, 380000, 0, 'VND', 1, '2013_07/e35bb603554387b98b6cf8f82fffcb9f.jpg', 'thumb/e35bb603554387b98b6cf8f82fffcb9f.jpg|block/e35bb603554387b98b6cf8f82fffcb9f.jpg', '', '', 0, 0, 1, 1, 1, '0', 1, 1, 1, 0, 0, 0, 1, 'Hoa hồng xanh - blue rose - hoa tươi', 'Hoa-hong-xanh-blue-rose-hoa-tuoi', '', 'hoa hồng,truyền thuyết,tình yêu,thông điệp,ngày càng,ý nghĩa,thể hiện,tình cảm,sứ mệnh', '', 'Hoa hồng xanh được nhiều người biết tới qua các truyền thuyết về tình yêu. Với thông điệp tình yêu chân thành dành trọn cho người ấy, hoa hồng xanh ngày càng được nhiều bạn trẻ yêu thích như một món quà ý nghĩa trong việc thể hiện tình cảm với một nửa của mình.\r\nVới sứ mệnh &quot;kết nối đôi bờ vui&quot;, Elvi shop mang những sắc hoa tươi thắm nhất tới người thân yêu của bạn.', 'Hoa hồng xanh&nbsp;được nhiều người biết tới qua các&nbsp;truyền thuyết về tình yêu. Với thông điệp tình yêu chân thành dành trọn cho người ấy,&nbsp;hoa hồng xanh&nbsp;ngày càng được nhiều bạn trẻ yêu thích như một món quà ý nghĩa trong việc thể hiện tình cảm với một nửa của mình.<br  />Với sứ mệnh &quot;kết nối đôi bờ vui&quot;,&nbsp;Elvi shop&nbsp;mang những sắc hoa tươi thắm nhất tới người thân yêu của bạn.', '', '', ''),
(5, 1, '', 1, 0, 1373787072, 1373787072, 1, 1373787072, 0, 2, 'S000005', 1, 129000, 0, 'VND', 2, '2013_07/4bb277decc493d4dcc0acccacd12134e.jpg', 'thumb/4bb277decc493d4dcc0acccacd12134e.jpg|block/4bb277decc493d4dcc0acccacd12134e.jpg', '', '', 0, 0, 1, 1, 1, '0', 1, 1, 1, 0, 0, 0, 1, 'Candyshop88 - Bộ sưu tập thú nhồi bông ghi âm', 'Candyshop88-Bo-suu-tap-thu-nhoi-bong-ghi-am', '', 'sản phẩm,dễ thương,có thể,gửi gắm,khó nói,bất ngờ,bình thường,vô tình,lập tức,can đảm,trở nên,giá trị,không kích,thời gian,ghi âm', '', 'Sản phẩm không chỉ đơn giản là một con thú nhồi bông hình dễ thương mà còn có thể giúp bạn &quot;gửi gắm&quot; những lời yêu thương, những lời &quot;khó nói&quot; dành riêng cho &quot;người ấy&quot;. Đây thật sự là một món quà bất ngờ, bất ngờ vì người nhận chừng đây là những chú thú nhồi bông bình thường, và đến một lúc nào đó người vô tình nắm vào &quot;tay&quot; của chú nhồi bông, chú này sẽ lập tức &quot;can đảm&quot; nói ra hết những điều là người tặng muốn nói, muốn gửi gấm. Lúc đó những lời nói đó mới trở nên có giá trị đấy phải không!\r\nKích thước: 20 cm.\r\nThời gian ghi âm: 12 giây', '<span style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; font-size: small; vertical-align: baseline; color: rgb(51, 51, 51); font-family: Arial, Geneva, sans-serif;">Sản phẩm không chỉ đơn giản là một con thú nhồi bông hình dễ thương mà còn có thể giúp bạn &quot;gửi gắm&quot; những lời yêu thương, những lời &quot;khó nói&quot; dành riêng cho &quot;người ấy&quot;. Đây thật sự là một món quà bất ngờ, bất ngờ vì người nhận chừng đây là những chú thú nhồi bông bình thường, và đến một lúc nào đó người vô tình nắm vào &quot;tay&quot; của chú nhồi bông, chú này sẽ lập tức &quot;can đảm&quot; nói ra hết những điều là người tặng muốn nói, muốn gửi gấm. Lúc đó những lời nói đó mới trở nên có giá trị đấy phải không!</span><br style="margin: 0px; padding: 0px; border: 0px none; list-style: none; color: rgb(51, 51, 51); font-family: Arial, Geneva, sans-serif; line-height: 14px;" /><span style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; font-size: small; vertical-align: baseline; color: rgb(51, 51, 51); font-family: Arial, Geneva, sans-serif;">Kích thước: 20 cm.</span><br style="margin: 0px; padding: 0px; border: 0px none; list-style: none; color: rgb(51, 51, 51); font-family: Arial, Geneva, sans-serif; line-height: 14px;" /><span style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; font-size: small; vertical-align: baseline; color: rgb(51, 51, 51); font-family: Arial, Geneva, sans-serif;">Thời gian ghi âm: 12 giây</span>', '', '', ''),
(6, 1, '', 1, 0, 1373787261, 1373787261, 1, 1373787261, 0, 2, 'S000006', 1, 550000, 0, 'VND', 2, '2013_07/98d66014b387ec9940e23a00d4ecf054.jpg', 'thumb/98d66014b387ec9940e23a00d4ecf054.jpg|block/98d66014b387ec9940e23a00d4ecf054.jpg', '', '', 0, 0, 1, 1, 1, '0', 1, 1, 1, 0, 0, 0, 1, 'Gấu bông xịn trắng bóc cực xinh', 'Ga-u-bong-xi-n-tra-ng-bo-c-cu-c-xinh', '', 'cam kết,lông bông,đàn hồi,êm ái', '', '<b>Shop toto là shop quà tặngcao cấp</b> <br  />\r\nchuyên cung cấpgấu nhồi bông cỡ lớntừ 70cm đến 2m với giá phải chẳng.\r\nToàn bộgấu bôngcủa shop là hàng nhập,nhồi bôngtrắng mịn, mới 100%.Lông gấu bôngmềm mịn, và cam kết 100% không rụng lông. Bông trắng bên tronggấu bônglà bông trắng nhập, đồ đàn hồi cao, giúpgấu bôngk bị xẹp mà vẫn có được độ êm ái mềm mịn.', 'Shop totolàshop quà tặngcao cấp, chuyên cung cấpgấu nhồi bông cỡ lớntừ 70cm đến 2m với giá phải chẳng.<p> Toàn bộgấu bôngcủa shop là hàng nhập,nhồi bôngtrắng mịn, mới 100%.Lông gấu bôngmềm mịn, và cam kết 100% không rụng lông. Bông trắng bên tronggấu bônglà bông trắng nhập, đồ đàn hồi cao, giúpgấu bôngk bị xẹp mà vẫn có được độ êm ái mềm mịn.</p>', '', '', ''),
(7, 1, '', 1, 0, 1373787441, 1373787441, 1, 1373787441, 0, 2, 'S000007', 1, 95000, 0, 'VND', 1, '2013_07/863f07ed6a0352d9092f6a332d274e22.jpg', 'thumb/863f07ed6a0352d9092f6a332d274e22.jpg|block/863f07ed6a0352d9092f6a332d274e22.jpg', '', '', 0, 0, 1, 1, 1, '0', 1, 1, 1, 1, 0, 0, 1, 'Đồng hồ thời trang giá rẻ', 'Do-ng-ho-tho-i-trang-gia-re', '', 'miễn phí,toàn quốc,cách thức', '', '<b>GIAO HÀNG MIỄN PHÍ TOÀN QUỐC-- CÁC BẠN VÀO WEB:</b><br  />\r\nđể xem cách thức được giao hàng miễn phí nhé (nhận hàng rồi mới trả tiền nhé) ở bên góc phải trang web', '<div style="text-align: center;"> <strong><span style="background-color: transparent; text-align: center; margin: 0px; padding: 0px; border: none; list-style: none; outline: 0px; vertical-align: baseline;">Đ</span>ồng hồ tháp - 95.000 VNĐ</strong></div><p data-src="marker863f07ed6a0352d9092f6a332d274e22" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline; color: rgb(51, 51, 51); font-family: Arial, Geneva, sans-serif; line-height: 14px; text-align: center;"> <br style="margin: 0px; padding: 0px; border: 0px none; list-style: none;" /> <img alt="" original="http://s2.img.edn.vn/2013/8/6/863f07ed6a0352d9092f6a332d274e22.jpg" src="http://s2.img.edn.vn/2013/8/6/863f07ed6a0352d9092f6a332d274e22.jpg" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline; display: inline;" /></p><p style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline; color: rgb(51, 51, 51); font-family: Arial, Geneva, sans-serif; line-height: 14px;"> &nbsp;</p><p data-src="markerbc109f94e74b069de3cc4082fe25ba6a" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline; color: rgb(51, 51, 51); font-family: Arial, Geneva, sans-serif; line-height: 14px; text-align: center;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">đồng hồ 3 vòng dây - 99.000 VNĐ</strong><br style="margin: 0px; padding: 0px; border: 0px none; list-style: none;" /> <br style="margin: 0px; padding: 0px; border: 0px none; list-style: none;" /> <img alt="" original="http://s2.img.edn.vn/2013/b/c/bc109f94e74b069de3cc4082fe25ba6a.jpg" src="http://s2.img.edn.vn/2013/b/c/bc109f94e74b069de3cc4082fe25ba6a.jpg" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline; display: inline;" /></p><p style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline; color: rgb(51, 51, 51); font-family: Arial, Geneva, sans-serif; line-height: 14px;"> &nbsp;</p><p data-src="marker1761a446e10bb3347430afd263529bb9" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline; color: rgb(51, 51, 51); font-family: Arial, Geneva, sans-serif; line-height: 14px; text-align: center;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">đồng hồ 3 vòng dây - 99.000 VNĐ</strong><br style="margin: 0px; padding: 0px; border: 0px none; list-style: none;" /> <br style="margin: 0px; padding: 0px; border: 0px none; list-style: none;" /> <img alt="" original="http://s2.img.edn.vn/2013/1/7/1761a446e10bb3347430afd263529bb9.jpg" src="http://s2.img.edn.vn/2013/1/7/1761a446e10bb3347430afd263529bb9.jpg" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline; display: inline;" /></p><p style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline; color: rgb(51, 51, 51); font-family: Arial, Geneva, sans-serif; line-height: 14px;"> &nbsp;</p><p data-src="markere8c083b5068e68621566761ea294ed2d" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline; color: rgb(51, 51, 51); font-family: Arial, Geneva, sans-serif; line-height: 14px; text-align: center;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">đồng hồ 3 vòng dây - 99.000 VNĐ</strong><br style="margin: 0px; padding: 0px; border: 0px none; list-style: none;" /> <br style="margin: 0px; padding: 0px; border: 0px none; list-style: none;" /> <img alt="" original="http://s2.img.edn.vn/2013/e/8/e8c083b5068e68621566761ea294ed2d.jpg" src="http://s2.img.edn.vn/2013/e/8/e8c083b5068e68621566761ea294ed2d.jpg" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline; display: inline;" /></p><p style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline; color: rgb(51, 51, 51); font-family: Arial, Geneva, sans-serif; line-height: 14px;"> &nbsp;</p><p data-src="markerc7515ac373b9f31b3c3134a65a1b1193" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline; color: rgb(51, 51, 51); font-family: Arial, Geneva, sans-serif; line-height: 14px; text-align: center;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">đồng hồ 3 vòng dây - 99.000 VNĐ</strong></p>', '', '', ''),
(8, 1, '', 1, 0, 1373787573, 1373787573, 1, 1373787573, 0, 2, 'S000008', 1, 390000, 0, 'VND', 1, '2013_07/f08440ec124962698aff5a22de39406d.jpg', 'thumb/f08440ec124962698aff5a22de39406d.jpg|block/f08440ec124962698aff5a22de39406d.jpg', '', '', 0, 0, 1, 1, 1, '0', 1, 1, 1, 2, 0, 0, 1, 'Mèo bồng hello kitty xịn khổng lồ, heo bông hana, thú bông totoro', 'Meo-bong-hello-kitty-xin-khong-lo-heo-bong-hana-thu-bong-totoro', '', 'cam kết,lông bông,đàn hồi,êm ái', '', 'Shop totolàshop quà tặngcao cấp, chuyên cung cấpgấu nhồi bông cỡ lớntừ 70cm đến 2m với giá phải chẳng.\r\nToàn bộgấu bôngcủa shop là hàng nhập,nhồi bôngtrắng mịn, mới 100%.Lông gấu bôngmềm mịn, và cam kết 100% không rụng lông. Bông trắng bên tronggấu bônglà bông trắng nhập, đồ đàn hồi cao, giúpgấu bôngk bị xẹp mà vẫn có được độ êm ái mềm mịn.', 'Shop totolàshop quà tặngcao cấp, chuyên cung cấpgấu nhồi bông cỡ lớntừ 70cm đến 2m với giá phải chẳng.<p> Toàn bộgấu bôngcủa shop là hàng nhập,nhồi bôngtrắng mịn, mới 100%.Lông gấu bôngmềm mịn, và cam kết 100% không rụng lông. Bông trắng bên tronggấu bônglà bông trắng nhập, đồ đàn hồi cao, giúpgấu bôngk bị xẹp mà vẫn có được độ êm ái mềm mịn.</p>', '', '', ''),
(9, 1, '', 1, 0, 1373787700, 1373787700, 1, 1373787700, 0, 2, 'S000009', 1, 240000, 0, 'VND', 1, '2013_07/56f265c8cd139bd5e6c48af31b1bb389.jpg', 'thumb/56f265c8cd139bd5e6c48af31b1bb389.jpg|block/56f265c8cd139bd5e6c48af31b1bb389.jpg', '', '', 0, 0, 1, 1, 1, '0', 1, 1, 1, 4, 0, 0, 1, 'Cupcake hoa hồng - quà tặng xinh xắn - bobo24', 'Cupcake-hoa-hong-qua-tang-xinh-xan-bobo24', '', 'trang trí,nhỏ nhắn,ý nghĩa', '', 'Hàng có sẵn - có hình thật do shop tự chụp – Chậu hoa nhỏ trang trí – nhỏ nhắn – xinh xắn - Quà tặng ý nghĩa gởi đến người thân - bạn bè.', 'Chất liệu:&nbsp;PE xốp lọ hoa Chất liệu: chậu gốm giả môi trường<br  />Kích thước tổng thể:&nbsp;đường kính 14cm chiều cao 17cm, nồi chứa 13 bông&nbsp;hoa<br  />Mỗi ngày là rất bận rộn, bạn có thể, không có thời gian để đi chăm sóc cây và hoa.<br  />BoBo24shop gợi ý đến các bạn 1 số loại cây trang trí đẹp, sinh động.<br  />Phù hợp với nhiều hoàn cảnh xung quanh mình, nơi làm việc, học tập, phòng khách, phòng tắm, phòng ngũ ... trang trí nhà cửa, trang trí tiệc sinh nhật, cưới hỏi ...&nbsp;<br  />Bởi mỗi loài hoa &amp; cây điều có ý nghĩa riêng đặc biệt.', '', '', ''),
(10, 1, '', 1, 0, 1373787820, 1373787820, 1, 1373787820, 0, 2, 'S000010', 1, 350000, 0, 'VND', 1, '2013_07/b2a7c48c570e65f609cf84e076d4bd1c.jpg', 'thumb/b2a7c48c570e65f609cf84e076d4bd1c.jpg|block/b2a7c48c570e65f609cf84e076d4bd1c.jpg', '', '', 0, 0, 1, 1, 1, '0', 1, 1, 1, 23, 0, 0, 1, 'Hoa đất trang trí', 'Hoa-dat-trang-tri', '', 'cát tường', '', '<b>Hoa đất Cát Tường cung cấp các loại hoa được làm từ đất sét</b><br  />\r\nHoa đất Cát Tường cung cấp các loại hoa được làm từ đất sét <br  />\r\nHoa đất Cát Tường cung cấp các loại hoa được làm từ đất sét', '<div style="text-align: center;"> <strong style="background-color: transparent; color: rgb(51, 51, 51); font-family: Arial, Geneva, sans-serif; line-height: 14px; text-align: center; margin: 0px; padding: 0px; border: none; list-style: none; outline: 0px; vertical-align: baseline;">Bình hoa lan1 - 350.000 VNĐ</strong><span style="background-color: transparent; color: rgb(51, 51, 51); font-family: Arial, Geneva, sans-serif; line-height: 14px; text-align: center;">&nbsp;, Bình hoa cao khoảng 45cm</span></div><p data-src="marker31d22f2eb9606604e9e255cdd4e07083" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline; color: rgb(51, 51, 51); font-family: Arial, Geneva, sans-serif; line-height: 14px; text-align: center;"> <br style="margin: 0px; padding: 0px; border: 0px none; list-style: none;" /> <img alt="" original="http://s2.img.edn.vn/2013/3/1/31d22f2eb9606604e9e255cdd4e07083.jpg" src="http://s2.img.edn.vn/2013/3/1/31d22f2eb9606604e9e255cdd4e07083.jpg" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline; display: inline; height: 838px; width: 700px;" /></p><p style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline; color: rgb(51, 51, 51); font-family: Arial, Geneva, sans-serif; line-height: 14px;"> <br style="margin: 0px; padding: 0px; border: 0px none; list-style: none;" /> &nbsp;</p><p data-src="marker44334e1bd5e0123dd4316ed9fa494340" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline; color: rgb(51, 51, 51); font-family: Arial, Geneva, sans-serif; line-height: 14px; text-align: center;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Bình hoa lan2 - 350.000 VNĐ</strong>, bình hoa cao khoảng 45cm<br style="margin: 0px; padding: 0px; border: 0px none; list-style: none;" /> <br style="margin: 0px; padding: 0px; border: 0px none; list-style: none;" /> <img alt="" original="http://s2.img.edn.vn/2013/4/4/44334e1bd5e0123dd4316ed9fa494340.jpg" src="http://s2.img.edn.vn/2013/4/4/44334e1bd5e0123dd4316ed9fa494340.jpg" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline; display: inline; height: 853px; width: 700px;" /></p><p style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline; color: rgb(51, 51, 51); font-family: Arial, Geneva, sans-serif; line-height: 14px;"> <br style="margin: 0px; padding: 0px; border: 0px none; list-style: none;" /> &nbsp;</p><p data-src="markere2b00e5bb376d78a0370f761603b6905" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline; color: rgb(51, 51, 51); font-family: Arial, Geneva, sans-serif; line-height: 14px; text-align: center;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Chậu lan bò cạp - 370.000 VNĐ</strong>, chậu hoa cao khoảng 45-50cm</p>', '', '', ''),
(11, 1, '', 1, 0, 1373788004, 1374334674, 1, 1373788004, 0, 2, 'S000011', 1, 180000, 0, 'VND', 1, '2013_07/c29225b099c81947ca6842a45d012e82.jpg', 'thumb/c29225b099c81947ca6842a45d012e82.jpg|block/c29225b099c81947ca6842a45d012e82.jpg', '', '', 0, 0, 1, 1, 1, '0', 1, 1, 1, 3, 0, 0, 1, 'H16 - Hoa giả - Chậu hoa cẩm tú cầu xinh xắn', 'H16-Hoa-gia-Chau-hoa-cam-tu-cau-xinh-xan', '', 'trang trí,lung linh,ý nghĩa', '', 'Hàng có sẵn - có hình thật do shop tự chụp - Cây trang trí - siêu lung linh - đẹp như cây thật bạn nhé - Quà tặng ý nghĩa gởi đến người thân - bạn bè', '<h2> <span style="font-size:14px;"><span style="font-family:times new roman,times,serif;">Mỗi ngày là rất bận rộn, bạn có thể, không có thời gian để đi chăm sóc cây và hoa.<br  /> BoBo24shop gợi ý đến các bạn 1 số loại cây trang trí đẹp, sinh động.<br  /> Phù hợp với nhiều hoàn cảnh xung quanh mình, nơi làm việc, học tập, phòng khách, phòng tắm, phòng ngũ ... trang trí nhà cửa, trang trí tiệc sinh nhật, cưới hỏi ...&nbsp;<br  /> Bởi mỗi loài hoa &amp; cây điều có ý nghĩa riêng đặc biệt.</span></span></h2><h2> <span style="font-size:14px;"><span style="font-family:times new roman,times,serif;">Ấm áp và bình dị cây cảnh trong nhà của bạn sẽ cung cấp cho bạn một tâm trạng tốt<br  /> Đặc biệt thích hợp để trưng bày trong phòng tắm, cửa sổ và những nơi phù hợp với hoa<br  /> Rất bận rộn mỗi ngày bạn có thể không có thời gian để chăm sóc một số cây và hoa<br  /> Sản phẩm này là một sự lựa chọn rất tốt.<br  /> <br  /> <br  /> Hàn Quốc phù hợp với phong cách vườn hoa tổng thể.<br  /> <br  /> Kích thước: chiều cao tổng thể là 28cm Chiều rộng tổng thể 16cm (đo bằng tay)<br  /> <br  /> Hoa nhân tạo làm bằng nguyên liệu tơ tằm và chậu hoa nhựa làm bằng dây chuyền sợi thực vật, lá tĩnh mạch mô phỏng và in lụa thô cao</span></span></h2>', '', '', ''),
(12, 1, '', 1, 0, 1373788220, 1373940680, 1, 1373788220, 0, 2, 'S000012', 1, 179000, 20, 'VND', 1, '2013_07/b42-12.jpg', 'thumb/b42-12.jpg|block/b42-12.jpg', '', '', 0, 0, 1, 1, 1, '0', 1, 1, 1, 39, 0, 0, 1, 'Album ảnh Hàn Quốc tự thiết kế', 'Album-anh-Han-Quoc-tu-thiet-ke', '', 'răng cưa,trang trí,tha hồ', '', 'Album ảnh Hàn Quốctặng kèm 6 món:1 kéo răng cưa, 1 tấm sticker dán góc ảnh, 2 bìa nhựa, 1 tấm gồm 11 dây ren dán nhiều màu, 1 máy bấm cắt hình trang trí, 1 bút màu và 8 ruột màu cho bạn tha hồ trang trí, sáng tạo.', 'Bạn đang sở hữu rất nhiều bức hình đẹp, ghi dấu những khoảnh khắc đáng nhớ bên người thân, bạn bè của tháng ngày đã qua.Hãy để những kỷ niệm ấy luôn sống mãi trong lòng bạn và những người thân yêu vớialbum ảnh Hàn Quốc, vừa giữ ảnh cẩn thận nhất, vừa trang trí cho những tấm ảnh thêm cá tính, sinh động, dễ thương theo ý tưởng của riêng bạn.<br  /><br  /><br  /><img alt="" original="http://lamdepdeal.vn/images/quatang/b42-12.jpg" src="http://lamdepdeal.vn/images/quatang/b42-12.jpg" style="height: 500px; width: 500px;" /><br  /><p> <img alt="" original="http://img03.taobaocdn.com/imgextra/i3/54972350/T2G_FeXeXMXXXXXXXX_%21%2154972350.jpg" src="http://img03.taobaocdn.com/imgextra/i3/54972350/T2G_FeXeXMXXXXXXXX_%21%2154972350.jpg" style="height: 335px; width: 500px;" /></p><br  /><p> <img alt="" original="http://lamdepdeal.vn/images/quatang/b42-11.jpg" src="http://lamdepdeal.vn/images/quatang/b42-11.jpg" style="height: 375px; width: 500px;" /></p><br  /><br  /><p> Album ảnh Hàn Quốccó kích thước 21 x 28 (cm), với 64 trang để bạn lưu giữ hình cưới, hình ảnh của con yêu, gia đình, bạn bè, album lớp, hình ảnh những chuyến đi chơi và còn là 1 món quà thật ý nghĩa nữa đấy!</p><div> &nbsp;</div>', '', '', ''),
(13, 2, '', 1, 0, 1373790693, 1373790693, 1, 1373790693, 0, 2, 'S000013', 1, 153000, 0, 'VND', 1, '2013_07/fa415a2760f557a655e276834687b0f4.jpg', 'thumb/fa415a2760f557a655e276834687b0f4.jpg|block/fa415a2760f557a655e276834687b0f4.jpg', '', '', 0, 0, 1, 1, 1, '0', 1, 1, 1, 0, 0, 0, 1, 'Kính mát nữ đẹp,lạ ,thời trang 2013&#33;', 'Kinh-mat-nu-dep-la-thoi-trang-2013', '', 'cửa sổ,tâm hồn,sáng ngời,tinh anh,áp lực,căng thẳng,tình trạng,phải điều,tối đa,thường xuyên,làm việc,kéo dài,gay gắt,thủy tinh', '', 'Đôi mắt là cửa sổ tâm hồn. Một đôi mắt đẹp là đôi mắt khỏe,luôn sáng ngời tinh anh\r\nÁp lực công việc căng thẳng khiến đôi mắt lâm vào tình trạng căng thẳng mọi lúc mọi nơi. Mắt phải\r\nđiều tiết tối đa thường xuyên khi đọc sách, làm việc với máy tính.Tình trạng này kéo dài khiến mắt\r\nmệt mỏi.khi ra đường ánh nắng gay gắt ,bụi bặm làm mắt bạn càng mất đi sức sống.với kính mát \r\ntròng thủy tinh chống nắng cao sẽ giúp bạn lấy lại,bảo vệ nét đẹp của đôi mắt', 'Đôi mắt là cửa sổ tâm hồn. Một đôi mắt đẹp là đôi mắt khỏe,luôn sáng ngời tinh anh<div> Áp lực công việc căng thẳng khiến đôi mắt lâm vào tình trạng căng thẳng mọi lúc mọi nơi. Mắt phải</div><div> điều tiết tối đa thường xuyên khi đọc sách, làm việc với máy tính.Tình trạng này kéo dài khiến mắt</div><div> mệt mỏi.khi ra đường ánh nắng gay gắt ,bụi bặm làm mắt bạn càng mất đi sức sống.với kính mát&nbsp;</div><div> tròng thủy tinh chống nắng cao sẽ giúp bạn lấy lại,bảo vệ nét đẹp của đôi mắt</div>', '', '', ''),
(14, 2, '', 1, 0, 1373790836, 1373790836, 1, 1373790836, 0, 2, 'S000014', 1, 207000, 0, 'VND', 1, '2013_07/93a1b2fd532dae44da1e25047da5ce4f.jpg', 'thumb/93a1b2fd532dae44da1e25047da5ce4f.jpg|block/93a1b2fd532dae44da1e25047da5ce4f.jpg', '', '', 0, 0, 1, 1, 1, '0', 1, 1, 1, 0, 0, 0, 1, 'Mắt kính hàn quốc 2013 đẹp,lạ,thời trang&#33;', 'Mat-kinh-han-quoc-2013-dep-la-thoi-trang', '', 'cửa sổ,tâm hồn,sáng ngời,tinh anh,áp lực,căng thẳng,tình trạng,phải điều,tối đa,thường xuyên,làm việc,kéo dài,gay gắt,thủy tinh', '', 'Đôi mắt là cửa sổ tâm hồn. Một đôi mắt đẹp là đôi mắt khỏe,luôn sáng ngời tinh anh\r\nÁp lực công việc căng thẳng khiến đôi mắt lâm vào tình trạng căng thẳng mọi lúc mọi nơi. Mắt phải\r\nđiều tiết tối đa thường xuyên khi đọc sách, làm việc với máy tính.Tình trạng này kéo dài khiến mắt\r\nmệt mỏi.khi ra đường ánh nắng gay gắt ,bụi bặm làm mắt bạn càng mất đi sức sống.với kính mát \r\ntròng thủy tinh chống nắng cao sẽ giúp bạn lấy lại,bảo vệ nét đẹp của đôi mắt', 'Đôi mắt là cửa sổ tâm hồn. Một đôi mắt đẹp là đôi mắt khỏe,luôn sáng ngời tinh anh<div> Áp lực công việc căng thẳng khiến đôi mắt lâm vào tình trạng căng thẳng mọi lúc mọi nơi. Mắt phải</div><div> điều tiết tối đa thường xuyên khi đọc sách, làm việc với máy tính.Tình trạng này kéo dài khiến mắt</div><div> mệt mỏi.khi ra đường ánh nắng gay gắt ,bụi bặm làm mắt bạn càng mất đi sức sống.với kính mát&nbsp;</div><div> tròng thủy tinh chống nắng cao sẽ giúp bạn lấy lại,bảo vệ nét đẹp của đôi mắt</div>', '', '', ''),
(15, 2, '', 1, 0, 1373791019, 1373791370, 1, 1373791019, 0, 2, 'S000015', 1, 850000, 0, 'VND', 1, '2013_07/8aac21576cdac5724d339a9c871c6e3c.jpg', 'thumb/8aac21576cdac5724d339a9c871c6e3c.jpg|block/8aac21576cdac5724d339a9c871c6e3c.jpg', '', '', 0, 0, 1, 1, 1, '0', 1, 1, 1, 9, 0, 0, 1, 'Đồng Hồ CHOPARD Đính Đá', 'Dong-Ho-CHOPARD-Dinh-Da', '', 'kim loại,hợp kim,mặt kính,xuất xứ', '', 'Loại : Đồng hồ kim<br  />\r\nChất liệu:  dây  Kim Loại<br  />\r\nChất liệu vỏ:   Hợp kim Titanium<br  />\r\nChất liệu mặt:   Kính chống xước<br  />\r\nThương hiệu:   CHOPARD<br  />\r\nXuất xứ:   Hong Kong<br  />', '<table border="0" cellpadding="0" cellspacing="0" class="product-parameters" style="margin: 0px 0px 10px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline; border-collapse: collapse; border-spacing: 0px; width: 730px; color: rgb(51, 51, 51); font-family: Arial, Geneva, sans-serif; line-height: 14px;"> <tbody style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td class="frs" rowspan="6" style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: rgb(245, 245, 245); outline: 0px; vertical-align: middle; width: 223px; color: rgb(0, 0, 0); font-weight: bold; text-align: center;" valign="top"> Thông tin cơ bản</td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Loại</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> Đồng hồ kim</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Chất liệu dây</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> Kim Loại</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Chất liệu vỏ</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> Hợp kim Titanium</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Chất liệu mặt</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> Kính chống xước</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Thương hiệu</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> CHOPARD</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Xuất xứ</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> Hong Kong</td> </tr> </tbody></table><br  />', '', '', ''),
(16, 2, '', 1, 0, 1373791345, 1373791345, 1, 1373791345, 0, 2, 'S000016', 1, 1200000, 0, 'VND', 1, '2013_07/0e49e6475522a6640d9b27f9406a4db1.jpg', 'thumb/0e49e6475522a6640d9b27f9406a4db1.jpg|block/0e49e6475522a6640d9b27f9406a4db1.jpg', '', '', 0, 0, 1, 1, 1, '0', 1, 1, 1, 0, 0, 0, 1, 'Đồng hồ GUCCI dây đá trắng', 'Dong-ho-GUCCI-day-da-trang', '', '', '', 'Đồng hồ GUCCI dây đá trắng <br  />\r\nĐồng hồ GUCCI dây đá trắng <br  />\r\nĐồng hồ GUCCI dây đá trắng <br  />\r\nĐồng hồ GUCCI dây đá trắng <br  />', '<strong style="background-color: transparent; color: rgb(51, 51, 51); font-family: Arial, Geneva, sans-serif; line-height: 14px; text-align: center; margin: 0px; padding: 0px; border: none; list-style: none; outline: 0px; vertical-align: baseline;">đồng hồ gucci dây đá - 1.200.000 VNĐ</strong><p style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline; color: rgb(51, 51, 51); font-family: Arial, Geneva, sans-serif; line-height: 14px; text-align: center;"> <br style="margin: 0px; padding: 0px; border: 0px none; list-style: none;" /> <img alt="" original="http://s1.img.edn.vn/2012/0/e/0e49e6475522a6640d9b27f9406a4db1.jpg" src="http://s1.img.edn.vn/2012/0/e/0e49e6475522a6640d9b27f9406a4db1.jpg" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline; display: inline; float: left;" /><br  /> <br  /> &nbsp;</p><p style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline; color: rgb(51, 51, 51); font-family: Arial, Geneva, sans-serif; line-height: 14px;"> <img alt="" original="http://pai0.qpic.cn/paipai/tRicOqeGQdKjzgpbywf5wpE8EiaRD6ic8Zm9CzvAW83xLk/2000" src="http://pai0.qpic.cn/paipai/tRicOqeGQdKjzgpbywf5wpE8EiaRD6ic8Zm9CzvAW83xLk/2000" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline; display: inline; float: left;" /></p><p style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline; color: rgb(51, 51, 51); font-family: Arial, Geneva, sans-serif; line-height: 14px;"> <img alt="" original="http://pai7.qpic.cn/paipai/lLlmbdxjXdxaBBiasBl9CCfic98U9gaUHyWHkmjfiaXZ5M/2000" src="http://pai7.qpic.cn/paipai/lLlmbdxjXdxaBBiasBl9CCfic98U9gaUHyWHkmjfiaXZ5M/2000" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline; display: inline;" /><br  /> &nbsp;</p><p style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline; color: rgb(51, 51, 51); font-family: Arial, Geneva, sans-serif; line-height: 14px;"> <img alt="" original="http://pai2.qpic.cn/paipai/wIbdTcrDufdSjlezfGCibpKpOhW9yL3iaW91XnByWmCgU/2000" src="http://pai2.qpic.cn/paipai/wIbdTcrDufdSjlezfGCibpKpOhW9yL3iaW91XnByWmCgU/2000" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline; display: inline;" /></p>', '', '', ''),
(17, 2, '', 1, 0, 1373791491, 1373791491, 1, 1373791491, 0, 2, 'S000017', 1, 1200000, 0, 'VND', 1, '2013_07/6b11ed9e45dc1346327abfb590acecfa.jpg', 'thumb/6b11ed9e45dc1346327abfb590acecfa.jpg|block/6b11ed9e45dc1346327abfb590acecfa.jpg', '', '', 0, 0, 1, 1, 1, '0', 1, 1, 1, 0, 0, 0, 1, 'Đồng Hồ GUESS DHG43', 'Dong-Ho-GUESS-DHG43', '', 'thời trang,thiết kế,thành lập,công ty,trụ sở,hiện tại,sở hữu,nổi tiếng,là là,nhãn hiệu,sau đó,hiện nay,cao cấp,hàng đầu,thế giới,sưu tập', '', 'Calvin Klein Inc. là một thương hiệu thời trang được nhà thiết kế Calvin Klein thành lập năm 1968. Công ty có trụ sở tại Midtown Manhattan, New York City, Hoa Kỳ và hiện tại do Phillips-Van Heusen sở hữu. Giống như các thương hiệu thời trang khác, Calvin Klein nổi tiếng với biểu tượng viết tắt của tên công ty là &quot;cK&quot;. Khi đó là là một nhãn hiệu áo khoác dành cho cả Nam và Nữ. Vài năm sau đó Calvin Klein tạo nên một cơn sốt với những thiết kế quần Jeans của mình. Hiện nay cK là thương hiệu thiết kế thời trang cao cấp hàng đầu thế giới với nhiều bộ sưu tập thời trang nổi tiếng như:', '<table border="0" cellpadding="0" cellspacing="0" class="product-parameters" style="margin: 0px 0px 10px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline; border-collapse: collapse; border-spacing: 0px; width: 730px; color: rgb(51, 51, 51); font-family: Arial, Geneva, sans-serif; line-height: 14px;"> <tbody style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td class="frs" rowspan="6" style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: rgb(245, 245, 245); outline: 0px; vertical-align: middle; width: 223px; color: rgb(0, 0, 0); font-weight: bold; text-align: center;" valign="top"> Thông tin cơ bản</td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Loại</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> Đồng hồ kim</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Chất liệu dây</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> Plastic</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Chất liệu vỏ</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> Hợp kim</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Chất liệu mặt</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> Mặt kính cao cấp</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Thương hiệu</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> Guess</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Xuất xứ</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> Hong Kong</td> </tr> </tbody></table><br  />', '', '', ''),
(18, 2, '', 1, 0, 1373791635, 1373791635, 1, 1373791635, 0, 2, 'S000018', 1, 690000, 0, 'VND', 1, '2013_07/507e94380fa70b5072bafa02018658e0.jpg', 'thumb/507e94380fa70b5072bafa02018658e0.jpg|block/507e94380fa70b5072bafa02018658e0.jpg', '', '', 0, 0, 1, 1, 1, '0', 1, 1, 1, 0, 0, 0, 1, 'Đồng hồ thời trang nữ DHN06', 'Dong-ho-thoi-trang-nu-DHN06', '', 'đặc biệt,tất cả,sưu tập,thiết kế,sang trọng,thời trang,chế tác,sản xuất,quê hương,nhãn hiệu,cao cấp,có thể,dễ dàng,kết hợp,sản phẩm,tự tin,thể hiện,đẳng cấp,am hiểu,phong cách', '', 'Và đặc biệt hơn tất cả là bộ sưu tập Đồng hồ - Watches collection, Phụ kiện – Jewelry collection được thiết kế rất sang trọng, độc đáo, mang một vẻ đẹp thời trang hoàn hảo và được chế tác, sản xuất tại quê hương của những nhãn hiệu đồng hồ cao cấp đó là Thụy Sĩ. Bạn có thể dễ dàng kết hợp các sản phẩm mang nhãn hiệu cK với một chiếc Đồng hồ “cK Watch”, hoặc Phụ kiện “cK Jewelry”  điều đó giúp bạn tự tin thể hiện đẳng cấp và sự am hiểu về thời trang mang phong cách kết hợp hiện đại.', '<div style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline; line-height: 14px; text-align: center;"> <span style="color:rgb(0, 0, 0);"><font face="impact, chicago" size="7"><b><span style="font-size:14px;">DHN 06</span></b></font></span><br  /> <br style="margin: 0px; padding: 0px; border: 0px none; list-style: none;" /> <font color="rgb(51, 51, 51);" face="Arial, Geneva, sans-serif"><span style="list-style-position: initial; list-style-image: initial;"><img alt="" original="http://d.f7.photo.zdn.vn/upload/original/2011/10/22/12/31/13192614781117244003_574_0.jpg" src="http://d.f7.photo.zdn.vn/upload/original/2011/10/22/12/31/13192614781117244003_574_0.jpg" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline; display: inline;" /></span></font><br style="margin: 0px; padding: 0px; border: 0px none; list-style: none;" /> &nbsp;</div><div style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline; color: rgb(51, 51, 51); font-family: Arial, Geneva, sans-serif; line-height: 14px; text-align: center;"> <img alt="" original="http://d.f7.photo.zdn.vn/upload/original/2011/10/22/15/56/13192737821472969898_574_574.jpg" src="http://d.f7.photo.zdn.vn/upload/original/2011/10/22/15/56/13192737821472969898_574_574.jpg" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline; display: inline;" /><br style="margin: 0px; padding: 0px; border: 0px none; list-style: none;" /> &nbsp;</div><div style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline; color: rgb(51, 51, 51); font-family: Arial, Geneva, sans-serif; line-height: 14px; text-align: center;"> <img alt="" original="http://d.f7.photo.zdn.vn/upload/original/2011/10/22/15/56/13192737866500914_574_574.jpg" src="http://d.f7.photo.zdn.vn/upload/original/2011/10/22/15/56/13192737866500914_574_574.jpg" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline; display: inline;" /><br style="margin: 0px; padding: 0px; border: 0px none; list-style: none;" /> &nbsp;</div><div style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline; color: rgb(51, 51, 51); font-family: Arial, Geneva, sans-serif; line-height: 14px; text-align: center;"> <img alt="" original="http://d.f7.photo.zdn.vn/upload/original/2011/10/22/15/56/13192737911168821960_574_574.jpg" src="http://d.f7.photo.zdn.vn/upload/original/2011/10/22/15/56/13192737911168821960_574_574.jpg" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline; display: inline;" /></div>', '', '', ''),
(19, 2, '', 1, 0, 1373791839, 1373791839, 1, 1373791839, 0, 2, 'S000019', 1, 120000, 0, 'VND', 1, '2013_07/810e5377da25d57aa9840573d335dc22.jpg', 'thumb/810e5377da25d57aa9840573d335dc22.jpg|block/810e5377da25d57aa9840573d335dc22.jpg', '', '', 0, 0, 1, 1, 1, '0', 1, 1, 1, 0, 0, 0, 1, 'Đồng hồ thời trang sành điệu cực Style', 'Dong-ho-thoi-trang-sanh-dieu-cuc-Style', '', 'thời trang,thiết kế,tinh tế,phong cách,trẻ trung,ý nghĩa,thể hiện,tình cảm', '', 'Đồng hồ thời trang nữ với Thiết kế tinh tế đơn giản không kém phần độc đáo, sẽ mang đến cho bạn 1 phong cách thời trang trẻ trung và cực sành điệu, thật ý nghĩa để thể hiện tình cảm của đôi ta.', '<div> Đồng hồ đeo tay thời trang với Thiết kế tinh tế đơn giản không kém phần độc đáo, sẽ mang đến cho bạn 1 phong cách thời trang trẻ trung và cực sành điệu, thật ý nghĩa để thể hiện tình cảm của đôi ta hãy để tình iu thăng hoa theo thời gian.</div><div> Có 3 màu dây đen, trắng, nâu cho bạn chọn lựa, shop có bán riêng từng cái cho nhu cầu cá nhân boy &amp; girl iu thích nhé&nbsp;</div>', '', '', '');
INSERT INTO `nv3_shops_rows` (`id`, `listcatid`, `group_id`, `user_id`, `source_id`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `product_code`, `product_number`, `product_price`, `product_discounts`, `money_unit`, `product_unit`, `homeimgfile`, `homeimgthumb`, `homeimgalt`, `otherimage`, `imgposition`, `copyright`, `inhome`, `allowed_comm`, `allowed_rating`, `ratingdetail`, `allowed_send`, `allowed_print`, `allowed_save`, `hitstotal`, `hitscm`, `hitslm`, `showprice`, `vi_title`, `vi_alias`, `vi_description`, `vi_keywords`, `vi_note`, `vi_hometext`, `vi_bodytext`, `vi_address`, `vi_warranty`, `vi_promotional`) VALUES
(20, 2, '', 1, 0, 1373792024, 1373792031, 1, 1373792024, 0, 2, 'S000020', 1, 850000, 0, 'VND', 1, '2013_07/1335250174807026211_574_574.jpg', 'thumb/1335250174807026211_574_574.jpg|block/1335250174807026211_574_574.jpg', '', '', 0, 0, 1, 1, 1, '0', 1, 1, 1, 0, 0, 0, 1, 'Đồng hồ Chanel MS09', 'Dong-ho-Chanel-MS09', '', 'đặc biệt,tất cả,sưu tập,thiết kế,sang trọng,thời trang,chế tác,sản xuất,quê hương,nhãn hiệu,cao cấp,có thể,dễ dàng,kết hợp,sản phẩm,tự tin,thể hiện,đẳng cấp,am hiểu,phong cách', '', 'Và đặc biệt hơn tất cả là bộ sưu tập Đồng hồ - Watches collection, Phụ kiện – Jewelry collection được thiết kế rất sang trọng, độc đáo, mang một vẻ đẹp thời trang hoàn hảo và được chế tác, sản xuất tại quê hương của những nhãn hiệu đồng hồ cao cấp đó là Thụy Sĩ. Bạn có thể dễ dàng kết hợp các sản phẩm mang nhãn hiệu cK với một chiếc Đồng hồ “cK Watch”, hoặc Phụ kiện “cK Jewelry”  điều đó giúp bạn tự tin thể hiện đẳng cấp và sự am hiểu về thời trang mang phong cách kết hợp hiện đại.', '<table border="0" cellpadding="0" cellspacing="0" class="product-parameters" style="margin: 0px 0px 10px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline; border-collapse: collapse; border-spacing: 0px; width: 730px; color: rgb(51, 51, 51); font-family: Arial, Geneva, sans-serif; line-height: 14px;"> <tbody style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td class="frs" rowspan="6" style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: rgb(245, 245, 245); outline: 0px; vertical-align: middle; width: 223px; color: rgb(0, 0, 0); font-weight: bold; text-align: center;" valign="top"> Thông tin cơ bản</td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Loại</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> Đồng hồ kim</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Chất liệu dây</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> Cao su</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Chất liệu vỏ</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> Cao su</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Chất liệu mặt</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> Kính chống xước</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Thương hiệu</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> CHANEL</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Xuất xứ</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> Hong Kong</td> </tr> </tbody></table><br  />', '', '', ''),
(21, 2, '', 1, 0, 1373792228, 1373792228, 1, 1373792228, 0, 2, 'S000021', 1, 1500000, 0, 'VND', 1, '2013_07/653afbb41d57bd94b4cb75bde35e0a87.jpg', 'thumb/653afbb41d57bd94b4cb75bde35e0a87.jpg|block/653afbb41d57bd94b4cb75bde35e0a87.jpg', '', '', 0, 0, 1, 1, 1, '0', 1, 1, 1, 1, 0, 0, 1, 'Topic2 đồng hồ giá sinh viên.', 'Topic2-dong-ho-gia-sinh-vien', '', 'thành lập,ngày nay,thị trấn,trung tâm,có nghĩa', '', 'Được thành lập tại Thụy Sỹ vào năm 1918 bởi George Schaeren, Mido ngày nay được đặt tại thị trấn của Le Locle, nằm ở trung tâm của những dãy núi thuộc kỷ Jura của Thụy Sỹ. Cái tên Mido bắt nguồn từ tiếng Tây Ban Nha “Yo mido”, có nghĩa là “Tôi đo”.', 'Được thành lập tại Thụy Sỹ vào năm 1918 bởi George Schaeren, Mido ngày nay được đặt tại thị trấn của Le Locle, nằm ở trung tâm của những dãy núi thuộc kỷ Jura của Thụy Sỹ. Cái tên Mido bắt nguồn từ tiếng Tây Ban Nha “Yo mido”, có nghĩa là “Tôi đo”.', '', '', ''),
(22, 2, '', 1, 0, 1373792329, 1373792329, 1, 1373792329, 0, 2, 'S000022', 1, 1100000, 0, 'VND', 1, '2013_07/8e5ea65e42c99aeacfdb8d17386fb0d4.jpg', 'thumb/8e5ea65e42c99aeacfdb8d17386fb0d4.jpg|block/8e5ea65e42c99aeacfdb8d17386fb0d4.jpg', '', '', 0, 0, 1, 1, 1, '0', 1, 1, 1, 0, 0, 0, 1, 'Đồng hồ giá sinh viên', 'Dong-ho-gia-sinh-vien', '', 'triết lý,kết hợp,thiết kế,thời gian,xu hướng,thời trang,đẳng cấp,tồn tại,tất cả,khuynh hướng,mục tiêu,cao cấp,bộ máy,khả năng,có thể,hoạt động', '', 'Triết lý của Mido là kết hợp thiết kế vượt thời gian cùng với những chức năng vượt trội hơn là chạy theo những xu hướng thời trang. Những thiết kế đẳng cấp luôn tồn tại lâu hơn tất cả những khuynh hướng thời trang. Mục tiêu của Mido là tạo ra những chiếc đồng hồ bằng những chất liệu cao cấp, với những bộ máy chính xác và có khả năng kín nước nổi trội để có thể hoạt động trong một thời gian dài.', 'Triết lý của Mido là kết hợp thiết kế vượt thời gian cùng với những chức năng vượt trội hơn là chạy theo những xu hướng thời trang. Những thiết kế đẳng cấp luôn tồn tại lâu hơn tất cả những khuynh hướng thời trang. Mục tiêu của Mido là tạo ra những chiếc đồng hồ bằng những chất liệu cao cấp, với những bộ máy chính xác và có khả năng kín nước nổi trội để có thể hoạt động trong một thời gian dài.', '', '', ''),
(23, 2, '', 1, 0, 1373792435, 1373792435, 1, 1373792435, 0, 2, 'S000023', 1, 450000, 0, 'VND', 1, '2013_07/00b4eb6b9815223da72eb6eb457aeff8.jpg', 'thumb/00b4eb6b9815223da72eb6eb457aeff8.jpg|block/00b4eb6b9815223da72eb6eb457aeff8.jpg', '', '', 0, 0, 1, 1, 1, '0', 1, 1, 1, 3, 0, 0, 1, 'Đồng hồ nam cao cấp 6 kim đều chạy', 'Do-ng-ho-nam-cao-ca-p-6-kim-de-u-cha-y', '', 'phong cách,thiết kế,cảm hứng,kiến trúc,đại diện,thời gian,mẫu mã,bao giờ,lỗi thời,cảm giác,cuộc đời,thông qua,bán lẻ,quốc gia', '', 'Với phong cách thiết kế độc đáo, lấy cảm hứng từ vẻ đẹp của công trình kiến trúc Đại hý trường Colosseum La Mã, thương hiệu Mido là đại diện cho sự đổi mới về thiết kế và những kiểu dáng vượt thời gian. Những chiếc đồng hồ Mido với các chức năng và chất lượng cao nhất, những mẫu mã không bao giờ lỗi thời sẽ mang lại cho bạn cảm giác có được những người bạn tốt trong cuộc đời. Những chiếc đồng hồ của Mido được bán thông qua hơn 2000 điểm bán lẻ chính thức tại 50 quốc gia trên toàn thế giới.', 'Với phong cách thiết kế độc đáo, lấy cảm hứng từ vẻ đẹp của công trình kiến trúc Đại hý trường Colosseum La Mã, thương hiệu Mido là đại diện cho sự đổi mới về thiết kế và những kiểu dáng vượt thời gian. Những chiếc đồng hồ Mido với các chức năng và chất lượng cao nhất, những mẫu mã không bao giờ lỗi thời sẽ mang lại cho bạn cảm giác có được những người bạn tốt trong cuộc đời. Những chiếc đồng hồ của Mido được bán thông qua hơn 2000 điểm bán lẻ chính thức tại 50 quốc gia trên toàn thế giới.', '', '', ''),
(24, 2, '', 1, 0, 1373792541, 1373792541, 1, 1373792541, 0, 2, 'S000024', 1, 1350000, 0, 'VND', 1, '2013_07/ef101baf654b80a705c42afb4b4775e9.jpg', 'thumb/ef101baf654b80a705c42afb4b4775e9.jpg|block/ef101baf654b80a705c42afb4b4775e9.jpg', '', '', 0, 0, 1, 1, 1, '0', 1, 1, 1, 4, 0, 0, 1, 'Đồng hồ đeo tay hàn quốc VK tuyệt đẹp 2013', 'Dong-ho-deo-tay-han-quoc-VK-tuyet-dep-2013', '', 'nam nữ,thiết kế,tinh tế,phong cách,thời trang,trẻ trung,thể hiện,cá tính', '', 'Đồng hồ đeo tay nam nữ hàn quốc với thiết kế tinh tế đơn giản không kém phần độc đáo, sẽ mang đến cho bạn 1 phong cách thời trang trẻ trung và cực sành điệu, nào hãy thể hiện phong cách cá tính thật riêng cho mình bạn nhé.', 'Đồng hồ đeo tay nam nữ hàn quốc với thiết kế tinh tế đơn giản không kém phần độc đáo, sẽ mang đến cho bạn 1 phong cách thời trang trẻ trung và cực sành điệu, nào hãy thể hiện phong cách cá tính thật riêng cho mình bạn nhé.', '', '', ''),
(25, 3, '', 1, 0, 1373792775, 1373792775, 1, 1373792775, 0, 2, 'S000025', 1, 12300000, 0, 'VND', 1, '2013_07/c749b55f061feff6a60a2baa4af69e63.jpg', 'thumb/c749b55f061feff6a60a2baa4af69e63.jpg|block/c749b55f061feff6a60a2baa4af69e63.jpg', '', '', 0, 0, 1, 1, 1, '0', 1, 1, 1, 0, 0, 0, 1, 'Samsung Galaxy Note II N7100 &#40;32 GB White &#41;', 'Samsung-Galaxy-Note-II-N7100-32-GB-White', '', 'tiếp theo,toàn cầu,thành công,ngọt ngào,quan chức,tự tin,nghênh chiến,cam kết,cải tiến,công nghệ,một vài', '', 'GALAXY Note II được dự báo sẽ gây nên cơn địa chấn tiếp theo trên toàn cầu cho Samsung sau thành công ngọt ngào của SIII. Và như lời một quan chức cấp cao của Samsung Việt Nam &quot;GALAXY Note II tự tin nghênh chiến Iphone 5 của Apple và cam kết mang đến một sự cải tiến công nghệ thực chứ không chỉ là một vài chỉnh sửa hay thêm mới vụng về&quot;', '<table border="0" cellpadding="0" cellspacing="0" class="product-parameters" style="margin: 0px 0px 10px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline; border-collapse: collapse; border-spacing: 0px; width: 730px; color: rgb(51, 51, 51); font-family: Arial, Geneva, sans-serif; line-height: 14px;"> <tbody style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td class="frs" rowspan="11" style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: rgb(245, 245, 245); outline: 0px; vertical-align: middle; width: 223px; color: rgb(0, 0, 0); font-weight: bold; text-align: center;" valign="top"> c năng cơ bản</td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Máy ảnh chính</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> 8.0 MP (3264x2448 pixels)</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Máy ảnh phụ</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> 2.0 MP (1600x1200 pixels)</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Chế độ quay phim</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> FullHD 1080p@30fps</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Video Call</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> Có</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Xem TV</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> Có</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Nghe nhạc</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> Có</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Ghi âm</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> Có</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">FM-Radio</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> Có</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Email</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> SMTP/IMAP4/POP3/Push Mail</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Ứng dụng văn phòng</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> Có</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Số SIM</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> 1 SIM</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td class="frs" rowspan="3" style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: rgb(245, 245, 245); outline: 0px; vertical-align: middle; width: 223px; color: rgb(0, 0, 0); font-weight: bold; text-align: center;" valign="top"> Màn hình</td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Loại màn hình</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> 16M màu - Super AMOLED touchsreen</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Độ phân giải màn hình</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> 720 x 1280 pixels</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Kích thước màn hình</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> 5.5 inch</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td class="frs" rowspan="6" style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: rgb(245, 245, 245); outline: 0px; vertical-align: middle; width: 223px; color: rgb(0, 0, 0); font-weight: bold; text-align: center;" valign="top"> Cấu hình nâng cao</td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Bộ vi xử lý (CPU)</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> Exynos, Quad-core 1.6 GHz Cortex-A9 processor</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Bộ xử lý đồ họa (GPU)</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> -</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Bộ nhớ trong</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> 32 GB</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">RAM</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> 2 GB</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Hỗ trợ thẻ nhớ</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> Micro SD</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Hệ điều hành</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> Android OS 4.1 (Jelly Bean)</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td class="frs" rowspan="4" style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: rgb(245, 245, 245); outline: 0px; vertical-align: middle; width: 223px; color: rgb(0, 0, 0); font-weight: bold; text-align: center;" valign="top"> Kết nối dữ liệu cơ bản</td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Mạng 3G - 4G</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> HSDPA, 21 Mbps; HSUPA, 5.76 Mbps, LTE, Cat3, 50 Mbps DL, 25 Mbps UL</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Wifi</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> Wi-Fi 802.11 b/g/n, Wi-Fi Direct, DLNA, Wi-Fi hotspot</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Bluetooth</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> Bluetooth V4.0 with A2DP.</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">GPS</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> A - GPS</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td class="frs" rowspan="2" style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: rgb(245, 245, 245); outline: 0px; vertical-align: middle; width: 223px; color: rgb(0, 0, 0); font-weight: bold; text-align: center;" valign="top"> Kết nối - tính năng khác</td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Tính năng - kết nối khác</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> Jack tai nghe 3.5mm<br style="margin: 0px; padding: 0px; border: 0px none; list-style: none;" /> Micro USB<br style="margin: 0px; padding: 0px; border: 0px none; list-style: none;" /> TV out</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Tính năng đặc biệt</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> &nbsp;</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td class="frs" rowspan="4" style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: rgb(245, 245, 245); outline: 0px; vertical-align: middle; width: 223px; color: rgb(0, 0, 0); font-weight: bold; text-align: center;" valign="top"> Thông số vật lý</td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Loại điện thoại</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> Cảm ứng</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Màu sắc</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> &nbsp;</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Kích thước</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> 151.1 x 80.5 x 9.4 mm</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Trọng lượng (g)</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> 180</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td class="frs" rowspan="3" style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: rgb(245, 245, 245); outline: 0px; vertical-align: middle; width: 223px; color: rgb(0, 0, 0); font-weight: bold; text-align: center;" valign="top"> Thông số Pin</td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Loại Pin</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> Pin chuẩn Li-Ion</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Thời gian đàm thoại</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> 8 giờ</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Thời gian chờ</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> 400 giờ</td> </tr> </tbody></table><br  />', '', '', '');
INSERT INTO `nv3_shops_rows` (`id`, `listcatid`, `group_id`, `user_id`, `source_id`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `product_code`, `product_number`, `product_price`, `product_discounts`, `money_unit`, `product_unit`, `homeimgfile`, `homeimgthumb`, `homeimgalt`, `otherimage`, `imgposition`, `copyright`, `inhome`, `allowed_comm`, `allowed_rating`, `ratingdetail`, `allowed_send`, `allowed_print`, `allowed_save`, `hitstotal`, `hitscm`, `hitslm`, `showprice`, `vi_title`, `vi_alias`, `vi_description`, `vi_keywords`, `vi_note`, `vi_hometext`, `vi_bodytext`, `vi_address`, `vi_warranty`, `vi_promotional`) VALUES
(26, 3, '', 1, 0, 1373792902, 1373792902, 1, 1373792902, 0, 2, 'S000026', 1, 5700000, 0, 'VND', 1, '2013_07/c291906737791099b5c8f4ee75d4a310.jpg', 'thumb/c291906737791099b5c8f4ee75d4a310.jpg|block/c291906737791099b5c8f4ee75d4a310.jpg', '', '', 0, 0, 1, 1, 1, '0', 1, 1, 1, 1, 0, 0, 1, 'Pantech Sky Vega R3 IM-A850 White', 'Pantech-Sky-Vega-R3-IM-A850-White', '', 'thông tin,cơ bản,kích thước,xử lý', '', 'Thông tin cơ bản: <br  />\r\nKích thước màn hình: 5.3 inch <br  />\r\nLoại màn hình : 16M màu - IPS LCD touchsreen <br  />\r\nBộ vi xử lý (CPU): Qualcomm Snapdragon APQ8064 1.5 Ghz Quad-Core <br  />\r\nHệ điều hành: Android OS 4.0 (Ice Cream Sandwich) <br  />', '<table border="0" cellpadding="0" cellspacing="0" class="product-parameters" style="margin: 0px 0px 10px; padding: 0px; border-style: solid; border-color: rgb(225, 221, 221); list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline; border-collapse: collapse; border-spacing: 0px; width: 730px; color: rgb(51, 51, 51); font-family: Arial, Geneva, sans-serif; line-height: 14px;"> <tbody style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td class="frs" rowspan="11" style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: rgb(245, 245, 245); outline: 0px; vertical-align: middle; width: 222px; color: rgb(0, 0, 0); font-weight: bold; text-align: center;" valign="top"> Chức năng cơ bản</td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Máy ảnh chính</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> 13 MP</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Máy ảnh phụ</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> 2.0 MP (1600x1200 pixels)</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Chế độ quay phim</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> FullHD 1080p@30fps</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Video Call</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> Không hỗ trợ</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Xem TV</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> Có</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Nghe nhạc</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> Có</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Ghi âm</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> Có</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">FM-Radio</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> Có</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Email</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> SMTP/IMAP4/POP3/Push Mail</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Ứng dụng văn phòng</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> Có</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Số SIM</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> 1 SIM</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td class="frs" rowspan="3" style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: rgb(245, 245, 245); outline: 0px; vertical-align: middle; width: 222px; color: rgb(0, 0, 0); font-weight: bold; text-align: center;" valign="top"> Màn hình</td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Loại màn hình</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> 16M màu - IPS LCD touchsreen</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Độ phân giải màn hình</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> 720 x 1280 pixels</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Kích thước màn hình</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> 5.3 inch</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td class="frs" rowspan="6" style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: rgb(245, 245, 245); outline: 0px; vertical-align: middle; width: 222px; color: rgb(0, 0, 0); font-weight: bold; text-align: center;" valign="top"> Cấu hình nâng cao</td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Bộ vi xử lý (CPU)</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> Qualcomm Snapdragon APQ8064 1.5 Ghz Quad-Core</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Bộ xử lý đồ họa (GPU)</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> -</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Bộ nhớ trong</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> 16 GB</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">RAM</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> 2 GB</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Hỗ trợ thẻ nhớ</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> Micro SD<br style="margin: 0px; padding: 0px; border: 0px none; list-style: none;" /> Transflash</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Hệ điều hành</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> Android OS 4.0 (Ice Cream Sandwich)</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td class="frs" rowspan="4" style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: rgb(245, 245, 245); outline: 0px; vertical-align: middle; width: 222px; color: rgb(0, 0, 0); font-weight: bold; text-align: center;" valign="top"> Kết nối dữ liệu cơ bản</td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Mạng 3G - 4G</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> LTE, HSPA+</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Wifi</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> Wi-Fi 802.11 a/b/g/n, DLNA, Wi-Fi Direct, dual-band, Wi-Fi hotspot</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Bluetooth</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> Bluetooth V4.0 with A2DP.</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">GPS</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> A - GPS</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td class="frs" rowspan="2" style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: rgb(245, 245, 245); outline: 0px; vertical-align: middle; width: 222px; color: rgb(0, 0, 0); font-weight: bold; text-align: center;" valign="top"> Kết nối - tính năng khác</td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Tính năng - kết nối khác</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> Jack tai nghe 3.5mm<br style="margin: 0px; padding: 0px; border: 0px none; list-style: none;" /> Mini HDMI<br style="margin: 0px; padding: 0px; border: 0px none; list-style: none;" /> NFC</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Tính năng đặc biệt</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> &nbsp;</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td class="frs" rowspan="4" style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: rgb(245, 245, 245); outline: 0px; vertical-align: middle; width: 222px; color: rgb(0, 0, 0); font-weight: bold; text-align: center;" valign="top"> Thông số vật lý</td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Loại điện thoại</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> Cảm ứng</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Màu sắc</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> &nbsp;</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Kích thước</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> 144.7 x 74.3 x 10 mm</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Trọng lượng (g)</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> 169g</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td class="frs" rowspan="3" style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: rgb(245, 245, 245); outline: 0px; vertical-align: middle; width: 222px; color: rgb(0, 0, 0); font-weight: bold; text-align: center;" valign="top"> Thông số Pin</td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Loại Pin</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> Li-Ion 2600mAh</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Thời gian đàm thoại</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> 14.5 giờ</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Thời gian chờ</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> --</td> </tr> </tbody></table><br  />', '', '', ''),
(27, 3, '', 1, 0, 1373793098, 1373793098, 1, 1373793098, 0, 2, 'S000027', 1, 4275000, 0, 'VND', 1, '2013_07/856930d8868af8d0f6f7a2dd08392b64.jpg', 'thumb/856930d8868af8d0f6f7a2dd08392b64.jpg|block/856930d8868af8d0f6f7a2dd08392b64.jpg', '', '', 0, 0, 1, 1, 1, '0', 1, 1, 1, 0, 0, 0, 1, 'Samsung GALAXY S II I9100 &#40;Black 32GB&#41;', 'Samsung-GALAXY-S-II-I9100-Black-32GB', '', 'máy ảnh,tự động,nhận diện,khuôn mặt,nụ cười,quay phim,xử lý,hỗ trợ,xã hội,la bàn,định vị,toàn cầu,tốc độ,loại bỏ', '', 'Hệ điều hành Androi 2.3\r\nMàn hình Super AMOLED Plus 16 triệu màu 4.5 inches\r\nMáy ảnh 8.0 MP tự động lấy nét, đèn led flash\r\nNhận diện khuôn mặt và nụ cười, chạm lấy nét, chống rung\r\nQuay phim chuẩn HD 1080p\r\nVi xử lý Dual-core 1.5GHz, Ram 1GB, bộ nhớ 16GB\r\nHỗ trợ mạng xã hội, la bàn số, Adobe Flash 10.1\r\nĐịnh vị toàn cầu với A-GPS\r\nWord, Excel, PowerPoint, PDF\r\nGoogle Search, Maps, Gmail, YouTube, Calendar, Google Talk\r\nKết nối 3G, Wife, EDGE, GPRS, Bluetooth tốc độ cao\r\nLoại bỏ tiếng ồn với micro chuyên dụng', '<div> Hệ điều hành Androi 2.3</div><div> Màn hình Super AMOLED Plus 16 triệu màu 4.5 inches</div><div> Máy ảnh 8.0 MP tự động lấy nét, đèn led flash</div><div> Nhận diện khuôn mặt và nụ cười, chạm lấy nét, chống rung</div><div> Quay phim chuẩn HD 1080p</div><div> Vi xử lý Dual-core 1.5GHz, Ram 1GB, bộ nhớ 16GB</div><div> Hỗ trợ mạng xã hội, la bàn số, Adobe Flash 10.1</div><div> Định vị toàn cầu với A-GPS</div><div> Word, Excel, PowerPoint, PDF</div><div> Google Search, Maps, Gmail, YouTube, Calendar, Google Talk</div><div> Kết nối 3G, Wife, EDGE, GPRS, Bluetooth tốc độ cao</div><div> Loại bỏ tiếng ồn với micro chuyên dụng</div>', '', '', ''),
(28, 3, '', 1, 0, 1373793229, 1373793229, 1, 1373793229, 0, 2, 'S000028', 1, 380000, 0, 'VND', 1, '2013_07/6acfaf42066b068e3165695c4c7ccbbc.jpg', 'thumb/6acfaf42066b068e3165695c4c7ccbbc.jpg|block/6acfaf42066b068e3165695c4c7ccbbc.jpg', '', '', 0, 0, 1, 1, 1, '0', 1, 1, 1, 1, 0, 0, 1, 'Nokia Lumia 620 Yellow', 'Nokia-Lumia-620-Yellow', '', 'thông tin,cơ bản,kích thước,xử lý,máy ảnh', '', '<b>Thông tin cơ bản:</b> <br  />\r\nKích thước màn hình: 3.8 inch <br  />\r\nLoại màn hình : 16M màu - TFT capacitive touchscreen <br  />\r\nBộ vi xử lý (CPU): Qualcomm Snapdragon S4 Dual-core 1 GHz Krait <br  />\r\nHệ điều hành: MIcrosoft Windows Phone 8 <br  />\r\nMáy ảnh chính: 5.0 MP (2592 x 1944 pixels)', '<span style="font-size: 12px;">Thông tin cơ bản:</span><div> Kích thước màn hình: 3.8 inch</div><div> Loại màn hình : 16M màu - TFT capacitive touchscreen</div><div> Bộ vi xử lý (CPU): Qualcomm Snapdragon S4 Dual-core 1 GHz Krait</div><div> Hệ điều hành: MIcrosoft Windows Phone 8</div><div> Máy ảnh chính: 5.0 MP (2592 x 1944 pixels)</div>', '', '', ''),
(29, 3, '', 1, 0, 1373793374, 1373793416, 1, 1373793374, 0, 2, 'S000029', 1, 3469000, 0, 'VND', 1, '2013_07/b52c696e74a4f959aff62acd862c5c3d.jpg', 'thumb/b52c696e74a4f959aff62acd862c5c3d.jpg|block/b52c696e74a4f959aff62acd862c5c3d.jpg', '', '', 0, 0, 1, 1, 1, '0', 1, 1, 1, 2, 0, 0, 1, 'Samsung Galaxy Ace Duos S6802 &#40;White&#41;', 'Samsung-Galaxy-Ace-Duos-S6802-White', '', 'kích thước,xử lý', '', 'Kích thước màn hình: 3.5 inchLoại màn hình : 16M màu - TFT capacitive touchscreenBộ vi xử lý (CPU): 800MHz processorHệ điều hành: Android OS 2.3 (Gingerbread)Máy ảnh', 'Kích thước màn hình: 3.5 inchLoại màn hình : 16M màu - TFT capacitive touchscreenBộ vi xử lý (CPU): 800MHz processorHệ điều hành: Android OS 2.3 (Gingerbread)Máy ảnh', '', '', ''),
(30, 3, '', 1, 0, 1373793535, 1373793535, 1, 1373793535, 0, 2, 'S000030', 1, 5800000, 0, 'VND', 1, '2013_07/09948cc36d281b8cbad27a1577a26d90.jpg', 'thumb/09948cc36d281b8cbad27a1577a26d90.jpg|block/09948cc36d281b8cbad27a1577a26d90.jpg', '', '', 0, 0, 1, 1, 1, '0', 1, 1, 1, 0, 0, 0, 1, 'Nokia Lumia 720 White', 'Nokia-Lumia-720-White', '', 'thông tin,cơ bản,kích thước', '', '<b>Thông tin cơ bản:</b><br  />\r\nKích thước màn hình: 4.3 inch<br  />\r\nLoại màn hình : 16M màu - IPS TFT touchsreen<br  />\r\nHệ điều hành: MIcrosoft Windows Phone 8', '<table border="0" cellpadding="0" cellspacing="0" class="product-parameters" style="margin: 0px 0px 10px; padding: 0px; border-style: solid; border-color: rgb(225, 221, 221); list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline; border-collapse: collapse; border-spacing: 0px; width: 730px; color: rgb(51, 51, 51); font-family: Arial, Geneva, sans-serif; line-height: 14px;"> <tbody style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Máy ảnh chính</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> 6.7 MP</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Máy ảnh phụ</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> 1.3 MP (1280 x 1024 pixels)</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Chế độ quay phim</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> HD 720p@30fps</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Video Call</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> Có</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Xem TV</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> Có</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Nghe nhạc</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> Có</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Ghi âm</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> Có</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">FM-Radio</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> Có</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Email</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> SMTP/IMAP4/POP3/Push Mail</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Ứng dụng văn phòng</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> Có</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Số SIM</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> 1 SIM</td> </tr> </tbody></table><br  />', '', '', '');
INSERT INTO `nv3_shops_rows` (`id`, `listcatid`, `group_id`, `user_id`, `source_id`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `product_code`, `product_number`, `product_price`, `product_discounts`, `money_unit`, `product_unit`, `homeimgfile`, `homeimgthumb`, `homeimgalt`, `otherimage`, `imgposition`, `copyright`, `inhome`, `allowed_comm`, `allowed_rating`, `ratingdetail`, `allowed_send`, `allowed_print`, `allowed_save`, `hitstotal`, `hitscm`, `hitslm`, `showprice`, `vi_title`, `vi_alias`, `vi_description`, `vi_keywords`, `vi_note`, `vi_hometext`, `vi_bodytext`, `vi_address`, `vi_warranty`, `vi_promotional`) VALUES
(31, 3, '', 1, 0, 1373793675, 1373793675, 1, 1373793675, 0, 2, 'S000031', 1, 320000, 0, 'VND', 1, '2013_07/8b85a7fdd40e8444815c037feb972469.jpg', 'thumb/8b85a7fdd40e8444815c037feb972469.jpg|block/8b85a7fdd40e8444815c037feb972469.jpg', '', '', 0, 0, 1, 1, 1, '0', 1, 1, 1, 1, 0, 0, 1, 'Nokia Lumia 520 black', 'Nokia-Lumia-520-black', '', 'thông tin,cơ bản,máy ảnh', '', '<b>Thông tin cơ bản:</b><br  />\r\nLoại màn hình : 16M màu - IPS LCD touchsreen<br  />\r\nHệ điều hành: MIcrosoft Windows Phone 8<br  />\r\nMáy ảnh chính: 5.0 MP (2592 x 1944 pixels)<br  />', '<table border="0" cellpadding="0" cellspacing="0" class="product-parameters" style="margin: 0px 0px 10px; padding: 0px; border-style: solid; border-color: rgb(225, 221, 221); list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline; border-collapse: collapse; border-spacing: 0px; width: 730px; color: rgb(51, 51, 51); font-family: Arial, Geneva, sans-serif; line-height: 14px;"> <tbody style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Máy ảnh chính</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> 5.0 MP (2592 x 1944 pixels)</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Máy ảnh phụ</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> Không có</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Chế độ quay phim</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> HD 720p@30fps</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Video Call</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> Không hỗ trợ</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Xem TV</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> Có</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Nghe nhạc</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> Có</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Ghi âm</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> Có</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">FM-Radio</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> Có</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Email</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> SMTP/IMAP4/POP3/Push Mail</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Ứng dụng văn phòng</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> Có</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Số SIM</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> 1 SIM - Micro Sim</td> </tr> </tbody></table><br  />', '', '', ''),
(32, 3, '', 1, 0, 1373793959, 1373793959, 1, 1373793959, 0, 2, 'S000032', 1, 9500000, 0, 'VND', 1, '2013_07/a28e92bef2076fcb76507b329873b360.jpg', 'thumb/a28e92bef2076fcb76507b329873b360.jpg|block/a28e92bef2076fcb76507b329873b360.jpg', '', '', 0, 0, 1, 1, 1, '0', 1, 1, 1, 0, 0, 0, 1, 'IPHONE 4 16G &#40;Bản quốc tế&#41; GOLD', 'IPHONE-4-16G-Ban-quoc-te-GOLD', '', 'phục sinh,thứ tư,cải tiến,nhận xét,thiết bị,công bố,di động,thiết kế,quá trình,tuy nhiên,khắc phục,nhược điểm', '', '&quot;Lần phục sinh thứ tư của iPhone chỉ là một cuộc cải tiến thêm&quot;, Boing Boing nhận xét, đây không phải là một thiết bị mới như lần Apple công bố iPad. Apple đã nâng cấp chiếc di động của mình từ thiết kế đến hệ điều hành iOS 4, những điều này giống với quá trình làm mới qua ba model trước, &quot;tuy nhiên, nó không khắc phục được nhược điểm, chất lượng cuộc gọi quá kém qua mạng AT&T&quot;, Boing Boing nhấn mạnh.', '<table border="0" cellpadding="0" cellspacing="0" class="product-parameters" style="margin: 0px 0px 10px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline; border-collapse: collapse; border-spacing: 0px; width: 730px; color: rgb(51, 51, 51); font-family: Arial, Geneva, sans-serif; line-height: 14px;"> <tbody style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Máy ảnh chính</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> 5.0 MP (2592 x 1944 pixels)</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Máy ảnh phụ</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> VGA (480 x 640 pixcels)</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Chế độ quay phim</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> FullHD 1080@24fps</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Video Call</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> Có</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Xem TV</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> không</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Nghe nhạc</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> không</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Ghi âm</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> không</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">FM-Radio</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> không</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Email</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> SMTP/IMAP4/POP3/Push Mail</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Ứng dụng văn phòng</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> không</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Số SIM</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> 1 SIM</td> </tr> </tbody></table><br  />', '', '', ''),
(33, 3, '', 1, 0, 1373794059, 1373794059, 1, 1373794059, 0, 2, 'S000033', 1, 11000000, 0, 'VND', 1, '2013_07/iphone5-ban-lock-gia-re-1.jpg', 'thumb/iphone5-ban-lock-gia-re-1.jpg|block/iphone5-ban-lock-gia-re-1.jpg', '', '', 0, 0, 1, 1, 1, '0', 1, 1, 1, 0, 0, 0, 1, 'Iphone 5 Bản Lock Xách Tay Từ Mỹ', 'Iphone-5-Ban-Lock-Xach-Tay-Tu-My', '', 'hiện tại,leng keng,bảo đảm,sử dụng,đầy đủ,ổn định,bao gồm', '', 'Hiện tại HTC mới nhập về 12 con iphone 5 bản lock 16Gb hàng xách tay từ Mỹ của T-Mobile cần đẩy hàng đi gấp nên để giá vô cùng mềm cho mọi người ^.^\r\nHàng mới leng keng 99.99% không trầy xước, bảo đảm máy zin 100% .. Sử dụng sim ghép, hàng fullbox đầy đủ phụ kiện, chưa qua sử dụng.\r\nMọi chức năng đều sử dụng ổn định : wifi, 3G bắt sóng ầm ầm...\r\nBao gồm 9 máy đã active vào tháng 4/2013 và 3 máy chưa active ( 6 con trắng và 6 con đen )', 'Hiện tại HTC mới nhập về 12 con iphone 5 bản lock 16Gb hàng xách tay từ Mỹ của T-Mobile cần đẩy hàng đi gấp nên để giá vô cùng mềm cho mọi người ^.^<div> Hàng mới leng keng 99.99% không trầy xước, bảo đảm máy zin 100% .. Sử dụng sim ghép, hàng fullbox đầy đủ phụ kiện, chưa qua sử dụng.</div><div> Mọi chức năng đều sử dụng ổn định : wifi, 3G bắt sóng ầm ầm...</div><div> Bao gồm 9 máy đã active vào tháng 4/2013 và 3 máy chưa active ( 6 con trắng và 6 con đen )</div>', '', '', ''),
(34, 3, '', 1, 0, 1373794159, 1373794159, 1, 1373794159, 0, 2, 'S000034', 1, 5700000, 0, 'VND', 1, '2013_07/dien-thoai-sky-a840-white-500x500.jpg', 'thumb/dien-thoai-sky-a840-white-500x500.jpg|block/dien-thoai-sky-a840-white-500x500.jpg', '', '', 0, 0, 1, 1, 1, '0', 1, 1, 1, 0, 0, 0, 1, 'Điện thoại Sky A840SP Chính Hãng Giá Tốt', 'Dien-thoai-Sky-A840SP-Chinh-Hang-Gia-Tot', '', 'thế hệ,sản xuất,áp dụng,công nghệ', '', 'Một trong những thế hệ đầu tiên được nhà sản xuất VEGA áp dụng công nghệ màn hình “Zero Bezel”, giúp điện thoại Sky A840S tạo sự độc đáo cho riêng mình khi đứng cạnh những đối thủ trong cùng phân khúc trên thị trường.', 'Một trong những thế hệ đầu tiên được nhà sản xuất VEGA áp dụng công nghệ màn hình “Zero Bezel”, giúp điện thoại Sky A840S tạo sự độc đáo cho riêng mình khi đứng cạnh những đối thủ trong cùng phân khúc trên thị trường.<div> &nbsp;</div><div> Điện thoại Sky A840S hay còn gọi Sky Pantech Vega S5 Special sở hữu cấu hình ấn tượng, đi cùng một thiết kế tinh tế không thua kém bất kỳ một chiếc điện thoại cao cấp nào hiện nay.</div><div> &nbsp;</div><div> Phiên bản đặc biệt Sky A840 SP được VEGA sản xuất với số lượng giới hạn, Sky A840 SP và Sky A840S hoàn toàn giống nhau về cấu hình phần cứng cũng như phần mềm. Có chăng sự khác biệt ở đây là sự thay đổi về đường viền 1 tí, viền Sky A840 SP được làm cùng chất liệu với toàn bộ thân máy, còn Sky A840S thì khung viền được mạ crom.</div>', '', '', ''),
(35, 3, '', 1, 0, 1373794294, 1373794294, 1, 1373794294, 0, 2, 'S000035', 1, 7500000, 0, 'VND', 1, '2013_07/dien-thoai-sky-a850k-black-500x500.jpg', 'thumb/dien-thoai-sky-a850k-black-500x500.jpg|block/dien-thoai-sky-a850k-black-500x500.jpg', '', '', 0, 0, 1, 1, 1, '0', 1, 1, 1, 0, 0, 0, 1, 'Điện thoại Sky A850K Giá Tốt Cấu Hình Khủng', 'Dien-thoai-Sky-A850K-Gia-Tot-Cau-Hinh-Khung', '', 'tiếp nối,thành công,cải tiến,mạnh mẽ,công nghệ,hiện đại,thời điểm,ra mắt,ra đời,sản phẩm,không thể', '', 'Tiếp nối thành công của những người đàn em Sky A840 và Sky A830... PanTech đã nâng cấp và cải tiến mạnh mẽ với những công nghệ hiện đại nhất vào thời điểm ra mắt để cho ra đời chiếc điện thoại Sky A850k - một sản phẩm không thể bỏ qua dành cho giới công nghệ yêu thích những sản phẩm mới.', 'Tiếp nối thành công của những người đàn em Sky A840 và Sky A830... PanTech đã nâng cấp và cải tiến mạnh mẽ với những công nghệ hiện đại nhất vào thời điểm ra mắt để cho ra đời chiếc điện thoại Sky A850k - một sản phẩm không thể bỏ qua dành cho giới công nghệ yêu thích những sản phẩm mới.<div> &nbsp;</div><div> Là đối thủ nặng ký nhất của SamSung Galaxy S2, với cấu hình mạnh mẽ nhưng giá cả phải chăng hơn rất nhiều, điện thoại Sky A850k đã chiếm được rất nhiều cảm tình khi vừa về đến Việt Nam</div>', '', '', ''),
(36, 3, '', 1, 0, 1373794414, 1373794414, 1, 1373794414, 0, 2, 'S000036', 1, 11600000, 0, 'VND', 1, '2013_07/sky-iron-a870-white-1-500x500.jpg', 'thumb/sky-iron-a870-white-1-500x500.jpg|block/sky-iron-a870-white-1-500x500.jpg', '', '', 0, 0, 1, 1, 1, '0', 1, 1, 1, 0, 0, 0, 1, 'Sky Iron A870L Máy Khủng Pin Trâu Giá Tốt', 'Sky-Iron-A870L-May-Khung-Pin-Trau-Gia-Tot', '', 'thiết kế,đẹp mắt,sở hữu,hiện tại,trái tim,sức mạnh,hoàn toàn', '', 'Môt trong những SmartPhone bom tấn của năm 2013 với thiết kế cực kỳ đẹp mắt và sở hữu một cấu hình “khủng” nhất hiện tại, Vega Sky Iron A870 ẩn chứa trong mình một trái tim đầy sức mạnh cùng một thiết kế hoàn toàn mới so với những đời máy SKY Vega trước đây.', 'Môt trong những SmartPhone bom tấn của năm 2013 với thiết kế cực kỳ đẹp mắt và sở hữu một cấu hình “khủng” nhất hiện tại, Vega Sky Iron A870 ẩn chứa trong mình một trái tim đầy sức mạnh cùng một thiết kế hoàn toàn mới so với những đời máy SKY Vega trước đây.<div> &nbsp;</div><div> Không đi theo xu hướng ngày càng làm &quot;to&quot; như những chiếc Smarphone khác, mà hướng tới một chuẩn mực về kích thước với màn hình 5inch cùng độ phân giải HD, Sky Iron A870 thu hút mọi ánh nhìn về phía nó ngay từ cái nhìn đầu tiên.</div>', '', '', ''),
(37, 4, '', 1, 0, 1373794648, 1373794648, 1, 1373794648, 0, 2, 'S000037', 1, 94000, 0, 'VND', 1, '2013_07/64a8678d2c1948dc8b71104148bc98ef.jpg', 'thumb/64a8678d2c1948dc8b71104148bc98ef.jpg|block/64a8678d2c1948dc8b71104148bc98ef.jpg', '', '', 0, 0, 1, 1, 1, '0', 1, 1, 1, 1, 0, 0, 1, 'Rạng rỡ hơn ánh mặt trời', 'Rang-ro-hon-anh-mat-troi', '', 'rạng rỡ,mặt trời,xoay quanh,câu chuyện,bá tước,quyến rũ,mục sư,tính tình,sôi nổi,quyết đoán,tình cảm,mãnh liệt', '', 'Rạng rỡ hơn ánh mặt trời - xoay quanh câu chuyện về C-harles Wycombe, chàng bá tước xứ Billingon quyến rũ và bất trị và Eleanor Lyndon, cô con gái của một mục sư tính tình sôi nổi và quyết đoán. Định mệnh mang họ đến với nhau, đến với những tình cảm mãnh liệt và sự rạng ngời của tình yêu...', '<span style="background-color: transparent; color: rgb(51, 51, 51); font-family: Arial, Geneva, sans-serif; line-height: 14px; margin: 0px; padding: 0px; border: none; list-style: none; outline: 0px; font-size: 16px; vertical-align: baseline;"><span style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline; font-family: &#039;times new roman&#039;, times, serif;"><strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Rạng rỡ hơn ánh mặt trời -&nbsp;</strong>xoay quanh câu chuyện về C-harles Wycombe, chàng bá tước xứ Billingon quyến rũ và bất trị và Eleanor Lyndon, cô con gái của một mục sư tính tình sôi nổi và quyết đoán.</span></span><span style="background-color: transparent; color: rgb(51, 51, 51); font-family: Arial, Geneva, sans-serif; line-height: 14px; margin: 0px; padding: 0px; border: none; list-style: none; outline: 0px; font-size: 16px; vertical-align: baseline;"><span style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline; font-family: &#039;times new roman&#039;, times, serif;">&nbsp;Định mệnh mang họ đến với nhau, đến với những tình cảm mãnh liệt và sự rạng ngời của tình yêu...</span></span><p style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline; color: rgb(51, 51, 51); font-family: Arial, Geneva, sans-serif; line-height: 14px;"> <span style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; font-size: 16px; vertical-align: baseline; background-position: initial initial; background-repeat: initial initial;"><span style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline; font-family: &#039;times new roman&#039;, times, serif;"><strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Ngọt ngào hơn một giấc mơ.</strong></span></span></p><p style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline; color: rgb(51, 51, 51); font-family: Arial, Geneva, sans-serif; line-height: 14px;"> <span style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; font-size: 16px; vertical-align: baseline; background-position: initial initial; background-repeat: initial initial;"><span style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline; font-family: &#039;times new roman&#039;, times, serif;"><strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">C-harles Wycombe</strong>, Bá tước xứ Billington quyến rũ và bất trị, cần một cô dâu trước sinh nhật lần thứ ba mươi sắp đến nếu anh muốn giữ lại tài sản thừa kế.&nbsp;<strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Eleanor Lyndon</strong>, con gái của một mục sư tính tình sôi nổi và quyết đoán, cần một ngôi nhà mới vì người vợ sắp cưới kinh khủng của cha cô đang làm cho ngôi nhà cũ trở nên không thể chịu đựng nổi. Định mệnh đã mang&nbsp;<strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">C-harles</strong>&nbsp;và&nbsp;<strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Ellie&nbsp;</strong>lại với nhau, mặc dù cuộc hôn nhân của họ dường như đã khởi đầu ở điểm nào đó còn ấm áp hơn cả thiên đường.</span></span></p><p style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline; color: rgb(51, 51, 51); font-family: Arial, Geneva, sans-serif; line-height: 14px;"> <span style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; font-size: 16px; vertical-align: baseline; background-position: initial initial; background-repeat: initial initial;"><span style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline; font-family: &#039;times new roman&#039;, times, serif;"><strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Rạng rỡ hơn ánh mặt trời.</strong></span></span></p><p style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline; color: rgb(51, 51, 51); font-family: Arial, Geneva, sans-serif; line-height: 14px;"> <span style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; font-size: 16px; vertical-align: baseline; background-position: initial initial; background-repeat: initial initial;"><span style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline; font-family: &#039;times new roman&#039;, times, serif;">Cuộc gặp gỡ đầu tiên của họ chẳng phải là một xuất phát điểm thuận lợi, khi mà&nbsp;<strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">C-harles</strong>&nbsp;say ngất ngưởng đã ngã xuống từ một cái cây và rơi vào chân&nbsp;<strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Ellie</strong>. Trong khi họ đồng ý kết hôn vì những lợi ích chung,&nbsp;<strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">C-harles</strong>&nbsp;không chuẩn bị tinh thần để một người phụ nữ kiểm soát cuộc sống trong gia đình. Và tất nhiên&nbsp;<strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Ellie&nbsp;</strong>mạnh mẽ cũng không chịu để một tên phóng đãng điều khiển cuộc đời mình. Nhưng vị bá tước trác táng có thể trở nên rất quyến rũ và thậm chí ngọt ngào, khi anh dồn tâm trí làm thế. Và tất nhiên anh không thể phớt lờ sức cuốn hút của người vợ ngây thơ nhưng vô cùng ngang bướng của mình. Ngay cả khi những âm mưu điên rồ và những hiểm họa thực sự đe dọa mối liên kết mong manh đó, họ vẫn phải tuân theo sự dẫn lối của đam mê: đến với những tình cảm mãnh liệt và sự rạng ngời của tình yêu.</span></span></p>', '', '', ''),
(38, 4, '', 1, 0, 1373794866, 1373794866, 1, 1373794866, 0, 2, 'S000038', 1, 74000, 0, 'VND', 1, '2013_07/1372905130_20130703084420bia-yeu-em-khong-can-qua-cuong-si.jpg', 'thumb/1372905130_20130703084420bia-yeu-em-khong-can-qua-cuong-si.jpg|block/1372905130_20130703084420bia-yeu-em-khong-can-qua-cuong-si.jpg', '', '', 0, 0, 1, 1, 1, '0', 1, 1, 1, 0, 0, 0, 1, 'Yêu Em Không Cần Quá Cuồng Si', 'Yeu-Em-Khong-Can-Qua-Cuong-Si', '', 'giới thiệu,câu chuyện,tình yêu,tài giỏi,phong lưu,hoa mỹ,thông minh,hôm nay,xinh đẹp', '', 'Giới thiệu chung\r\nMột câu chuyện tình yêu rất khác những câu chuyện mà bạn đã từng đọc.\r\nHắn là công tử nhà giàu, đẹp trai, tài giỏi, phong lưu;\r\nNàng là một bình hoa mỹ lệ tuy thông minh nhưng chẳng hiển lộ ra ngoài;\r\nHôm nay gió giục mây vần, bình hoa xinh đẹp được công tử phong lưu “khâm điểm” …', 'Giới thiệu chung<div> Một câu chuyện tình yêu rất khác những câu chuyện mà bạn đã từng đọc.</div><div> Hắn là công tử nhà giàu, đẹp trai, tài giỏi, phong lưu;</div><div> Nàng là một bình hoa mỹ lệ tuy thông minh nhưng chẳng hiển lộ ra ngoài;</div><div> Hôm nay gió giục mây vần, bình hoa xinh đẹp được công tử phong lưu “khâm điểm” …</div><div> Chim sẻ hóa thành phượng hoàng, không biết làm tức chết bao nhiêu bộ tộc bình hoa!</div><div> Thách thức một công tử phong lưu lại có đầu óc không phải là chuyện dễ dàng, rất đáng kỳ vọng. Có điều, nàng phải cố gắng diễn tốt vai cô gái hám của, trò chơi mới thú vị! Ai dè, lúc nàng đang có hứng thú chơi đùa thì… đại thiếu gia phong lưu này lại không tuân thủ quy tắc trò chơi. Đã nói trước chỉ là chơi đùa, hắn lại chập mạch muốn… kết hôn?</div>', '', '', ''),
(39, 4, '', 1, 0, 1373794978, 1373794978, 1, 1373794978, 0, 2, 'S000039', 1, 80000, 0, 'VND', 1, '2013_07/1361249998_sach-to-1348823874_480x0.jpg', 'thumb/1361249998_sach-to-1348823874_480x0.jpg|block/1361249998_sach-to-1348823874_480x0.jpg', '', '', 0, 0, 1, 1, 1, '0', 1, 1, 1, 0, 0, 0, 1, 'Sống Mạnh Mẽ', 'Song-Manh-Me', '', 'mạnh mẽ,sưu tập,câu chuyện,cảm hứng,thách thức,to lớn,học tập,gia đình', '', 'Sống Mạnh Mẽ là một bộ sưu tập những câu chuyện có thật, sống động và đầy cảm hứng do chính những người trong cuộc kể lại. Đó là những con người, những mảnh đời khác nhau đã vươn lên mạnh mẽ khi phải đối mặt với những thách thức to lớn trong công việc, học tập, gia đình, cuộc sống và với cả chính bản thân họ.', '<strong style="margin: 0px; padding: 0px; border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; color: rgb(51, 51, 51); text-align: justify;">Giới thiệu chung<br  /><br  />Sống Mạnh Mẽ</strong><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">&nbsp;là một bộ sưu tập những câu chuyện có thật, sống động và đầy cảm hứng do chính những người trong cuộc kể lại. Đó là những con người, những mảnh đời khác nhau đã vươn lên mạnh mẽ khi phải đối mặt với những thách thức to lớn trong công việc, học tập, gia đình, cuộc sống và với cả chính bản thân họ.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">· Một người vợ phải chịu đựng nỗi đau mất chồng khi đang hạnh phúc với một cuộc sống gia đình ấm êm, rồi từ trong tăm tối của cuộc đời, cô đã vươn lên để sống một cuộc sống ý nghĩa trọn vẹn với các con, với người thân yêu của cô.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">· Một cặp vợ chồng đã hàn gắn lại tình cảm ở tuổi xế chiều, rồi thổi bùng lên ngọn lửa tình yêu tưởng như đã tắt ngúm trong hơn 30 năm chung sống, minh chứng cho việc không bao giờ là quá trễ cho một sự thay đổi.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">· Một người chồng bất cẩn cướp cò trong lúc lau súng, đã bắn chết người vợ thân yêu và đứa con chưa kịp chào đời của mình chỉ trong một đêm. Hơn 3 năm sống trong đau đớn và tuyệt vọng, cuối cùng anh đã thức tỉnh, tha thứ cho bản thân và cống hiến một cuộc sống ý nghĩa cho cộng đồng.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">… và rất nhiều câu chuyện khác nữa đang đợi bạn khám phá.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">Những câu chuyện đời thật đó đã minh chứng cho sức sống mãnh liệt của con người, “chỉ cần có niềm tin và ý chí, không có gì là không thể!”.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">Cho dù bạn là ai, làm gì và ở đâu, bạn cũng sẽ thấy cuộc đời của mình thấp thoáng qua từng câu chuyện. Thật vậy, quyển sách giống như viết ra để dành cho bạn, giúp bạn sống tốt hơn, mạnh mẽ hơn. Từ đó, giúp bạn nâng cao chất lượng cuộc sống để đạt được hạnh phúc và thành công.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">· Chính những câu chuyện đời thật này sẽ chỉ cho bạn thấy:</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">· Cách thức đổi mới, tìm kiếm sự cân bằng và thanh bình trong cuộc sống;</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">· Cách thức nuôi dạy con nhỏ;</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">· Cách nâng cao chất lượng cuộc sống gia đình;</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">· Cách giúp đỡ người thân và bạn bè có một cuộc sống tốt đẹp hơn;</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">· Cách tăng năng suất làm việc cá nhân và tập thể tại công sở…</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">Bạn sẽ đọc đi đọc lại quyển sách thú vị này với sự ngạc nhiên và khâm phục dành cho những nhân vật “sống” trong những câu chuyện. Cho dù bạn đang ở giai đoạn nào trong cuộc sống, một khi bạn áp dụng những bài học được chia sẻ trong quyển sách, bạn sẽ gặt hái được những thành quả mong muốn.</span>', '', '', ''),
(40, 4, '', 1, 0, 1373795052, 1373795052, 1, 1373795052, 0, 2, 'S000040', 1, 42000, 0, 'VND', 1, '2013_07/1356509763_tu-gian-du-den-binh-an-kem-cd-mike-george-32297.jpg', 'thumb/1356509763_tu-gian-du-den-binh-an-kem-cd-mike-george-32297.jpg|block/1356509763_tu-gian-du-den-binh-an-kem-cd-mike-george-32297.jpg', '', '', 0, 0, 1, 1, 1, '0', 1, 1, 1, 0, 0, 0, 1, 'Từ giận dữ đến bình an', 'Tu-gian-du-den-binh-an', '', 'chuyển động,nội tâm,có thể,bình an,thanh thản,tức giận,tình huống,bất ngờ,tuyệt đối,suy nghĩ,thấu đáo,nhận ra,bình tĩnh,phó mặc,cảm xúc,tiếp tục', '', 'Bạn có tìm thấy điểm chung giữa chuyển động một chiếc bánh xe với với nội tâm con người không? Đó chính là chúng ta có thể điều khiển hướng của chúng đến cái đích mà ta muốn: một nơi chốn bình an, thanh thản. Có thật là thế không? Hãy nghĩ đến điều này: Chúng ta tức giận với một tình huống bất ngờ và cho rằng đó tuyệt đối là lỗi của người khác. Nhưng nếu suy nghĩ thấu đáo, bạn sẽ nhận ra chúng ta có hai lựa chọn: bình tĩnh hoặc tức giận. Bạn đã lờ đi lựa chọn thứ nhất và phó mặc cho cảm xúc dẫn chúng ta đi đến đâu thì đến rồi đổ lỗi cho người khác và tiếp tục cảm thấy cay cú.', '<strong style="color: rgb(51, 51, 51); font-family: inherit; font-size: inherit; line-height: inherit; text-align: justify; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit;">Giới thiệu chung</strong><p style="margin: 0px; padding: 0px; border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; color: rgb(51, 51, 51); text-align: justify;"> <br  /> Bạn có tìm thấy điểm chung giữa chuyển động một chiếc bánh xe với với nội tâm con người không? Đó chính là chúng ta có thể điều khiển hướng của chúng đến cái đích mà ta muốn: một nơi chốn bình an, thanh thản. Có thật là thế không? Hãy nghĩ đến điều này: Chúng ta tức giận với một tình huống bất ngờ và cho rằng đó tuyệt đối là lỗi của người khác. Nhưng nếu suy nghĩ thấu đáo, bạn sẽ nhận ra chúng ta có hai lựa chọn: bình tĩnh hoặc tức giận. Bạn đã lờ đi lựa chọn thứ nhất và phó mặc cho cảm xúc dẫn chúng ta đi đến đâu thì đến rồi đổ lỗi cho người khác và tiếp tục cảm thấy cay cú.<br  /> <br  /> Trong một cuộc sống hàng ngày phải nghe tin tức về những con thịnh nộ và sự trả thù, khủng bố, phe phái, tinh thần con người bị xâm lấn bởi những cảm xúc tiêu cực. Cuốn sách Từ giận dữ đến bình an dựa trên quan niệm về tâm linh như là một lời giải đáp cả ý thức và vô thức để hiểu nguyên nhân và con đường giải thoát khỏi sự tức giận, hướng chúng ta đến cuộc sống bình an và vị tha.<br  /> <br  /> <strong style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit;">Thông tin tác giả</strong><br  /> <br  /> Mike George là diễn giả nổi tiếng thế giới, từng giảng dạy tại hơn 30 quốc gia, đồng thời là tác giả của 8 cuốn sách bán chạy được dịch ra gần 30 thứ tiếng, trong đó có cuốn Từ giận dữ đến bình an. Ông hiện sống tại London, phụ trách quản lý biên tập tạp chí Heart &amp; Soul. Trong 20 năm qua, ông đã đi nhiều nơi để dạy về nghệ thuật thiền định, giúp đỡ nhiều người trong lĩnh vực phát triển tinh thần.<br  /> <br  /> <strong style="margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit;">Thông tin thêm</strong><br  /> <br  /> Sách kèm một CD (bao gồm trong giá bìa).&nbsp;</p><div style="margin: 0px; padding: 0px; border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; color: rgb(51, 51, 51); text-align: justify;"> Từ giận dữ đến bình an là cuốn sách đã góp phần đưa tên tuổi của Mike George vào hàng các tác giả được tìm đọc nhiều nhất.</div>', '', '', '');
INSERT INTO `nv3_shops_rows` (`id`, `listcatid`, `group_id`, `user_id`, `source_id`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `product_code`, `product_number`, `product_price`, `product_discounts`, `money_unit`, `product_unit`, `homeimgfile`, `homeimgthumb`, `homeimgalt`, `otherimage`, `imgposition`, `copyright`, `inhome`, `allowed_comm`, `allowed_rating`, `ratingdetail`, `allowed_send`, `allowed_print`, `allowed_save`, `hitstotal`, `hitscm`, `hitslm`, `showprice`, `vi_title`, `vi_alias`, `vi_description`, `vi_keywords`, `vi_note`, `vi_hometext`, `vi_bodytext`, `vi_address`, `vi_warranty`, `vi_promotional`) VALUES
(41, 4, '', 1, 0, 1373805328, 1373805328, 1, 1373805328, 0, 2, 'S000041', 1, 85000, 0, 'VND', 1, '2013_07/1371535976_dong-phuong-my-nhan-3-song-chet-cung-nhau_1_2.jpg', 'thumb/1371535976_dong-phuong-my-nhan-3-song-chet-cung-nhau_1_2.jpg|block/1371535976_dong-phuong-my-nhan-3-song-chet-cung-nhau_1_2.jpg', '', '', 0, 0, 1, 1, 1, '0', 1, 1, 1, 0, 0, 0, 1, 'Ánh trăng không hiểu lòng tôi', 'Anh-trang-khong-hieu-long-toi', '', 'kết hôn,sơ suất,việc làm', '', 'Sau khi kết hôn, Hướng Viễn cùng Diệp Khiên Trạch chèo lái con thuyền Giang Nguyên đến một đỉnh cao mới, song một sơ suất trong công việc làm ăn đã đẩy Giang Nguyên xuống bờ vực thẳm.', '<strong style="margin: 0px; padding: 0px; border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; color: rgb(51, 51, 51); text-align: justify;">Nội dung chính</strong><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">Sau khi kết hôn, Hướng Viễn cùng Diệp Khiên Trạch chèo lái con thuyền Giang Nguyên đến một đỉnh cao mới, song một sơ suất trong công việc làm ăn đã đẩy Giang Nguyên xuống bờ vực thẳm.Trong tình cảnh hiểm nghèo đó, tập đoàn Đỉnh Thịnh do Mạc Kiến Quốc - một người bạn cũ của Diệp Bỉnh Lâm - đã ra tay giúp đỡ, với điều kiện phải gả Diệp Linh cho cậu con trai khờ khạo của ông ta. Để cứu công ty và gia đình, Diệp Linh đã chấp nhận. Nhưng sau đó, do quá tuyệt vọng và bi thương, Diệp Linh đã cắt cổ tay tự vẫn. Từ đó Diệp Khiên Trạch chìm vào nỗi đau thương không bao giờ thoát ra được. Hướng Viễn và anh càng xa cách nhau hơn... Diệp Khiên Trạch đã ngoại tình, người phụ nữ đó là Viên Tú, một cô gái giang hồ và là người yêu đầu tiên của Thẩm Cư An. Hướng Viễn vẫn nuốt nước mắt chấp nhận cho Khiên Trạch qua lại với cô ta.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">Cho đến khi Diệp Khiên Trạch bị bắt cóc do đã tình nguyện thay Viên Tú làm con tin. Hướng Viễn hoàn toàn tuyệt vọng và bắt đầu căm hận Diệp Khiên Trạch. Càng đau lòng hơn, khi kẻ chủ mưu vụ bắt cóc đó là do Đằng Vân - cánh tay phải đắc lực và là một người bạn khác giới thân thiết của cô - trong nỗi đau khổ và thù hận, Hướng Viễn đã hạ quyết tâm: vẫn trả số tiền chuộc cho Đằng Vân để anh ta giúp người tình thoát tội, đồng thời ra lệnh cho anh ta giết chết Diệp Khiên Trạch.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">Sau khi Diệp Khiên Trạch và Đằng Vân cùng mất tích, sự mệt mỏi của cả con tim lẫn thể xác đã khiến Hướng Viễn ngã vào vòng tay Diệp Quân, cậu em trai thầm yêu Hướng Viễn từ thuở thơ ấu. Hướng Viễn cũng biết được một sự thật đau lòng: Đứa con trai trong bụng Viên Tú đã bị cô hủy diệt ấy, không phải là của Diệp Khiên Trạch, mà là của Thẩm Cư An, Diệp Khiên Trạch kỳ thực chỉ ra tay cứu vớt cô, một người phụ nữ mà anh cho là bất hạnh.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">Những tưởng hạnh phúc đã quay lại với cô, không ngờ một trong số những kẻ tham gia vụ bắt cóc Khiên Trạch trước đó đã quay lại uy hiếp cô, nếu không muốn hắn tiết lộ chính Hướng Viễn đã ra lệnh giết Khiên Trạch thì phải trao cho hắn một số tiền lớn. Tình cờ, Diệp Quân cũng biết được sự thật đó và rất đau khổ. Song để bảo vệ Hướng Viễn, Diệp Quân đã giết Đằng Tuấn, người giữ bí mật đó, và cũng là bạn trai của Hướng Dao. Cô em gái Hướng Dao sau đó cũng chết do băng huyết, khi vừa hạ sinh đứa con trai của mình.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">Khi mọi việc ngỡ đã trở lại bình thường, thì Viên Tú - hóa điên do bị Hướng Viễn ra tay giết chết đứa con trong bụng, đã trốn khỏi bệnh viện tâm thần để quay lại trả thù bằng cách đốt nhà họ Diệp. Vì để cứu đứa con trai của Hướng Dao, Diệp Quân đã bất chấp tính mạng lao vào lửa, song đứa trẻ vẫn chết, và Diệp Quân thì chìm vào cơn hôn mê bất tỉnh. Lời tiên đoán khi xưa của ông già giang hồ rằng Hướng Viễn sẽ có được danh lợi vinh quang, song sẽ mất đi toàn bộ người thân thích, đã linh ứng. Liệu Diệp Quân cũng sẽ ra đi mãi mãi, bỏ lại Hướng Viễn hay không?</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">Đón đọc tiếp&nbsp;</span><strong style="margin: 0px; padding: 0px; border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; color: rgb(51, 51, 51); text-align: justify;">Ánh trăng không hiểu lòng tôi (Tập 2)</strong><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">&nbsp;với nhiều tính tiết gây cấn, hấp dẫn, không thể bỏ lỡ.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><strong style="margin: 0px; padding: 0px; border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; color: rgb(51, 51, 51); text-align: justify;">Thông tin tác giả</strong><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">Tân Di Ổ tên thật là Tưởng Xuân Linh sinh năm 1981 ở Quế Lâm. Tân Di Ổ thực ra là tên một bài thơ nổi tiếng của Vương Duy. Do cô cảm thấy rất thích bài thơ này nên đã lấy tên bài thơ làm bút danh của mình. Là một trong những nhà văn mạng trẻ tuổi và thành công nhất trên văn đàn Trung Quốc thời điểm hiện tại, Tân Di Ổ là cái tên không thể bỏ qua với những độc giả yêu thích các tiểu thuyết lãng mạn và nồng nhiệt. Cùng với Tào Đình, Cố Mạn hay Xuân Thụ - những nhà văn nữ nổi tiếng với lối viết đầy táo bạo và nội dung đậm chất hiện đại, Tân Di Ổ cũng nổi lên với những tiểu thuyết rất được các độc giả yêu thích và hâm mộ. Trong vài năm trở lại đây, cô chính là một trong những nhà văn best-seller tại Trung Quốc nói riêng và châu Á nói chung.. Cô nổi tiếng với hàng loạt truyện ăn khách: Anh có thích nước Mỹ không?, Hóa ra anh vẫn ở đây, Bình minh và Hoàng hôn,&nbsp;</span><span style="margin: 0px; padding: 0px; border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; color: rgb(51, 51, 51); text-align: justify;">Ánh trăng không hiểu lòng tôi</span><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">, Anh sẽ đợi em trong hồi ức...</span>', '', '', ''),
(42, 4, '', 1, 0, 1373805400, 1373805400, 1, 1373805400, 0, 2, 'S000042', 1, 55000, 0, 'VND', 1, '2013_07/1359446238_san-chong-jennifer-cruise-21080.jpg', 'thumb/1359446238_san-chong-jennifer-cruise-21080.jpg|block/1359446238_san-chong-jennifer-cruise-21080.jpg', '', '', 0, 0, 1, 1, 1, '0', 1, 1, 1, 0, 0, 0, 1, 'Săn chồng - Jennifer Cruise', 'San-chong-Jennifer-Cruise', '', 'nhân vật,quyến rũ,thành đạt,nổi tiếng,lận đận,tình duyên,nhận ra,kế hoạch,chi tiết,tổ chức,mục tiêu,rõ ràng,tìm kiếm,đàn ông,lý tưởng,phụ nữ', '', 'Nhân vật chính Kate Svenson trong Săn chồng là một nữ doanh nhân rất quyến rũ, thành đạt và nổi tiếng, nhưng lận đận đường tình duyên, cô nhận ra đã đến lúc phải lên một kế hoạch chi tiết, có tổ chức với một mục tiêu rõ ràng: tìm kiếm người đàn ông lý tưởng. Liệu Jake Templeton - một trong những ứng cử viên sáng giá ở Resort The Cabins và Kate Svenson - người phụ nữ được liệt vào hàng top các doanh nhân nổi tiếng có tìm ra sự đồng điệu chung mang tên Tình yêu?', '<span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">Nhân vật chính Kate Svenson trong&nbsp;</span><strong style="margin: 0px; padding: 0px; border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; color: rgb(51, 51, 51); text-align: justify;">Săn chồng</strong><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">&nbsp;là một nữ doanh nhân rất quyến rũ, thành đạt và nổi tiếng, nhưng lận đận đường tình duyên, cô nhận ra đã đến lúc phải lên một kế hoạch chi tiết, có tổ chức với một mục tiêu rõ ràng: tìm kiếm người đàn ông lý tưởng. Liệu Jake Templeton - một trong những ứng cử viên sáng giá ở Resort The Cabins và Kate Svenson - người phụ nữ được liệt vào hàng top các doanh nhân nổi tiếng có tìm ra sự đồng điệu chung mang tên Tình yêu?</span>', '', '', ''),
(43, 4, '', 1, 0, 1373805480, 1373805480, 1, 1373805480, 0, 2, 'S000043', 1, 65000, 0, 'VND', 1, '2013_07/1365654565_thuong-vu-hon-nhan.jpg', 'thumb/1365654565_thuong-vu-hon-nhan.jpg|block/1365654565_thuong-vu-hon-nhan.jpg', '', '', 0, 0, 1, 1, 1, '0', 1, 1, 1, 0, 0, 0, 1, 'Thương Vụ Hôn Nhân', 'Thuong-Vu-Hon-Nhan', '', 'câu chuyện,tình yêu,bắt đầu,số phận,tính cách,hoàn cảnh', '', 'Câu chuyện tình yêu được bắt đầu với anh chàng có tên là Nick và cô nàng có tên là Alexa. Hai con người hai số phận hai tính cách và hoàn cảnh khác nhau nhưng định mện đã đưa họ đến với nhau trên tình yêu chân chính mà họ dành cho nhau.', '<strong style="margin: 0px; padding: 0px; border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; color: rgb(51, 51, 51); text-align: justify;">Nội dung chính</strong><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">Câu chuyện tình yêu được bắt đầu với anh chàng có tên là Nick và cô nàng có tên là Alexa. Hai con người hai số phận hai tính cách và hoàn cảnh khác nhau nhưng định mện đã đưa họ đến với nhau trên tình yêu chân chính mà họ dành cho nhau</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">Nick là một anh chàng đẹp trai, giàu có, có nhiều hoài bão và sắp sửa được kế thừa một công ty kiến trúc từ bác của anh. Tuy vậy, điều kiện để được thừa kế là Nick phải có vợ. Tuy nhiên, vì một tuổi thơ bất hạnh với gia đình của mình mà ngay từ khi còn bé, anh đã quyết định sẽ không ràng buộc với gia đình và con cái. Một người vợ không bao giờ là điều anh muốn.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">Alexa là một cô gái 27 tuổi, là chủ một tiệm sách, yêu văn thơ, yêu động vật và có tình cảm sâu sắc với gia đình của mình. Mặc dù cha cô từng đối xử không tốt với mẹ con cô nhưng họ vẫn quyết định tha thứ cho ông. Cô lâm vào tình thế khó khăn khi gia đình cô mắc nợ phải bán căn nhà từ thuở thơ ấu. Alexa chấp nhận bất cứ điều gì, kể cả kết hôn với người cô không yêu, để cứu ngôi nhà và có tiền chữa bệnh cho bố cô.&nbsp; Cô quyết định làm một lá bùa để cầu xin một người chồng.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">Nick đã được mai mối với Alexa thông qua Maggie, em họ của Nick. Cả ba người đã chơi với nhau từ tấm bé, nhưng khi lớn thì Alexa và Nick không liên lạc nữa. Alexa từng bảy tỏ tình cảm của mình với Nick khi cả hai còn là thiếu niên, nhưng Nick từ chối. Cả Alexa và Nick, mỗi người đều có những tiêu chuẩn riêng về người chồng người vợ của mình tưởng chừng như không thể dung hòa. Hai người quyết định tiến đến hôn nhân vì những lợi ích có thể bổ sung cho nhau. Alexa cần tiền để cứu gia đình mình, Nick cần một người vợ để có quyền thừa kế. Tuy nhiên, Alexa tuyệt nhiên không nói cho Nick biết chính xác lý do lấy anh của cô, mà luôn che giấu bằng việc viện cớ lấy tiền để mở rộng kinh doanh. Lòng tự trọngcủa cô và cha mẹ cô không cho phép cô nhận tiền của anh để cứu gia đình mình.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">Cuộc sống gần gũi hàng ngày tạo điều kiện cho Nick hiểu rõ về con người Alexa hơn. Anh cảm thấy hạnh phúc và luôn bật cười bên cạnh Alexa. Họ cũng không thể giấu giếm được ham muốn gần gũi nhau, mặc dù luôn bị ngăn cản bởi điều khoản “không cho phép quyến rũ lẫn nhau” trong hợp đồng hôn nhân. Dần dần, Nick phát hiện anh đã đem lòng yêu Alexa từ khi nào, còn Alexa luôn dành tình cảm cho anh từ lâu. Đỉnh điểm là khi họ phá vỡ điều khoản trong hợp đồng và Alexa mang thai, cùng lúc Nick phát hiện rằng Alexa không dùng tiền cho mục đích kinh doanh. Anh cứ ngỡ con người Alexa ngây thơ, trung thực, không màng đến tiền của anh. Nhưng đứa trẻ xuất hiện làm anh càng tin rằng Alexa muốn ràng buộc anh bằng đứa trẻ để lấy tiền trợ cấp, giống như ngày xưa mẹ anh đã làm với cha anh.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">Một cuộc cãi vã nổ ra, Alexa đau đớn bỏ đi, không liên lạc với ai. Cha mẹ cô đã tìm đến Nick và lúc này mọi thứ mới rõ ràng. Nick biết anh đã phạm một sai lầm thật khó để bỏ qua, đồng thời anh cũng hiểu rằng mình yêu Alexa hơn bao giờ hết và sâu trong anh luôn khát khao một gia đình ấm áp. Nhưng lúc này anh sẽ phải làm sao để Alexa hiểu và quay về bên anh?</span>', '', '', ''),
(44, 4, '', 1, 0, 1373805550, 1373805550, 1, 1373805550, 0, 2, 'S000044', 1, 58000, 0, 'VND', 1, '2013_07/1370247754_nxbtrestoryfull_30202013_042054.jpg', 'thumb/1370247754_nxbtrestoryfull_30202013_042054.jpg|block/1370247754_nxbtrestoryfull_30202013_042054.jpg', '', '', 0, 0, 1, 1, 1, '0', 1, 1, 1, 0, 0, 0, 1, 'Nhật Ký Say Nắng Của Cassie', 'Nhat-Ky-Say-Nang-Cua-Cassie', '', 'câu chuyện,xoay quanh,rắc rối,vấn đề,sinh lý,lứa tuổi,dậy thì,thể hiện,nhật ký,cá nhân,dễ dàng,bộc lộ,tâm tư,tình cảm,ngôn từ,ngây thơ,nhí nhảnh', '', 'Câu chuyện xoay quanh cô bé Cassie với những rắc rối về những vấn đề tâm sinh lý trong lứa tuổi dậy thì. Câu chuyện được thể hiện dưới dạng nhật ký cá nhân, từ đó dễ dàng bộc lộ tâm tư, tình cảm của Cassie qua ngôn từ ngây thơ, nhí nhảnh, đáng yêu.', '<strong style="margin: 0px; padding: 0px; border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; color: rgb(51, 51, 51); text-align: justify;">Giới thiệu chung</strong><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">Câu chuyện xoay quanh cô bé Cassie với những rắc rối về những vấn đề tâm sinh lý trong lứa tuổi dậy thì. Câu chuyện được thể hiện dưới dạng nhật ký cá nhân, từ đó dễ dàng bộc lộ tâm tư, tình cảm của Cassie qua ngôn từ ngây thơ, nhí nhảnh, đáng yêu.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">Thông qua những câu chuyện diễn ra hàng ngày trong cuộc sống như phát hiện cơ thể phát triển bất cân xứng, lo lắng về sự thay đổi sinh lý, các mối quan hệ trong trường lớp, để ý một bạn trai mới chuyển trường, những rung động tình cảm đầu tiên… tác giả lồng vào những thông điệp giáo dục đơn giản nhẹ nhàng, đôi khi cách xử lý tình huống rất hóm hỉnh, vui vẻ, giúp các bạn vượt qua độ tuổi nhiều thay đổi một cách thoải mái và tự tin.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">Lối dẫn truyện chủ quan, hài hước; phong cách viết hóm hỉnh; ngôn từ hiện đại được sử dụng khéo léo, phù hợp, không gây phản cảm hay cứng nhắc về vấn đề dậy thì ở tuổi mới lớn.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">Sách mang tính giải trí cao.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">Sách dành cho bạn đọc nữ trong giai đoạn dậy thì từ 12 - 17 tuổi, với những hoang mang, lo lắng vu vơ về sức khỏe giới tính và tình cảm.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">Mời các bạn đón đọc.</span>', '', '', ''),
(45, 4, '', 1, 0, 1373805623, 1373805636, 1, 1373805623, 0, 2, 'S000045', 1, 126000, 0, 'VND', 1, '2013_07/1366792749_game_of_thrornes_3a-01.jpg', 'thumb/1366792749_game_of_thrornes_3a-01.jpg|block/1366792749_game_of_thrornes_3a-01.jpg', '', '', 0, 0, 1, 1, 1, '0', 1, 1, 1, 0, 0, 0, 1, 'Trò Chơi Vương Quyền', 'Tro-Choi-Vuong-Quyen', '', 'trò chơi,tiểu thuyết,nổi tiếng,cảm hứng,hoa hồng,bắt đầu,ra mắt', '', 'Bộ sách đồ sộ và đình đám Trò chơi vương quyền là một series tiểu thuyết sử thi viễn tưởng của tiểu thuyết gia nổi tiếng người Mỹ George R. R. Martin. Lấy cảm hứng từ tiểu thuyết Cuộc chiến hoa hồng và Ivanhoe Martin bắt đầu viết bộ sách vào năm 1991 và năm 1996 ông cho ra mắt ấn phẩm đầu tiên.', '<strong style="margin: 0px; padding: 0px; border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; color: rgb(51, 51, 51); text-align: justify;">Giới thiệu chung</strong><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">Bộ sách đồ sộ và đình đám&nbsp;</span><strong style="margin: 0px; padding: 0px; border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; color: rgb(51, 51, 51); text-align: justify;">Trò chơi vương quyền</strong><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">&nbsp;là một series tiểu thuyết sử thi viễn tưởng của tiểu thuyết gia nổi tiếng người Mỹ George R. R. Martin. Lấy cảm hứng từ tiểu thuyết&nbsp;</span><strong style="margin: 0px; padding: 0px; border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; color: rgb(51, 51, 51); text-align: justify;">Cuộc chiến hoa hồng</strong><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">&nbsp;và&nbsp;</span><strong style="margin: 0px; padding: 0px; border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; color: rgb(51, 51, 51); text-align: justify;">Ivanhoe</strong><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">&nbsp;Martin bắt đầu viết bộ sách vào năm 1991 và năm 1996 ông cho ra mắt ấn phẩm đầu tiên. Cuốn tiểu thuyết cũng như cả bộ sách nhanh chóng nhận được sự đón chào nhiệt liệt của một lượng fan hâm mộ khổng lồ, trở thành các tác phẩm best seller của nhiều bảng xếp hạng uy tín. Từ dự định viết một bộ ba tập lúc ban đầu, đến nay Martin đã đẩy kế hoạch đó lên thành bảy tập. Tháng 9/2012, Alpha Books bắt đầu xuất bản tập đầu tiên của bộ sách này. Tập 3a&nbsp;</span><strong style="margin: 0px; padding: 0px; border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; color: rgb(51, 51, 51); text-align: justify;">Trò chơi vương quyền - Sự trở lại của ngoại nhân</strong><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">&nbsp;sẽ có mặt trên toàn quốc ngày 28/4/2013.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">Ngoài việc đoạt được hàng loạt các giải thưởng danh giá như giải khoa học viễn tưởng Hugo Award, bộ tiểu thuyết&nbsp;</span><strong style="margin: 0px; padding: 0px; border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; color: rgb(51, 51, 51); text-align: justify;">Trò chơi vương quyền</strong><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">&nbsp;đã được bán bản quyền cho hơn 20 nước và dịch ra hơn 20 ngôn ngữ trên thếgiới. Tại quê hương của mình, tập thứ tư và thứ năm của bộ sách liên tục đứng ở vị trí số một trong Danh sách bán chạy nhất New York Times vào năm 2005 và 2011. Về số lượng, series tiểu thuyết này đã bán được hơn 7 triệu bản tại Mỹ và hơn 22 triệu bản trên toàn thế giới. Kênh truyền hình HBO đã chuyển thể series tiểu thuyết này sang series phim truyền hình chất lượng cao, đậm chất Holywood khiến danh tiếng của bộ sách cũng như tên tuổi của tác giả ngày càng vang xa. Hiện tại, HBO Việt Nam đang phát song series phim này vào tối thứ năm, thứ 6 hàng tuần. Ngày 20/4/2013 tới đây, HBO sẽ bắt đầu phát sóng Season 3 của&nbsp;</span><strong style="margin: 0px; padding: 0px; border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; color: rgb(51, 51, 51); text-align: justify;">Trò chơi vương quyền</strong><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><strong style="margin: 0px; padding: 0px; border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; color: rgb(51, 51, 51); text-align: justify;">Nội dung chính</strong><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">Bộ sách viết về cuộc tranh giành quyền lực của bảy lãnh chúa vùng đất Weterlos và Essos, gồm những khu vực do các dòng họ lớn cai trị, trong bối cảnh nhiều thế lực đen tối có sức mạnh siêu nhiên như người Ngoại nhân, quỷ bóng trắng… luôn đe dọa xâm chiếm Weterlos.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">Lấy cảm hứng từ các sự kiện lịch sử như lịch sử nước Anh thời kỳ “Cuộc chiến hoa hồng”,&nbsp; nhưng Martin cố tình bất chấp các quy ước về thể loại giả tượng để viết nên bộ tiểu thuyết này. Bạo lực, tình dục và sự mơ hồ về đạo đức thường xuyên hiển thị trong tác phẩm của ông. Nhân vật chính thường xuyên bị giết, các sự kiện được nhìn nhận dưới nhiều góc nhìn khác nhau, kể cả qua cái nhìn của các nhân vật phản diện, điều này khiến độc giả không thể nghiêng về các nhân vật “anh hùng” như các cuốn tiểu thuyết thông thường khác; đồng thời cũng khẳng định thêm sự thật rằng những nhân vật anh hùng không thể đi qua các biến cố mà không bị tổn thương, mất mát giống như trong đời thực. Chính vì vậy,&nbsp;</span><strong style="margin: 0px; padding: 0px; border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; color: rgb(51, 51, 51); text-align: justify;">Trò chơi vương quyền</strong><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">&nbsp;nhận được vô số những lời khen ngợi về chủ nghĩa hiện thực. Đồng thời bộ tiểu thuyết cũng nhận được những bình luận quan trọng về vai trò của phụ nữ và tôn giáo được thể hiện trong tác phẩm.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><strong style="margin: 0px; padding: 0px; border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; color: rgb(51, 51, 51); text-align: justify;">Thông tin tác giả</strong><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">George RR Martin là tác giả khoa học viễn tưởng và nhà biên kịch thành công ở Hollywood. Tuy nhiên, chính việc thường xuyên phải cắt giảm nhân vật và những cảnh chiến đấu trong các kịch bản của mình vì những hạn chế liên quan đến ngân sách và độ dài các tập phim; đã khiến ông quyết định quay lại với niềm đam mê viết lách, nơi trí tưởng tượng phong phú của ông không bị hạn chế bởi bất cứ điều gì và tạo nên bộ tiểu thuyết giả tưởng bán chạy nổi tiếng&nbsp;</span><strong style="margin: 0px; padding: 0px; border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; color: rgb(51, 51, 51); text-align: justify;">Trò chơi vương quyền</strong><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">.</span>', '', '', ''),
(46, 4, '', 1, 0, 1373805696, 1373805696, 1, 1373805696, 0, 2, 'S000046', 1, 100000, 0, 'VND', 1, '2013_07/1367805062_130427_img_1885.jpg', 'thumb/1367805062_130427_img_1885.jpg|block/1367805062_130427_img_1885.jpg', '', '', 0, 0, 1, 1, 1, '0', 1, 1, 1, 0, 0, 0, 1, 'Đầu Tư Vào Vàng', 'Dau-Tu-Vao-Vang', '', 'chú ý,hiện nay,thế giới,lĩnh vực,tư trang,kiến thức,cần thiết', '', 'Vàng đang là kênh đầu tư được chú ý nhất hiện nay tại Việt Nam và trên thế giới. Nhưng, giống như chứng khoán, lĩnh vực đầu tư vàng cũng đòi hỏi nhà đầu tư trang bị cho mình những kiến thức cần thiết để không phải đầu tư theo kiểu đánh bạc đầy rủi ro.', '<strong style="margin: 0px; padding: 0px; border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; color: rgb(51, 51, 51); text-align: justify;">Giới thiệu chung</strong><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">Vàng đang là kênh đầu tư được chú ý nhất hiện nay tại Việt Nam và trên thế giới. Nhưng, giống như chứng khoán, lĩnh vực đầu tư vàng cũng đòi hỏi nhà đầu tư trang bị cho mình những kiến thức cần thiết để không phải đầu tư theo kiểu đánh bạc đầy rủi ro. Thực tế cho thấy, các nhà đầu tư đều rất coi trọng vàng, nhưng ít người hiểu được sâu sắc vai trò của nó trong thị trường tài chính thế giới. Được xem như loại tài sản có độ “trú ẩn an toàn”, thứ kim loại quý giá này có thể gia tăng giá trị khi thị trường chứng khoán mất điểm và ngay cả khi nền kinh tế bị suy thoái.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">Trong khoảng 3 năm trở lại đây, thị trường vàng Việt Nam đã và đang có những bước tiến mạnh mẽ và ngày càng biến động cùng nhịp hơn với thị trường thế giới. Cùng với sự tụt dốc của thị trường chứng khoán và việc “đóng băng” trên thị trường bất động sản thì chuyển hướng sang lĩnh vực kinh doanh vàng đang là lựa chọn hấp dẫn của nhà đầu tư. Tuy nhiên, phải thừa nhận một sự thật kinh doanh vàng luôn là kênh đầu tư ẩn chứa nhiều rủi ro, khó dự báo chính xác. Vì vậy, sự chuẩn bị chu đáo về kiến thức, bản lĩnh và kinh nghiệm đầu tư được xem là hành trang không thể thiếu để các nhà đầu tư tự tin tham gia vào cuộc chơi.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">Theo BIS (Bank of Intemational Settlement), cấu trúc thị trường tài chính toàn cầu được phân thành hai phần chênh lệch nhau khá lớn: Thương mại và đầu tư (giao dịch vật chất) chỉ chiếm 15%, trong khi Phòng ngừa rủi ro và đầu cơ (giao dịch vị thế) lại chiếm đến 85%. Do đó, kiến thức trong việc phân tích và ra quyết định đầu tư, kinh doanh vàng là điều rất cần thiết cho các nhà đầu tư. Một số liệu đáng buồn là theo thống kê trong thời gian qua, có đến 90% nhà đầu tư vàng tại Việt Nam bị thua lỗ! Nguyên nhân là đa số nhà đầu tư chủ yếu kinh doanh vàng mang tính nghiệp dư. Một lý do khách quan là chúng ta chưa có nhiều chuyên gia giỏi về đầu tư vàng cũng như có rất ít sách viết về đề tài này. Trong khi đó, nhà đầu tư vàng chuyên nghiệp đòi hỏi phải có sự am hiểu kiến thức về nền kinh tế thế giới, đặc biệt là các nền kinh tế lớn như Mỹ, EU, Nhật Bản, Trung Quốc..., hoạt động của các Ngân hàng Trung ương và các quỹ đầu cơ vàng lớn, sức mạnh của đồng USD, sự thay đổi trên thị trường chứng khoán, giá cả các nguyên liệu trên thị trường thế giới, cùng với tình hình kinh tế Việt Nam, chính sách tỷ giá ....</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">Hiện nay, tại Việt Nam, sách viết về đầu tư vàng rất ít vì có thể do hoạt động kinh doanh vàng mới phát triển mạnh mẽ trong 3 năm trở lại đây. Vì vậy, cuốn sách Đầu tư vào vàng của tác giả Jonathan Spall thực sự rất hữu ích. Với kiến thức và kinh nghiệm hơn 25 năm của một nhà đầu tư trong ngành vàng và hiện đang là Giám Đốc Bộ Phận Kinh Doanh Hàng Hóa của Barclays Capital, Jonathan Spall đã cung cấp cho độc giả những chỉ dẫn tỉ mỉ về một trong những tài sản có giá trị nhất thế giới, từ việc khai thác, luyện vàng, kinh doanh đến xu hướng định giá của thị trường. Ngoài ra, tác giả còn chia sẻ những kiến thức và kinh nghiệm liên quan đến các quy trình giao dịch vàng đơn giản và phức tạp; vai trò quan trọng của các Ngân hàng Trung ương trên thị trường vàng; cách thức giao dịch vàng; các biện pháp phòng ngừa rủi ro cũng như chiến lược đầu tư vào vàng... Cuốn sách&nbsp;</span><span style="margin: 0px; padding: 0px; border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 13px; font-style: inherit; line-height: 18px; color: rgb(51, 51, 51); text-align: justify;">Đầu tư vào vàng</span><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">&nbsp;đã được trang web www.egold.com bình chọn là 1 trong 10 quyển sách xuất sắc nhất trong lĩnh vực kinh doanh vàng.</span>', '', '', '');
INSERT INTO `nv3_shops_rows` (`id`, `listcatid`, `group_id`, `user_id`, `source_id`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `product_code`, `product_number`, `product_price`, `product_discounts`, `money_unit`, `product_unit`, `homeimgfile`, `homeimgthumb`, `homeimgalt`, `otherimage`, `imgposition`, `copyright`, `inhome`, `allowed_comm`, `allowed_rating`, `ratingdetail`, `allowed_send`, `allowed_print`, `allowed_save`, `hitstotal`, `hitscm`, `hitslm`, `showprice`, `vi_title`, `vi_alias`, `vi_description`, `vi_keywords`, `vi_note`, `vi_hometext`, `vi_bodytext`, `vi_address`, `vi_warranty`, `vi_promotional`) VALUES
(47, 4, '', 1, 0, 1373805768, 1373805768, 1, 1373805768, 0, 2, 'S000047', 1, 80000, 0, 'VND', 1, '2013_07/1370054615_939093594_bia_mong-sao-cuoc-doi-nay-chua-tung-gap-a_7.5.2013.jpg', 'thumb/1370054615_939093594_bia_mong-sao-cuoc-doi-nay-chua-tung-gap-a_7.5.2013.jpg|block/1370054615_939093594_bia_mong-sao-cuoc-doi-nay-chua-tung-gap-a_7.5.2013.jpg', '', '', 0, 0, 1, 1, 1, '0', 1, 1, 1, 0, 0, 0, 1, 'Mong Sao Cuộc Đời Này Chưa Từng Gặp Anh', 'Mong-Sao-Cuoc-Doi-Nay-Chua-Tung-Gap-Anh', '', 'anh em,công ty,phá sản,tỏ ra,lạnh lùng', '', 'Tần Hoan và Cố Phi Trần là hai anh em nuôi. Do công ty ba Tần Hoan phá sản, cô được ba của Cố Phi Trần là Cố Hoài Sơn nhận về nuôi từ năm mười sáu tuổi. Cùng sống trong một nhà nhưng Cố Phi Trần luôn tỏ ra lạnh lùng với Tần Hoan.', '<strong style="margin: 0px; padding: 0px; border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; color: rgb(51, 51, 51); text-align: justify;">Nội dung chính</strong><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">Tần Hoan và Cố Phi Trần là hai anh em nuôi. Do công ty ba Tần Hoan phá sản, cô được ba của Cố Phi Trần là Cố Hoài Sơn nhận về nuôi từ năm mười sáu tuổi. Cùng sống trong một nhà nhưng Cố Phi Trần luôn tỏ ra lạnh lùng với Tần Hoan. Điều này khiến cô thực sự cảm thấy bức bối. Và nhất là khi cô cảm mến anh, cô càng muốn anh để ý đến cô. Cuối cùng tình cảm của cô cũng được đáp lại. Mối tình tuổi thanh xuân của Tần Hoan và Cố Phi Trần nhẹ nhàng mà cũng thật ngọt ngào. Nhưng mọi chuyện dường như chấm dứt và biến thành thù hận khi Tần Hoan phát hiện ra rằng anh không hề yêu cô, anh thậm chí còn lợi dụng cô như một quân cờ trong cuộc chiến thương trường của anh. Cố Phi Trần được điều anh muốn, nhưng anh đã gây sự tổn thương sâu sắc cho Tần Hoan. Tần Hoan cố gắng chôn vùi những kí ức đau buồn đó bằng việc hẹn hò với Nghiêm Duyệt Dân – một bác sĩ tuyệt vời và dành cho cô tình yêu chân thành. Nhưng lúc nào trong đầu cô cũng toàn hình bóng của Cố Phi Trần. Mười mấy năm trước, khi cô chỉ mới trở thành thiếu nữ, Cố Phi Trần trong mắt cô tỏa sáng như một thiên thần, cô đã luôn nghĩ rằng mãi mãi mình cũng không chạm tới được. Và hiện tại, dù trong mắt cô là dáng vẻ thanh tú nhưng lạnh lùng đến cùng cực đó, vẫn đẹp như một vị thần.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">&nbsp;</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">Có một chàng trai từng nhắc mình rằng không được yêu người con gái đó, nhưng lại cứ muốn giữ cô bên mình.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">&nbsp;</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">Và một cô gái, với vẻ đẹp khiến người ta mê mẩn cứ mãi đắm chìm trong một tình yêu không hồi kết. Giận hờn, thù ghét, những lời nói lạnh lùng, mỉa mai, nhưng mãi mãi trong lòng cô chỉ có hình bóng của chàng trai ấy.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">&nbsp;</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">Bức màn bí mật được hé mở và một câu chuyện tình lại bắt đầu. Hai con người, hai trái tim, dù những vết thương lòng chưa hẳn đã lành lặn, vẫn cùng chung nhịp đập với nhau.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">&nbsp;</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><strong style="margin: 0px; padding: 0px; border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; color: rgb(51, 51, 51); text-align: justify;">&nbsp;Mục lục</strong><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">&nbsp;</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">Chương 1. Đau khổ</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">Chương 2. Hấp dẫn</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">Chương 3. Tâm sự</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">Chương 4. Đắm chìm</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">Chương 5. Tỉnh mộng</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">Chương 6. Chia tay</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">Chương 7. Lãng quên</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">Chương 8. Thay đổi</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">Chương 9. Trân trọng</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">Chương 10. Sợ hãi</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">Chương 11. Ràng buộc</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">Chương 12. Điểm xuất phát</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">Chương 13. Kí ức&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">Chương 14. Mê hoặc</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">Chương 15. Mong ước</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">Chương 16. Lưu luyến</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">Chương 17. Bắt cóc</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">Chương 18. Hồi kết</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">&nbsp;</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><strong style="margin: 0px; padding: 0px; border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; color: rgb(51, 51, 51); text-align: justify;">Thông tin tác giả</strong><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">&nbsp;</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">Tình Không Lam Hề là tác giả Trung Quốc chuyên viết thể loại truyện ngôn tình. Tình Không Lam Hề nổi tiếng với các tác phẩm Gần như vậy, xa đến thế; Mưa gió thoáng qua tôi yêu em ; Nơi cuối con đường...</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">&nbsp;</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">Giọng văn của tác giả được nhiều độc giả yêu thích, đánh giá là: có “chất gây nghiện đặc biệt” từ cách sử dụng ngôn từ nhẹ nhàng, sâu lắng mà không kém phần sắc sảo.</span>', '', '', ''),
(48, 4, '', 1, 0, 1373805846, 1373805846, 1, 1373805846, 0, 2, 'S000048', 1, 92000, 0, 'VND', 1, '2013_07/1372214234_tap1.jpg', 'thumb/1372214234_tap1.jpg|block/1372214234_tap1.jpg', '', '', 0, 0, 1, 1, 1, '0', 1, 1, 1, 0, 0, 0, 1, 'Kim Ốc Hận - Tập 1&#x3A; Duyên', 'Kim-Oc-Han-Tap-1-Duyen', '', 'vị hoàng,lãnh đạo,nhân vật,kiệt xuất,vệ thanh,hoắc khứ bệnh,biên giới,lãnh thổ,xây dựng,thịnh trị', '', 'Sách sử chép rằng Trung Hoa thời nhà Hán có một vị hoàng đế anh minh, chí lớn tên là Lưu Triệt, hiệu Vũ Đế. Ông lãnh đạo những nhân vật kiệt xuất như Vệ Thanh, Hoắc Khứ Bệnh, Tang Hoằng Dương chinh đông dẹp bắc mở rộng biên giới lãnh thổ, đặt buôn bán giao thương với Ấn Độ, Trung Á, La Mã... xây dựng nên một thời thịnh trị đỉnh cao của triều Hán.', '<strong style="margin: 0px; padding: 0px; border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; color: rgb(51, 51, 51); text-align: justify;">Giới thiệu chung</strong><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">Sách sử chép rằng Trung Hoa thời nhà Hán có một vị hoàng đế anh minh, chí lớn tên là Lưu Triệt, hiệu Vũ Đế. Ông lãnh đạo những nhân vật kiệt xuất như Vệ Thanh, Hoắc Khứ Bệnh, Tang Hoằng Dương chinh đông dẹp bắc mở rộng biên giới lãnh thổ, đặt buôn bán giao thương với Ấn Độ, Trung Á, La Mã... xây dựng nên một thời thịnh trị đỉnh cao của triều Hán.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">Nhưng Vũ Đế cũng tàn nhẫn đến mức vô tình. Chuyện xưa kể rằng khi còn nhỏ, Lưu Triệt từng hứa với thanh mai trúc mã Trần A Kiều của mình, nếu sau này cưới được nàng thì sẽ xây một tòa Kim ốc cho nàng ở. Rồi hai người thành chồng vợ, rồi Lưu Triệt vì ngôi báu và tham vọng quyền lực mà lãng quên lời hứa năm xưa, phế Trần A Kiều, đẩy nàng ra sống một mình ở lãnh cung Trường Môn, sủng ái Vệ Tử Phu và nâng đỡ Vệ gia làm đối trọng với Trần gia.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">Vũ Đế có hạnh phúc hay không? Trong Sử ký của Tư Mã Thiên không còn dòng nào đề cập đến đời tư của Lưu Triệt vì cả Bản kỷ về Vũ Đế đã bị chính tay vị hoàng đế này xé bỏ khi đọc những ghi chép trung thực của nhà chép sử về mình, chỉ biết rằng người dân Trung Hoa đời sau đã dùng điển tích “Kim ốc tàng kiều” để chỉ về một nhân duyên không trọn vẹn, và lời hứa lầu vàng trở thành một mối hận tình khôn nguôi...</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">Và Liễu Ký Giang đã khai thác điển tích còn nhiều bí ẩn này trong Kim ốc hận, một câu chuyện xoay quanh mối tình tay ba giữa Hán Vũ Đế Lưu Triệt, Trần A Kiều và Vệ Tử Phu trong hành trình bảo vệ, vun đắp cho tình yêu đích thực của mình.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">Liễu Ký Giang đã dùng bút pháp của người viết dã sử nhưng với lời văn mượt mà chau chuốt như những vần thơ để kể lại câu chuyện ba người trong bối cảnh cung đình đầy mưu mô và dối trá, nơi “ngươi cười với ta, ta cười với ngươi nhưng sau lưng là những thủ đoạn mà ngươi sống thì ta phải chết”. Đọc Kim ốc hận, người dịch cứ mãi ám ảnh bởi những đoạn độc thoại của các nhân vật. Đó là những hồi ức đẹp đẽ mà đau đớn, là sự tự vấn, tự dằn vặt về quá khứ hay tương lai. Kim ốc hận chẳng phải là nỗi hận giày vò người thiếu phụ nơi lãnh cung quạnh quẽ mà là tiếng thở dài của cuộc đời về nhân tình thế thái. Những nhân vật trong Kim ốc hận, dù là Lưu Triệt, Trần A Kiều hay Vệ Tử Phu, đều quyết liệt với lựa chọn của mình trên con đường đi tìm hạnh phúc.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: 18px; text-align: justify;">Khi gấp lại cuốn sách này, có khi nào ta nhìn lại đời mình và tự vấn? Để thấy lòng mình bao dung hơn, biết thứ tha cho mình và cho người. Vì cuộc đời này thật dài, mà cũng thật ngắn ngủi, chúng ta hãy sống thật với lòng mình, hãy nắm tay người yêu thương đi suốt cuộc đời, có như thế chúng ta mới tìm thấy bình yên và hạnh phúc. Vì trong giấc mộng ba sinh, hết thảy đều chỉ là hư ảo, chỉ còn lại chân tình. Trời xanh vốn công bằng, mọi tấm chân tình đều được đền đáp.</span>', '', '', ''),
(49, 5, '', 1, 0, 1373806043, 1373806043, 1, 1373806043, 0, 2, 'S000049', 1, 248000, 0, 'VND', 1, '2013_07/1366785606_foci_20130413_1929-cam.jpg', 'thumb/1366785606_foci_20130413_1929-cam.jpg|block/1366785606_foci_20130413_1929-cam.jpg', '', '', 0, 0, 1, 1, 1, '0', 1, 1, 1, 0, 0, 0, 1, 'Áo kiểu nữ màu cam đỏ', 'Ao-kieu-nu-mau-cam-do', '', 'thích hợp,trẻ trung,thiết kế,rực rỡ,nổi bật,có thể,thắt lưng,thanh lịch', '', 'Áo kiểu màu cam từ FOCI sẽ là lựa chọn thích hợp cho các cô gái trẻ trung. Thiết kế áo đơn giản trên nền màu cam rực rỡ giúp bạn trông nổi bật hơn. Bạn có thể phối với quần tây, thắt lưng bản nhỏ và giày cao gót để trông thanh lịch hơn khi đến công sở.', '<span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Áo kiểu màu cam từ FOCI sẽ là lựa chọn thích hợp cho các cô gái trẻ trung. Thiết kế áo đơn giản trên nền màu cam rực rỡ giúp bạn trông nổi bật hơn. Bạn có thể phối với quần tây, thắt lưng bản nhỏ và giày cao gót để trông thanh lịch hơn khi đến công sở.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><h5 style="border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 0.95em; line-height: 20px; margin: 0px; padding: 0px 0px 0px 16px; background-image: url(http://shop-static.123.vn/v2/images/bullet.png); color: rgb(100, 100, 100); background-position: 0px 6px; background-repeat: no-repeat no-repeat;"> Chất liệu cotton</h5><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Chất liệu cotton mềm mại, hút ẩm tốt giúp bạn luôn cảm thấy thoải mái trong mọi thời tiết.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><h5 style="border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 0.95em; line-height: 20px; margin: 0px; padding: 0px 0px 0px 16px; background-image: url(http://shop-static.123.vn/v2/images/bullet.png); color: rgb(100, 100, 100); background-position: 0px 6px; background-repeat: no-repeat no-repeat;"> Thiết kế đơn giản</h5><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Thiết kế áo cổ tròn, tay ngắn, xăn lai. Mặt trước áo có đính túi nhỏ. Phía sau áo khoét vòng tròn nhỏ và cài nút.&nbsp;</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><h5 style="border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 0.95em; line-height: 20px; margin: 0px; padding: 0px 0px 0px 16px; background-image: url(http://shop-static.123.vn/v2/images/bullet.png); color: rgb(100, 100, 100); background-position: 0px 6px; background-repeat: no-repeat no-repeat;"> Màu cam</h5><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Màu cam rực rỡ giúp bạn trông nổi bật hơn.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Click&nbsp;</span><strong style="border: 0px; font-family: Tahoma, Geneva, sans-serif; line-height: 20px; margin: 0px; padding: 0px; color: rgb(51, 51, 51);">MUA NGAY&nbsp;</strong><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">để sở hữu áo kiểu đơn giản mà đẹp mắt, mang lại cho bạn phong cách trẻ trung từ FOCI.</span>', '', '', ''),
(50, 5, '', 1, 0, 1373806135, 1373806135, 1, 1373806135, 0, 2, 'S000050', 1, 295000, 0, 'VND', 1, '2013_07/1358407321_trendhousecasways_20130110_448.jpg', 'thumb/1358407321_trendhousecasways_20130110_448.jpg|block/1358407321_trendhousecasways_20130110_448.jpg', '', '', 0, 0, 1, 1, 1, '0', 1, 1, 1, 0, 0, 0, 1, 'Áo len nữ màu đen - VN11541-LS', 'Ao-len-nu-mau-den-VN11541-LS', '', 'thời trang,có thể,hiện đại', '', 'Với kiểu áo này của thương hiệu thời trang The Trend House, bạn có thể mặc thành chiếc áo phom dài để khoe nét hiện đại, hoặc khoe vẻ duyên dáng khi biến thành chiếc áo khoác.', '<span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Với kiểu áo này của thương hiệu thời trang The Trend House, bạn có thể mặc thành chiếc áo phom dài để khoe nét hiện đại, hoặc khoe vẻ duyên dáng khi biến thành chiếc áo khoác.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><h5 style="border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 0.95em; line-height: 20px; margin: 0px; padding: 0px 0px 0px 16px; background-image: url(http://shop-static.123.vn/v2/images/bullet.png); color: rgb(100, 100, 100); background-position: 0px 6px; background-repeat: no-repeat no-repeat;"> Chất liệu len cao cấp</h5><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Chất liệu len cao cấp, mỏng nhẹ, dễ giặt và nhanh khô.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><h5 style="border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 0.95em; line-height: 20px; margin: 0px; padding: 0px 0px 0px 16px; background-image: url(http://shop-static.123.vn/v2/images/bullet.png); color: rgb(100, 100, 100); background-position: 0px 6px; background-repeat: no-repeat no-repeat;"> Màu đen sọc trắng</h5><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Màu đen sọc trắng trẻ trung với hàng nút đen đồng bộ.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><h5 style="border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 0.95em; line-height: 20px; margin: 0px; padding: 0px 0px 0px 16px; background-image: url(http://shop-static.123.vn/v2/images/bullet.png); color: rgb(100, 100, 100); background-position: 0px 6px; background-repeat: no-repeat no-repeat;"> Áo dáng dài, cổ tim</h5><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Thiết kế phom dài hiện đại, tay dài, có 2 túi giả phía dưới.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Cổ tim, bên trong được viền màu đỏ.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Có bo ở tay và phía dưới.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Nếu bạn đang cần trang bị cho mình một chiếc áo len dáng dài, màu đen sọc trắng, hãy click&nbsp;</span><strong style="border: 0px; font-family: Tahoma, Geneva, sans-serif; line-height: 20px; margin: 0px; padding: 0px; color: rgb(51, 51, 51);">mua ngay</strong><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">&nbsp;nhé.</span>', '', '', ''),
(51, 5, '', 1, 0, 1373806209, 1373806209, 1, 1373806209, 0, 2, 'S000051', 1, 438000, 0, 'VND', 1, '2013_07/1355461258_sonnguyen_20121211_214.jpg', 'thumb/1355461258_sonnguyen_20121211_214.jpg|block/1355461258_sonnguyen_20121211_214.jpg', '', '', 0, 0, 1, 1, 1, '0', 1, 1, 1, 0, 0, 0, 1, 'Áo khoác dạng vest màu đen', 'Ao-khoac-dang-vest-mau-den', '', 'thời trang,phong cách,chi tiết,hiện đại,phối hợp,cá tính,kết hợp,trở nên,nổi bật,lôi cuốn', '', 'Thời trang và phong cách hơn với chiếc áo vest cổ dalton nhọn từ thương hiệu Sơn Nguyễn. Chăm chút đến từ chi tiết, từ kiểu dáng hiện đại đến cách phối hợp kiểu tay dài xẻ lai cá tính. Kết hợp cùng chiếc đầm ôm sáng màu và đôi sandal gót cao, bạn sẽ trở nên nổi bật và lôi cuốn trước mọi ánh nhìn.', '<span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Thời trang và phong cách hơn với chiếc áo vest cổ dalton nhọn từ thương hiệu Sơn Nguyễn. Chăm chút đến từ chi tiết, từ kiểu dáng hiện đại đến cách phối hợp kiểu tay dài xẻ lai cá tính. Kết hợp cùng chiếc đầm ôm sáng màu và đôi sandal gót cao, bạn sẽ trở nên nổi bật và lôi cuốn trước mọi ánh nhìn.&nbsp;</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><h5 style="border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 0.95em; line-height: 20px; margin: 0px; padding: 0px 0px 0px 16px; background-image: url(http://shop-static.123.vn/v2/images/bullet.png); color: rgb(100, 100, 100); background-position: 0px 6px; background-repeat: no-repeat no-repeat;"> Cổ dalton nhọn</h5><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Áo vest cổ dalton nhọn phong cách và thời trang cho phái đẹp.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><h5 style="border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 0.95em; line-height: 20px; margin: 0px; padding: 0px 0px 0px 16px; background-image: url(http://shop-static.123.vn/v2/images/bullet.png); color: rgb(100, 100, 100); background-position: 0px 6px; background-repeat: no-repeat no-repeat;"> Có nút gài và túi</h5><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Áo có 1 nút gài và hai túi phía trước.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><h5 style="border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 0.95em; line-height: 20px; margin: 0px; padding: 0px 0px 0px 16px; background-image: url(http://shop-static.123.vn/v2/images/bullet.png); color: rgb(100, 100, 100); background-position: 0px 6px; background-repeat: no-repeat no-repeat;"> Màu đen trơn</h5><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Màu đen sang trọng, dễ phối hợp cùng trang phục và phụ kiện.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><h5 style="border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 0.95em; line-height: 20px; margin: 0px; padding: 0px 0px 0px 16px; background-image: url(http://shop-static.123.vn/v2/images/bullet.png); color: rgb(100, 100, 100); background-position: 0px 6px; background-repeat: no-repeat no-repeat;"> Chất liệu cotton co giãn</h5><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Chất liệu cotton co giãn, mang đến cảm giác dễ chịu và thoải mái nhất trong mọi thời tiết.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Click&nbsp;</span><strong style="border: 0px; font-family: Tahoma, Geneva, sans-serif; line-height: 20px; margin: 0px; padding: 0px; color: rgb(51, 51, 51);">MUA NGAY</strong><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">&nbsp;để sở hữu chiếc áo khoác dạng vest sang trọng và thanh lịch.</span>', '', '', ''),
(52, 5, '', 1, 0, 1373806290, 1373806290, 1, 1373806290, 0, 2, 'S000052', 1, 289000, 0, 'VND', 1, '2013_07/1358913019_milaross_20130117_0616.jpg', 'thumb/1358913019_milaross_20130117_0616.jpg|block/1358913019_milaross_20130117_0616.jpg', '', '', 0, 0, 1, 1, 1, '0', 1, 1, 1, 0, 0, 0, 1, 'Áo khoác hoa tay dài bông đỏ', 'Ao-khoac-hoa-tay-dai-bong-do', '', 'nữ tính,sang trọng,tươi tắn,bất ngờ,cảm giác,thoải mái,trong suốt,kết hợp,áo sơ mi,trở nên,gặp gỡ', '', 'Duyên dáng và đầy nữ tính. Áo vest blazer hoa, màu đỏ của thương hiệu Milaross sẽ mang đến cho bạn vẻ sang trọng và tươi tắn đến bất ngờ. Chất liệu vải satin mềm, mịn, mát mang đến cảm giác thoải mái trong suốt lúc mặc. Kết hợp cùng áo sơ mi trắng kèm quần jeans skinny, bạn sẽ trở nên thật hoàn hảo khi dạo phố hay gặp gỡ bạn bè.', '<span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Duyên dáng và đầy nữ tính. Áo vest blazer hoa, màu đỏ của thương hiệu Milaross sẽ mang đến cho bạn vẻ sang trọng và tươi tắn đến bất ngờ. Chất liệu vải satin mềm, mịn, mát mang đến cảm giác thoải mái trong suốt lúc mặc. Kết hợp cùng áo sơ mi trắng kèm quần jeans skinny, bạn sẽ trở nên thật hoàn hảo khi dạo phố hay gặp gỡ bạn bè.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><h5 style="border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 0.95em; line-height: 20px; margin: 0px; padding: 0px 0px 0px 16px; background-image: url(http://shop-static.123.vn/v2/images/bullet.png); color: rgb(100, 100, 100); background-position: 0px 6px; background-repeat: no-repeat no-repeat;"> Kiểu dáng thời trang</h5><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Thiết kế kiểu cổ chữ V với hai nút gài và bèo xếp nếp cách điệu ở gấu áo cho bạn vẻ ngoài xinh tươi, rạng rỡ và sành điệu hơn.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><h5 style="border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 0.95em; line-height: 20px; margin: 0px; padding: 0px 0px 0px 16px; background-image: url(http://shop-static.123.vn/v2/images/bullet.png); color: rgb(100, 100, 100); background-position: 0px 6px; background-repeat: no-repeat no-repeat;"> Thiết kế bo eo</h5><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Với 2 nút gài giúp bạn khoe vòng eo thon gọn và “ăn gian” thêm chiều cao.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><h5 style="border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 0.95em; line-height: 20px; margin: 0px; padding: 0px 0px 0px 16px; background-image: url(http://shop-static.123.vn/v2/images/bullet.png); color: rgb(100, 100, 100); background-position: 0px 6px; background-repeat: no-repeat no-repeat;"> Chất liệu satin sang trọng</h5><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Áo có độ dày vừa phải cùng chất liệu satin mềm mịn, thông thoáng, dễ dàng để bạn sự dụng trong mọi hoàn cảnh thời tiết.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><h5 style="border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 0.95em; line-height: 20px; margin: 0px; padding: 0px 0px 0px 16px; background-image: url(http://shop-static.123.vn/v2/images/bullet.png); color: rgb(100, 100, 100); background-position: 0px 6px; background-repeat: no-repeat no-repeat;"> Dễ phối trang phục</h5><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Chỉ cần kết hợp cùng áo sơ mi hoặc áo thun trơn bên trong, bạn hoàn toàn có thể tự tin với vẻ ngoài trẻ trung, phong cách của mình.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Nếu bạn đang cần tìm cho mình một kiểu trang phục vừa thanh lịch trẻ trung vừa phù hợp với xu hướng thời trang thì còn chần chừ gì nữa, nhấn nút&nbsp;</span><strong style="border: 0px; font-family: Tahoma, Geneva, sans-serif; line-height: 20px; margin: 0px; padding: 0px; color: rgb(51, 51, 51);">MUA NGAY</strong><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">&nbsp;nhé bạn!</span>', '', '', ''),
(53, 5, '', 1, 0, 1373806377, 1373806377, 1, 1373806377, 0, 2, 'S000053', 1, 544000, 0, 'VND', 1, '2013_07/1355568109_nguyetboutique_20121211_076.jpg', 'thumb/1355568109_nguyetboutique_20121211_076.jpg|block/1355568109_nguyetboutique_20121211_076.jpg', '', '', 0, 0, 1, 1, 1, '0', 1, 1, 1, 41, 0, 0, 1, 'Áo len kiểu cách điệu màu tím than', 'Ao-len-kieu-cach-dieu-mau-tim-than', '', 'cá tính,thời trang,cơ thể,tối đa,ấm áp,phong cách,kết hợp', '', 'Cá tính và thời trang cùng áo khoác len của thương hiệu Nguyệt Boutique. Cơ thể sẽ được giữ ấm tối đa trong những ngày đông lạnh bởi chất liệu len dày ấm áp. Và lại vô cùng phong cách khi kết hợp cùng chiếc áo thun bên trong và quần ôm.', '<span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Cá tính và thời trang cùng áo khoác len của thương hiệu Nguyệt Boutique. Cơ thể sẽ được giữ ấm tối đa trong những ngày đông lạnh bởi chất liệu len dày ấm áp. Và lại vô cùng phong cách khi kết hợp cùng chiếc áo thun bên trong và quần ôm.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><h5 style="border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 0.95em; line-height: 20px; margin: 0px; padding: 0px 0px 0px 16px; background-image: url(http://shop-static.123.vn/v2/images/bullet.png); color: rgb(100, 100, 100); background-position: 0px 6px; background-repeat: no-repeat no-repeat;"> Áo khoác len</h5><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Áo khoác len, vạt phủ, dài phía trước, mang đến nét trẻ trung cho bạn gái.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><h5 style="border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 0.95em; line-height: 20px; margin: 0px; padding: 0px 0px 0px 16px; background-image: url(http://shop-static.123.vn/v2/images/bullet.png); color: rgb(100, 100, 100); background-position: 0px 6px; background-repeat: no-repeat no-repeat;"> Màu sắc nổi bật</h5><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Màu xanh dương, họa tiết cam nổi bật.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><h5 style="border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 0.95em; line-height: 20px; margin: 0px; padding: 0px 0px 0px 16px; background-image: url(http://shop-static.123.vn/v2/images/bullet.png); color: rgb(100, 100, 100); background-position: 0px 6px; background-repeat: no-repeat no-repeat;"> Kết hợp cùng áo thun và quần ôm</h5><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Kết hợp cùng áo bên trong và quần ôm, gam màu đơn sắc và kiểu dáng đơn giản để tránh rối mắt.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Click&nbsp;</span><strong style="border: 0px; font-family: Tahoma, Geneva, sans-serif; line-height: 20px; margin: 0px; padding: 0px; color: rgb(51, 51, 51);">MUA NGAY&nbsp;</strong><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">áo len cách điệu cá tính và ấn tượng.</span>', '', '', ''),
(54, 5, '', 1, 0, 1373806471, 1373806471, 1, 1373806471, 0, 2, 'S000054', 1, 256000, 0, 'VND', 1, '2013_07/1358914679_milaross_20130117_0268.jpg', 'thumb/1358914679_milaross_20130117_0268.jpg|block/1358914679_milaross_20130117_0268.jpg', '', '', 0, 0, 1, 1, 1, '0', 1, 1, 1, 2, 0, 0, 1, 'Áo khoác sát nách màu nâu', 'Ao-khoac-sat-nach-mau-nau', '', 'trang phục,góp phần,thể hiện,phong cách,nổi bật,tham dự,gặp gỡ,tung tăng', '', 'Áo khoác là một trong những loại trang phục góp phần không nhỏ trong việc thể hiện phong cách của riêng bạn. Với chiếc áo khoác không tay, cổ cách điệu của thương hiệu Milaross bạn sẽ thêm duyên dáng và nổi bật hơn khi tham dự những bữa tiệc gặp gỡ bạn bè hay tung tăng dạo phố cùng người ấy vào dịp cuối tuần.', '<span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Áo khoác là một trong những loại trang phục góp phần không nhỏ trong việc thể hiện phong cách của riêng bạn. Với chiếc áo khoác không tay, cổ cách điệu của thương hiệu Milaross bạn sẽ thêm duyên dáng và nổi bật hơn khi tham dự những bữa tiệc gặp gỡ bạn bè hay tung tăng dạo phố cùng người ấy vào dịp cuối tuần.&nbsp;</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><h5 style="border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 0.95em; line-height: 20px; margin: 0px; padding: 0px 0px 0px 16px; background-image: url(http://shop-static.123.vn/v2/images/bullet.png); color: rgb(100, 100, 100); background-position: 0px 6px; background-repeat: no-repeat no-repeat;"> Kiểu dáng thời trang</h5><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Thiết kế kiểu cổ chữ V cách điệu một nút gài kết hợp với kiểu áo không tay, vạt nhọn cho bạn vẻ ngoài xinh tươi, trẻ trung và sành điệu hơn.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><h5 style="border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 0.95em; line-height: 20px; margin: 0px; padding: 0px 0px 0px 16px; background-image: url(http://shop-static.123.vn/v2/images/bullet.png); color: rgb(100, 100, 100); background-position: 0px 6px; background-repeat: no-repeat no-repeat;"> Chất liệu cotton</h5><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Áo có độ dày vừa phải cùng chất liệu cotton mềm mịn vừa giúp làm đứng dáng áo vừa tạo sự thoải mái, dễ dàng để bạn sử dụng trong mọi hoàn cảnh thời tiết.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><h5 style="border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 0.95em; line-height: 20px; margin: 0px; padding: 0px 0px 0px 16px; background-image: url(http://shop-static.123.vn/v2/images/bullet.png); color: rgb(100, 100, 100); background-position: 0px 6px; background-repeat: no-repeat no-repeat;"> Dễ phối trang phục</h5><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Chỉ cần kết hợp cùng áo sơ mi, áo thun trơn… Bạn hoàn toàn có thể tự tin với vẻ ngoài trẻ trung, phong cách của mình.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Nếu bạn đang cần tìm cho mình một kiểu trang phục vừa trẻ trung, cá tính vừa phù hợp với xu hướng thời trang thì còn chần chừ gì nữa, nhấn nút&nbsp;</span><strong style="border: 0px; font-family: Tahoma, Geneva, sans-serif; line-height: 20px; margin: 0px; padding: 0px; color: rgb(51, 51, 51);">MUA NGAY</strong><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">&nbsp;nhé bạn!</span>', '', '', ''),
(55, 5, '', 1, 0, 1373806552, 1373806552, 1, 1373806552, 0, 2, 'S000055', 1, 305000, 0, 'VND', 1, '2013_07/1339931495_vng4284.jpg', 'thumb/1339931495_vng4284.jpg|block/1339931495_vng4284.jpg', '', '', 0, 0, 1, 1, 1, '0', 1, 1, 1, 1, 0, 0, 1, 'Sơ mi caro nhuyễn màu hồng tay ngắn', 'So-mi-caro-nhuyen-mau-hong-tay-ngan', '', 'trẻ trung,thân thiện,áo sơ mi,có thể,kết hợp,lịch lãm', '', 'Màu hồng luôn mang đến tông màu mát lạnh, trẻ trung và thân thiện. Áo sơ mi tay ngắn của Noverty sẽ là lựa chọn số 1 cho những bạn nam trẻ năng động. Bạn có thể kết hợp với quần Kaki hay quần Âu tối màu để tạo nên hình ảnh của một chàng trai lịch lãm nơi công sở.', '<span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Màu hồng luôn mang đến tông màu mát lạnh, trẻ trung và thân thiện. Áo sơ mi tay ngắn của Noverty sẽ là lựa chọn số 1 cho những bạn nam trẻ năng động. Bạn có thể kết hợp với quần Kaki hay quần Âu tối màu để tạo nên hình ảnh của một chàng trai lịch lãm nơi công sở.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><h5 style="border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 0.95em; line-height: 20px; margin: 0px; padding: 0px 0px 0px 16px; background-image: url(http://shop-static.123.vn/v2/images/bullet.png); color: rgb(100, 100, 100); background-position: 0px 6px; background-repeat: no-repeat no-repeat;"> Chất liệu cotton</h5><div style="border: 0px; font-family: Tahoma, Geneva, sans-serif; line-height: 20px; margin: 0px; padding: 0px; color: rgb(51, 51, 51);"> Chất liệu cotton cao cấp, mềm mịn, thoáng mát và đứng phom áo.<br  /> &nbsp;</div><h5 style="border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 0.95em; line-height: 20px; margin: 0px; padding: 0px 0px 0px 16px; background-image: url(http://shop-static.123.vn/v2/images/bullet.png); color: rgb(100, 100, 100); background-position: 0px 6px; background-repeat: no-repeat no-repeat;"> Tay ngắn</h5><div style="border: 0px; font-family: Tahoma, Geneva, sans-serif; line-height: 20px; margin: 0px; padding: 0px; color: rgb(51, 51, 51);"> Tay ngắn mang đến sự trẻ trung cho người mặc.<br  /> &nbsp;</div><h5 style="border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 0.95em; line-height: 20px; margin: 0px; padding: 0px 0px 0px 16px; background-image: url(http://shop-static.123.vn/v2/images/bullet.png); color: rgb(100, 100, 100); background-position: 0px 6px; background-repeat: no-repeat no-repeat;"> Ngực trái có túi</h5><div style="border: 0px; font-family: Tahoma, Geneva, sans-serif; line-height: 20px; margin: 0px; padding: 0px; color: rgb(51, 51, 51);"> Túi áo nhỏ trên ngực trái của áo dệt logo sang trọng của Novelty.<br  /> <br  /> Click MUA NGAY áo sơ mi tay ngắn cao cấp của Novelty.</div>', '', '', '');
INSERT INTO `nv3_shops_rows` (`id`, `listcatid`, `group_id`, `user_id`, `source_id`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `product_code`, `product_number`, `product_price`, `product_discounts`, `money_unit`, `product_unit`, `homeimgfile`, `homeimgthumb`, `homeimgalt`, `otherimage`, `imgposition`, `copyright`, `inhome`, `allowed_comm`, `allowed_rating`, `ratingdetail`, `allowed_send`, `allowed_print`, `allowed_save`, `hitstotal`, `hitscm`, `hitslm`, `showprice`, `vi_title`, `vi_alias`, `vi_description`, `vi_keywords`, `vi_note`, `vi_hometext`, `vi_bodytext`, `vi_address`, `vi_warranty`, `vi_promotional`) VALUES
(56, 5, '', 1, 0, 1373806769, 1373806769, 1, 1373806769, 0, 2, 'S000056', 1, 360000, 0, 'VND', 1, '2013_07/1339930929_vng4065.jpg', 'thumb/1339930929_vng4065.jpg|block/1339930929_vng4065.jpg', '', '', 0, 0, 1, 1, 1, '0', 1, 1, 1, 1, 0, 0, 1, 'Sơ mi trắng sọc xanh đỏ tay ngắn', 'So-mi-trang-soc-xanh-do-tay-ngan', '', 'lịch lãm,bắt đầu,áo sơ mi', '', 'Hãy thật lịch lãm khi bắt đầu một ngày mới với chiếc áo sơ mi tay ngắn hoa văn nổi của thương hiệu Noverty. Áo được may với chất liệu cotton pha poly mềm mịn, thoáng mát và đứng phom áo sẽ tạo cho phái mạnh một bờ vai rộng, rắn chắc.', '<span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Hãy thật lịch lãm khi bắt đầu một ngày mới với chiếc áo sơ mi tay ngắn hoa văn nổi của thương hiệu Noverty. Áo được may với chất liệu cotton pha poly mềm mịn, thoáng mát và đứng phom áo sẽ tạo cho phái mạnh một bờ vai rộng, rắn chắc. Những đường kẻ sọc nổi chính là điểm nhấn của chiếc áo này. Kết hợp với quần kaki ống suông, một đôi giày tây để bạn thêm phần thanh lịch và năng động nơi công sở hoặc phong trần hơn với Jeans bụi khi dạo phố.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><h5 style="border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 0.95em; line-height: 20px; margin: 0px; padding: 0px 0px 0px 16px; background-image: url(http://shop-static.123.vn/v2/images/bullet.png); color: rgb(100, 100, 100); background-position: 0px 6px; background-repeat: no-repeat no-repeat;"> Chất liệu cotton</h5><div style="border: 0px; font-family: Tahoma, Geneva, sans-serif; line-height: 20px; margin: 0px; padding: 0px; color: rgb(51, 51, 51);"> Chất liệu cotton cao cấp, mềm mịn, thoáng mát và đứng phom áo.<br  /> &nbsp;</div><h5 style="border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 0.95em; line-height: 20px; margin: 0px; padding: 0px 0px 0px 16px; background-image: url(http://shop-static.123.vn/v2/images/bullet.png); color: rgb(100, 100, 100); background-position: 0px 6px; background-repeat: no-repeat no-repeat;"> Tay ngắn</h5><div style="border: 0px; font-family: Tahoma, Geneva, sans-serif; line-height: 20px; margin: 0px; padding: 0px; color: rgb(51, 51, 51);"> Tay ngắn mang đến sự trẻ trung cho người mặc.<br  /> &nbsp;</div><h5 style="border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 0.95em; line-height: 20px; margin: 0px; padding: 0px 0px 0px 16px; background-image: url(http://shop-static.123.vn/v2/images/bullet.png); color: rgb(100, 100, 100); background-position: 0px 6px; background-repeat: no-repeat no-repeat;"> Ngực trái có túi</h5><div style="border: 0px; font-family: Tahoma, Geneva, sans-serif; line-height: 20px; margin: 0px; padding: 0px; color: rgb(51, 51, 51);"> Túi áo nhỏ trên ngực trái của áo dệt logo sang trọng của Novelty.<br  /> <br  /> Click MUA NGAY áo sơ mi tay ngắn cao cấp của Novelty.</div>', '', '', ''),
(57, 5, '', 1, 0, 1373806886, 1373806886, 1, 1373806886, 0, 2, 'S000057', 1, 445000, 0, 'VND', 1, '2013_07/1339930187_vng4137.jpg', 'thumb/1339930187_vng4137.jpg|block/1339930187_vng4137.jpg', '', '', 0, 0, 1, 1, 1, '0', 1, 1, 1, 2, 0, 0, 1, 'Sơ mi caro tím tay ngắn', 'So-mi-caro-tim-tay-ngan', '', 'thời gian,bao giờ,lỗi thời,kết hợp,hài hòa,tinh nghịch,phong cách', '', 'Các đường kẻ caro nhiều màu luôn là một họa tiết sống mãi theo thời gian và không bao giờ lỗi thời với các chàng trai nơi công sở. Các sọc màu tím kết hợp hài hòa trên nền vải trắng luôn được nhiều bạn trẻ yêu thích vì nó mang lại cho người mặc sự năng động, tinh nghịch cùng phong cách trẻ trung.', '<span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Các đường kẻ caro nhiều màu luôn là một họa tiết sống mãi theo thời gian và không bao giờ lỗi thời với các chàng trai nơi công sở. Các sọc màu tím kết hợp hài hòa trên nền vải trắng luôn được nhiều bạn trẻ yêu thích vì nó mang lại cho người mặc sự năng động, tinh nghịch cùng phong cách trẻ trung. Hãy chọn ngay cho mình chiếc áo sơ mi này để hoàn thiện bộ sưu tập thời trang của mình.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><h5 style="border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 0.95em; line-height: 20px; margin: 0px; padding: 0px 0px 0px 16px; background-image: url(http://shop-static.123.vn/v2/images/bullet.png); color: rgb(100, 100, 100); background-position: 0px 6px; background-repeat: no-repeat no-repeat;"> Chất liệu cotton</h5><div style="border: 0px; font-family: Tahoma, Geneva, sans-serif; line-height: 20px; margin: 0px; padding: 0px; color: rgb(51, 51, 51);"> Chất liệu cotton cao cấp, mềm mịn, thoáng mát và đứng phom áo.<br  /> &nbsp;</div><h5 style="border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 0.95em; line-height: 20px; margin: 0px; padding: 0px 0px 0px 16px; background-image: url(http://shop-static.123.vn/v2/images/bullet.png); color: rgb(100, 100, 100); background-position: 0px 6px; background-repeat: no-repeat no-repeat;"> Tay ngắn</h5><div style="border: 0px; font-family: Tahoma, Geneva, sans-serif; line-height: 20px; margin: 0px; padding: 0px; color: rgb(51, 51, 51);"> Tay ngắn mang đến sự trẻ trung cho người mặc.<br  /> &nbsp;</div><h5 style="border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 0.95em; line-height: 20px; margin: 0px; padding: 0px 0px 0px 16px; background-image: url(http://shop-static.123.vn/v2/images/bullet.png); color: rgb(100, 100, 100); background-position: 0px 6px; background-repeat: no-repeat no-repeat;"> Ngực trái có túi</h5><div style="border: 0px; font-family: Tahoma, Geneva, sans-serif; line-height: 20px; margin: 0px; padding: 0px; color: rgb(51, 51, 51);"> Túi áo nhỏ trên ngực trái của áo dệt logo sang trọng của Novelty.<br  /> <br  /> Click MUA NGAY áo sơ mi tay ngắn cao cấp của Novelty.</div>', '', '', ''),
(58, 5, '', 1, 0, 1373807038, 1373807060, 1, 1373807038, 0, 2, 'S000058', 1, 598000, 0, 'VND', 1, '2013_07/1355126365_foci_20121206_117.jpg', 'thumb/1355126365_foci_20121206_117.jpg|block/1355126365_foci_20121206_117.jpg', '', '', 0, 0, 1, 1, 1, '0', 1, 1, 1, 0, 0, 0, 1, 'Áo sơ mi công sở nam ASMZ.004B - Caro xanh - trắng', 'Ao-so-mi-cong-so-nam-ASMZ-004B-Caro-xanh-trang', '', 'áo sơ mi,không thể,dân công,lịch sự,nam tính,thiết kế,trang nhã,trẻ trung,hiện đại,kết hợp,thanh lịch', '', 'Áo sơ mi là món đồ không thể thiếu của dân công sở. Chiếc áo sơ mi sọc ô vuông của Foci sẽ giúp bạn trông lịch sự và nam tính. Thiết kế đơn giản với họa tiết ô vuông trắng trên nền xanh dương trang nhã, dịu mát cho bạn thêm vẻ trẻ trung, hiện đại. Kết hợp với quần tây, áo vest và giày bít, bạn là chàng trai thanh lịch nơi công sở.', '<span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Áo sơ mi là món đồ không thể thiếu của dân công sở. Chiếc áo sơ mi sọc ô vuông của Foci sẽ giúp bạn trông lịch sự và nam tính. Thiết kế đơn giản với họa tiết ô vuông trắng trên nền xanh dương trang nhã, dịu mát cho bạn thêm vẻ trẻ trung, hiện đại. Kết hợp với quần tây, áo vest và giày bít, bạn là chàng trai thanh lịch nơi công sở.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><h5 style="border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 0.95em; line-height: 20px; margin: 0px; padding: 0px 0px 0px 16px; background-image: url(http://shop-static.123.vn/v2/images/bullet.png); color: rgb(100, 100, 100); background-position: 0px 6px; background-repeat: no-repeat no-repeat;"> Thiết kế thanh lịch&nbsp;</h5><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Áo sơ mi cổ Đức, tay dài, có măng sét, cái nút phía trước.&nbsp;Vạt bầu.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><h5 style="border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 0.95em; line-height: 20px; margin: 0px; padding: 0px 0px 0px 16px; background-image: url(http://shop-static.123.vn/v2/images/bullet.png); color: rgb(100, 100, 100); background-position: 0px 6px; background-repeat: no-repeat no-repeat;"> Đính túi mặt trước</h5><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Đính 1 túi thêu logo Foci sắc sảo ở mặt trước áo.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><h5 style="border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 0.95em; line-height: 20px; margin: 0px; padding: 0px 0px 0px 16px; background-image: url(http://shop-static.123.vn/v2/images/bullet.png); color: rgb(100, 100, 100); background-position: 0px 6px; background-repeat: no-repeat no-repeat;"> Họa tiết sọc chìm</h5><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Họa tiết sọc chìm trên nền xanh biển tươi mát.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Click M</span><strong style="border: 0px; font-family: Tahoma, Geneva, sans-serif; line-height: 20px; margin: 0px; padding: 0px; color: rgb(51, 51, 51);">UA NGAY</strong><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">&nbsp;để mang đến cho mình chiếc áo sơ mi thanh lịch từ FOCI.</span>', '', '', ''),
(59, 5, '', 1, 0, 1373807301, 1373807301, 1, 1373807301, 0, 2, 'S000059', 1, 150000, 0, 'VND', 1, '2013_07/1357207717_81005b.jpg', 'thumb/1357207717_81005b.jpg|block/1357207717_81005b.jpg', '', '', 0, 0, 1, 1, 1, '0', 1, 1, 1, 1, 0, 0, 1, 'Áo thun nam CoupleTX polo Couple màu đen', 'Ao-thun-nam-CoupleTX-polo-Couple-mau-den', '', 'trẻ trung,cá tính,tay trong,thời trang', '', 'Đơn giản nhưng thật trẻ trung, cá tính và vô cùng đáng yêu khi tay trong tay xuống phố với nửa kia cùng cặp áo polo màu trắng của thương hiệu thời trang Couple TX. Phối cùng jeans hoặc short để khoe nét trẻ trung.', '<span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Đơn giản nhưng thật trẻ trung, cá tính và vô cùng đáng yêu khi tay trong tay xuống phố với nửa kia cùng cặp áo polo màu trắng của thương hiệu thời trang Couple TX. Phối cùng jeans hoặc short để khoe nét trẻ trung.&nbsp;</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><h5 style="border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 0.95em; line-height: 20px; margin: 0px; padding: 0px 0px 0px 16px; background-image: url(http://shop-static.123.vn/v2/images/bullet.png); color: rgb(100, 100, 100); background-position: 0px 6px; background-repeat: no-repeat no-repeat;"> Chất liệu cotton thoáng mát</h5><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Chất liệu cotton thoáng mát, mềm mại, dễ giặt, nhanh khô và hút ẩm tốt.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><h5 style="border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 0.95em; line-height: 20px; margin: 0px; padding: 0px 0px 0px 16px; background-image: url(http://shop-static.123.vn/v2/images/bullet.png); color: rgb(100, 100, 100); background-position: 0px 6px; background-repeat: no-repeat no-repeat;"> Thiết kề đơn giản</h5><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Áo thun cổ bẻ, tay ngắn đơn giản cho bạn dễ phối đồ.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><h5 style="border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 0.95em; line-height: 20px; margin: 0px; padding: 0px 0px 0px 16px; background-image: url(http://shop-static.123.vn/v2/images/bullet.png); color: rgb(100, 100, 100); background-position: 0px 6px; background-repeat: no-repeat no-repeat;"> Màu đen hiện đại</h5><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Áo màu đen hiện đại, cá tính</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Có áo nữ để tạo thành cặp đôi phong cách.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Click&nbsp;</span><strong style="border: 0px; font-family: Tahoma, Geneva, sans-serif; line-height: 20px; margin: 0px; padding: 0px; color: rgb(51, 51, 51);">MUA NGAY</strong><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">&nbsp;để sở hữu chiếc áo thun cá tính của Couple TX.</span>', '', '', ''),
(60, 5, '', 1, 0, 1373807383, 1373807383, 1, 1373807383, 0, 2, 'S000060', 1, 218000, 0, 'VND', 1, '2013_07/1366007745_foci_20130412_584.jpg', 'thumb/1366007745_foci_20130412_584.jpg|block/1366007745_foci_20130412_584.jpg', '', '', 0, 0, 1, 1, 1, '0', 1, 1, 1, 4, 0, 0, 1, 'Áo polo cặp nữ màu đỏ', 'Ao-polo-cap-nu-mau-do', '', 'phong cách,giản đơn,trẻ trung,thiết kế,phái đẹp,cao cấp,khả năng,co giãn,thoải mái,tối đa', '', 'Chỉ với điểm nhấn viền cổ, lai tay và dây kéo phía trước, chiếc áo thun của thương hiệu Foci đã đủ để chinh phục các cô nàng thích phong cách giản đơn, trẻ trung và năng động. Thiết kế dáng áo ôm vừa vặn giúp tôn những đường nét của phái đẹp. Chất liệu cotton cao cấp với khả năng co giãn tốt sẽ tạo sự thoải mái tối đa người mặc.', '<span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Chỉ với điểm nhấn viền cổ, lai tay và dây kéo phía trước, chiếc áo thun của thương hiệu Foci đã đủ để chinh phục các cô nàng thích phong cách giản đơn, trẻ trung và năng động. Thiết kế dáng áo ôm vừa vặn giúp tôn những đường nét của phái đẹp. Chất liệu cotton cao cấp với khả năng co giãn tốt sẽ tạo sự thoải mái tối đa người mặc.&nbsp;</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><h5 style="border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 0.95em; line-height: 20px; margin: 0px; padding: 0px 0px 0px 16px; background-image: url(http://shop-static.123.vn/v2/images/bullet.png); color: rgb(100, 100, 100); background-position: 0px 6px; background-repeat: no-repeat no-repeat;"> Kiểu dáng thời trang</h5><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Kiểu cổ bẻ năng động cùng với cách phối màu mới lạ khi tạo điểm nhấn ở cổ và lai tay. Cùng với đó là thiết kế dây kéo phía trước tạo vẻ trung trung mà cũng để bạn dễ dàng điều chỉnh sao cho vừa vặn với mình nhất.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><h5 style="border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 0.95em; line-height: 20px; margin: 0px; padding: 0px 0px 0px 16px; background-image: url(http://shop-static.123.vn/v2/images/bullet.png); color: rgb(100, 100, 100); background-position: 0px 6px; background-repeat: no-repeat no-repeat;"> Thiết kế ôm dáng</h5><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Dáng áo ôm vừa vặn cho bạn vẻ ngoài thon gọn đồng thời còn giúp tôn những vóc dáng của phái đẹp.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><h5 style="border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 0.95em; line-height: 20px; margin: 0px; padding: 0px 0px 0px 16px; background-image: url(http://shop-static.123.vn/v2/images/bullet.png); color: rgb(100, 100, 100); background-position: 0px 6px; background-repeat: no-repeat no-repeat;"> Chất liệu tốt</h5><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Chất liệu cotton co giãn tốt, bền đẹp theo thời gian, hơn nữa, còn có khả năng thấm hút mồ hôi tốt, tạo sự thông thoáng vào mùa hè và giữ nhiệt khi trời lạnh.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><h5 style="border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 0.95em; line-height: 20px; margin: 0px; padding: 0px 0px 0px 16px; background-image: url(http://shop-static.123.vn/v2/images/bullet.png); color: rgb(100, 100, 100); background-position: 0px 6px; background-repeat: no-repeat no-repeat;"> Phù hợp trong nhiều hoàn cảnh</h5><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Với chiếc áo thun cổ bẻ của thương hiệu Foci, bạn có thể mặc khi đến trường, đi làm, hay kết hợp cùng quần jeans, giày bata trong những chuyến đi picnic cùng bạn bè.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Click&nbsp;</span><strong style="border: 0px; font-family: Tahoma, Geneva, sans-serif; line-height: 20px; margin: 0px; padding: 0px; color: rgb(51, 51, 51);">MUA NGAY</strong><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">&nbsp;chiếc áo thun cổ bẻ của thường hiệu Foci để luôn là cô nàng trẻ trung, năng động với phong cách thời trang chính hiệu.</span>', '', '', ''),
(61, 6, '', 1, 0, 1373807712, 1373807712, 1, 1373807712, 0, 2, 'S000061', 1, 255000, 0, 'VND', 1, '2013_07/1373275502_kleinschmidt_20130703_4210.jpg', 'thumb/1373275502_kleinschmidt_20130703_4210.jpg|block/1373275502_kleinschmidt_20130703_4210.jpg', '', '', 0, 0, 1, 1, 1, '0', 1, 1, 1, 0, 0, 0, 1, 'Ấm và nồi Dantoy', 'Am-va-noi-Dantoy', '', 'trẻ con,bắt chước,việc làm,bố mẹ,đồ chơi,giải trí,phát huy,tưởng tượng,làm việc,khám phá,có thể,khả năng,giao tiếp,chăm sóc,nhanh tay,hiện đại,ý nghĩa', '', 'Trẻ con hay thích bắt chước những việc làm của bố mẹ. Bộ nồi và ấm đồ chơi từ Dantoy sẽ giúp bé có những giờ giải trí vui vẻ đồng thời phát huy trí tưởng tượng, học cách làm việc theo nhóm và khám phá công việc của mọi người xung quanh. Bé có thể rủ bạn bè cùng chơi để tăng khả năng giao tiếp và biết cách chăm sóc người khác. Hãy nhanh tay mang đến món đồ chơi hiện đại này để làm món quà tặng thật ý nghĩa cho bé yêu của bạn.', '<span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Trẻ con hay thích bắt chước những việc làm của bố mẹ. Bộ nồi và ấm đồ chơi từ Dantoy sẽ giúp bé có những giờ giải trí vui vẻ đồng thời phát huy trí tưởng tượng, học cách làm việc theo nhóm và khám phá công việc của mọi người xung quanh. Bé có thể rủ bạn bè cùng chơi để tăng khả năng giao tiếp và biết cách chăm sóc người khác. Hãy nhanh tay mang đến món đồ chơi hiện đại này để làm món quà tặng thật ý nghĩa cho bé yêu của bạn.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><div style="border: 0px; font-family: Tahoma, Geneva, sans-serif; line-height: 20px; margin: 0px; padding: 0px; color: rgb(51, 51, 51);"> <h5 style="border: 0px; font-family: inherit; font-size: 0.95em; font-style: inherit; font-variant: inherit; line-height: inherit; margin: 0px; padding: 0px 0px 0px 16px; background-image: url(http://shop-static.123.vn/v2/images/bullet.png); color: rgb(100, 100, 100); background-position: 0px 6px; background-repeat: no-repeat no-repeat;"> Chất liệu nhựa cao cấp</h5> <div style="border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; margin: 0px; padding: 0px;"> Sản phẩm được làm từ chất liệu nhựa cao cấp theo tiêu chuẩn Châu Âu, tuyệt đối an toàn cho bé khi chơi.<br  /> &nbsp;</div> <h5 style="border: 0px; font-family: inherit; font-size: 0.95em; font-style: inherit; font-variant: inherit; line-height: inherit; margin: 0px; padding: 0px 0px 0px 16px; background-image: url(http://shop-static.123.vn/v2/images/bullet.png); color: rgb(100, 100, 100); background-position: 0px 6px; background-repeat: no-repeat no-repeat;"> Kiểu dáng đẹp mắt</h5> Bộ sản phẩm gồm các nồi, ấm, sạn...để bé có thể tập nấu ăn như người lớn. Bé có thể rủ thêm bạn chơi cùng, tăng khả năng giao tiếp và học cách chăm sóc bạn bè.</div><div style="border: 0px; font-family: Tahoma, Geneva, sans-serif; line-height: 20px; margin: 0px; padding: 0px; color: rgb(51, 51, 51);"> <br  /> <h5 style="border: 0px; font-family: inherit; font-size: 0.95em; font-style: inherit; font-variant: inherit; line-height: inherit; margin: 0px; padding: 0px 0px 0px 16px; background-image: url(http://shop-static.123.vn/v2/images/bullet.png); color: rgb(100, 100, 100); background-position: 0px 6px; background-repeat: no-repeat no-repeat;"> Phát huy trí tưởng tượng</h5> <div style="border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; margin: 0px; padding: 0px;"> Bộ nồi và ấm giúp bé phát huy trí tưởng tượng, sáng tạo cần thiết cho việc học của bé sau này. Bé sẽ đóng vai người nội trợ chuẩn bị thức ăn cho gia đình, giúp bé hiểu thêm về công việc nội trợ của mẹ.<br  /> &nbsp;</div> <h5 style="border: 0px; font-family: inherit; font-size: 0.95em; font-style: inherit; font-variant: inherit; line-height: inherit; margin: 0px; padding: 0px 0px 0px 16px; background-image: url(http://shop-static.123.vn/v2/images/bullet.png); color: rgb(100, 100, 100); background-position: 0px 6px; background-repeat: no-repeat no-repeat;"> Rèn sự khéo léo, cẩn thận</h5> <div style="border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; margin: 0px; padding: 0px;"> Bộ đồ chơi giúp bé rèn sự khéo léo, cẩn thận và tác phong nhanh nhẹn. Đồng thời, bé cũng sẽ tự tin hơn trong cuộc sống vì có cảm giác mình cũng đã lớn và làm những việc như bố mẹ.<br  /> <br  /> Click&nbsp;<strong style="border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; margin: 0px; padding: 0px;">MUA NGAY</strong>&nbsp;để mang đến cho bé món đồ chơi bổ ích từ Dantoy.</div></div><br  />', '', '', ''),
(62, 6, '', 1, 0, 1373807789, 1373807789, 1, 1373807789, 0, 2, 'S000062', 1, 483000, 0, 'VND', 1, '2013_07/1373274683_kleinschmidt_20130703_4465.jpg', 'thumb/1373274683_kleinschmidt_20130703_4465.jpg|block/1373274683_kleinschmidt_20130703_4465.jpg', '', '', 0, 0, 1, 1, 1, '0', 1, 1, 1, 0, 0, 0, 1, 'Bộ đồ ăn công chúa Dantoy', 'Bo-do-an-cong-chua-Dantoy', '', 'bắt đầu,khả năng,quan sát,nhận thức,phát triển,bắt chước,nhân vật,đặc biệt', '', 'Bắt đầu từ 2 tuổi, khả năng quan sát và nhận thức cuộc sống xung quanh của trẻ phát triển vượt bậc. Trẻ thích “bắt chước”, đóng vai các “nhân vật” từ cuộc sống xung quanh mình, đặc biệt là bố mẹ.', '<span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Bắt đầu từ 2 tuổi, khả năng quan sát và nhận thức cuộc sống xung quanh của trẻ phát triển vượt bậc. Trẻ thích “bắt chước”, đóng vai các “nhân vật” từ cuộc sống xung quanh mình, đặc biệt là bố mẹ. Bộ đồ ăn công chúa từ Dantoy sẽ giúp bé có những giờ giải trí vui vẻ đồng thời phát huy trí tưởng tượng, học cách làm việc theo nhóm và khám phá công việc của mọi người xung quanh. Bé có thể rủ bạn bè cùng chơi để tăng khả năng giao tiếp và biết cách chăm sóc người khác. Hãy nhanh tay mang đến món đồ chơi hiện đại này để làm món quà tặng thật ý nghĩa cho bé yêu của bạn.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><div style="border: 0px; font-family: Tahoma, Geneva, sans-serif; line-height: 20px; margin: 0px; padding: 0px; color: rgb(51, 51, 51);"> <h5 style="border: 0px; font-family: inherit; font-size: 0.95em; font-style: inherit; font-variant: inherit; line-height: inherit; margin: 0px; padding: 0px 0px 0px 16px; background-image: url(http://shop-static.123.vn/v2/images/bullet.png); color: rgb(100, 100, 100); background-position: 0px 6px; background-repeat: no-repeat no-repeat;"> Chất liệu nhựa cao cấp</h5> <div style="border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; margin: 0px; padding: 0px;"> Sản phẩm được làm từ chất liệu nhựa cao cấp theo tiêu chuẩn Châu Âu, tuyệt đối an toàn cho bé khi chơi.<br  /> &nbsp;</div> <h5 style="border: 0px; font-family: inherit; font-size: 0.95em; font-style: inherit; font-variant: inherit; line-height: inherit; margin: 0px; padding: 0px 0px 0px 16px; background-image: url(http://shop-static.123.vn/v2/images/bullet.png); color: rgb(100, 100, 100); background-position: 0px 6px; background-repeat: no-repeat no-repeat;"> Kiểu dáng đẹp mắt</h5> Bộ sản phẩm gồm các dĩa, nĩa, dao, cốc, chảo và sandwich, trứng ốp la...để bé tập làm bữa sáng và ăn như người lớn. Bé có thể rủ thêm bạn chơi cùng, tăng khả năng giao tiếp và học cách chăm sóc bạn bè.</div><div style="border: 0px; font-family: Tahoma, Geneva, sans-serif; line-height: 20px; margin: 0px; padding: 0px; color: rgb(51, 51, 51);"> <br  /> <h5 style="border: 0px; font-family: inherit; font-size: 0.95em; font-style: inherit; font-variant: inherit; line-height: inherit; margin: 0px; padding: 0px 0px 0px 16px; background-image: url(http://shop-static.123.vn/v2/images/bullet.png); color: rgb(100, 100, 100); background-position: 0px 6px; background-repeat: no-repeat no-repeat;"> Phát huy trí tưởng tượng</h5> <div style="border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; margin: 0px; padding: 0px;"> Bộ đồ ăn giúp bé phát huy trí tưởng tượng, sáng tạo cần thiết cho việc học của bé sau này.<br  /> &nbsp;</div> <h5 style="border: 0px; font-family: inherit; font-size: 0.95em; font-style: inherit; font-variant: inherit; line-height: inherit; margin: 0px; padding: 0px 0px 0px 16px; background-image: url(http://shop-static.123.vn/v2/images/bullet.png); color: rgb(100, 100, 100); background-position: 0px 6px; background-repeat: no-repeat no-repeat;"> Rèn sự khéo léo, cẩn thận</h5> <div style="border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; margin: 0px; padding: 0px;"> Bộ đồ chơi giúp bé rèn sự khéo léo, cẩn thận và tác phong nhanh nhẹn. Đồng thời, bé cũng sẽ tự tin hơn trong cuộc sống vì có cảm giác mình cũng đã lớn và làm những việc như bố mẹ.<br  /> &nbsp;</div> <h5 style="border: 0px; font-family: inherit; font-size: 0.95em; font-style: inherit; font-variant: inherit; line-height: inherit; margin: 0px; padding: 0px 0px 0px 16px; background-image: url(http://shop-static.123.vn/v2/images/bullet.png); color: rgb(100, 100, 100); background-position: 0px 6px; background-repeat: no-repeat no-repeat;"> Họa tiết đáng yêu</h5> <div style="border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; margin: 0px; padding: 0px;"> Bộ có họa tiết đáng yêu phù hợp với các bé gái, giúp bé thích thú hơn khi chơi đồng thời làm đẹp thêm cho căn phòng của bé.<br  /> <br  /> Click&nbsp;<strong style="border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; margin: 0px; padding: 0px;">MUA NGAY</strong>&nbsp;để mang đến cho bé món đồ chơi bổ ích từ Dantoy.</div> <div> &nbsp;</div></div><br  />', '', '', ''),
(63, 6, '', 1, 0, 1373807856, 1373807856, 1, 1373807856, 0, 2, 'S000063', 1, 297000, 0, 'VND', 1, '2013_07/1373273081_kleinschmidt_20130703_4390.jpg', 'thumb/1373273081_kleinschmidt_20130703_4390.jpg|block/1373273081_kleinschmidt_20130703_4390.jpg', '', '', 0, 0, 1, 1, 1, '0', 1, 1, 1, 0, 0, 0, 1, 'Bộ cafe công chúa Dantoy', 'Bo-cafe-cong-chua-Dantoy', '', 'trẻ con,bắt chước,nhân vật,đặc biệt,bố mẹ,bộ đồ,công chúa,giải trí,phát huy,tưởng tượng,làm việc,khám phá', '', 'Trẻ con hay thích “bắt chước”, đóng vai các “nhân vật” từ cuộc sống xung quanh mình, đặc biệt là bố mẹ. Bộ đồ chơi cafe công chúa từ Dantoy sẽ giúp bé có những giờ giải trí vui vẻ đồng thời phát huy trí tưởng tượng, học cách làm việc theo nhóm và khám phá công việc của mọi người xung quanh.', '<span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Trẻ con hay thích “bắt chước”, đóng vai các “nhân vật” từ cuộc sống xung quanh mình, đặc biệt là bố mẹ. Bộ đồ chơi cafe công chúa từ Dantoy sẽ giúp bé có những giờ giải trí vui vẻ đồng thời phát huy trí tưởng tượng, học cách làm việc theo nhóm và khám phá công việc của mọi người xung quanh. Bé có thể rủ bạn bè cùng chơi để tăng khả năng giao tiếp và biết cách chăm sóc người khác. Hãy nhanh tay mang đến món đồ chơi hiện đại này để làm món quà tặng thật ý nghĩa cho bé yêu của bạn.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><div style="border: 0px; font-family: Tahoma, Geneva, sans-serif; line-height: 20px; margin: 0px; padding: 0px; color: rgb(51, 51, 51);"> <h5 style="border: 0px; font-family: inherit; font-size: 0.95em; font-style: inherit; font-variant: inherit; line-height: inherit; margin: 0px; padding: 0px 0px 0px 16px; background-image: url(http://shop-static.123.vn/v2/images/bullet.png); color: rgb(100, 100, 100); background-position: 0px 6px; background-repeat: no-repeat no-repeat;"> Chất liệu nhựa cao cấp</h5> <div style="border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; margin: 0px; padding: 0px;"> Sản phẩm được làm từ chất liệu nhựa cao cấp theo tiêu chuẩn Châu Âu, tuyệt đối an toàn cho bé khi chơi.<br  /> &nbsp;</div> <h5 style="border: 0px; font-family: inherit; font-size: 0.95em; font-style: inherit; font-variant: inherit; line-height: inherit; margin: 0px; padding: 0px 0px 0px 16px; background-image: url(http://shop-static.123.vn/v2/images/bullet.png); color: rgb(100, 100, 100); background-position: 0px 6px; background-repeat: no-repeat no-repeat;"> Kiểu dáng đẹp mắt</h5> Bộ sản phẩm gồm bình trà, các cốc, muỗng, dĩa...để bé có thể tập uống cafe như người lớn. Bé có thể rủ thêm bạn chơi cùng, tăng khả năng giao tiếp và học cách chăm sóc bạn bè.</div><div style="border: 0px; font-family: Tahoma, Geneva, sans-serif; line-height: 20px; margin: 0px; padding: 0px; color: rgb(51, 51, 51);"> <br  /> <h5 style="border: 0px; font-family: inherit; font-size: 0.95em; font-style: inherit; font-variant: inherit; line-height: inherit; margin: 0px; padding: 0px 0px 0px 16px; background-image: url(http://shop-static.123.vn/v2/images/bullet.png); color: rgb(100, 100, 100); background-position: 0px 6px; background-repeat: no-repeat no-repeat;"> Phát huy trí tưởng tượng</h5> <div style="border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; margin: 0px; padding: 0px;"> Bộ đồ ăn giúp bé phát huy trí tưởng tượng, sáng tạo cần thiết cho việc học của bé sau này.&nbsp;<br  /> &nbsp;</div> <h5 style="border: 0px; font-family: inherit; font-size: 0.95em; font-style: inherit; font-variant: inherit; line-height: inherit; margin: 0px; padding: 0px 0px 0px 16px; background-image: url(http://shop-static.123.vn/v2/images/bullet.png); color: rgb(100, 100, 100); background-position: 0px 6px; background-repeat: no-repeat no-repeat;"> Rèn sự khéo léo, cẩn thận</h5> <div style="border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; margin: 0px; padding: 0px;"> Bộ đồ chơi giúp bé rèn sự khéo léo, cẩn thận và tác phong nhanh nhẹn. Đồng thời, bé cũng sẽ tự tin hơn trong cuộc sống vì có cảm giác mình cũng đã lớn và làm những việc như bố mẹ.<br  /> &nbsp;</div> <h5 style="border: 0px; font-family: inherit; font-size: 0.95em; font-style: inherit; font-variant: inherit; line-height: inherit; margin: 0px; padding: 0px 0px 0px 16px; background-image: url(http://shop-static.123.vn/v2/images/bullet.png); color: rgb(100, 100, 100); background-position: 0px 6px; background-repeat: no-repeat no-repeat;"> Họa tiết đáng yêu</h5> <div style="border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; margin: 0px; padding: 0px;"> Bộ có họa tiết đáng yêu trên nền màu hồng, tím đẹp mắt, phù hợp với các bé gái, cho bé thích thú hơn khi chơi đồng thời làm đẹp thêm cho căn phòng của bé.<br  /> <br  /> Click&nbsp;<strong style="border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; margin: 0px; padding: 0px;">MUA NGAY</strong>&nbsp;để mang đến cho bé món đồ chơi bổ ích từ Dantoy.</div></div><br  />', '', '', ''),
(64, 6, '', 1, 0, 1373807933, 1373807933, 1, 1373807933, 0, 2, 'S000064', 1, 343000, 0, 'VND', 1, '2013_07/1373273127_kleinschmidt_20130703_4336.jpg', 'thumb/1373273127_kleinschmidt_20130703_4336.jpg|block/1373273127_kleinschmidt_20130703_4336.jpg', '', '', 0, 0, 1, 1, 1, '0', 1, 1, 1, 0, 0, 0, 1, 'Khay đồ ăn sáng Dantoy', 'Khay-do-an-sang-Dantoy', '', 'bắt đầu,khả năng,quan sát,nhận thức,phát triển,bắt chước,nhân vật,đặc biệt,bố mẹ,bộ đồ,đồ ăn,giải trí,phát huy,tưởng tượng,làm việc,khám phá', '', 'Bắt đầu từ 2 tuổi, khả năng quan sát và nhận thức cuộc sống xung quanh của trẻ phát triển vượt bậc. Trẻ thích “bắt chước”, đóng vai các “nhân vật” từ cuộc sống xung quanh mình, đặc biệt là bố mẹ. Bộ đồ chơi đồ ăn sáng từ Dantoy sẽ giúp bé có những giờ giải trí vui vẻ đồng thời phát huy trí tưởng tượng, học cách làm việc theo nhóm và khám phá công việc của mọi người xung quanh.', '<span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Bắt đầu từ 2 tuổi, khả năng quan sát và nhận thức cuộc sống xung quanh của trẻ phát triển vượt bậc. Trẻ thích “bắt chước”, đóng vai các “nhân vật” từ cuộc sống xung quanh mình, đặc biệt là bố mẹ. Bộ đồ chơi đồ ăn sáng từ Dantoy sẽ giúp bé có những giờ giải trí vui vẻ đồng thời phát huy trí tưởng tượng, học cách làm việc theo nhóm và khám phá công việc của mọi người xung quanh. Bé có thể rủ bạn bè cùng chơi để tăng khả năng giao tiếp và biết cách chăm sóc người khác. Hãy nhanh tay mang đến món đồ chơi hiện đại này để làm món quà tặng thật ý nghĩa cho bé yêu của bạn.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><div style="border: 0px; font-family: Tahoma, Geneva, sans-serif; line-height: 20px; margin: 0px; padding: 0px; color: rgb(51, 51, 51);"> <h5 style="border: 0px; font-family: inherit; font-size: 0.95em; font-style: inherit; font-variant: inherit; line-height: inherit; margin: 0px; padding: 0px 0px 0px 16px; background-image: url(http://shop-static.123.vn/v2/images/bullet.png); color: rgb(100, 100, 100); background-position: 0px 6px; background-repeat: no-repeat no-repeat;"> Chất liệu nhựa cao cấp</h5> <div style="border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; margin: 0px; padding: 0px;"> Sản phẩm được làm từ chất liệu nhựa cao cấp theo tiêu chuẩn Châu Âu, tuyệt đối an toàn cho bé khi chơi.<br  /> &nbsp;</div> <h5 style="border: 0px; font-family: inherit; font-size: 0.95em; font-style: inherit; font-variant: inherit; line-height: inherit; margin: 0px; padding: 0px 0px 0px 16px; background-image: url(http://shop-static.123.vn/v2/images/bullet.png); color: rgb(100, 100, 100); background-position: 0px 6px; background-repeat: no-repeat no-repeat;"> Kiểu dáng đẹp mắt</h5> Bộ sản phẩm gồm các dĩa, nĩa, dao, cốc, trứng...để bé có thể tập ăn như người lớn. Bé có thể rủ thêm bạn chơi cùng, tăng khả năng giao tiếp và học cách chăm sóc bạn bè.</div><div style="border: 0px; font-family: Tahoma, Geneva, sans-serif; line-height: 20px; margin: 0px; padding: 0px; color: rgb(51, 51, 51);"> <br  /> <h5 style="border: 0px; font-family: inherit; font-size: 0.95em; font-style: inherit; font-variant: inherit; line-height: inherit; margin: 0px; padding: 0px 0px 0px 16px; background-image: url(http://shop-static.123.vn/v2/images/bullet.png); color: rgb(100, 100, 100); background-position: 0px 6px; background-repeat: no-repeat no-repeat;"> Phát huy trí tưởng tượng</h5> <div style="border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; margin: 0px; padding: 0px;"> Bộ đồ ăn giúp bé phát huy trí tưởng tượng, sáng tạo cần thiết cho việc học của bé sau này. Bé có thể đóng vai mẹ, chị làm đồ ăn sáng cho các con, em hoặc tự mình tập ăn, uống giống bố mẹ.<br  /> &nbsp;</div> <h5 style="border: 0px; font-family: inherit; font-size: 0.95em; font-style: inherit; font-variant: inherit; line-height: inherit; margin: 0px; padding: 0px 0px 0px 16px; background-image: url(http://shop-static.123.vn/v2/images/bullet.png); color: rgb(100, 100, 100); background-position: 0px 6px; background-repeat: no-repeat no-repeat;"> Rèn sự khéo léo, cẩn thận</h5> <div style="border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; line-height: inherit; margin: 0px; padding: 0px;"> Bộ đồ chơi giúp bé rèn sự khéo léo, cẩn thận và tác phong nhanh nhẹn. Đồng thời, bé cũng sẽ tự tin hơn trong cuộc sống vì có cảm giác mình cũng đã lớn và làm những việc như bố mẹ.</div></div><br  />', '', '', ''),
(65, 6, '', 1, 0, 1373808040, 1373808040, 1, 1373808040, 0, 2, 'S000065', 1, 1759000, 0, 'VND', 1, '2013_07/1354776676_magic_20121205_028.jpg', 'thumb/1354776676_magic_20121205_028.jpg|block/1354776676_magic_20121205_028.jpg', '', '', 0, 0, 1, 1, 1, '0', 1, 1, 1, 2, 0, 0, 1, 'Đàn piano', 'Dan-piano', '', 'lợi ích,âm nhạc,giới hạn,sơ sinh,thời gian,sau đó,có thể,quan trọng,giờ phút,giải trí,thú vị,nâng cao,giao tiếp,năng lực', '', 'Lợi ích của âm nhạc không chỉ giới hạn đối với trẻ sơ sinh. Trong thời gian sau đó, âm nhạc có thể như là một phần quan trọng trong cuộc sống của trẻ. Hãy tặng cho bé yêu nhà bạn chiếc đàn của thương hiệu Janod để bé có những giờ phút giải trí thú vị, đồng thời giúp bé nâng cao kĩ năng vận động, cải thiện kĩ năng giao tiếp và năng lực cảm thụ âm nhạc.', '<span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Lợi ích của âm nhạc không chỉ giới hạn đối với trẻ sơ sinh. Trong thời gian sau đó, âm nhạc có thể như là một phần quan trọng trong cuộc sống của trẻ. Hãy tặng cho bé yêu nhà bạn chiếc đàn của thương hiệu Janod để bé có những giờ phút giải trí thú vị, đồng thời giúp bé nâng cao kĩ năng vận động, cải thiện kĩ năng giao tiếp và năng lực cảm thụ âm nhạc. Chiếc đàn xinh xắn với 11 nốt nhạc chuẩn để bé có thể chơi thật hay những bài nhạc cô dạy ở trường. Và giờ, ba mẹ có thể cho bé bộc lộ tài năng của bé rồi.&nbsp;</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><h5 style="border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 0.95em; line-height: 20px; margin: 0px; padding: 0px 0px 0px 16px; background-image: url(http://shop-static.123.vn/v2/images/bullet.png); color: rgb(100, 100, 100); background-position: 0px 6px; background-repeat: no-repeat no-repeat;"> Chất liệu cao cấp</h5><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Với chất liệu nhựa cao cấp, sản phẩm hoàn toàn không độc hại và luôn an toàn cho sức khỏe của bé. .Mẹ có thể an tâm để bé chơi đùa trong khi làm việc hay nấu bếp.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><h5 style="border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 0.95em; line-height: 20px; margin: 0px; padding: 0px 0px 0px 16px; background-image: url(http://shop-static.123.vn/v2/images/bullet.png); color: rgb(100, 100, 100); background-position: 0px 6px; background-repeat: no-repeat no-repeat;"> Thiết kế sinh động</h5><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Chiếc đàn có kiểu dáng nhỏ nhắn dễ thương, màu đỏ nổi bật, phù hợp sở thích của trẻ.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><h5 style="border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 0.95em; line-height: 20px; margin: 0px; padding: 0px 0px 0px 16px; background-image: url(http://shop-static.123.vn/v2/images/bullet.png); color: rgb(100, 100, 100); background-position: 0px 6px; background-repeat: no-repeat no-repeat;"> Phát triển nhiều kỹ năng</h5><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Với 11 nốt nhạc chuẩn, bé có thể chơi thật hay những bài nhạc cô dạy ở trường, giúp con bạn nâng cao kĩ năng vận động, cải thiện kĩ năng giao tiếp và cảm thụ âm nhạc.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Click&nbsp;</span><strong style="border: 0px; font-family: Tahoma, Geneva, sans-serif; line-height: 20px; margin: 0px; padding: 0px; color: rgb(51, 51, 51);">MUA NGAY</strong><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">&nbsp;Đàn piano đỏ của thương hiệu Janod để con yêu được chơi vui và rèn luyện nhiều kỹ năng các mẹ nhé!</span>', '', '', '');
INSERT INTO `nv3_shops_rows` (`id`, `listcatid`, `group_id`, `user_id`, `source_id`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `product_code`, `product_number`, `product_price`, `product_discounts`, `money_unit`, `product_unit`, `homeimgfile`, `homeimgthumb`, `homeimgalt`, `otherimage`, `imgposition`, `copyright`, `inhome`, `allowed_comm`, `allowed_rating`, `ratingdetail`, `allowed_send`, `allowed_print`, `allowed_save`, `hitstotal`, `hitscm`, `hitslm`, `showprice`, `vi_title`, `vi_alias`, `vi_description`, `vi_keywords`, `vi_note`, `vi_hometext`, `vi_bodytext`, `vi_address`, `vi_warranty`, `vi_promotional`) VALUES
(66, 6, '', 1, 0, 1373808097, 1374296351, 1, 1373808097, 0, 2, 'S000066', 1, 810000, 0, 'VND', 1, '2013_07/1350620405_48621.jpg', 'thumb/1350620405_48621.jpg|block/1350620405_48621.jpg', '', '2013_07/1373273127_kleinschmidt_20130703_4336.jpg|2013_07/1335250174807026211_574_574.jpg|2013_07/00b4eb6b9815223da72eb6eb457aeff8.jpg|2013_07/4bb277decc493d4dcc0acccacd12134e.jpg|2013_07/653afbb41d57bd94b4cb75bde35e0a87.jpg', 0, 0, 1, 1, 1, '0', 1, 1, 1, 82, 0, 0, 1, 'Tàu kéo gia đình', 'Tau-keo-gia-dinh', '', 'bộ đồ,cơ hội,gia đình,tận hưởng,lý thú,bố mẹ,em gái,trang bị,đầy đủ,sẵn sàng,tuyệt vời,hỗ trợ,ca nô,khởi hành', '', 'Bộ đồ chơi sẽ là cơ hội để cả gia đình tận hưởng chuyến đi biến lý thú và đáng nhớ. Gia đình gồm có bố mẹ, anh trai, em gái được trang bị đầy đủ đồ lặn sẵn sàng thả mình trong làn nước biển trong xanh. Chuyến đi này sẽ rất tuyệt vời nhờ sự hỗ trợ của chiếc ca nô siêu tốc. Mọi thứ đã sẵn sàng, các bé hãy cùng những người thân yêu khởi hành ra biển thôi nào.', '<span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Bộ đồ chơi sẽ là cơ hội để cả gia đình tận hưởng chuyến đi biến lý thú và đáng nhớ. Gia đình gồm có bố mẹ, anh trai, em gái được trang bị đầy đủ đồ lặn sẵn sàng thả mình trong làn nước biển trong xanh. Chuyến đi này sẽ rất tuyệt vời nhờ sự hỗ trợ của chiếc ca nô siêu tốc. Mọi thứ đã sẵn sàng, các bé hãy cùng những người thân yêu khởi hành ra biển thôi nào.&nbsp;</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><h5 style="border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 0.95em; line-height: 20px; margin: 0px; padding: 0px 0px 0px 16px; background-image: url(http://shop-static.123.vn/v2/images/bullet.png); color: rgb(100, 100, 100); background-position: 0px 6px; background-repeat: no-repeat no-repeat;"> Rèn luyện sự khéo léo, tỉ mỉ</h5><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Mô hình bao gồm các chi tiết có thể cử động linh hoạt giúp bé điều khiển theo ý thích. Thông qua quá trình chơi, bé sẽ tập tính kiên trì, nhẫn nại và luyện cho đôi tay khéo léo.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><h5 style="border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 0.95em; line-height: 20px; margin: 0px; padding: 0px 0px 0px 16px; background-image: url(http://shop-static.123.vn/v2/images/bullet.png); color: rgb(100, 100, 100); background-position: 0px 6px; background-repeat: no-repeat no-repeat;"> Kích thích tư duy sáng tạo</h5><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Trò chơi sẽ giúp bé luyện trí nhớ, tăng khả năng tư duy, trí tưởng tượng và khả năng liên tưởng. Cách xây dựng câu chuyện, liên kết giữa hình ảnh và ngôn ngữ…</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><h5 style="border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 0.95em; line-height: 20px; margin: 0px; padding: 0px 0px 0px 16px; background-image: url(http://shop-static.123.vn/v2/images/bullet.png); color: rgb(100, 100, 100); background-position: 0px 6px; background-repeat: no-repeat no-repeat;"> Chất liệu nhựa cao cấp, an toàn</h5><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Các bộ phận đều được làm hoàn toàn bởi chất liệu nhựa ABS, không góc cạnh, tuyệt đối an toàn đến sức khỏe của bé. Mẹ sẽ an tâm cho bé thoải mái chơi đùa mà không lo sản phẩm gây nguy hại bé.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><h5 style="border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 0.95em; line-height: 20px; margin: 0px; padding: 0px 0px 0px 16px; background-image: url(http://shop-static.123.vn/v2/images/bullet.png); color: rgb(100, 100, 100); background-position: 0px 6px; background-repeat: no-repeat no-repeat;"> Tăng khả năng tương tác và hoạt động theo nhóm</h5><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Bộ đồ chơi được thiết kế để bé có thể chơi cùng bạn bè, cho bé giờ chơi vui nhộn hơn. Qua đó, bé sẽ tăng cường khả năng tương tác và hoạt động theo nhóm một cách hiệu quả.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><h5 style="border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 0.95em; line-height: 20px; margin: 0px; padding: 0px 0px 0px 16px; background-image: url(http://shop-static.123.vn/v2/images/bullet.png); color: rgb(100, 100, 100); background-position: 0px 6px; background-repeat: no-repeat no-repeat;"> Phát triển các giác quan</h5><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Bé luyện kỹ năng cầm, nắm các vật, từ đó học được cách phân biệt màu sắc và nhận biết các hình khối.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><h5 style="border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 0.95em; line-height: 20px; margin: 0px; padding: 0px 0px 0px 16px; background-image: url(http://shop-static.123.vn/v2/images/bullet.png); color: rgb(100, 100, 100); background-position: 0px 6px; background-repeat: no-repeat no-repeat;"> Dễ xếp, cất gọn trong nhà</h5><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Sau khi bé chơi xong, mẹ hướng dẫn bé xếp và cất gọn gàng vào trong hộp, vừa tiết kiệm không gian vừa tập tính gọn gàng cho bé.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Click&nbsp;</span><strong style="border: 0px; font-family: Tahoma, Geneva, sans-serif; line-height: 20px; margin: 0px; padding: 0px; color: rgb(51, 51, 51);">MUA NGAY</strong><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">&nbsp;mô hình trò chơi Tàu kéo gia đình của thương hiệu Playmobil, để không chỉ mang đến bé những phút giây giải trí thật vui mà còn tăng cường và phát triển thêm nhiều kĩ năng quan trọng. &nbsp;</span>', '', '', 'Khuyến mãi cốc thủy tinh khi mua sản phẩm'),
(67, 6, '', 1, 0, 1373808163, 1376757385, 1, 1373808163, 0, 2, 'S000067', 1, 25000, 30, 'VND', 1, '2013_07/1352979178_mino_02.jpg', 'thumb/1352979178_mino_02.jpg|block/1352979178_mino_02.jpg', '', '', 0, 0, 1, 1, 1, '0', 1, 1, 1, 2, 0, 0, 1, 'Puzzle Mi&amp;Nô sơn hàng rào', 'Puzzle-Mi-No-son-hang-rao', '', 'thích thú,ngoài ra,hoàn thiện,ngộ nghĩnh,trò chuyện,tíu tít,màu sắc,trẻ thơ,công ty,sản xuất', '', 'Hình ảnh cô mèo Mi Mi đáng yêu và chú chó Nô Nô xinh xắn đang vui đùa cùng nhau sẽ khiến bé thích thú. Ngoài ra, khi hoàn thiện được mảnh ghép, bé sẽ còn được thấy hình ảnh của chú vịt con ngộ nghĩnh hay 2 chú chim đang trò chuyện tíu tít. Một bức tranh đầy màu sắc trẻ thơ đã được công ty Phan Thị sản xuất dành riêng cho bé yêu của bạn.', '<span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Hình ảnh cô mèo Mi Mi đáng yêu và chú chó Nô Nô xinh xắn đang vui đùa cùng nhau sẽ khiến bé thích thú. Ngoài ra, khi hoàn thiện được mảnh ghép, bé sẽ còn được thấy hình ảnh của chú vịt con ngộ nghĩnh hay 2 chú chim đang trò chuyện tíu tít. Một bức tranh đầy màu sắc trẻ thơ đã được công ty Phan Thị sản xuất dành riêng cho bé yêu của bạn.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><h5 style="border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 0.95em; line-height: 20px; margin: 0px; padding: 0px 0px 0px 16px; background-image: url(http://shop-static.123.vn/v2/images/bullet.png); color: rgb(100, 100, 100); background-position: 0px 6px; background-repeat: no-repeat no-repeat;"> Chất liệu an toàn</h5><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Sản phẩm được làm từ chất liệu xốp EVA cứng, bền chắc và mực in có nguồn gốc từ dầu đậu nành, đã vượt qua các kiểm nghiệm và chứng nhận hoàn toàn không độc hại.&nbsp;Các miếng ghép đều dai, mềm, bảo vệ tay trẻ không bị xước khi chơi. Bạn và bé có thể yên tâm chơi với sản phẩm mà không gây hại đến sức khỏe.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><h5 style="border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 0.95em; line-height: 20px; margin: 0px; padding: 0px 0px 0px 16px; background-image: url(http://shop-static.123.vn/v2/images/bullet.png); color: rgb(100, 100, 100); background-position: 0px 6px; background-repeat: no-repeat no-repeat;"> Phát triển tư duy</h5><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Thiết kế bộ gồm 56 mảnh ghép về hình ảnh cô mèo Mi và chú chó Nô đang sơn hàng rào. Từ đây, bé phải tư duy, suy luận logic để ghép các mảnh lại với nhau sao cho vừa khít và chính xác, tạo thành một bức tranh hoàn chỉnh. Nhờ đó, các bé sẽ được phát triển khả năng lập luận, giải quyết vấn đề, cũng như rèn thói quen&nbsp;quan sát, thao tác tỉ mỉ và chính xác.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><h5 style="border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 0.95em; line-height: 20px; margin: 0px; padding: 0px 0px 0px 16px; background-image: url(http://shop-static.123.vn/v2/images/bullet.png); color: rgb(100, 100, 100); background-position: 0px 6px; background-repeat: no-repeat no-repeat;"> Rèn cho đôi tay khéo léo</h5><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Khi bước vào độ tuổi mầm non, trò chơi này còn giúp bé hoàn thiện sự khéo léo của đôi tay để cầm viết được linh hoạt hơn trước khi vào trường tiểu học.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><h5 style="border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 0.95em; line-height: 20px; margin: 0px; padding: 0px 0px 0px 16px; background-image: url(http://shop-static.123.vn/v2/images/bullet.png); color: rgb(100, 100, 100); background-position: 0px 6px; background-repeat: no-repeat no-repeat;"> Gắn kết gia đình</h5><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Ba mẹ có thể kế những câu chuyện thú vị quanh hai nhân vật này để tăng thêm sự hứng thú, say mê cho trẻ trong lúc chơi, đồng thời các thành viên trong gia đình sẽ có thêm những giờ vui chơi bổ ích, thêm gần gũi và hiểu về nhau để gia đình luôn đầm ấm.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><h5 style="border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 0.95em; line-height: 20px; margin: 0px; padding: 0px 0px 0px 16px; background-image: url(http://shop-static.123.vn/v2/images/bullet.png); color: rgb(100, 100, 100); background-position: 0px 6px; background-repeat: no-repeat no-repeat;"> Màu sắc đa dạng, rực rỡ</h5><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Các mảnh ghép của Phan Thị được thiết kế đầy màu sắc, giúp phát triển thị giác của trẻ, đồng thời kích thích sự thích thú, chú ý của bé vào món đồ chơi để bé vừa chơi vui, vừa được rèn những kỹ năng cần thiết.&nbsp;</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Click&nbsp;</span><strong style="border: 0px; font-family: Tahoma, Geneva, sans-serif; line-height: 20px; margin: 0px; padding: 0px; color: rgb(51, 51, 51);">MUA NGAY&nbsp;</strong><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">để sở hữu bộ xếp hình đẹp mắt và bổ ích từ Phan Thị.</span>', '', '', ''),
(68, 6, '', 1, 0, 1373808262, 1376756516, 1, 1373808262, 0, 2, 'S000068', 1, 810000, 20, 'VND', 1, '2013_07/1369905179_bkids_20130528_004357.jpg', 'thumb/1369905179_bkids_20130528_004357.jpg|block/1369905179_bkids_20130528_004357.jpg', '', '', 0, 0, 1, 1, 1, '0', 1, 1, 1, 2, 0, 0, 1, 'Đoàn tàu xếp chữ luyện âm Bkids', 'Doan-tau-xep-chu-luyen-am-Bkids', '', 'thông minh,rèn luyện,khả năng,ngoại ngữ,bộ đồ,minh họa,chữ cái,phát âm,yêu cầu,từ vựng,tương ứng,làm quen,mệnh lệnh,hội thoại', '', 'Đoàn tàu thông minh giúp bé rèn luyện khả năng học ngoại ngữ ngay từ khi còn nhỏ. Bộ đồ chơi gồm đoàn tàu xinh xắn cùng 7 khối xếp hình vuông vắn minh họa cho các chữ cái Alphabet và ba bài hát vui nhộn. Bộ đồ chơi dạy bé phát âm các chữ cái có trên khối xếp hình và đưa ra các yêu cầu để bé đi tìm chữ cái với từ vựng tương ứng. Không chỉ được học từng chữ cái, từ vựng, bé còn được làm quen với các câu mệnh lệnh thức, câu hội thoại ngắn bằng tiếng Anh.', '<span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Đoàn tàu thông minh giúp bé rèn luyện khả năng học ngoại ngữ ngay từ khi còn nhỏ. Bộ đồ chơi gồm đoàn tàu xinh xắn cùng 7 khối xếp hình vuông vắn minh họa cho các chữ cái Alphabet và ba bài hát vui nhộn. Bộ đồ chơi dạy bé phát âm các chữ cái có trên khối xếp hình và đưa ra các yêu cầu để bé đi tìm chữ cái với từ vựng tương ứng. Không chỉ được học từng chữ cái, từ vựng, bé còn được làm quen với các câu mệnh lệnh thức, câu hội thoại ngắn bằng tiếng Anh.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><h5 style="border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 0.95em; line-height: 20px; margin: 0px; padding: 0px 0px 0px 16px; background-image: url(http://shop-static.123.vn/v2/images/bullet.png); color: rgb(100, 100, 100); background-position: 0px 6px; background-repeat: no-repeat no-repeat;"> Gồm 7 khối xếp hình vuông vắn</h5><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Bộ đồ chơi gồm đoàn tàu xinh xắn cùng 7 khối xếp hình vuông vắn minh họa cho các chữ cái Alphabet và ba bài hát vui nhộn.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><h5 style="border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 0.95em; line-height: 20px; margin: 0px; padding: 0px 0px 0px 16px; background-image: url(http://shop-static.123.vn/v2/images/bullet.png); color: rgb(100, 100, 100); background-position: 0px 6px; background-repeat: no-repeat no-repeat;"> Làm quen với tiếng Anh cơ bản</h5><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Đoàn tàu thông minh giúp bé rèn luyện khả năng học ngoại ngữ ngay từ khi còn nhỏ. Không chỉ được học từng chữ cái, từ vựng, bé còn được làm quen với các câu mệnh lệnh thức, câu hội thoại ngắn bằng tiếng Anh.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><h5 style="border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 0.95em; line-height: 20px; margin: 0px; padding: 0px 0px 0px 16px; background-image: url(http://shop-static.123.vn/v2/images/bullet.png); color: rgb(100, 100, 100); background-position: 0px 6px; background-repeat: no-repeat no-repeat;"> Nhiều màu sắc</h5><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Đoàn tàu thông minh với nhiều khối xếp hình có màu sắc bắt mắt, vui nhộn còn giúp bé ghi nhớ màu sắc cũng như các hình ảnh minh họa cho từ vựng.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><h5 style="border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 0.95em; line-height: 20px; margin: 0px; padding: 0px 0px 0px 16px; background-image: url(http://shop-static.123.vn/v2/images/bullet.png); color: rgb(100, 100, 100); background-position: 0px 6px; background-repeat: no-repeat no-repeat;"> Làm quen với các âm thanh mô phỏng</h5><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Bé còn được làm quen với các âm thanh mô phỏng tiếng tàu hỏa, mèo kêu hay tiếng chim trong tổ,...</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><h5 style="border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 0.95em; line-height: 20px; margin: 0px; padding: 0px 0px 0px 16px; background-image: url(http://shop-static.123.vn/v2/images/bullet.png); color: rgb(100, 100, 100); background-position: 0px 6px; background-repeat: no-repeat no-repeat;"> Chất liệu nhựa an toàn</h5><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Chất liệu nhựa an toàn, không chứa BPA gây hại cho bé. Mẹ có thể an tâm để bé chơi đùa trong khi làm việc hay nấu bếp.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><h5 style="border: 0px; font-family: Tahoma, Geneva, sans-serif; font-size: 0.95em; line-height: 20px; margin: 0px; padding: 0px 0px 0px 16px; background-image: url(http://shop-static.123.vn/v2/images/bullet.png); color: rgb(100, 100, 100); background-position: 0px 6px; background-repeat: no-repeat no-repeat;"> Sử dụng 2 pin AA, 1.5V</h5><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Sử dụng 2 pin AA 1.5V, đã được lắp sẵn cùng sản phẩm.</span><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><br style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;" /><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">Click&nbsp;</span><strong style="border: 0px; font-family: Tahoma, Geneva, sans-serif; line-height: 20px; margin: 0px; padding: 0px; color: rgb(51, 51, 51);">MUA NGAY</strong><span style="color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: 20px;">&nbsp;đồ chơi Bkids để làm quà tặng bé thật dễ thương và an toàn các mẹ nhé!</span>', '', '', ''),
(69, 5, '', 1, 0, 1374381051, 1374381651, 1, 1374381051, 0, 2, 'S000069', 1, 150000, 0, 'VND', 1, '2013_07/b6a43a9bf5ed9476f0278bfa51903e2a.jpg', 'thumb/b6a43a9bf5ed9476f0278bfa51903e2a.jpg|block/b6a43a9bf5ed9476f0278bfa51903e2a.jpg', '', '', 0, 0, 1, 1, 1, '0', 1, 1, 1, 1, 0, 0, 1, 'Áo khoác nữ chấm bi', 'Ao-khoac-nu-cham-bi', '', 'thời trang', '', 'Áo khoác nữ chấm bi thời trang Phúc An', '<p style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline; color: rgb(51, 51, 51); font-family: Arial, Geneva, sans-serif; line-height: 14px; text-align: center;"> <span style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; font-size: 14px; vertical-align: baseline; background-position: initial initial; background-repeat: initial initial;"><strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">ÁO KHOÁC NỮ CHẦM BI - THỜI TRANG PHÚC AN</strong></span><br style="margin: 0px; padding: 0px; border: 0px none; list-style: none;" /> <span style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; font-size: 14px; vertical-align: baseline; background-position: initial initial; background-repeat: initial initial;"><strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">MÃ SỐ 0011. GIÁ: 150000đ</strong></span><br style="margin: 0px; padding: 0px; border: 0px none; list-style: none;" /> <br style="margin: 0px; padding: 0px; border: 0px none; list-style: none;" /> <img alt="" original="http://s2.img.edn.vn/2013/4/4/44165d89c9ff26fe3b994cd27e62646b.jpg" src="http://s2.img.edn.vn/2013/4/4/44165d89c9ff26fe3b994cd27e62646b.jpg" style="margin: 0px auto; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline; display: inline;" /></p><p style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline; color: rgb(51, 51, 51); font-family: Arial, Geneva, sans-serif; line-height: 14px; text-align: center;"> <img alt="" original="http://s2.img.edn.vn/2013/9/c/9cfe913be3bfd00a4fe40f7b5cbc9dde.jpg" src="http://s2.img.edn.vn/2013/9/c/9cfe913be3bfd00a4fe40f7b5cbc9dde.jpg" style="margin: 0px auto; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline; display: inline;" /></p><p style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline; color: rgb(51, 51, 51); font-family: Arial, Geneva, sans-serif; line-height: 14px; text-align: center;"> <img alt="" original="http://s2.img.edn.vn/2013/4/f/4f66e0a33ba496b7feb0402ae21d467a.jpg" src="http://s2.img.edn.vn/2013/4/f/4f66e0a33ba496b7feb0402ae21d467a.jpg" style="margin: 0px auto; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline; display: inline;" /></p>', '', '', ''),
(70, 5, '', 1, 0, 1374381576, 1374381658, 1, 1374381576, 0, 2, 'S000070', 1, 215000, 0, 'VND', 1, '2013_07/044d1645293953eff22453792438c513.jpg', 'thumb/044d1645293953eff22453792438c513.jpg|block/044d1645293953eff22453792438c513.jpg', '', '', 0, 0, 1, 1, 1, '0', 1, 1, 1, 8, 0, 0, 1, 'Đầm voan thiết kế cổ lọ 6 nút Hàn Quốc, cực xinh', 'Dam-voan-thiet-ke-co-lo-6-nut-Han-Quoc-cuc-xinh', '', 'thiết kế,cao cấp,màu sắc', '', 'Đầm voan thiết kế cổ lọ 6 nút Hàn Quốc, cực xinh Chất liệu: Voan Thái cao cấp, có lớp lót trong dày dặn, rất đẹp Màu sắc: Trắng, Cam Free size Form rất đẹp. Kiểu dáng giống hình 100%', '<h2> <span style="font-family:times new roman,times,serif;"><span style="font-size:14px;">Đầm voan thiết kế cổ lọ 6 nút Hàn Quốc, cực xinh Chất liệu: Voan Thái cao cấp, có lớp lót trong dày dặn, rất đẹp Màu sắc: Trắng, Cam Free size Form rất đẹp. Kiểu dáng giống hình 100%</span></span></h2><div style="text-align: center;"> <img alt="" original="http://s2.img.edn.vn/2013/0/4/044d1645293953eff22453792438c513.jpg" src="http://s2.img.edn.vn/2013/0/4/044d1645293953eff22453792438c513.jpg" style="background-color: transparent; color: rgb(51, 51, 51); font-family: Arial, Geneva, sans-serif; line-height: 14px; margin: 0px auto; padding: 0px; border: none; list-style: none; outline: 0px; vertical-align: baseline; display: inline; height: 1050px; width: 700px;" /></div><p style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline; color: rgb(51, 51, 51); font-family: Arial, Geneva, sans-serif; line-height: 14px; text-align: center;"> <img alt="" original="http://s2.img.edn.vn/2013/9/7/97079d57fa4879470f9f974aa25a63bf.jpg" src="http://s2.img.edn.vn/2013/9/7/97079d57fa4879470f9f974aa25a63bf.jpg" style="margin: 0px auto; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline; display: inline; height: 1050px; width: 700px;" /></p><div> &nbsp;</div>', '', '', ''),
(71, 5, '', 1, 0, 1374384195, 1374409836, 1, 1374384195, 0, 2, 'S000071', 1, 216000, 10, 'VND', 1, '2013_07/2188e329ec4acfe314d19899fb1c6af1.jpg', 'thumb/2188e329ec4acfe314d19899fb1c6af1.jpg|block/2188e329ec4acfe314d19899fb1c6af1.jpg', '', '', 0, 0, 1, 1, 1, '0', 1, 1, 1, 48, 0, 0, 1, 'Đầm Cúp Phối Ren Cực Xinh Nhé Các Nàng', 'Dam-Cup-Phoi-Ren-Cuc-Xinh-Nhe-Cac-Nang', '', '', '', 'Đầm Cup Phối Ren Cực Xinh', 'Đầm Cup Phối Ren Cực Xinh', '', '', ''),
(72, 1, '', 1, 0, 1374385186, 1374420771, 1, 1374385186, 0, 2, 'S000072', 1, 92000, 0, 'VND', 1, '2013_07/yki1372082741.jpg', 'thumb/yki1372082741.jpg|block/yki1372082741.jpg', '', '', 0, 0, 1, 1, 1, '0', 1, 1, 1, 25, 0, 0, 1, 'Túi đựng bút, vật dụng cá nhân đơn giản, cá tính', 'Tui-dung-but-vat-dung-ca-nhan-don-gian-ca-tinh', '', 'cá nhân', '', 'Túi đựng bút, vật dụng cá nhân đơn giản, cá tính', '<div style="text-align: center;"> <span style="font-size:14px;"><span style="background-color: transparent; color: rgb(0, 51, 0); font-family: Arial, Tahoma, Verdana; line-height: 14px; text-align: center;">Thiết kế đơn giản, tinh tế, ấn tượng;</span></span></div><div style="margin: 16px 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline; line-height: 14px; font-family: Arial, Tahoma, Verdana; color: rgb(126, 137, 146); text-align: center;"> <span style="font-size:14px;"><span style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"><span style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline; color: rgb(0, 51, 0);">Chất liệu: giả da;</span></span></span></div><div style="margin: 16px 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline; line-height: 14px; font-family: Arial, Tahoma, Verdana; color: rgb(126, 137, 146); text-align: center;"> <span style="font-size:14px;"><span style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"><span style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline; color: rgb(0, 51, 0);">Kích thước: 6.5x21 cm;</span></span></span></div><div style="margin: 16px 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline; line-height: 14px; font-family: Arial, Tahoma, Verdana; color: rgb(126, 137, 146); text-align: center;"> <span style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; font-size: 18px; vertical-align: baseline; background-position: initial initial; background-repeat: initial initial;"><span style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline; font-family: arial;"><strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"><span style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline; font-family: Arial, Tahoma, Verdana; color: rgb(0, 51, 0);"><img alt="" original="http://g.vatgia.vn/gallery_img/14/qgl1372082749.jpg" src="http://g.vatgia.vn/gallery_img/14/qgl1372082749.jpg" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline; display: inline;" /></span></strong></span></span></div><div style="margin: 16px 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline; line-height: 14px; font-family: Arial, Tahoma, Verdana; color: rgb(126, 137, 146); text-align: center;"> <span style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; font-size: 18px; vertical-align: baseline; background-position: initial initial; background-repeat: initial initial;"><span style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline; font-family: arial;"><strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"><span style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline; font-family: Arial, Tahoma, Verdana; color: rgb(0, 51, 0);"><img alt="" original="http://g.vatgia.vn/gallery_img/14/krm1372082758.jpg" src="http://g.vatgia.vn/gallery_img/14/krm1372082758.jpg" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline; display: inline;" /><img alt="" original="http://g.vatgia.vn/gallery_img/14/oaj1372082745.jpg" src="http://g.vatgia.vn/gallery_img/14/oaj1372082745.jpg" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline; display: inline;" /></span></strong></span></span></div><div style="margin: 16px 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline; line-height: 14px; font-family: Arial, Tahoma, Verdana; color: rgb(126, 137, 146); text-align: center;"> <span style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; font-size: 18px; vertical-align: baseline; background-position: initial initial; background-repeat: initial initial;"><span style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline; font-family: arial;"><strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"><span style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline; font-family: Arial, Tahoma, Verdana; color: rgb(0, 51, 0);"><img alt="" original="http://g.vatgia.vn/gallery_img/14/yki1372082741.jpg" src="http://g.vatgia.vn/gallery_img/14/yki1372082741.jpg" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline; display: inline;" /></span></strong></span></span></div><div style="margin: 16px 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline; line-height: 14px; font-family: Arial, Tahoma, Verdana; color: rgb(126, 137, 146); text-align: center;"> <span style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; font-size: 18px; vertical-align: baseline; background-position: initial initial; background-repeat: initial initial;"><span style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline; font-family: arial;"><strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"><span style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline; font-family: Arial, Tahoma, Verdana; color: rgb(0, 51, 0);"><img alt="" original="http://g.vatgia.vn/gallery_img/14/bof1372082773.jpg" src="http://g.vatgia.vn/gallery_img/14/bof1372082773.jpg" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline; display: inline;" /></span></strong></span></span></div>', '', '', ''),
(73, 1, '', 1, 0, 1374385324, 1381637465, 1, 1374385324, 0, 2, 'S000073', 1, 650000, 10, 'VND', 1, '2013_07/t2vxxlxj8axxxxxxxx_116457923.jpg', 'thumb/t2vxxlxj8axxxxxxxx_116457923.jpg|block/t2vxxlxj8axxxxxxxx_116457923.jpg', '', '2013_07/507e94380fa70b5072bafa02018658e0.jpg|2013_07/653afbb41d57bd94b4cb75bde35e0a87.jpg|2013_07/00b4eb6b9815223da72eb6eb457aeff8.jpg', 0, 0, 1, 1, 1, '0', 1, 1, 1, 221, 0, 0, 0, 'Miser - Máy massage trái cây cute', 'Miser-May-massage-trai-cay-cute', '', 'gia đình,ý nghĩa,mệt mỏi,ngay cả', '', 'Một món quà tặng cho bản thân và bạn bè gia đình cực kì ý nghĩa và đáng yêu. Giúp xua tan mệt mỏi ngay cả khi bạn đang làm việc..', 'Một món quà tặng cho bản thân và bạn bè gia đình cực kì ý nghĩa và đáng yêu. Giúp xua tan mệt mỏi ngay cả khi bạn đang làm việc..', '750ml', '14,5&#x25;', 'Khi mua đơn hàng bất kỳ từ 600.000đ, khách hàng được tặng ngay 1 trong những món quà&#x3A; Bàn ủi, Máy sấy tóc, Chảo không dính, Hộp Lock &amp; Lock.'),
(74, 2, '', 1, 0, 1374385518, 1374385518, 1, 1374385518, 0, 2, 'S000074', 1, 1300000, 0, 'VND', 1, '2013_07/4ab40346ab0b7984f3507adc89f4968d.jpg', 'thumb/4ab40346ab0b7984f3507adc89f4968d.jpg|block/4ab40346ab0b7984f3507adc89f4968d.jpg', '', '', 0, 0, 1, 1, 1, '0', 1, 1, 1, 16, 0, 0, 1, 'Đồng hồ thời trang nữ rolex', 'Dong-ho-thoi-trang-nu-rolex', '', 'thời trang', '', 'Đồng hồ thời trang nữ rolex', '<h1 id="title-product" itemprop="name"> <span style="font-size:12px;">Đồng hồ thời trang nữ rolex</span></h1>', '', '', ''),
(75, 2, '', 1, 0, 1374385617, 1374385617, 1, 1374385617, 0, 2, 'S000075', 1, 99000, 0, 'VND', 1, '2013_07/3b6e35ded5fc8ca815b5c103e92f9488.jpg', 'thumb/3b6e35ded5fc8ca815b5c103e92f9488.jpg|block/3b6e35ded5fc8ca815b5c103e92f9488.jpg', '', '', 0, 0, 1, 1, 1, '0', 1, 1, 1, 7, 0, 0, 1, 'Bộ sưu tập đồng hồ LED cực hot 2013', 'Bo-suu-tap-dong-ho-LED-cuc-hot-2013', '', 'sưu tập,sáng tạo,ý tưởng,thiết kế,đặc biệt,kết hợp,công nghệ,quy luật,thời trang', '', 'Bộ sưu tập đồng hồ LED từ những Sáng tạo ý tưởng thiết kế độc đáo với chất liệu đặc biệt kết hợp công nghệ đèn LED vượt trội tạo nên sự khác biệt,tuân theo những quy luật và độ chính xác cao.hợp thời trang và cực sành điệu', '<h2 class="summary-product" style="margin: 0px 0px 10px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; font-size: 11px; vertical-align: baseline; font-weight: normal; text-rendering: optimizelegibility; color: rgb(102, 102, 102); line-height: 14px; font-family: Arial, Geneva, sans-serif;"> Bộ sưu tập đồng hồ LED từ những Sáng tạo ý tưởng thiết kế độc đáo với chất liệu đặc biệt kết hợp công nghệ đèn LED vượt trội tạo nên sự khác biệt,tuân theo những quy luật và độ chính xác cao.hợp thời trang và cực sành điệu</h2>', '', '', '');
INSERT INTO `nv3_shops_rows` (`id`, `listcatid`, `group_id`, `user_id`, `source_id`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `product_code`, `product_number`, `product_price`, `product_discounts`, `money_unit`, `product_unit`, `homeimgfile`, `homeimgthumb`, `homeimgalt`, `otherimage`, `imgposition`, `copyright`, `inhome`, `allowed_comm`, `allowed_rating`, `ratingdetail`, `allowed_send`, `allowed_print`, `allowed_save`, `hitstotal`, `hitscm`, `hitslm`, `showprice`, `vi_title`, `vi_alias`, `vi_description`, `vi_keywords`, `vi_note`, `vi_hometext`, `vi_bodytext`, `vi_address`, `vi_warranty`, `vi_promotional`) VALUES
(76, 3, '', 1, 0, 1374385771, 1374385771, 1, 1374385771, 0, 2, 'S000076', 1, 2900000, 0, 'VND', 1, '2013_07/6ce7a70426b73fa2c20c11e4a6eb5d9c.jpg', 'thumb/6ce7a70426b73fa2c20c11e4a6eb5d9c.jpg|block/6ce7a70426b73fa2c20c11e4a6eb5d9c.jpg', '', '', 0, 0, 1, 1, 1, '0', 1, 1, 1, 2, 0, 0, 1, 'Sony Ericsson X10 XPERIA', 'Sony-Ericsson-X10-XPERIA', '', '', '', 'Sony Ericsson X10 XPERIA', '<table border="0" cellpadding="0" cellspacing="0" class="product-parameters" style="margin: 0px 0px 10px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline; border-collapse: collapse; border-spacing: 0px; width: 730px; color: rgb(51, 51, 51); font-family: Arial, Geneva, sans-serif; line-height: 14px;"> <tbody style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td class="frs" rowspan="11" style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: rgb(245, 245, 245); outline: 0px; vertical-align: middle; width: 223px; color: rgb(0, 0, 0); font-weight: bold; text-align: center;" valign="top"> hức năng cơ bản</td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Máy ảnh chính</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> 8.0 MP (3264x2448 pixels)</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Máy ảnh phụ</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> Không có</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Chế độ quay phim</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> WVGA@30fps</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Video Call</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> Không hỗ trợ</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Xem TV</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> không</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Nghe nhạc</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> Có</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Ghi âm</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> Có</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">FM-Radio</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> Có</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Email</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> -</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Ứng dụng văn phòng</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> không</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Số SIM</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> 1 SIM</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td class="frs" rowspan="3" style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: rgb(245, 245, 245); outline: 0px; vertical-align: middle; width: 223px; color: rgb(0, 0, 0); font-weight: bold; text-align: center;" valign="top"> Màn hình</td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Loại màn hình</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> TFT 65K màu</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Độ phân giải màn hình</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> 480 x 854pixels</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Kích thước màn hình</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> &nbsp;</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td class="frs" rowspan="6" style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: rgb(245, 245, 245); outline: 0px; vertical-align: middle; width: 223px; color: rgb(0, 0, 0); font-weight: bold; text-align: center;" valign="top"> Cấu hình nâng cao</td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Bộ vi xử lý (CPU)</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> Qualcomm QSD8250 Snapdragon, 1 GHz Scorpion</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Bộ xử lý đồ họa (GPU)</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> -</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Bộ nhớ trong</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> 1 GB</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">RAM</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> 384MB</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Hỗ trợ thẻ nhớ</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> Micro SD</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Hệ điều hành</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> Android OS</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td class="frs" rowspan="4" style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: rgb(245, 245, 245); outline: 0px; vertical-align: middle; width: 223px; color: rgb(0, 0, 0); font-weight: bold; text-align: center;" valign="top"> Kết nối dữ liệu cơ bản</td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Mạng 3G - 4G</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> HSDPA 7.2 Mbps</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Wifi</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> Wi-Fi 802.11 b/g</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Bluetooth</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> Bluetooth V2.0 với A2DP</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">GPS</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> A - GPS</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td class="frs" rowspan="2" style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: rgb(245, 245, 245); outline: 0px; vertical-align: middle; width: 223px; color: rgb(0, 0, 0); font-weight: bold; text-align: center;" valign="top"> Kết nối - tính năng khác</td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Tính năng - kết nối khác</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> Micro USB</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Tính năng đặc biệt</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> -</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td class="frs" rowspan="4" style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: rgb(245, 245, 245); outline: 0px; vertical-align: middle; width: 223px; color: rgb(0, 0, 0); font-weight: bold; text-align: center;" valign="top"> Thông số vật lý</td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Loại điện thoại</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> Cảm ứng</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Màu sắc</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> -</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Kích thước</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> 119.0 x 63.0 x 13.0 mm</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Trọng lượng (g)</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> 135</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td class="frs" rowspan="3" style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: rgb(245, 245, 245); outline: 0px; vertical-align: middle; width: 223px; color: rgb(0, 0, 0); font-weight: bold; text-align: center;" valign="top"> Thông số Pin</td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Loại Pin</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> Pin Li-Po BST-41 1500 mAh</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Thời gian đàm thoại</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> 10 giờ</td> </tr> <tr class="first-row" style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;"> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 223px;"> <strong style="margin: 0px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; vertical-align: baseline;">Thời gian chờ</strong></td> <td style="margin: 0px; padding: 5px 10px; border-right-style: none; border-bottom-style: none; border-left-style: none; border-top-color: rgb(187, 187, 187); list-style: none; background-color: transparent; outline: 0px; vertical-align: top; width: 224px;"> 400 giờ</td> </tr> </tbody></table><br  />', '', '', ''),
(77, 3, '', 1, 0, 1374385856, 1374385856, 1, 1374385856, 0, 2, 'S000077', 1, 5477000, 0, 'VND', 1, '2013_07/46d1b598031db4c1d1bfc1561ddfcd55.jpg', 'thumb/46d1b598031db4c1d1bfc1561ddfcd55.jpg|block/46d1b598031db4c1d1bfc1561ddfcd55.jpg', '', '', 0, 0, 1, 1, 1, '0', 1, 1, 1, 1, 0, 0, 1, 'LG Optimus L9 P760 &#40;LG Optimus L9 P768&#41;', 'LG-Optimus-L9-P760-LG-Optimus-L9-P768', '', 'hỗ trợ,cảm ứng', '', 'Hệ điều hành: Android 4.0, CPU: dual-core 1Ghz Bộ nhớ trong: 4 GB - Hỗ trợ thẻ nhớ ngoài lên đến 32 GB Màn hình cảm ứng điện dung IPS LCD, 16 triệu màu, rộng 4.7 inches', '<h2 class="summary-product" style="margin: 0px 0px 10px; padding: 0px; border: none; list-style: none; background-color: transparent; outline: 0px; font-size: 11px; vertical-align: baseline; font-weight: normal; text-rendering: optimizelegibility; color: rgb(102, 102, 102); line-height: 14px; font-family: Arial, Geneva, sans-serif;"> Hệ điều hành: Android 4.0, CPU: dual-core 1Ghz Bộ nhớ trong: 4 GB - Hỗ trợ thẻ nhớ ngoài lên đến 32 GB Màn hình cảm ứng điện dung IPS LCD, 16 triệu màu, rộng 4.7 inches</h2>', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `nv3_shops_sources`
--

CREATE TABLE IF NOT EXISTS `nv3_shops_sources` (
  `sourceid` mediumint(8) unsigned NOT NULL,
  `link` varchar(255) NOT NULL DEFAULT '',
  `logo` varchar(255) NOT NULL DEFAULT '',
  `weight` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) unsigned NOT NULL,
  `edit_time` int(11) unsigned NOT NULL,
  `vi_title` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `nv3_shops_transaction`
--

CREATE TABLE IF NOT EXISTS `nv3_shops_transaction` (
  `transaction_id` int(11) NOT NULL,
  `transaction_time` int(11) NOT NULL DEFAULT '0',
  `transaction_status` int(11) NOT NULL,
  `order_id` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `payment` varchar(22) NOT NULL DEFAULT '0',
  `payment_id` varchar(22) NOT NULL DEFAULT '0',
  `payment_time` int(11) NOT NULL DEFAULT '0',
  `payment_amount` int(11) NOT NULL DEFAULT '0',
  `payment_data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `nv3_shops_units`
--

CREATE TABLE IF NOT EXISTS `nv3_shops_units` (
  `id` int(11) NOT NULL,
  `vi_title` varchar(255) NOT NULL DEFAULT '',
  `vi_note` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nv3_shops_units`
--

INSERT INTO `nv3_shops_units` (`id`, `vi_title`, `vi_note`) VALUES
(1, 'Chiếc', ''),
(2, 'Cái', ''),
(3, 'kg', ''),
(4, 'Trái', '');

-- --------------------------------------------------------

--
-- Table structure for table `nv3_users`
--

CREATE TABLE IF NOT EXISTS `nv3_users` (
  `userid` mediumint(8) unsigned NOT NULL,
  `username` varchar(100) NOT NULL DEFAULT '',
  `md5username` char(32) NOT NULL DEFAULT '',
  `password` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `full_name` varchar(255) NOT NULL DEFAULT '',
  `gender` char(1) NOT NULL,
  `photo` varchar(255) NOT NULL DEFAULT '',
  `birthday` int(11) NOT NULL,
  `sig` text,
  `regdate` int(11) NOT NULL DEFAULT '0',
  `website` varchar(255) NOT NULL DEFAULT '',
  `location` varchar(255) NOT NULL,
  `yim` varchar(100) NOT NULL DEFAULT '',
  `telephone` varchar(100) NOT NULL DEFAULT '',
  `fax` varchar(100) NOT NULL DEFAULT '',
  `mobile` varchar(100) NOT NULL DEFAULT '',
  `question` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL DEFAULT '',
  `passlostkey` varchar(40) NOT NULL DEFAULT '',
  `view_mail` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `remember` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `in_groups` varchar(255) NOT NULL DEFAULT '',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `checknum` varchar(40) NOT NULL DEFAULT '',
  `last_login` int(11) unsigned NOT NULL DEFAULT '0',
  `last_ip` varchar(45) NOT NULL DEFAULT '',
  `last_agent` varchar(255) NOT NULL DEFAULT '',
  `last_openid` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nv3_users`
--

INSERT INTO `nv3_users` (`userid`, `username`, `md5username`, `password`, `email`, `full_name`, `gender`, `photo`, `birthday`, `sig`, `regdate`, `website`, `location`, `yim`, `telephone`, `fax`, `mobile`, `question`, `answer`, `passlostkey`, `view_mail`, `remember`, `in_groups`, `active`, `checknum`, `last_login`, `last_ip`, `last_agent`, `last_openid`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'e10adc3949ba59abbe56e057f20f883e', 'admin@mail.com', 'admin', '', '', 0, NULL, 1373785494, '', '', '', '', '', '', 'Địa chỉ website của bạn?', 'http&#x3A;&#x002F;&#x002F;thanhcntt.net', '', 0, 1, '', 1, 'fca9c24cdab739da57f5445b12ed97cf16f2fcba', 1465402070, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36', '');

-- --------------------------------------------------------

--
-- Table structure for table `nv3_users_config`
--

CREATE TABLE IF NOT EXISTS `nv3_users_config` (
  `config` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  `edit_time` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nv3_users_config`
--

INSERT INTO `nv3_users_config` (`config`, `content`, `edit_time`) VALUES
('registertype', '1', 1373785399),
('deny_email', 'yoursite.com|mysite.com|localhost|xxx', 1373785399),
('deny_name', 'anonimo|anonymous|god|linux|nobody|operator|root', 1373785399),
('siteterms_vi', '<p> Để trở thành thành viên, bạn phải cam kết đồng ý với các điều khoản dưới đây. Chúng tôi có thể thay đổi lại những điều khoản này vào bất cứ lúc nào và chúng tôi sẽ cố gắng thông báo đến bạn kịp thời.<br  /> <br  /> Bạn cam kết không gửi bất cứ bài viết có nội dung lừa đảo, thô tục, thiếu văn hoá; vu khống, khiêu khích, đe doạ người khác; liên quan đến các vấn đề tình dục hay bất cứ nội dung nào vi phạm luật pháp của quốc gia mà bạn đang sống, luật pháp của quốc gia nơi đặt máy chủ của website này hay luật pháp quốc tế. Nếu vẫn cố tình vi phạm, ngay lập tức bạn sẽ bị cấm tham gia vào website. Địa chỉ IP của tất cả các bài viết đều được ghi nhận lại để bảo vệ các điều khoản cam kết này trong trường hợp bạn không tuân thủ.<br  /> <br  /> Bạn đồng ý rằng website có quyền gỡ bỏ, sửa, di chuyển hoặc khoá bất kỳ bài viết nào trong website vào bất cứ lúc nào tuỳ theo nhu cầu công việc.<br  /> <br  /> Đăng ký làm thành viên của chúng tôi, bạn cũng phải đồng ý rằng, bất kỳ thông tin cá nhân nào mà bạn cung cấp đều được lưu trữ trong cơ sở dữ liệu của hệ thống. Mặc dù những thông tin này sẽ không được cung cấp cho bất kỳ người thứ ba nào khác mà không được sự đồng ý của bạn, chúng tôi không chịu trách nhiệm về việc những thông tin cá nhân này của bạn bị lộ ra bên ngoài từ những kẻ phá hoại có ý đồ xấu tấn công vào cơ sở dữ liệu của hệ thống.</p>', 1274757129);

-- --------------------------------------------------------

--
-- Table structure for table `nv3_users_openid`
--

CREATE TABLE IF NOT EXISTS `nv3_users_openid` (
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `openid` varchar(255) NOT NULL DEFAULT '',
  `opid` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `nv3_users_question`
--

CREATE TABLE IF NOT EXISTS `nv3_users_question` (
  `qid` mediumint(8) unsigned NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `lang` char(2) NOT NULL DEFAULT '',
  `weight` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0',
  `edit_time` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nv3_users_question`
--

INSERT INTO `nv3_users_question` (`qid`, `title`, `lang`, `weight`, `add_time`, `edit_time`) VALUES
(1, 'Bạn thích môn thể thao nào nhất', 'vi', 1, 1274840238, 1274840238),
(2, 'Món ăn mà bạn yêu thích', 'vi', 2, 1274840250, 1274840250),
(3, 'Thần tượng điện ảnh của bạn', 'vi', 3, 1274840257, 1274840257),
(4, 'Bạn thích nhạc sỹ nào nhất', 'vi', 4, 1274840264, 1274840264),
(5, 'Quê ngoại của bạn ở đâu', 'vi', 5, 1274840270, 1274840270),
(6, 'Tên cuốn sách &quot;gối đầu giường&quot;', 'vi', 6, 1274840278, 1274840278),
(7, 'Ngày lễ mà bạn luôn mong đợi', 'vi', 7, 1274840285, 1274840285);

-- --------------------------------------------------------

--
-- Table structure for table `nv3_users_reg`
--

CREATE TABLE IF NOT EXISTS `nv3_users_reg` (
  `userid` mediumint(8) unsigned NOT NULL,
  `username` varchar(100) NOT NULL DEFAULT '',
  `md5username` char(32) NOT NULL DEFAULT '',
  `password` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `full_name` varchar(255) NOT NULL DEFAULT '',
  `regdate` int(11) unsigned NOT NULL DEFAULT '0',
  `question` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL DEFAULT '',
  `checknum` varchar(50) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `nv3_vi_about`
--

CREATE TABLE IF NOT EXISTS `nv3_vi_about` (
  `id` mediumint(8) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `bodytext` mediumtext NOT NULL,
  `keywords` mediumtext NOT NULL,
  `weight` smallint(4) NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nv3_vi_about`
--

INSERT INTO `nv3_vi_about` (`id`, `title`, `alias`, `bodytext`, `keywords`, `weight`, `admin_id`, `add_time`, `edit_time`, `status`) VALUES
(1, 'Giới thiệu về NukeViet 3.0', 'Gioi-thieu-ve-NukeViet-3-0', '<p> NukeViet 3.0 là thế hệ CMS hoàn toàn mới do người Việt phát triển. Lần đầu tiên ở Việt Nam, một bộ nhân mã nguồn mở được đầu tư bài bản và chuyên nghiệp cả về tài chính, nhân lực và thời gian. Kết quả là 100% dòng code của NukeViet được viết mới hoàn toàn, NukeViet 3 sử dụng xHTML, CSS với Xtemplate và jquery cho phép vận dụng Ajax uyển chuyển cả trong công nghệ nhân.</p><p> Tận dụng các thành tựu mã nguồn mở có sẵn nhưng NukeViet 3 vẫn đảm bảo rằng từng dòng code là được code tay (NukeViet 3 không sử dụng bất cứ một nền tảng (framework) nào). Điều này có nghĩa là NukeViet 3 hoàn toàn không phụ thuộc vào bất cứ framework nào trong quá trình phát triển của mình; Bạn hoàn toàn có thể đọc hiểu để tự lập trình trên NukeViet 3 nếu bạn biết PHP và MySQL (đồng nghĩa với việc NukeViet 3 hoàn toàn mở và dễ nghiên cứu cho bất cứ ai muốn tìm hiểu về code của NukeViet).</p><p style="text-align: justify;"> Bộ nhân NukeViet 3 ngoài việc thừa hưởng sự đơn giản vốn có của NukeViet nhưng không vì thế mà quên nâng cấp mình. Hệ thống NukeViet 3 hỗ trợ công nghệ đa nhân module. Chúng tôi gọi đó là công nghệ ảo hóa module. Công nghệ này cho phép người sử dụng có thể khởi tạo hàng ngàn module một cách tự động mà không cần động đến một dòng code. Các module được sinh ra từ công nghệ này gọi là module ảo. Module ảo là module được nhân bản từ một module bất kỳ của hệ thống nukeviet nếu module đó cho phép tạo module ảo.</p><p style="text-align: justify;"> NukeViet 3 cũng hỗ trợ việc cài đặt từ động 100% các module, block, theme từ Admin Control Panel, người sử dụng có thể cài module mà không cần làm bất cứ thao tác phức tạp nào. NukeViet 3 còn cho phép bạn đóng gói module để chia sẻ cho người khác.</p><p style="text-align: justify;"> NukeViet 3 đa ngôn ngữ 100% với 2 loại: đa ngôn ngữ giao diện và đa ngôn ngữ database. NukeViet 3 có tính năng&nbsp; cho phép người quản trị tự xây dựng ngôn ngữ mới cho site. Cho&nbsp; phép đóng gói file ngôn ngữ để chia sẻ cho cộng đồng... câu chuyện về nukeviet 3 sẽ còn dài vì một loạt các tính năng cao cấp vẫn đang được phát triển. Hãy sử dụng và phổ biến NukeViet 3 để tự mình tận hưởng những thành quả mới nhất từ công nghệ web mã nguồn mở. Cuối cùng NukeViet 3 là món của của <a href="http://vinades.vn" target="_blank">VINADES.,JSC</a> gửi tới cộng đồng để cảm ơn cộng đồng đã ủng hộ thời gian qua, bây giờ NukeViet 3 được đưa trở lại cộng đồng để cộng đồng tiếp tục nuôi nấng và chăm sóc NukeViet lớn mạnh hơn.</p><p style="text-align: justify;"> Mọi ý kiến và yêu cầu trợ giúp về NukeViet 3 các bạn có thể gửi lên diễn đàn NukeViet tại địa chỉ: <a href="http://nukeviet.vn/phpbb/" target="_blank">http://nukeviet.vn/phpbb/</a>. Việc giúp đỡ hoàn toàn miễn phí và mọi góp ý của bạn đều được hoan nghênh.</p> <div style="text-align: center;"> <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" height="400" width="480"><param name="quality" value="high" /><param name="allowScriptAccess" value="always" /><param name="movie" value="/shopall/images/jwplayer/player.swf" /><param name="allowfullscreen" value="true" /><param name="allowscriptaccess" value="always" /><param name="flashvars" value="file=http://www.youtube.com/watch?v=dG66RocXSeY&amp;autostart=true" /><embed allowscriptaccess="always" flashvars="file=http://www.youtube.com/watch?v=dG66RocXSeY&amp;autostart=true" height="400" quality="high" src="/shopall/images/jwplayer/player.swf" width="480"></embed></object><br  /> Video clip Giới thiệu mã nguồn mở NukeViet trong bản tin Tiêu điểm của chương trình Xã hội thông tin<br  /> (Đài truyền hình kỹ thuật số VTC) phát sóng lúc 20h chủ nhật, ngày 05-09-2010 trên VTC1</div>', 'thế hệ,hoàn toàn,phát triển,tài chính,nhân lực,thời gian,kết quả,sử dụng,cho phép,uyển chuyển,công nghệ,tận dụng,thành tựu,đảm bảo,nền tảng,có nghĩa,phụ thuộc,quá trình,có thể,tự lập,đồng nghĩa', 1, 1, 1275320174, 1275320174, 1),
(2, 'Giới thiệu về công ty chuyên quản NukeViet', 'Gioi-thieu-ve-cong-ty-chuyen-quan-NukeViet', '<p style="text-align: justify;"> <strong>Công ty cổ phần phát triển nguồn mở Việt Nam</strong> (VINADES.,JSC) là công ty mã nguồn mở đầu tiên của Việt Nam sở hữu riêng một mã nguồn mở nổi tiếng và đang được sử dụng ở hàng ngàn website lớn nhỏ trong mọi lĩnh vực.<br  /> <br  /> Ra đời từ hoạt động của tổ chức nguồn mở NukeViet (từ năm 2004) và chính thức được thành lập đầu 2010 tại Hà Nội, khi đó báo chí đã gọi VINADES.,JSC là &quot;Công ty mã nguồn mở đầu tiên tại Việt Nam&quot;.<br  /> <br  /> Ngay sau khi thành lập, VINADES.,JSC đã thành công trong việc xây dựng <strong><a href="http://nukeviet.vn/" target="_blank">NukeViet</a></strong> thành một <a href="http://nukeviet.vn/" target="_blank">mã nguồn mở</a> thuần Việt. Với khả năng mạnh mẽ, cùng các ưu điểm vượt trội về công nghệ, độ an toàn và bảo mật, NukeViet đã được hàng ngàn website lựa chọn sử dụng trong năm qua. Ngay khi ra mắt phiên bản mới năm 2010, NukeViet đã tạo nên hiệu ứng truyền thông chưa từng có trong lịch sử mã nguồn mở Việt Nam. Tiếp đó, năm 2011 Mã nguồn mở NukeViet đã giành giải thưởng Nhân tài đất Việt cho sản phẩm Công nghệ thông tin đã được ứng dụng rộng rãi.<br  /> <div style="text-align: center;"> <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" height="400" width="480"><param name="movie" value="/shopall/images/jwplayer/player.swf" /><param name="allowfullscreen" value="true" /><param name="allowscriptaccess" value="always" /><param name="flashvars" value="file=http://www.youtube.com/watch?v=ZOhu2bLE-eA&amp;autostart=true" /><embed allowfullscreen="true" allowscriptaccess="always" flashvars="file=http://www.youtube.com/watch?v=ZOhu2bLE-eA&amp;autostart=true" height="400" src="/shopall/images/jwplayer/player.swf" width="480"></embed></object><br  /> <strong>Video clip trao giải Nhân tài đất Việt 2011.</strong><br  /> Sản phẩm &quot;Mã nguồn mở NukeViet&quot; đã nhận giải cao nhất (Giải ba, không có giải nhất, giải nhì) của Giải thưởng Nhân Tài Đất Việt 2011 ở lĩnh vực Công nghệ thông tin - Sản phẩm đã có ứng dụng rộng rãi.</div><br  /> Tự chuyên nghiệp hóa mình, thoát khỏi mô hình phát triển tự phát, công ty đã nỗ lực vươn mình ra thế giới và đang phấn đấu trở thành một trong những hiện tượng của thời &quot;dotcom&quot; ở Việt Nam.<br  /> <br  /> Để phục vụ hoạt động của công ty, công ty liên tục mở rộng và tuyển thêm nhân sự ở các vị trí: Lập trình viên, chuyên viên đồ họa, nhân viên kinh doanh... Hãy liên hệ ngay để gia nhập VINADES.,JSC và cùng chúng tôi trở thành một công ty phát triển nguồn mở thành công nhất Việt Nam.</p> <p>Nếu bạn có nhu cầu triển khai các hệ thống <a href="http://toasoandientu.vn" target="_blank">Tòa Soạn Điện Tử</a>, <a href="http://webnhanh.vn" target="_blank">phần mềm trực tuyến</a>, <a href="http://vinades.vn" target="_blank">thiết kế web</a> theo yêu cầu hoặc dịch vụ có liên quan, hãy liên hệ công ty chuyên quản NukeViet theo thông tin dưới đây:</p><strong><span style="font-family: Tahoma; color: rgb(255, 69, 0); font-size: 14px;">CÔNG TY CỔ PHẦN PHÁT TRIỂN NGUỒN MỞ VIỆT NAM</span></strong><br  /><div> <strong>VIET NAM OPEN SOURCE DEVELOPMENT JOINT STOCK COMPANY</strong> (<strong>VINADES.,JSC</strong>)<br  /> <div>Website: <a href="http://vinades.vn/">http://vinades.vn</a> | <a href="http://nukeviet.vn/">http://nukeviet.vn</a> | <a href="http://webnhanh.vn/">http://webnhanh.vn</a></div><br  />Trụ sở: Phòng 1805 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội.<br  /> - Tel: +84-4-85872007<br  /> - Fax: +84-4-35500914<br  /> - Email: <a href="mailto:contact@vinades.vn">contact@vinades.vn</a></div></div>', '', 2, 1, 1275320224, 1275320224, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv3_vi_blocks_groups`
--

CREATE TABLE IF NOT EXISTS `nv3_vi_blocks_groups` (
  `bid` int(11) unsigned NOT NULL,
  `theme` varchar(55) NOT NULL,
  `module` varchar(55) NOT NULL,
  `file_name` varchar(55) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `template` varchar(55) DEFAULT NULL,
  `position` varchar(55) DEFAULT NULL,
  `exp_time` int(11) DEFAULT '0',
  `active` tinyint(4) DEFAULT '0',
  `groups_view` varchar(255) DEFAULT '',
  `all_func` tinyint(4) NOT NULL DEFAULT '0',
  `weight` int(11) NOT NULL DEFAULT '0',
  `config` text
) ENGINE=MyISAM AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nv3_vi_blocks_groups`
--

INSERT INTO `nv3_vi_blocks_groups` (`bid`, `theme`, `module`, `file_name`, `title`, `link`, `template`, `position`, `exp_time`, `active`, `groups_view`, `all_func`, `weight`, `config`) VALUES
(1, 'default', 'news', 'global.block_category.php', 'Menu', '', '', '[LEFT]', 0, 1, '0', 0, 1, 'a:1:{s:12:"title_length";i:25;}'),
(2, 'default', 'statistics', 'global.counter.php', 'Thống kê truy cập', '', '', '[LEFT]', 0, 1, '0', 1, 2, ''),
(3, 'default', 'banners', 'global.banners.php', 'Quảng cáo trái', '', '', '[LEFT]', 0, 1, '0', 1, 3, 'a:1:{s:12:"idplanbanner";i:2;}'),
(4, 'default', 'about', 'global.about.php', 'Giới thiệu', '', 'orange', '[RIGHT]', 0, 1, '0', 1, 1, ''),
(5, 'default', 'users', 'global.login.php', 'Đăng nhập thành viên', '', '', '[RIGHT]', 0, 1, '0', 1, 2, ''),
(6, 'default', 'voting', 'global.voting_random.php', 'Thăm dò ý kiến', '', '', '[RIGHT]', 0, 1, '0', 1, 3, ''),
(7, 'default', 'news', 'module.block_headline.php', 'Tin nổi bật', '', 'no_title', '[TOP]', 0, 1, '0', 0, 1, ''),
(8, 'default', 'banners', 'global.banners.php', 'Quảng cáo giữa trang', '', 'no_title', '[TOP]', 0, 1, '0', 1, 2, 'a:1:{s:12:"idplanbanner";i:1;}'),
(9, 'modern', 'news', 'module.block_newscenter.php', 'Tin mới', '', 'no_title', '[HEADER]', 0, 1, '0', 0, 1, ''),
(10, 'modern', 'shops', 'global.block_search.php', 'Tìm kiếm', '', 'no_title', '[BELOW_NAV]', 0, 1, '0', 1, 2, ''),
(11, 'modern', 'users', 'global.login.php', 'Đăng nhập', '', '', '[RIGHT]', 0, 1, '0', 1, 2, ''),
(13, 'modern', 'statistics', 'global.counter.php', 'Bộ đếm', '', '', '[RIGHT]', 0, 1, '0', 1, 3, ''),
(14, 'modern', 'news', 'module.block_newsright.php', 'News Right', '', 'no_title', '[RIGHT]', 0, 1, '0', 0, 4, ''),
(15, 'modern', 'banners', 'global.banners.php', 'Quảng cáo top banner', '', 'no_title', '[TOPADV]', 0, 1, '0', 1, 1, 'a:1:{s:12:"idplanbanner";i:1;}'),
(16, 'modern', 'menu', 'global.menu_nukeviet.php', 'global menu theme modern', '', 'no_title', '[MENU_SITE]', 0, 1, '0', 1, 1, 'a:2:{s:6:"menuid";i:2;s:12:"title_length";i:25;}'),
(17, 'default', 'menu', 'global.menu_theme_default.php', 'global menu theme default', '', 'no_title', '[MENU_SITE]', 0, 1, '0', 1, 1, ''),
(18, 'modern', 'global', 'global.html.php', 'footer site', '', 'no_title', '[FOOTER_SITE]', 0, 1, '0', 1, 1, 'a:1:{s:11:"htmlcontent";s:274:"© Copyright NukeViet 3. All right reserved.<br  />Xây dựng trên nền tảng <a href="http://nukeviet.vn/" title="Mã nguồn mở NukeViet">Mã nguồn mở NukeViet</a>. <a href="http://vinades.vn/" title="Thiết kế web">Thiết kế website</a> bởi VINADES.,JSC";}'),
(19, 'default', 'global', 'global.html.php', 'footer site', '', 'no_title', '[FOOTER_SITE]', 0, 1, '0', 1, 1, 'a:1:{s:11:"htmlcontent";s:231:"<p class="footer"> © Copyright NukeViet 3. All right reserved.</p><p> Powered by <a href="http://nukeviet.vn/" title="NukeViet CMS">NukeViet CMS</a>. Design by <a href="http://vinades.vn/" title="VINADES.,JSC">VINADES.,JSC</a></p>";}'),
(20, 'mobile_nukeviet', 'menu', 'global.menu_theme_default.php', 'global menu theme default', '', 'no_title', '[MENU_SITE]', 0, 1, '0', 1, 1, ''),
(70, 'modern', 'shops', 'global.block_product_center.php', 'Sản phẩm', '', 'no_title', '[BELOW_NAV]', 0, 1, '0', 1, 1, 'a:3:{s:7:"blockid";i:2;s:6:"numrow";i:6;s:8:"numslide";i:3;}'),
(71, 'modern', 'shops', 'global.block_cart.php', 'Giỏ hàng', '', '', '[RIGHT]', 0, 1, '0', 1, 1, ''),
(72, 'modern', 'shops', 'global.block_relates_product.php', 'Sản phẩm hot', '', '', '[RIGHT]', 0, 1, '0', 1, 5, 'a:3:{s:7:"blockid";i:1;s:6:"numrow";i:3;s:7:"cut_num";i:24;}'),
(73, 'modern', 'global', 'global.html.php', 'global html', '', '', '[MENU_SITE]', 0, 1, '0', 0, 2, 'a:1:{s:11:"htmlcontent";s:20:"DoPhuQuy&#039;s Blog";}'),
(74, 'modern', 'global', 'global.html.php', 'Liên hệ', '', '', '[RIGHT]', 0, 1, '0', 1, 6, 'a:1:{s:11:"htmlcontent";s:1594:"<em><strong><span style="color: rgb(0, 0, 205);">Nhân viên 1 :&nbsp;</span></strong></em><span style="color:rgb(0, 0, 205);"><a border="0" href="ymsgr:sendim? YM_CỦA_BẠN " mce_href="ymsgr:sendim?YM_CỦA_BẠN"><img mce_src="http://opi.yahoo.com/online?u=saromalang&amp;t=1" src="http://opi.yahoo.com/online?u= YM_CỦA_BẠN &amp;t=1" /></a><br  /><strong><em>Nhân viên 2 :</em></strong></span><sup><span style="color: rgb(0, 0, 205);"><span style="font-size: 8px;">&nbsp;</span></span></sup><span style="font-size: 9px; color: rgb(0, 0, 205);"><a border="0" href="ymsgr:sendim? YM_CỦA_BẠN " mce_href="ymsgr:sendim?YM_CỦA_BẠN" style="font-size: 9px;"><img mce_src="http://opi.yahoo.com/online?u=saromalang&amp;t=1" src="http://opi.yahoo.com/online?u= YM_CỦA_BẠN &amp;t=1" /></a><br  /><strong><em><span style="font-size:12px;">Kỹ thuật</span></em></strong></span><strong><em><span style="font-size:9px;"><span style="color:rgb(0, 0, 205);"><strong style="font-size: 16px;"><span style="font-size:12px;">&nbsp; &nbsp; &nbsp; :</span>&nbsp;</strong>&nbsp;</span></span></em></strong><a border="0" href="ymsgr:sendim? YM_CỦA_BẠN " mce_href="ymsgr:sendim?YM_CỦA_BẠN"><span style="color:rgb(0, 0, 205);"><img mce_src="http://opi.yahoo.com/online?u=saromalang&amp;t=1" src="http://opi.yahoo.com/online?u= YM_CỦA_BẠN &amp;t=1" /></span></a><br  /><em><strong><span style="font-size:12px;"><span style="color:rgb(0, 0, 205);">Hotline : &nbsp; &nbsp;</span><a href="tel0967891171"><span style="color:rgb(0, 0, 205);">0967891171</span></a></span></strong></em><br  />";}'),
(80, 'modern', 'news', 'module.block_newscenter.php', 'global menu nukeviet', '', '', '[FOOTER]', 0, 1, '0', 0, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `nv3_vi_blocks_weight`
--

CREATE TABLE IF NOT EXISTS `nv3_vi_blocks_weight` (
  `bid` int(11) NOT NULL DEFAULT '0',
  `func_id` int(11) NOT NULL DEFAULT '0',
  `weight` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nv3_vi_blocks_weight`
--

INSERT INTO `nv3_vi_blocks_weight` (`bid`, `func_id`, `weight`) VALUES
(1, 5, 1),
(1, 6, 1),
(1, 7, 1),
(1, 13, 1),
(1, 15, 1),
(1, 16, 1),
(2, 2, 1),
(2, 36, 1),
(2, 39, 1),
(2, 42, 1),
(2, 43, 1),
(2, 27, 1),
(2, 5, 2),
(2, 6, 2),
(2, 7, 2),
(2, 13, 2),
(2, 15, 2),
(2, 16, 2),
(2, 47, 1),
(2, 46, 1),
(2, 28, 1),
(2, 29, 1),
(2, 30, 1),
(2, 31, 1),
(2, 32, 1),
(2, 33, 1),
(2, 34, 1),
(2, 17, 1),
(2, 25, 1),
(2, 24, 1),
(2, 23, 1),
(2, 22, 1),
(2, 21, 1),
(2, 20, 1),
(2, 19, 1),
(2, 18, 1),
(2, 26, 1),
(3, 2, 2),
(3, 36, 2),
(3, 39, 2),
(3, 42, 2),
(3, 43, 2),
(3, 27, 2),
(3, 5, 3),
(3, 6, 3),
(3, 7, 3),
(3, 13, 3),
(3, 15, 3),
(3, 16, 3),
(3, 47, 2),
(3, 46, 2),
(3, 28, 2),
(3, 29, 2),
(3, 30, 2),
(3, 31, 2),
(3, 32, 2),
(3, 33, 2),
(3, 34, 2),
(3, 17, 2),
(3, 25, 2),
(3, 24, 2),
(3, 23, 2),
(3, 22, 2),
(3, 21, 2),
(3, 20, 2),
(3, 19, 2),
(3, 18, 2),
(3, 26, 2),
(4, 2, 1),
(4, 36, 1),
(4, 39, 1),
(4, 42, 1),
(4, 43, 1),
(4, 27, 1),
(4, 5, 1),
(4, 6, 1),
(4, 7, 1),
(4, 13, 1),
(4, 15, 1),
(4, 16, 1),
(4, 47, 1),
(4, 46, 1),
(4, 28, 1),
(4, 29, 1),
(4, 30, 1),
(4, 31, 1),
(4, 32, 1),
(4, 33, 1),
(4, 34, 1),
(4, 17, 1),
(4, 25, 1),
(4, 24, 1),
(4, 23, 1),
(4, 22, 1),
(4, 21, 1),
(4, 20, 1),
(4, 19, 1),
(4, 18, 1),
(4, 26, 1),
(5, 2, 2),
(5, 36, 2),
(5, 39, 2),
(5, 42, 2),
(5, 43, 2),
(5, 27, 2),
(5, 5, 2),
(5, 6, 2),
(5, 7, 2),
(5, 13, 2),
(5, 15, 2),
(5, 16, 2),
(5, 47, 2),
(5, 46, 2),
(5, 28, 2),
(5, 29, 2),
(5, 30, 2),
(5, 31, 2),
(5, 32, 2),
(5, 33, 2),
(5, 34, 2),
(5, 17, 2),
(5, 25, 2),
(5, 24, 2),
(5, 23, 2),
(5, 22, 2),
(5, 21, 2),
(5, 20, 2),
(5, 19, 2),
(5, 18, 2),
(5, 26, 2),
(6, 2, 3),
(6, 36, 3),
(6, 39, 3),
(6, 42, 3),
(6, 43, 3),
(6, 27, 3),
(6, 5, 3),
(6, 6, 3),
(6, 7, 3),
(6, 13, 3),
(6, 15, 3),
(6, 16, 3),
(6, 47, 3),
(6, 46, 3),
(6, 28, 3),
(6, 29, 3),
(6, 30, 3),
(6, 31, 3),
(6, 32, 3),
(6, 33, 3),
(6, 34, 3),
(6, 17, 3),
(6, 25, 3),
(6, 24, 3),
(6, 23, 3),
(6, 22, 3),
(6, 21, 3),
(6, 20, 3),
(6, 19, 3),
(6, 18, 3),
(6, 26, 3),
(7, 7, 1),
(8, 2, 1),
(8, 36, 1),
(8, 39, 1),
(8, 42, 1),
(8, 43, 1),
(8, 27, 1),
(8, 5, 1),
(8, 6, 1),
(8, 7, 2),
(8, 13, 1),
(8, 15, 1),
(8, 16, 1),
(8, 47, 1),
(8, 46, 1),
(8, 28, 1),
(8, 29, 1),
(8, 30, 1),
(8, 31, 1),
(8, 32, 1),
(8, 33, 1),
(8, 34, 1),
(8, 17, 1),
(8, 25, 1),
(8, 24, 1),
(8, 23, 1),
(8, 22, 1),
(8, 21, 1),
(8, 20, 1),
(8, 19, 1),
(8, 18, 1),
(8, 26, 1),
(9, 7, 1),
(10, 2, 2),
(10, 36, 2),
(10, 39, 2),
(10, 42, 2),
(10, 43, 2),
(10, 27, 2),
(10, 5, 2),
(10, 6, 2),
(10, 7, 2),
(10, 13, 2),
(10, 15, 2),
(10, 16, 2),
(10, 47, 2),
(10, 46, 2),
(10, 28, 2),
(10, 29, 2),
(10, 30, 2),
(10, 31, 2),
(10, 32, 2),
(10, 33, 2),
(10, 34, 2),
(10, 17, 2),
(10, 25, 2),
(10, 24, 2),
(10, 23, 2),
(10, 22, 2),
(10, 21, 2),
(10, 20, 2),
(10, 19, 2),
(10, 18, 2),
(10, 26, 2),
(11, 2, 2),
(11, 36, 2),
(11, 39, 2),
(11, 42, 2),
(11, 43, 2),
(11, 27, 2),
(11, 5, 2),
(11, 6, 2),
(11, 7, 2),
(11, 13, 2),
(11, 15, 2),
(11, 16, 2),
(11, 47, 2),
(11, 46, 2),
(11, 28, 2),
(11, 29, 2),
(11, 30, 2),
(11, 31, 2),
(11, 32, 2),
(11, 33, 2),
(11, 34, 2),
(11, 17, 2),
(11, 25, 2),
(11, 24, 2),
(11, 23, 2),
(11, 22, 2),
(11, 21, 2),
(11, 20, 2),
(11, 19, 2),
(11, 18, 2),
(11, 26, 2),
(13, 2, 3),
(13, 36, 3),
(13, 39, 3),
(13, 42, 3),
(13, 43, 3),
(13, 27, 3),
(13, 5, 3),
(13, 6, 3),
(13, 7, 3),
(13, 13, 3),
(13, 15, 3),
(13, 16, 3),
(13, 47, 3),
(13, 46, 3),
(13, 28, 3),
(13, 29, 3),
(13, 30, 3),
(13, 31, 3),
(13, 32, 3),
(13, 33, 3),
(13, 34, 3),
(13, 17, 3),
(13, 25, 3),
(13, 24, 3),
(13, 23, 3),
(13, 22, 3),
(13, 21, 3),
(13, 20, 3),
(13, 19, 3),
(13, 18, 3),
(13, 26, 3),
(14, 5, 4),
(14, 6, 4),
(14, 7, 4),
(14, 13, 4),
(14, 15, 4),
(14, 16, 4),
(15, 2, 1),
(15, 36, 1),
(15, 39, 1),
(15, 42, 1),
(15, 43, 1),
(15, 27, 1),
(15, 5, 1),
(15, 6, 1),
(15, 7, 1),
(15, 13, 1),
(15, 15, 1),
(15, 16, 1),
(15, 47, 1),
(15, 46, 1),
(15, 28, 1),
(15, 29, 1),
(15, 30, 1),
(15, 31, 1),
(15, 32, 1),
(15, 33, 1),
(15, 34, 1),
(15, 17, 1),
(15, 25, 1),
(15, 24, 1),
(15, 23, 1),
(15, 22, 1),
(15, 21, 1),
(15, 20, 1),
(15, 19, 1),
(15, 18, 1),
(15, 26, 1),
(16, 2, 1),
(16, 36, 1),
(16, 39, 1),
(16, 42, 1),
(16, 43, 1),
(16, 27, 1),
(16, 5, 1),
(16, 6, 1),
(16, 7, 1),
(16, 13, 1),
(16, 15, 1),
(16, 16, 1),
(16, 47, 1),
(16, 46, 1),
(16, 33, 1),
(16, 32, 1),
(16, 30, 1),
(16, 29, 1),
(16, 31, 1),
(16, 28, 1),
(16, 34, 1),
(16, 24, 1),
(16, 20, 1),
(16, 21, 1),
(16, 26, 1),
(16, 23, 1),
(16, 18, 1),
(16, 25, 1),
(16, 17, 1),
(16, 22, 1),
(16, 19, 1),
(17, 2, 1),
(17, 36, 1),
(17, 39, 1),
(17, 42, 1),
(17, 43, 1),
(17, 27, 1),
(17, 5, 1),
(17, 6, 1),
(17, 7, 1),
(17, 13, 1),
(17, 15, 1),
(17, 16, 1),
(17, 47, 1),
(17, 46, 1),
(17, 33, 1),
(17, 32, 1),
(17, 30, 1),
(17, 29, 1),
(17, 31, 1),
(17, 28, 1),
(17, 34, 1),
(17, 24, 1),
(17, 20, 1),
(17, 21, 1),
(17, 26, 1),
(17, 23, 1),
(17, 18, 1),
(17, 25, 1),
(17, 17, 1),
(17, 22, 1),
(17, 19, 1),
(18, 2, 1),
(18, 36, 1),
(18, 39, 1),
(18, 42, 1),
(18, 43, 1),
(18, 27, 1),
(18, 5, 1),
(18, 6, 1),
(18, 7, 1),
(18, 13, 1),
(18, 15, 1),
(18, 16, 1),
(18, 47, 1),
(18, 46, 1),
(18, 33, 1),
(18, 32, 1),
(18, 30, 1),
(18, 29, 1),
(18, 31, 1),
(18, 28, 1),
(18, 34, 1),
(18, 24, 1),
(18, 20, 1),
(18, 21, 1),
(18, 26, 1),
(18, 23, 1),
(18, 18, 1),
(18, 25, 1),
(18, 17, 1),
(18, 22, 1),
(18, 19, 1),
(19, 2, 1),
(19, 36, 1),
(19, 39, 1),
(19, 42, 1),
(19, 43, 1),
(19, 27, 1),
(19, 5, 1),
(19, 6, 1),
(19, 7, 1),
(19, 13, 1),
(19, 15, 1),
(19, 16, 1),
(19, 47, 1),
(19, 46, 1),
(19, 33, 1),
(19, 32, 1),
(19, 30, 1),
(19, 29, 1),
(19, 31, 1),
(19, 28, 1),
(19, 34, 1),
(19, 24, 1),
(19, 20, 1),
(19, 21, 1),
(19, 26, 1),
(19, 23, 1),
(19, 18, 1),
(19, 25, 1),
(19, 17, 1),
(19, 22, 1),
(19, 19, 1),
(19, 48, 1),
(2, 48, 1),
(3, 48, 2),
(17, 48, 1),
(4, 48, 1),
(5, 48, 2),
(6, 48, 3),
(8, 48, 1),
(18, 48, 1),
(16, 48, 1),
(10, 48, 2),
(11, 48, 2),
(13, 48, 3),
(15, 48, 1),
(20, 2, 1),
(20, 36, 1),
(20, 39, 1),
(20, 42, 1),
(20, 43, 1),
(20, 27, 1),
(20, 5, 1),
(20, 6, 1),
(20, 7, 1),
(20, 13, 1),
(20, 15, 1),
(20, 16, 1),
(20, 47, 1),
(20, 46, 1),
(20, 33, 1),
(20, 32, 1),
(20, 30, 1),
(20, 29, 1),
(20, 31, 1),
(20, 28, 1),
(20, 34, 1),
(20, 48, 1),
(20, 24, 1),
(20, 20, 1),
(20, 21, 1),
(20, 26, 1),
(20, 23, 1),
(20, 18, 1),
(20, 25, 1),
(20, 17, 1),
(20, 22, 1),
(20, 19, 1),
(16, 35, 1),
(10, 35, 2),
(11, 35, 2),
(13, 35, 3),
(15, 35, 1),
(18, 35, 1),
(17, 35, 1),
(19, 35, 1),
(2, 35, 1),
(3, 35, 2),
(4, 35, 1),
(5, 35, 2),
(6, 35, 3),
(8, 35, 1),
(20, 35, 1),
(16, 50, 1),
(10, 50, 2),
(11, 50, 2),
(13, 50, 3),
(15, 50, 1),
(18, 50, 1),
(17, 50, 1),
(19, 50, 1),
(2, 50, 1),
(3, 50, 2),
(4, 50, 1),
(5, 50, 2),
(6, 50, 3),
(8, 50, 1),
(20, 50, 1),
(19, 64, 1),
(19, 82, 1),
(19, 60, 1),
(19, 77, 1),
(19, 54, 1),
(19, 67, 1),
(19, 68, 1),
(19, 57, 1),
(19, 62, 1),
(19, 61, 1),
(19, 78, 1),
(19, 66, 1),
(19, 73, 1),
(19, 69, 1),
(2, 64, 1),
(2, 82, 1),
(2, 60, 1),
(2, 77, 1),
(2, 54, 1),
(2, 67, 1),
(2, 68, 1),
(2, 57, 1),
(2, 62, 1),
(2, 61, 1),
(2, 78, 1),
(2, 66, 1),
(2, 73, 1),
(2, 69, 1),
(3, 64, 2),
(3, 82, 2),
(3, 60, 2),
(3, 77, 2),
(3, 54, 2),
(3, 67, 2),
(3, 68, 2),
(3, 57, 2),
(3, 62, 2),
(3, 61, 2),
(3, 78, 2),
(3, 66, 2),
(3, 73, 2),
(3, 69, 2),
(17, 64, 1),
(17, 82, 1),
(17, 60, 1),
(17, 77, 1),
(17, 54, 1),
(17, 67, 1),
(17, 68, 1),
(17, 57, 1),
(17, 62, 1),
(17, 61, 1),
(17, 78, 1),
(17, 66, 1),
(17, 73, 1),
(17, 69, 1),
(4, 64, 1),
(4, 82, 1),
(4, 60, 1),
(4, 77, 1),
(4, 54, 1),
(4, 67, 1),
(4, 68, 1),
(4, 57, 1),
(4, 62, 1),
(4, 61, 1),
(4, 78, 1),
(4, 66, 1),
(4, 73, 1),
(4, 69, 1),
(5, 64, 2),
(5, 82, 2),
(5, 60, 2),
(5, 77, 2),
(5, 54, 2),
(5, 67, 2),
(5, 68, 2),
(5, 57, 2),
(5, 62, 2),
(5, 61, 2),
(5, 78, 2),
(5, 66, 2),
(5, 73, 2),
(5, 69, 2),
(6, 64, 3),
(6, 82, 3),
(6, 60, 3),
(6, 77, 3),
(6, 54, 3),
(6, 67, 3),
(6, 68, 3),
(6, 57, 3),
(6, 62, 3),
(6, 61, 3),
(6, 78, 3),
(6, 66, 3),
(6, 73, 3),
(6, 69, 3),
(8, 64, 1),
(8, 82, 1),
(8, 60, 1),
(8, 77, 1),
(8, 54, 1),
(8, 67, 1),
(8, 68, 1),
(8, 57, 1),
(8, 62, 1),
(8, 61, 1),
(8, 78, 1),
(8, 66, 1),
(8, 73, 1),
(8, 69, 1),
(20, 64, 1),
(20, 82, 1),
(20, 60, 1),
(20, 77, 1),
(20, 54, 1),
(20, 67, 1),
(20, 68, 1),
(20, 57, 1),
(20, 62, 1),
(20, 61, 1),
(20, 78, 1),
(20, 66, 1),
(20, 73, 1),
(20, 69, 1),
(18, 64, 1),
(18, 82, 1),
(18, 60, 1),
(18, 77, 1),
(18, 54, 1),
(18, 67, 1),
(18, 68, 1),
(18, 57, 1),
(18, 62, 1),
(18, 61, 1),
(18, 78, 1),
(18, 66, 1),
(18, 73, 1),
(18, 69, 1),
(16, 64, 1),
(16, 82, 1),
(16, 60, 1),
(16, 77, 1),
(16, 54, 1),
(16, 67, 1),
(16, 68, 1),
(16, 57, 1),
(16, 62, 1),
(16, 61, 1),
(16, 78, 1),
(16, 66, 1),
(16, 73, 1),
(16, 69, 1),
(10, 64, 2),
(10, 82, 2),
(10, 60, 2),
(10, 77, 2),
(10, 54, 2),
(10, 67, 2),
(10, 68, 2),
(10, 57, 2),
(10, 62, 2),
(10, 61, 2),
(10, 78, 2),
(10, 66, 2),
(10, 73, 2),
(10, 69, 2),
(11, 64, 3),
(11, 82, 2),
(11, 60, 2),
(11, 77, 2),
(11, 54, 2),
(11, 67, 2),
(11, 68, 2),
(11, 57, 2),
(11, 62, 2),
(11, 61, 2),
(11, 78, 2),
(11, 66, 2),
(11, 73, 2),
(11, 69, 2),
(13, 64, 5),
(13, 82, 3),
(13, 60, 3),
(13, 77, 3),
(13, 54, 3),
(13, 67, 3),
(13, 68, 3),
(13, 57, 3),
(13, 62, 3),
(13, 61, 3),
(13, 78, 3),
(13, 66, 3),
(13, 73, 3),
(13, 69, 3),
(15, 64, 1),
(15, 82, 1),
(15, 60, 1),
(15, 77, 1),
(15, 54, 1),
(15, 67, 1),
(15, 68, 1),
(15, 57, 1),
(15, 62, 1),
(15, 61, 1),
(15, 78, 1),
(15, 66, 1),
(15, 73, 1),
(15, 69, 1),
(70, 2, 1),
(70, 36, 1),
(70, 39, 1),
(70, 42, 1),
(70, 43, 1),
(70, 27, 1),
(70, 5, 1),
(70, 6, 1),
(70, 7, 1),
(70, 13, 1),
(70, 15, 1),
(70, 16, 1),
(70, 51, 1),
(70, 47, 1),
(70, 46, 1),
(70, 64, 1),
(70, 82, 1),
(70, 60, 1),
(70, 77, 1),
(70, 54, 1),
(70, 67, 1),
(70, 68, 1),
(70, 57, 1),
(70, 62, 1),
(70, 61, 1),
(70, 78, 1),
(70, 66, 1),
(70, 73, 1),
(70, 69, 1),
(70, 33, 1),
(70, 32, 1),
(70, 30, 1),
(70, 29, 1),
(70, 31, 1),
(70, 28, 1),
(70, 34, 1),
(70, 50, 1),
(70, 24, 1),
(70, 48, 1),
(70, 20, 1),
(70, 21, 1),
(70, 26, 1),
(70, 23, 1),
(70, 18, 1),
(70, 25, 1),
(70, 17, 1),
(70, 22, 1),
(70, 19, 1),
(70, 35, 1),
(10, 51, 2),
(71, 2, 1),
(71, 36, 1),
(71, 39, 1),
(71, 42, 1),
(71, 43, 1),
(71, 27, 1),
(71, 5, 1),
(71, 6, 1),
(71, 7, 1),
(71, 13, 1),
(71, 15, 1),
(71, 16, 1),
(71, 51, 1),
(71, 47, 1),
(71, 46, 1),
(71, 64, 1),
(71, 82, 1),
(71, 60, 1),
(71, 77, 1),
(71, 54, 1),
(71, 67, 1),
(71, 68, 1),
(71, 57, 1),
(71, 62, 1),
(71, 61, 1),
(71, 78, 1),
(71, 66, 1),
(71, 73, 1),
(71, 69, 1),
(71, 33, 1),
(71, 32, 1),
(71, 30, 1),
(71, 29, 1),
(71, 31, 1),
(71, 28, 1),
(71, 34, 1),
(71, 50, 1),
(71, 24, 1),
(71, 48, 1),
(71, 20, 1),
(71, 21, 1),
(71, 26, 1),
(71, 23, 1),
(71, 18, 1),
(71, 25, 1),
(71, 17, 1),
(71, 22, 1),
(71, 19, 1),
(71, 35, 1),
(11, 51, 2),
(13, 51, 3),
(15, 51, 1),
(16, 51, 1),
(18, 51, 1),
(72, 2, 4),
(72, 36, 4),
(72, 39, 4),
(72, 42, 4),
(72, 43, 4),
(72, 27, 4),
(72, 5, 5),
(72, 6, 5),
(72, 7, 5),
(72, 13, 5),
(72, 15, 5),
(72, 16, 5),
(72, 51, 4),
(72, 47, 4),
(72, 46, 4),
(72, 64, 4),
(72, 82, 4),
(72, 60, 4),
(72, 77, 4),
(72, 54, 4),
(72, 67, 4),
(72, 68, 4),
(72, 57, 4),
(72, 62, 4),
(72, 61, 4),
(72, 78, 4),
(72, 66, 4),
(72, 73, 4),
(72, 69, 4),
(72, 33, 4),
(72, 32, 4),
(72, 30, 4),
(72, 29, 4),
(72, 31, 4),
(72, 28, 4),
(72, 34, 4),
(72, 50, 4),
(72, 24, 4),
(72, 48, 4),
(72, 20, 4),
(72, 21, 4),
(72, 26, 4),
(72, 23, 4),
(72, 18, 4),
(72, 25, 4),
(72, 17, 4),
(72, 22, 4),
(72, 19, 4),
(72, 35, 4),
(74, 2, 5),
(74, 36, 5),
(74, 39, 5),
(74, 42, 5),
(74, 43, 5),
(74, 27, 5),
(74, 5, 6),
(74, 6, 6),
(74, 7, 6),
(74, 13, 6),
(74, 15, 6),
(74, 16, 6),
(74, 51, 5),
(74, 47, 5),
(74, 46, 5),
(74, 64, 2),
(74, 82, 5),
(74, 60, 5),
(74, 77, 5),
(74, 54, 5),
(74, 67, 5),
(74, 68, 5),
(74, 57, 5),
(74, 62, 5),
(74, 61, 5),
(74, 78, 5),
(74, 66, 5),
(74, 73, 5),
(74, 69, 5),
(74, 33, 5),
(74, 32, 5),
(74, 30, 5),
(74, 29, 5),
(74, 31, 5),
(74, 28, 5),
(74, 34, 5),
(74, 50, 5),
(74, 24, 5),
(74, 48, 5),
(74, 20, 5),
(74, 21, 5),
(74, 26, 5),
(74, 23, 5),
(74, 18, 5),
(74, 25, 5),
(74, 17, 5),
(74, 22, 5),
(74, 19, 5),
(74, 35, 5),
(80, 5, 1),
(80, 6, 1),
(80, 7, 1),
(80, 13, 1),
(80, 15, 1),
(80, 16, 1),
(80, 51, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv3_vi_contact_rows`
--

CREATE TABLE IF NOT EXISTS `nv3_vi_contact_rows` (
  `id` mediumint(8) unsigned NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `fax` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `note` mediumtext NOT NULL,
  `admins` mediumtext NOT NULL,
  `act` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nv3_vi_contact_rows`
--

INSERT INTO `nv3_vi_contact_rows` (`id`, `full_name`, `phone`, `fax`, `email`, `note`, `admins`, `act`) VALUES
(1, 'Webmaster', '', '', '', '', '1/1/1/0;', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv3_vi_contact_send`
--

CREATE TABLE IF NOT EXISTS `nv3_vi_contact_send` (
  `id` mediumint(8) unsigned NOT NULL,
  `cid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `content` mediumtext NOT NULL,
  `send_time` int(11) unsigned NOT NULL DEFAULT '0',
  `sender_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `sender_name` varchar(100) NOT NULL,
  `sender_email` varchar(100) NOT NULL,
  `sender_phone` varchar(255) NOT NULL,
  `sender_ip` varchar(15) NOT NULL,
  `is_read` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_reply` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `reply_content` mediumtext NOT NULL,
  `reply_time` int(11) unsigned NOT NULL DEFAULT '0',
  `reply_aid` mediumint(8) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `nv3_vi_counter`
--

CREATE TABLE IF NOT EXISTS `nv3_vi_counter` (
  `c_type` varchar(100) NOT NULL,
  `c_val` varchar(100) NOT NULL,
  `c_count` int(11) unsigned NOT NULL DEFAULT '0',
  `last_update` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nv3_vi_counter`
--

INSERT INTO `nv3_vi_counter` (`c_type`, `c_val`, `c_count`, `last_update`) VALUES
('c_time', 'start', 0, 0),
('c_time', 'last', 1500611334, 0),
('total', 'hits', 110, 1500611334),
('year', '2009', 0, 0),
('year', '2010', 0, 0),
('year', '2011', 0, 0),
('year', '2012', 0, 0),
('year', '2013', 103, 1385994298),
('year', '2014', 0, 0),
('year', '2015', 1, 1428732359),
('year', '2016', 3, 1465736085),
('year', '2017', 3, 1500611334),
('year', '2018', 0, 0),
('year', '2019', 0, 0),
('year', '2020', 0, 0),
('month', 'Jan', 0, 0),
('month', 'Feb', 0, 0),
('month', 'Mar', 0, 0),
('month', 'Apr', 0, 1428732359),
('month', 'May', 0, 0),
('month', 'Jun', 0, 1465736085),
('month', 'Jul', 3, 1500611334),
('month', 'Aug', 0, 1377089029),
('month', 'Sep', 0, 0),
('month', 'Oct', 0, 1382015393),
('month', 'Nov', 0, 0),
('month', 'Dec', 0, 1385994298),
('day', '01', 0, 1375371369),
('day', '02', 0, 1385994298),
('day', '03', 0, 0),
('day', '04', 0, 0),
('day', '05', 0, 1375689726),
('day', '06', 2, 1499310935),
('day', '07', 0, 0),
('day', '08', 0, 1465402010),
('day', '09', 0, 1465443544),
('day', '10', 0, 0),
('day', '11', 0, 1428732359),
('day', '12', 0, 1465736085),
('day', '13', 0, 1381641360),
('day', '14', 0, 1373816294),
('day', '15', 0, 1373899346),
('day', '16', 0, 1373957934),
('day', '17', 0, 1382015393),
('day', '18', 0, 1376833963),
('day', '19', 0, 1376915885),
('day', '20', 0, 1377017736),
('day', '21', 1, 1500611334),
('day', '22', 0, 1374507339),
('day', '23', 0, 1374567996),
('day', '24', 0, 1374656303),
('day', '25', 0, 1374763954),
('day', '26', 0, 0),
('day', '27', 0, 0),
('day', '28', 0, 0),
('day', '29', 0, 0),
('day', '30', 0, 0),
('day', '31', 0, 0),
('dayofweek', 'Sunday', 22, 1465736085),
('dayofweek', 'Monday', 13, 1385994298),
('dayofweek', 'Tuesday', 27, 1377017736),
('dayofweek', 'Wednesday', 21, 1465402010),
('dayofweek', 'Thursday', 8, 1499310935),
('dayofweek', 'Friday', 5, 1500611334),
('dayofweek', 'Saturday', 14, 1428732359),
('hour', '00', 0, 1377018561),
('hour', '01', 0, 0),
('hour', '02', 0, 0),
('hour', '03', 0, 0),
('hour', '04', 0, 0),
('hour', '05', 0, 0),
('hour', '06', 0, 1499297929),
('hour', '07', 0, 0),
('hour', '08', 0, 1373939973),
('hour', '09', 0, 1376966578),
('hour', '10', 0, 1499310935),
('hour', '11', 1, 1500611334),
('hour', '12', 0, 1381641360),
('hour', '13', 0, 1428732359),
('hour', '14', 0, 1374476665),
('hour', '15', 0, 1375689726),
('hour', '16', 0, 1377078964),
('hour', '17', 0, 1377080728),
('hour', '18', 0, 0),
('hour', '19', 0, 1465736085),
('hour', '20', 0, 1382015393),
('hour', '21', 0, 1385994298),
('hour', '22', 0, 1377013656),
('hour', '23', 0, 1465402010),
('bot', 'Alexa', 0, 0),
('bot', 'AltaVista Scooter', 0, 0),
('bot', 'Altavista Mercator', 0, 0),
('bot', 'Altavista Search', 0, 0),
('bot', 'Aport.ru Bot', 0, 0),
('bot', 'Ask Jeeves', 0, 0),
('bot', 'Baidu', 0, 0),
('bot', 'Exabot', 0, 0),
('bot', 'FAST Enterprise', 0, 0),
('bot', 'FAST WebCrawler', 0, 0),
('bot', 'Francis', 0, 0),
('bot', 'Gigablast', 0, 0),
('bot', 'Google AdsBot', 0, 0),
('bot', 'Google Adsense', 0, 0),
('bot', 'Google Bot', 0, 0),
('bot', 'Google Desktop', 0, 0),
('bot', 'Google Feedfetcher', 0, 0),
('bot', 'Heise IT-Markt', 0, 0),
('bot', 'Heritrix', 0, 0),
('bot', 'IBM Research', 0, 0),
('bot', 'ICCrawler - ICjobs', 0, 0),
('bot', 'Ichiro', 0, 0),
('bot', 'InfoSeek Spider', 0, 0),
('bot', 'Lycos.com Bot', 0, 0),
('bot', 'MSN Bot', 0, 0),
('bot', 'MSN Bot Media', 0, 0),
('bot', 'MSN Bot News', 0, 0),
('bot', 'MSN NewsBlogs', 0, 0),
('bot', 'Majestic-12', 0, 0),
('bot', 'Metager', 0, 0),
('bot', 'NG-Search', 0, 0),
('bot', 'Nutch Bot', 0, 0),
('bot', 'NutchCVS', 0, 0),
('bot', 'OmniExplorer', 0, 0),
('bot', 'Online Link Validator', 0, 0),
('bot', 'Open-source Web Search', 0, 0),
('bot', 'Psbot', 0, 0),
('bot', 'Rambler', 0, 0),
('bot', 'SEO Crawler', 0, 0),
('bot', 'SEOSearch', 0, 0),
('bot', 'Seekport', 0, 0),
('bot', 'Sensis', 0, 0),
('bot', 'Seoma', 0, 0),
('bot', 'Snappy', 0, 0),
('bot', 'Steeler', 0, 0),
('bot', 'Synoo', 0, 0),
('bot', 'Telekom', 0, 0),
('bot', 'TurnitinBot', 0, 0),
('bot', 'Vietnamese Search', 0, 0),
('bot', 'Voyager', 0, 0),
('bot', 'W3 Sitesearch', 0, 0),
('bot', 'W3C Linkcheck', 0, 0),
('bot', 'W3C Validator', 0, 0),
('bot', 'WiseNut', 0, 0),
('bot', 'YaCy', 0, 0),
('bot', 'Yahoo Bot', 0, 0),
('bot', 'Yahoo MMCrawler', 0, 0),
('bot', 'Yahoo Slurp', 0, 0),
('bot', 'YahooSeeker', 0, 0),
('bot', 'Yandex', 0, 0),
('bot', 'Yandex Blog', 0, 0),
('bot', 'Yandex Direct Bot', 0, 0),
('bot', 'Yandex Something', 0, 0),
('browser', 'netcaptor', 0, 0),
('browser', 'opera', 0, 0),
('browser', 'aol', 0, 0),
('browser', 'aol2', 0, 0),
('browser', 'mosaic', 0, 0),
('browser', 'k-meleon', 0, 0),
('browser', 'konqueror', 0, 0),
('browser', 'avantbrowser', 0, 0),
('browser', 'avantgo', 0, 0),
('browser', 'proxomitron', 0, 0),
('browser', 'chrome', 99, 1500611334),
('browser', 'safari', 0, 0),
('browser', 'lynx', 0, 0),
('browser', 'links', 0, 0),
('browser', 'galeon', 0, 0),
('browser', 'abrowse', 0, 0),
('browser', 'amaya', 0, 0),
('browser', 'ant', 0, 0),
('browser', 'aweb', 0, 0),
('browser', 'beonex', 0, 0),
('browser', 'blazer', 0, 0),
('browser', 'camino', 0, 0),
('browser', 'chimera', 0, 0),
('browser', 'columbus', 0, 0),
('browser', 'crazybrowser', 0, 0),
('browser', 'curl', 0, 0),
('browser', 'deepnet', 0, 0),
('browser', 'dillo', 0, 0),
('browser', 'doris', 0, 0),
('browser', 'elinks', 0, 0),
('browser', 'epiphany', 0, 0),
('browser', 'ibrowse', 0, 0),
('browser', 'icab', 0, 0),
('browser', 'ice', 0, 0),
('browser', 'isilox', 0, 0),
('browser', 'lotus', 0, 0),
('browser', 'lunascape', 0, 0),
('browser', 'maxthon', 0, 0),
('browser', 'mbrowser', 0, 0),
('browser', 'multibrowser', 0, 0),
('browser', 'nautilus', 0, 0),
('browser', 'netfront', 0, 0),
('browser', 'netpositive', 0, 0),
('browser', 'omniweb', 0, 0),
('browser', 'oregano', 0, 0),
('browser', 'phaseout', 0, 0),
('browser', 'plink', 0, 0),
('browser', 'phoenix', 0, 0),
('browser', 'shiira', 0, 0),
('browser', 'sleipnir', 0, 0),
('browser', 'slimbrowser', 0, 0),
('browser', 'staroffice', 0, 0),
('browser', 'sunrise', 0, 0),
('browser', 'voyager', 0, 0),
('browser', 'w3m', 0, 0),
('browser', 'webtv', 0, 0),
('browser', 'xiino', 0, 0),
('browser', 'explorer', 6, 1374420858),
('browser', 'firefox', 5, 1428732359),
('browser', 'netscape', 0, 0),
('browser', 'netscape2', 0, 0),
('browser', 'mozilla', 0, 0),
('browser', 'mozilla2', 0, 0),
('browser', 'firebird', 0, 0),
('browser', 'Mobile', 0, 0),
('browser', 'Unknown', 0, 0),
('os', 'windows7', 4, 1465736085),
('os', 'windowsvista', 0, 0),
('os', 'windows2003', 0, 0),
('os', 'windowsxp', 0, 0),
('os', 'windowsxp2', 101, 1381641360),
('os', 'windows2k', 0, 0),
('os', 'windows95', 0, 0),
('os', 'windowsce', 0, 0),
('os', 'windowsme', 0, 0),
('os', 'windowsme2', 0, 0),
('os', 'windowsnt', 3, 1500611334),
('os', 'windowsnt2', 2, 1385994298),
('os', 'windows98', 0, 0),
('os', 'windows', 0, 0),
('os', 'linux', 0, 0),
('os', 'linux2', 0, 0),
('os', 'linux3', 0, 0),
('os', 'macosx', 0, 0),
('os', 'macppc', 0, 0),
('os', 'mac', 0, 0),
('os', 'amiga', 0, 0),
('os', 'beos', 0, 0),
('os', 'freebsd', 0, 0),
('os', 'freebsd2', 0, 0),
('os', 'irix', 0, 0),
('os', 'netbsd', 0, 0),
('os', 'netbsd2', 0, 0),
('os', 'os2', 0, 0),
('os', 'os22', 0, 0),
('os', 'openbsd', 0, 0),
('os', 'openbsd2', 0, 0),
('os', 'palm', 0, 0),
('os', 'palm2', 0, 0),
('os', 'Unspecified', 0, 0),
('country', 'AD', 0, 0),
('country', 'AE', 0, 0),
('country', 'AF', 0, 0),
('country', 'AG', 0, 0),
('country', 'AI', 0, 0),
('country', 'AL', 0, 0),
('country', 'AM', 0, 0),
('country', 'AN', 0, 0),
('country', 'AO', 0, 0),
('country', 'AQ', 0, 0),
('country', 'AR', 0, 0),
('country', 'AS', 0, 0),
('country', 'AT', 0, 0),
('country', 'AU', 0, 0),
('country', 'AW', 0, 0),
('country', 'AZ', 0, 0),
('country', 'BA', 0, 0),
('country', 'BB', 0, 0),
('country', 'BD', 0, 0),
('country', 'BE', 0, 0),
('country', 'BF', 0, 0),
('country', 'BG', 0, 0),
('country', 'BH', 0, 0),
('country', 'BI', 0, 0),
('country', 'BJ', 0, 0),
('country', 'BM', 0, 0),
('country', 'BN', 0, 0),
('country', 'BO', 0, 0),
('country', 'BR', 0, 0),
('country', 'BS', 0, 0),
('country', 'BT', 0, 0),
('country', 'BW', 0, 0),
('country', 'BY', 0, 0),
('country', 'BZ', 0, 0),
('country', 'CA', 0, 0),
('country', 'CD', 0, 0),
('country', 'CF', 0, 0),
('country', 'CG', 0, 0),
('country', 'CH', 0, 0),
('country', 'CI', 0, 0),
('country', 'CK', 0, 0),
('country', 'CL', 0, 0),
('country', 'CM', 0, 0),
('country', 'CN', 0, 0),
('country', 'CO', 0, 0),
('country', 'CR', 0, 0),
('country', 'CS', 0, 0),
('country', 'CU', 0, 0),
('country', 'CV', 0, 0),
('country', 'CY', 0, 0),
('country', 'CZ', 0, 0),
('country', 'DE', 0, 0),
('country', 'DJ', 0, 0),
('country', 'DK', 0, 0),
('country', 'DM', 0, 0),
('country', 'DO', 0, 0),
('country', 'DZ', 0, 0),
('country', 'EC', 0, 0),
('country', 'EE', 0, 0),
('country', 'EG', 0, 0),
('country', 'ER', 0, 0),
('country', 'ES', 0, 0),
('country', 'ET', 0, 0),
('country', 'EU', 0, 0),
('country', 'FI', 0, 0),
('country', 'FJ', 0, 0),
('country', 'FK', 0, 0),
('country', 'FM', 0, 0),
('country', 'FO', 0, 0),
('country', 'FR', 0, 0),
('country', 'GA', 0, 0),
('country', 'GB', 0, 0),
('country', 'GD', 0, 0),
('country', 'GE', 0, 0),
('country', 'GF', 0, 0),
('country', 'GH', 0, 0),
('country', 'GI', 0, 0),
('country', 'GL', 0, 0),
('country', 'GM', 0, 0),
('country', 'GN', 0, 0),
('country', 'GP', 0, 0),
('country', 'GQ', 0, 0),
('country', 'GR', 0, 0),
('country', 'GS', 0, 0),
('country', 'GT', 0, 0),
('country', 'GU', 0, 0),
('country', 'GW', 0, 0),
('country', 'GY', 0, 0),
('country', 'HK', 0, 0),
('country', 'HN', 0, 0),
('country', 'HR', 0, 0),
('country', 'HT', 0, 0),
('country', 'HU', 0, 0),
('country', 'ID', 0, 0),
('country', 'IE', 0, 0),
('country', 'IL', 0, 0),
('country', 'IN', 0, 0),
('country', 'IO', 0, 0),
('country', 'IQ', 0, 0),
('country', 'IR', 0, 0),
('country', 'IS', 0, 0),
('country', 'IT', 0, 0),
('country', 'JM', 0, 0),
('country', 'JO', 0, 0),
('country', 'JP', 0, 0),
('country', 'KE', 0, 0),
('country', 'KG', 0, 0),
('country', 'KH', 0, 0),
('country', 'KI', 0, 0),
('country', 'KM', 0, 0),
('country', 'KN', 0, 0),
('country', 'KR', 0, 0),
('country', 'KW', 0, 0),
('country', 'KY', 0, 0),
('country', 'KZ', 0, 0),
('country', 'LA', 0, 0),
('country', 'LB', 0, 0),
('country', 'LC', 0, 0),
('country', 'LI', 0, 0),
('country', 'LK', 0, 0),
('country', 'LR', 0, 0),
('country', 'LS', 0, 0),
('country', 'LT', 0, 0),
('country', 'LU', 0, 0),
('country', 'LV', 0, 0),
('country', 'LY', 0, 0),
('country', 'MA', 0, 0),
('country', 'MC', 0, 0),
('country', 'MD', 0, 0),
('country', 'MG', 0, 0),
('country', 'MH', 0, 0),
('country', 'MK', 0, 0),
('country', 'ML', 0, 0),
('country', 'MM', 0, 0),
('country', 'MN', 0, 0),
('country', 'MO', 0, 0),
('country', 'MP', 0, 0),
('country', 'MQ', 0, 0),
('country', 'MR', 0, 0),
('country', 'MT', 0, 0),
('country', 'MU', 0, 0),
('country', 'MV', 0, 0),
('country', 'MW', 0, 0),
('country', 'MX', 0, 0),
('country', 'MY', 0, 0),
('country', 'MZ', 0, 0),
('country', 'NA', 0, 0),
('country', 'NC', 0, 0),
('country', 'NE', 0, 0),
('country', 'NF', 0, 0),
('country', 'NG', 0, 0),
('country', 'NI', 0, 0),
('country', 'NL', 0, 0),
('country', 'NO', 0, 0),
('country', 'NP', 0, 0),
('country', 'NR', 0, 0),
('country', 'NU', 0, 0),
('country', 'NZ', 0, 0),
('country', 'OM', 0, 0),
('country', 'PA', 0, 0),
('country', 'PE', 0, 0),
('country', 'PF', 0, 0),
('country', 'PG', 0, 0),
('country', 'PH', 0, 0),
('country', 'PK', 0, 0),
('country', 'PL', 0, 0),
('country', 'PR', 0, 0),
('country', 'PS', 0, 0),
('country', 'PT', 0, 0),
('country', 'PW', 0, 0),
('country', 'PY', 0, 0),
('country', 'QA', 0, 0),
('country', 'RE', 0, 0),
('country', 'RO', 0, 0),
('country', 'RU', 0, 0),
('country', 'RW', 0, 0),
('country', 'SA', 0, 0),
('country', 'SB', 0, 0),
('country', 'SC', 0, 0),
('country', 'SD', 0, 0),
('country', 'SE', 0, 0),
('country', 'SG', 0, 0),
('country', 'SI', 0, 0),
('country', 'SK', 0, 0),
('country', 'SL', 0, 0),
('country', 'SM', 0, 0),
('country', 'SN', 0, 0),
('country', 'SO', 0, 0),
('country', 'SR', 0, 0),
('country', 'ST', 0, 0),
('country', 'SV', 0, 0),
('country', 'SY', 0, 0),
('country', 'SZ', 0, 0),
('country', 'TD', 0, 0),
('country', 'TF', 0, 0),
('country', 'TG', 0, 0),
('country', 'TH', 0, 0),
('country', 'TJ', 0, 0),
('country', 'TK', 0, 0),
('country', 'TL', 0, 0),
('country', 'TM', 0, 0),
('country', 'TN', 0, 0),
('country', 'TO', 0, 0),
('country', 'TR', 0, 0),
('country', 'TT', 0, 0),
('country', 'TV', 0, 0),
('country', 'TW', 0, 0),
('country', 'TZ', 0, 0),
('country', 'UA', 0, 0),
('country', 'UG', 0, 0),
('country', 'US', 0, 0),
('country', 'UY', 0, 0),
('country', 'UZ', 0, 0),
('country', 'VA', 0, 0),
('country', 'VC', 0, 0),
('country', 'VE', 0, 0),
('country', 'VG', 0, 0),
('country', 'VI', 0, 0),
('country', 'VN', 0, 0),
('country', 'VU', 0, 0),
('country', 'WS', 0, 0),
('country', 'YE', 0, 0),
('country', 'YT', 0, 0),
('country', 'YU', 0, 0),
('country', 'ZA', 0, 0),
('country', 'ZM', 0, 0),
('country', 'ZW', 0, 0),
('country', 'ZZ', 110, 1500611334),
('country', 'unkown', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv3_vi_menu_menu`
--

CREATE TABLE IF NOT EXISTS `nv3_vi_menu_menu` (
  `id` int(11) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `menu_item` mediumtext NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nv3_vi_menu_menu`
--

INSERT INTO `nv3_vi_menu_menu` (`id`, `title`, `menu_item`, `description`) VALUES
(2, 'Menu market', '12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30', '');

-- --------------------------------------------------------

--
-- Table structure for table `nv3_vi_menu_rows`
--

CREATE TABLE IF NOT EXISTS `nv3_vi_menu_rows` (
  `id` int(11) NOT NULL,
  `parentid` int(11) unsigned NOT NULL,
  `mid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `link` text NOT NULL,
  `note` varchar(255) NOT NULL DEFAULT '',
  `weight` int(11) NOT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  `lev` int(11) NOT NULL DEFAULT '0',
  `subitem` mediumtext NOT NULL,
  `who_view` tinyint(2) NOT NULL DEFAULT '0',
  `groups_view` varchar(255) NOT NULL,
  `module_name` varchar(255) NOT NULL DEFAULT '',
  `op` varchar(255) NOT NULL DEFAULT '',
  `target` tinyint(4) NOT NULL DEFAULT '0',
  `css` varchar(255) NOT NULL DEFAULT '',
  `active_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nv3_vi_menu_rows`
--

INSERT INTO `nv3_vi_menu_rows` (`id`, `parentid`, `mid`, `title`, `link`, `note`, `weight`, `order`, `lev`, `subitem`, `who_view`, `groups_view`, `module_name`, `op`, `target`, `css`, `active_type`, `status`) VALUES
(12, 0, 2, 'Tin Tức', '&#x002F;thoitrang&#x002F;index.php?language&#x3D;vi&amp;nv&#x3D;news', '', 1, 1, 0, '19,20,21,22', 0, '', 'news', '', 1, '', 0, 1),
(13, 0, 2, 'Shops', '&#x002F;thoitrang&#x002F;index.php?language&#x3D;vi&amp;nv&#x3D;shops', '', 2, 6, 0, '23,24,25,26,27,28', 0, '', 'shops', '', 1, '', 0, 1),
(14, 0, 2, 'Liên hệ', '&#x002F;thoitrang&#x002F;index.php?language&#x3D;vi&amp;nv&#x3D;contact', '', 3, 13, 0, '', 0, '', 'contact', '', 1, '', 0, 1),
(15, 0, 2, 'Giới thiệu', '&#x002F;thoitrang&#x002F;index.php?language&#x3D;vi&amp;nv&#x3D;about', '', 4, 14, 0, '', 0, '', 'about', '', 1, '', 0, 1),
(16, 0, 2, 'Thành viên', '&#x002F;thoitrang&#x002F;index.php?language&#x3D;vi&amp;nv&#x3D;users', '', 5, 15, 0, '', 0, '', 'users', '', 1, '', 0, 1),
(17, 0, 2, 'Tìm kiếm', '&#x002F;thoitrang&#x002F;index.php?language&#x3D;vi&amp;nv&#x3D;search', '', 6, 16, 0, '', 0, '', '0', '', 1, '', 0, 1),
(18, 0, 2, 'Rss', '&#x002F;thoitrang&#x002F;index.php?language&#x3D;vi&amp;nv&#x3D;rss', '', 7, 17, 0, '', 0, '', '0', '', 1, '', 0, 1),
(19, 12, 2, 'Tin tức', '&#x002F;thoitrang&#x002F;index.php?language&#x3D;vi&amp;nv&#x3D;news&amp;op&#x3D;Tin-tuc', '', 1, 2, 1, '', 0, '', 'news', '', 1, '', 0, 1),
(20, 12, 2, 'Sản phẩm', '&#x002F;thoitrang&#x002F;index.php?language&#x3D;vi&amp;nv&#x3D;news&amp;op&#x3D;San-pham', '', 2, 3, 1, '', 0, '', 'news', '', 1, '', 0, 1),
(21, 12, 2, 'Đối tác', '&#x002F;thoitrang&#x002F;index.php?language&#x3D;vi&amp;nv&#x3D;news&amp;op&#x3D;Doi-tac', '', 3, 4, 1, '', 0, '', 'news', '', 1, '', 0, 1),
(22, 12, 2, 'Tuyển dụng', '&#x002F;thoitrang&#x002F;index.php?language&#x3D;vi&amp;nv&#x3D;news&amp;op&#x3D;Tuyen-dung', '', 4, 5, 1, '', 0, '', 'news', '', 1, '', 0, 1),
(23, 13, 2, 'Hoa - Quà tặng', '&#x002F;thoitrang&#x002F;index.php?language&#x3D;vi&amp;nv&#x3D;shops&amp;op&#x3D;Hoa-Qua-tang', '', 1, 7, 1, '', 0, '', 'shops', '', 1, '', 0, 1),
(24, 13, 2, 'Đồng hồ', '&#x002F;thoitrang&#x002F;index.php?language&#x3D;vi&amp;nv&#x3D;shops&amp;op&#x3D;Dong-ho', '', 2, 8, 1, '', 0, '', 'shops', '', 1, '', 0, 1),
(25, 13, 2, 'Điện thoại', '&#x002F;thoitrang&#x002F;index.php?language&#x3D;vi&amp;nv&#x3D;shops&amp;op&#x3D;Dien-thoai', '', 3, 9, 1, '', 0, '', 'shops', '', 1, '', 0, 1),
(26, 13, 2, 'Sách - Tạp chí', '&#x002F;thoitrang&#x002F;index.php?language&#x3D;vi&amp;nv&#x3D;shops&amp;op&#x3D;Sach-Tap-chi', '', 4, 10, 1, '', 0, '', 'shops', '', 1, '', 0, 1),
(27, 13, 2, 'Thời trang', '&#x002F;thoitrang&#x002F;index.php?language&#x3D;vi&amp;nv&#x3D;shops&amp;op&#x3D;Thoi-trang', '', 5, 11, 1, '', 0, '', 'shops', '', 1, '', 0, 1),
(28, 13, 2, 'Đồ chơi cho bé', '&#x002F;thoitrang&#x002F;index.php?language&#x3D;vi&amp;nv&#x3D;shops&amp;op&#x3D;Do-choi-cho-be', '', 6, 12, 1, '', 0, '', 'shops', '', 1, '', 0, 1),
(29, 0, 2, 'Diễn đàn', 'hanoinet.info', 'Cổng thông tin công nghệ', 8, 18, 0, '30', 0, '', '0', '', 2, '', 1, 1),
(30, 29, 2, 'Diễn đàn', 'http&#x3A;&#x002F;&#x002F;hanoinet.info', 'Cổng thông tin công nghệ', 1, 19, 1, '', 0, '', '0', '', 2, '', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv3_vi_modfuncs`
--

CREATE TABLE IF NOT EXISTS `nv3_vi_modfuncs` (
  `func_id` mediumint(8) unsigned NOT NULL,
  `func_name` varchar(55) NOT NULL,
  `func_custom_name` varchar(255) NOT NULL,
  `in_module` varchar(55) NOT NULL,
  `show_func` tinyint(4) NOT NULL DEFAULT '0',
  `in_submenu` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subweight` smallint(2) unsigned NOT NULL DEFAULT '1',
  `setting` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nv3_vi_modfuncs`
--

INSERT INTO `nv3_vi_modfuncs` (`func_id`, `func_name`, `func_custom_name`, `in_module`, `show_func`, `in_submenu`, `subweight`, `setting`) VALUES
(1, 'Sitemap', 'Sitemap', 'about', 0, 0, 0, ''),
(2, 'main', 'Main', 'about', 1, 0, 1, ''),
(3, 'Sitemap', 'Sitemap', 'news', 0, 0, 0, ''),
(4, 'comment', 'Comment', 'news', 0, 0, 0, ''),
(5, 'content', 'Content', 'news', 1, 0, 1, ''),
(6, 'detail', 'Detail', 'news', 1, 0, 2, ''),
(7, 'main', 'Main', 'news', 1, 0, 3, ''),
(8, 'postcomment', 'Postcomment', 'news', 0, 0, 0, ''),
(9, 'print', 'Print', 'news', 0, 0, 0, ''),
(10, 'rating', 'Rating', 'news', 0, 0, 0, ''),
(11, 'rss', 'Rss', 'news', 0, 0, 0, ''),
(12, 'savefile', 'Savefile', 'news', 0, 0, 0, ''),
(13, 'search', 'Search', 'news', 1, 0, 4, ''),
(14, 'sendmail', 'Sendmail', 'news', 0, 0, 0, ''),
(15, 'topic', 'Topic', 'news', 1, 0, 5, ''),
(16, 'viewcat', 'Viewcat', 'news', 1, 0, 6, ''),
(17, 'active', 'Active', 'users', 1, 0, 8, ''),
(18, 'changepass', 'Đổi mật khẩu', 'users', 1, 1, 6, ''),
(19, 'editinfo', 'Editinfo', 'users', 1, 0, 10, ''),
(20, 'login', 'Đăng nhập', 'users', 1, 1, 2, ''),
(21, 'logout', 'Logout', 'users', 1, 1, 3, ''),
(22, 'lostactivelink', 'Lostactivelink', 'users', 1, 0, 9, ''),
(23, 'lostpass', 'Quên mật khẩu', 'users', 1, 1, 5, ''),
(24, 'main', 'Main', 'users', 1, 1, 1, ''),
(25, 'openid', 'Openid', 'users', 1, 1, 7, ''),
(26, 'register', 'Đăng ký', 'users', 1, 1, 4, ''),
(27, 'main', 'Main', 'contact', 1, 0, 1, ''),
(28, 'allbots', 'Máy chủ tìm kiếm', 'statistics', 1, 1, 6, ''),
(29, 'allbrowsers', 'Theo trình duyệt', 'statistics', 1, 1, 4, ''),
(30, 'allcountries', 'Theo quốc gia', 'statistics', 1, 1, 3, ''),
(31, 'allos', 'Theo hệ điều hành', 'statistics', 1, 1, 5, ''),
(32, 'allreferers', 'Theo đường dẫn đến site', 'statistics', 1, 1, 2, ''),
(33, 'main', 'Main', 'statistics', 1, 0, 1, ''),
(34, 'referer', 'Đường dẫn đến site theo tháng', 'statistics', 1, 0, 7, ''),
(35, 'main', 'Main', 'voting', 1, 0, 0, ''),
(36, 'addads', 'Addads', 'banners', 1, 0, 1, ''),
(37, 'cledit', 'Cledit', 'banners', 0, 0, 0, ''),
(38, 'click', 'Click', 'banners', 0, 0, 0, ''),
(39, 'clientinfo', 'Clientinfo', 'banners', 1, 0, 2, ''),
(40, 'clinfo', 'Clinfo', 'banners', 0, 0, 0, ''),
(41, 'logininfo', 'Logininfo', 'banners', 0, 0, 0, ''),
(42, 'main', 'Main', 'banners', 1, 0, 3, ''),
(43, 'stats', 'Stats', 'banners', 1, 0, 4, ''),
(44, 'viewmap', 'Viewmap', 'banners', 0, 0, 0, ''),
(45, 'adv', 'Adv', 'search', 0, 0, 0, ''),
(46, 'main', 'Main', 'search', 1, 0, 1, ''),
(47, 'main', 'Main', 'rss', 1, 0, 1, ''),
(48, 'regroups', 'Nhóm thành viên', 'users', 1, 0, 1, ''),
(50, 'memberlist', 'Danh sách thành viên', 'users', 1, 1, 1, ''),
(51, 'groups', 'Groups', 'news', 1, 0, 7, ''),
(52, 'Sitemap', 'Sitemap', 'shops', 0, 0, 0, ''),
(53, 'addcomment', 'Addcomment', 'shops', 0, 0, 0, ''),
(54, 'cart', 'Cart', 'shops', 1, 0, 5, ''),
(55, 'checkorder', 'Checkorder', 'shops', 0, 0, 0, ''),
(56, 'comment', 'Comment', 'shops', 0, 0, 0, ''),
(57, 'complete', 'Complete', 'shops', 1, 0, 8, ''),
(58, 'delhis', 'Delhis', 'shops', 0, 0, 0, ''),
(59, 'delpro', 'Delpro', 'shops', 0, 0, 0, ''),
(60, 'detail', 'Detail', 'shops', 1, 0, 3, ''),
(61, 'group', 'Group', 'shops', 1, 0, 10, ''),
(62, 'history', 'History', 'shops', 1, 0, 9, ''),
(63, 'loadcart', 'Loadcart', 'shops', 0, 0, 0, ''),
(64, 'main', 'Main', 'shops', 1, 0, 1, ''),
(65, 'myinfo', 'Myinfo', 'shops', 0, 0, 0, ''),
(66, 'myproduct', 'Myproduct', 'shops', 1, 0, 12, ''),
(67, 'order', 'Order', 'shops', 1, 0, 6, ''),
(68, 'payment', 'Payment', 'shops', 1, 0, 7, ''),
(69, 'post', 'Post', 'shops', 1, 0, 14, ''),
(70, 'postcomment', 'Postcomment', 'shops', 0, 0, 0, ''),
(71, 'print', 'Print', 'shops', 0, 0, 0, ''),
(72, 'print_pro', 'Print_pro', 'shops', 0, 0, 0, ''),
(73, 'profile', 'Profile', 'shops', 1, 0, 13, ''),
(74, 'rate', 'Rate', 'shops', 0, 0, 0, ''),
(75, 'remove', 'Remove', 'shops', 0, 0, 0, ''),
(76, 'rss', 'Rss', 'shops', 0, 0, 0, ''),
(77, 'search', 'Search', 'shops', 1, 0, 4, ''),
(78, 'search_result', 'Search_result', 'shops', 1, 0, 11, ''),
(79, 'sendmail', 'Sendmail', 'shops', 0, 0, 0, ''),
(80, 'service', 'Service', 'shops', 0, 0, 0, ''),
(81, 'setcart', 'Setcart', 'shops', 0, 0, 0, ''),
(82, 'viewcat', 'Viewcat', 'shops', 1, 0, 2, ''),
(86, 'quick_view', 'Quick_view', 'shops', 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `nv3_vi_modthemes`
--

CREATE TABLE IF NOT EXISTS `nv3_vi_modthemes` (
  `func_id` int(11) DEFAULT NULL,
  `layout` varchar(100) DEFAULT NULL,
  `theme` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nv3_vi_modthemes`
--

INSERT INTO `nv3_vi_modthemes` (`func_id`, `layout`, `theme`) VALUES
(0, 'body', 'mobile_nukeviet'),
(0, 'body-right', 'modern'),
(0, 'left-body-right', 'default'),
(2, 'body', 'mobile_nukeviet'),
(2, 'body', 'modern'),
(2, 'left-body-right', 'default'),
(5, 'body', 'mobile_nukeviet'),
(5, 'body-right', 'modern'),
(5, 'left-body-right', 'default'),
(6, 'body', 'mobile_nukeviet'),
(6, 'body-right', 'modern'),
(6, 'left-body-right', 'default'),
(7, 'body', 'mobile_nukeviet'),
(7, 'body-right', 'modern'),
(7, 'left-body-right', 'default'),
(13, 'body', 'mobile_nukeviet'),
(13, 'body-right', 'modern'),
(13, 'left-body-right', 'default'),
(15, 'body', 'mobile_nukeviet'),
(15, 'body-right', 'modern'),
(15, 'left-body-right', 'default'),
(16, 'body', 'mobile_nukeviet'),
(16, 'body-right', 'modern'),
(16, 'left-body-right', 'default'),
(17, 'body', 'mobile_nukeviet'),
(17, 'body-right', 'modern'),
(17, 'left-body-right', 'default'),
(18, 'body', 'mobile_nukeviet'),
(18, 'body-right', 'modern'),
(18, 'left-body-right', 'default'),
(19, 'body', 'mobile_nukeviet'),
(19, 'body-right', 'modern'),
(19, 'left-body-right', 'default'),
(20, 'body', 'mobile_nukeviet'),
(20, 'body-right', 'modern'),
(20, 'left-body-right', 'default'),
(21, 'body', 'mobile_nukeviet'),
(21, 'body-right', 'modern'),
(21, 'left-body-right', 'default'),
(22, 'body', 'mobile_nukeviet'),
(22, 'body-right', 'modern'),
(22, 'left-body-right', 'default'),
(23, 'body', 'mobile_nukeviet'),
(23, 'body-right', 'modern'),
(23, 'left-body-right', 'default'),
(24, 'body', 'mobile_nukeviet'),
(24, 'body-right', 'modern'),
(24, 'left-body-right', 'default'),
(25, 'body', 'mobile_nukeviet'),
(25, 'body-right', 'modern'),
(25, 'left-body-right', 'default'),
(26, 'body', 'mobile_nukeviet'),
(26, 'body-right', 'modern'),
(26, 'left-body-right', 'default'),
(27, 'body', 'mobile_nukeviet'),
(27, 'body-right', 'modern'),
(27, 'left-body-right', 'default'),
(28, 'body', 'mobile_nukeviet'),
(28, 'body', 'modern'),
(28, 'left-body', 'default'),
(29, 'body', 'mobile_nukeviet'),
(29, 'body', 'modern'),
(29, 'left-body', 'default'),
(30, 'body', 'mobile_nukeviet'),
(30, 'body', 'modern'),
(30, 'left-body', 'default'),
(31, 'body', 'mobile_nukeviet'),
(31, 'body', 'modern'),
(31, 'left-body', 'default'),
(32, 'body', 'mobile_nukeviet'),
(32, 'body', 'modern'),
(32, 'left-body', 'default'),
(33, 'body', 'mobile_nukeviet'),
(33, 'body', 'modern'),
(33, 'left-body', 'default'),
(34, 'body', 'mobile_nukeviet'),
(34, 'body', 'modern'),
(34, 'left-body', 'default'),
(35, 'body', 'mobile_nukeviet'),
(35, 'body-right', 'modern'),
(35, 'left-body-right', 'default'),
(36, 'body', 'mobile_nukeviet'),
(36, 'body-right', 'modern'),
(36, 'left-body-right', 'default'),
(39, 'body', 'mobile_nukeviet'),
(39, 'body-right', 'modern'),
(39, 'left-body-right', 'default'),
(42, 'body', 'mobile_nukeviet'),
(42, 'body-right', 'modern'),
(42, 'left-body-right', 'default'),
(43, 'body', 'mobile_nukeviet'),
(43, 'body-right', 'modern'),
(43, 'left-body-right', 'default'),
(46, 'body', 'mobile_nukeviet'),
(46, 'body-right', 'modern'),
(46, 'left-body-right', 'default'),
(47, 'body', 'mobile_nukeviet'),
(47, 'body', 'modern'),
(47, 'left-body-right', 'default'),
(48, 'body', 'mobile_nukeviet'),
(48, 'body-right', 'modern'),
(48, 'left-body-right', 'default'),
(50, 'body', 'mobile_nukeviet'),
(50, 'body-right', 'modern'),
(50, 'left-body-right', 'default'),
(51, 'body-right', 'modern'),
(54, 'body', 'mobile_nukeviet'),
(54, 'body-right', 'modern'),
(54, 'left-body-right', 'default'),
(57, 'body', 'mobile_nukeviet'),
(57, 'body-right', 'modern'),
(57, 'left-body-right', 'default'),
(60, 'body', 'mobile_nukeviet'),
(60, 'body-right', 'modern'),
(60, 'left-body-right', 'default'),
(61, 'body', 'mobile_nukeviet'),
(61, 'body-right', 'modern'),
(61, 'left-body-right', 'default'),
(62, 'body', 'mobile_nukeviet'),
(62, 'body-right', 'modern'),
(62, 'left-body-right', 'default'),
(64, 'body', 'mobile_nukeviet'),
(64, 'body-right', 'modern'),
(64, 'left-body-right', 'default'),
(66, 'body', 'mobile_nukeviet'),
(66, 'body-right', 'modern'),
(66, 'left-body-right', 'default'),
(67, 'body', 'mobile_nukeviet'),
(67, 'body-right', 'modern'),
(67, 'left-body-right', 'default'),
(68, 'body', 'mobile_nukeviet'),
(68, 'body-right', 'modern'),
(68, 'left-body-right', 'default'),
(69, 'body', 'mobile_nukeviet'),
(69, 'body-right', 'modern'),
(69, 'left-body-right', 'default'),
(73, 'body', 'mobile_nukeviet'),
(73, 'body-right', 'modern'),
(73, 'left-body-right', 'default'),
(77, 'body', 'mobile_nukeviet'),
(77, 'body-right', 'modern'),
(77, 'left-body-right', 'default'),
(78, 'body', 'mobile_nukeviet'),
(78, 'body-right', 'modern'),
(78, 'left-body-right', 'default'),
(82, 'body', 'mobile_nukeviet'),
(82, 'body-right', 'modern'),
(82, 'left-body-right', 'default');

-- --------------------------------------------------------

--
-- Table structure for table `nv3_vi_modules`
--

CREATE TABLE IF NOT EXISTS `nv3_vi_modules` (
  `title` varchar(55) NOT NULL,
  `module_file` varchar(55) NOT NULL DEFAULT '',
  `module_data` varchar(55) NOT NULL DEFAULT '',
  `custom_title` varchar(255) NOT NULL,
  `admin_title` varchar(255) NOT NULL,
  `set_time` int(11) unsigned NOT NULL DEFAULT '0',
  `main_file` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `admin_file` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `theme` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `keywords` mediumtext NOT NULL,
  `groups_view` varchar(255) NOT NULL,
  `in_menu` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `submenu` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `act` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `admins` varchar(255) NOT NULL,
  `rss` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nv3_vi_modules`
--

INSERT INTO `nv3_vi_modules` (`title`, `module_file`, `module_data`, `custom_title`, `admin_title`, `set_time`, `main_file`, `admin_file`, `theme`, `mobile`, `description`, `keywords`, `groups_view`, `in_menu`, `weight`, `submenu`, `act`, `admins`, `rss`) VALUES
('about', 'about', 'about', 'Giới thiệu', '', 1276333182, 1, 1, '', 'mobile_nukeviet', '', '', '0', 1, 1, 1, 1, '', 0),
('news', 'news', 'news', 'Tin Tức', '', 1270400000, 1, 1, '', 'mobile_nukeviet', '', '', '0', 1, 2, 1, 1, '', 1),
('users', 'users', 'users', 'Thành viên', 'Tài khoản', 1274080277, 1, 1, '', 'mobile_nukeviet', '', '', '0', 1, 4, 1, 1, '', 0),
('contact', 'contact', 'contact', 'Liên hệ', '', 1275351337, 1, 1, '', 'mobile_nukeviet', '', '', '0', 1, 5, 1, 1, '', 0),
('statistics', 'statistics', 'statistics', 'Thống kê', '', 1276520928, 1, 0, '', 'mobile_nukeviet', '', 'truy cập, online, statistics', '0', 1, 6, 1, 1, '', 0),
('voting', 'voting', 'voting', 'Thăm dò ý kiến', '', 1275315261, 1, 1, '', 'mobile_nukeviet', '', '', '0', 0, 7, 1, 1, '', 1),
('banners', 'banners', 'banners', 'Quảng cáo', '', 1270400000, 1, 1, '', 'mobile_nukeviet', '', '', '0', 0, 8, 1, 1, '', 0),
('search', 'search', 'search', 'Tìm kiếm', '', 1273474173, 1, 0, '', 'mobile_nukeviet', '', '', '0', 0, 9, 1, 1, '', 0),
('menu', 'menu', 'menu', 'Menu Site', '', 1295287334, 0, 1, '', 'mobile_nukeviet', '', '', '0', 0, 10, 1, 1, '', 0),
('rss', 'rss', 'rss', 'Rss', '', 1279366705, 1, 1, '', 'mobile_nukeviet', '', '', '0', 0, 11, 10, 1, '', 0),
('shops', 'shops', 'shops', 'Shops', '', 1373785958, 1, 1, '', '', '', '', '0', 0, 3, 1, 1, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv3_vi_news_1`
--

CREATE TABLE IF NOT EXISTS `nv3_vi_news_1` (
  `id` int(11) unsigned NOT NULL,
  `catid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) NOT NULL DEFAULT '',
  `topicid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(255) NOT NULL DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `hometext` mediumtext NOT NULL,
  `homeimgfile` varchar(255) NOT NULL DEFAULT '',
  `homeimgalt` varchar(255) NOT NULL DEFAULT '',
  `homeimgthumb` varchar(255) NOT NULL DEFAULT '',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `keywords` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nv3_vi_news_1`
--

INSERT INTO `nv3_vi_news_1` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`, `keywords`) VALUES
(1, 1, '1,8,12', 0, 1, 'Quỳnh Nhi', 1, 1274989177, 1275318126, 1, 1274989140, 0, 2, 'Ra mắt công ty mã nguồn mở đầu tiên tại Việt Nam', 'Ra-mat-cong-ty-ma-nguon-mo-dau-tien-tai-Viet-Nam', 'Mã nguồn mở NukeViet vốn đã quá quen thuộc với cộng đồng CNTT Việt Nam trong mấy năm qua. Tuy chưa hoạt động chính thức, nhưng chỉ trong khoảng 5 năm gần đây, mã nguồn mở NukeViet đã được dùng phổ biến ở Việt Nam, áp dụng ở hầu hết các lĩnh vực, từ tin tức đến thương mại điện tử, từ các website cá nhân cho tới những hệ thống website doanh nghiệp.', 'nangly.jpg', 'Thành lập VINADES.,JSC', 'thumb/nangly.jpg|block/nangly.jpg', 1, 2, 1, 2, 0, 0, 0, 'nguồn mở, quen thuộc, cộng đồng, việt nam, hoạt động, gần đây, phổ biến, áp dụng, hầu hết, hết các, lĩnh vực, tin tức, thương mại điện, điện tử, cá nhân, hệ thống'),
(2, 1, '1,8,12', 1, 1, 'laser', 2, 1274989787, 1275318114, 1, 1274989740, 0, 2, 'Công bố dự án NukeViet 3.0 sau 1 tháng ra mắt VINADES.,JSC', 'Cong-bo-du-an-NukeViet-3-0-sau-1-thang-ra-mat-VINADES-JSC', 'NukeViet 3.0 - Một nền tảng được xây dựng hoàn toàn mới với những công nghệ web tiên tiến nhất hiện nay hứa hẹn sẽ làm một cuộc cách mạng về mã nguồn mở ở Việt Nam. Món quà này là lời cảm ơn chân thành nhất mà VINADES.,JSC muốn gửi tới cộng đồng sau một tháng chính thức ra mắt.', 'nukeviet3.jpg', 'NukeViet 3.0', 'thumb/nukeviet3.jpg|block/nukeviet3.jpg', 1, 2, 1, 3, 0, 0, 0, 'nền tảng, xây dựng, hoàn toàn, với những, công nghệ, tiên tiến, hiện nay, hứa hẹn, cách mạng, nguồn mở, việt nam, món quà, cảm ơn, chân thành, thành nhất, cộng đồng'),
(6, 10, '1,8,10', 0, 1, '', 2, 1274994722, 1275318001, 1, 1274994720, 0, 2, 'Thư mời hợp tác liên kết quảng cáo và cung cấp hosting thử nghiệm', 'Thu-moi-hop-tac', 'Hiện tại VINADES.,JSC đang tiến hành phát triển bộ mã nguồn NukeViet phiên bản 3.0 – một thế hệ CMS hoàn toàn mới với nhiều tính năng ưu việt, được đầu tư bài bản với kinh phí lớn. Với thiện chí hợp tác cùng phát triển VINADES.,JSC xin trân trọng gửi lời mời hợp tác đến Quý đối tác là các công ty cung cấp tên miền - hosting, các doanh nghiệp quan tâm và mong muốn hợp tác cùng VINADES để cùng thực hiện chung các hoạt động kinh doanh nhằm gia tăng giá trị, quảng bá thương hiệu chung cho cả hai bên.', 'hoptac.jpg', '', 'thumb/hoptac.jpg|block/hoptac.jpg', 1, 2, 1, 3, 0, 0, 0, 'hiện tại, tiến hành, phát triển, phiên bản, thế hệ, hoàn toàn, tính năng, ưu việt, kinh phí, thiện chí, hợp tác, trân trọng, mời hợp tác, đối tác, các công ty, công ty, cung cấp, tên miền, các doanh, doanh nghiệp, quan tâm'),
(10, 1, '1,9', 0, 1, '', 4, 1322685920, 1322686042, 1, 1322685920, 0, 2, 'Mã nguồn mở NukeViet giành giải ba Nhân tài đất Việt 2011', 'Ma-nguon-mo-NukeViet-gianh-giai-ba-Nhan-tai-dat-Viet-2011', 'Không có giải nhất và giải nhì, sản phẩm Mã nguồn mở NukeViet của VINADES.,JSC là một trong ba sản phẩm đã đoạt giải ba Nhân tài đất Việt 2011 - Lĩnh vực Công nghệ thông tin (Sản phẩm đã ứng dụng rộng rãi).', 'nukeviet-nhantaidatviet2011.jpg', 'Mã nguồn mở NukeViet giành giải ba Nhân tài đất Việt 2011', 'thumb/nukeviet-nhantaidatviet2011.jpg|block/nukeviet-nhantaidatviet2011.jpg', 1, 2, 1, 4, 0, 0, 0, 'Nhân tài đất Việt 2011, mã nguồn mở');

-- --------------------------------------------------------

--
-- Table structure for table `nv3_vi_news_2`
--

CREATE TABLE IF NOT EXISTS `nv3_vi_news_2` (
  `id` int(11) unsigned NOT NULL,
  `catid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) NOT NULL DEFAULT '',
  `topicid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(255) NOT NULL DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `hometext` mediumtext NOT NULL,
  `homeimgfile` varchar(255) NOT NULL DEFAULT '',
  `homeimgalt` varchar(255) NOT NULL DEFAULT '',
  `homeimgthumb` varchar(255) NOT NULL DEFAULT '',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `keywords` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nv3_vi_news_2`
--

INSERT INTO `nv3_vi_news_2` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`, `keywords`) VALUES
(5, 2, '2', 1, 1, '', 5, 1274993307, 1275318039, 1, 1274993280, 0, 2, 'Giới thiệu về mã nguồn mở NukeViet', 'Gioi-thieu-ve-ma-nguon-mo-NukeViet', 'Chắc hẳn đây không phải lần đầu tiên bạn nghe nói đến mã nguồn mở. Và nếu bạn là người mê lướt web thì hẳn bạn từng nhìn thấy đâu đó cái tên NukeViet. NukeViet, phát âm là Nu-Ke-Việt, chính là phần mềm dùng để xây dựng các Website mà bạn ngày ngày online để truy cập đấy.', 'screenshot.jpg', '', 'thumb/screenshot.jpg|block/screenshot.jpg', 0, 2, 1, 2, 0, 0, 0, 'quản trị, nội dung, sử dụng, khả năng, tích hợp, ứng dụng'),
(9, 2, '2', 0, 1, 'Phạm Thế Quang Huy', 4, 1322685396, 1322686088, 1, 1322685396, 0, 2, 'NukeViet - Công cụ mã nguồn mở cho cộng đồng thiết kế website Việt Nam', 'NukeViet-Cong-cu-ma-nguon-mo-cho-cong-dong-thiet-ke-website-Viet-Nam', '(Dân trí) - Là một trong những hệ quản trị nội dung nổi tiếng hàng đầu tại Việt Nam, NukeViet đã được áp dụng rộng rãi trong việc xây dựng nhiều trang báo điện tử và các cổng thông tin điện tử nổi tiếng tại Việt Nam. Mới đây nhất, NukeViet đã vượt qua vòng sơ khảo để tranh tài tại vòng chung khảo của Giải Thưởng Nhân Tài Đất Việt 2011', 'product_box.jpg', 'Sản phẩm dự thi Nhân tài Đất Việt 2011&#x3A; Mã nguồn mở NukeViet', 'thumb/product_box.jpg|block/product_box.jpg', 1, 2, 1, 2, 0, 0, 0, 'Nhân tài Đất Việt 2011, mã nguồn mở');

-- --------------------------------------------------------

--
-- Table structure for table `nv3_vi_news_8`
--

CREATE TABLE IF NOT EXISTS `nv3_vi_news_8` (
  `id` int(11) unsigned NOT NULL,
  `catid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) NOT NULL DEFAULT '',
  `topicid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(255) NOT NULL DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `hometext` mediumtext NOT NULL,
  `homeimgfile` varchar(255) NOT NULL DEFAULT '',
  `homeimgalt` varchar(255) NOT NULL DEFAULT '',
  `homeimgthumb` varchar(255) NOT NULL DEFAULT '',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `keywords` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nv3_vi_news_8`
--

INSERT INTO `nv3_vi_news_8` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`, `keywords`) VALUES
(1, 1, '1,8,12', 0, 1, 'Quỳnh Nhi', 1, 1274989177, 1275318126, 1, 1274989140, 0, 2, 'Ra mắt công ty mã nguồn mở đầu tiên tại Việt Nam', 'Ra-mat-cong-ty-ma-nguon-mo-dau-tien-tai-Viet-Nam', 'Mã nguồn mở NukeViet vốn đã quá quen thuộc với cộng đồng CNTT Việt Nam trong mấy năm qua. Tuy chưa hoạt động chính thức, nhưng chỉ trong khoảng 5 năm gần đây, mã nguồn mở NukeViet đã được dùng phổ biến ở Việt Nam, áp dụng ở hầu hết các lĩnh vực, từ tin tức đến thương mại điện tử, từ các website cá nhân cho tới những hệ thống website doanh nghiệp.', 'nangly.jpg', 'Thành lập VINADES.,JSC', 'thumb/nangly.jpg|block/nangly.jpg', 1, 2, 1, 2, 0, 0, 0, 'nguồn mở, quen thuộc, cộng đồng, việt nam, hoạt động, gần đây, phổ biến, áp dụng, hầu hết, hết các, lĩnh vực, tin tức, thương mại điện, điện tử, cá nhân, hệ thống'),
(2, 1, '1,8,12', 1, 1, 'laser', 2, 1274989787, 1275318114, 1, 1274989740, 0, 2, 'Công bố dự án NukeViet 3.0 sau 1 tháng ra mắt VINADES.,JSC', 'Cong-bo-du-an-NukeViet-3-0-sau-1-thang-ra-mat-VINADES-JSC', 'NukeViet 3.0 - Một nền tảng được xây dựng hoàn toàn mới với những công nghệ web tiên tiến nhất hiện nay hứa hẹn sẽ làm một cuộc cách mạng về mã nguồn mở ở Việt Nam. Món quà này là lời cảm ơn chân thành nhất mà VINADES.,JSC muốn gửi tới cộng đồng sau một tháng chính thức ra mắt.', 'nukeviet3.jpg', 'NukeViet 3.0', 'thumb/nukeviet3.jpg|block/nukeviet3.jpg', 1, 2, 1, 3, 0, 0, 0, 'nền tảng, xây dựng, hoàn toàn, với những, công nghệ, tiên tiến, hiện nay, hứa hẹn, cách mạng, nguồn mở, việt nam, món quà, cảm ơn, chân thành, thành nhất, cộng đồng'),
(6, 10, '1,8,10', 0, 1, '', 2, 1274994722, 1275318001, 1, 1274994720, 0, 2, 'Thư mời hợp tác liên kết quảng cáo và cung cấp hosting thử nghiệm', 'Thu-moi-hop-tac', 'Hiện tại VINADES.,JSC đang tiến hành phát triển bộ mã nguồn NukeViet phiên bản 3.0 – một thế hệ CMS hoàn toàn mới với nhiều tính năng ưu việt, được đầu tư bài bản với kinh phí lớn. Với thiện chí hợp tác cùng phát triển VINADES.,JSC xin trân trọng gửi lời mời hợp tác đến Quý đối tác là các công ty cung cấp tên miền - hosting, các doanh nghiệp quan tâm và mong muốn hợp tác cùng VINADES để cùng thực hiện chung các hoạt động kinh doanh nhằm gia tăng giá trị, quảng bá thương hiệu chung cho cả hai bên.', 'hoptac.jpg', '', 'thumb/hoptac.jpg|block/hoptac.jpg', 1, 2, 1, 3, 0, 0, 0, 'hiện tại, tiến hành, phát triển, phiên bản, thế hệ, hoàn toàn, tính năng, ưu việt, kinh phí, thiện chí, hợp tác, trân trọng, mời hợp tác, đối tác, các công ty, công ty, cung cấp, tên miền, các doanh, doanh nghiệp, quan tâm');

-- --------------------------------------------------------

--
-- Table structure for table `nv3_vi_news_9`
--

CREATE TABLE IF NOT EXISTS `nv3_vi_news_9` (
  `id` int(11) unsigned NOT NULL,
  `catid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) NOT NULL DEFAULT '',
  `topicid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(255) NOT NULL DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `hometext` mediumtext NOT NULL,
  `homeimgfile` varchar(255) NOT NULL DEFAULT '',
  `homeimgalt` varchar(255) NOT NULL DEFAULT '',
  `homeimgthumb` varchar(255) NOT NULL DEFAULT '',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `keywords` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nv3_vi_news_9`
--

INSERT INTO `nv3_vi_news_9` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`, `keywords`) VALUES
(8, 9, '9', 0, 1, 'laser', 3, 1310067949, 1310068009, 1, 1310067949, 0, 2, 'Webnhanh.vn - website dịch vụ chuyên nghiệp cho NukeViet chính thức ra mắt', 'Webnhanhvn-website-dich-vu-chuyen-nghiep-cho-NukeViet-chinh-thuc-ra-mat', 'Sau một thời gian đi vào hoạt động, Webnhanh.vn đã nhận được nhiều ủng hộ cùng sự quan tâm, góp ý của cộng đồng và khách hàng. Để đáp ứng mong mỏi của cộng đồng về một dịch vụ web chuyên nghiệp với mức giá tối thiểu, Webnhanh.vn đã thực hiện chiến dịch siêu khuyến mại Giảm giá tất cả các gói web dựng sẵn, module, block và giao diện (theme). Mức giảm giá cao nhất tới 90% giá so với trước tháng 7 năm 2011.', 'webnhanh-vn.jpg', '', 'thumb/webnhanh-vn.jpg|block/webnhanh-vn.jpg', 1, 2, 1, 1, 0, 0, 0, 'khai trương, khuyến mại, giảm giá, siêu khuyến mại, webnhanh, thiết kế website, giao diện web, thiết kế web'),
(10, 1, '1,9', 0, 1, '', 4, 1322685920, 1322686042, 1, 1322685920, 0, 2, 'Mã nguồn mở NukeViet giành giải ba Nhân tài đất Việt 2011', 'Ma-nguon-mo-NukeViet-gianh-giai-ba-Nhan-tai-dat-Viet-2011', 'Không có giải nhất và giải nhì, sản phẩm Mã nguồn mở NukeViet của VINADES.,JSC là một trong ba sản phẩm đã đoạt giải ba Nhân tài đất Việt 2011 - Lĩnh vực Công nghệ thông tin (Sản phẩm đã ứng dụng rộng rãi).', 'nukeviet-nhantaidatviet2011.jpg', 'Mã nguồn mở NukeViet giành giải ba Nhân tài đất Việt 2011', 'thumb/nukeviet-nhantaidatviet2011.jpg|block/nukeviet-nhantaidatviet2011.jpg', 1, 2, 1, 4, 0, 0, 0, 'Nhân tài đất Việt 2011, mã nguồn mở');

-- --------------------------------------------------------

--
-- Table structure for table `nv3_vi_news_10`
--

CREATE TABLE IF NOT EXISTS `nv3_vi_news_10` (
  `id` int(11) unsigned NOT NULL,
  `catid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) NOT NULL DEFAULT '',
  `topicid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(255) NOT NULL DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `hometext` mediumtext NOT NULL,
  `homeimgfile` varchar(255) NOT NULL DEFAULT '',
  `homeimgalt` varchar(255) NOT NULL DEFAULT '',
  `homeimgthumb` varchar(255) NOT NULL DEFAULT '',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `keywords` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nv3_vi_news_10`
--

INSERT INTO `nv3_vi_news_10` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`, `keywords`) VALUES
(6, 10, '1,8,10', 0, 1, '', 2, 1274994722, 1275318001, 1, 1274994720, 0, 2, 'Thư mời hợp tác liên kết quảng cáo và cung cấp hosting thử nghiệm', 'Thu-moi-hop-tac', 'Hiện tại VINADES.,JSC đang tiến hành phát triển bộ mã nguồn NukeViet phiên bản 3.0 – một thế hệ CMS hoàn toàn mới với nhiều tính năng ưu việt, được đầu tư bài bản với kinh phí lớn. Với thiện chí hợp tác cùng phát triển VINADES.,JSC xin trân trọng gửi lời mời hợp tác đến Quý đối tác là các công ty cung cấp tên miền - hosting, các doanh nghiệp quan tâm và mong muốn hợp tác cùng VINADES để cùng thực hiện chung các hoạt động kinh doanh nhằm gia tăng giá trị, quảng bá thương hiệu chung cho cả hai bên.', 'hoptac.jpg', '', 'thumb/hoptac.jpg|block/hoptac.jpg', 1, 2, 1, 3, 0, 0, 0, 'hiện tại, tiến hành, phát triển, phiên bản, thế hệ, hoàn toàn, tính năng, ưu việt, kinh phí, thiện chí, hợp tác, trân trọng, mời hợp tác, đối tác, các công ty, công ty, cung cấp, tên miền, các doanh, doanh nghiệp, quan tâm');

-- --------------------------------------------------------

--
-- Table structure for table `nv3_vi_news_11`
--

CREATE TABLE IF NOT EXISTS `nv3_vi_news_11` (
  `id` int(11) unsigned NOT NULL,
  `catid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) NOT NULL DEFAULT '',
  `topicid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(255) NOT NULL DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `hometext` mediumtext NOT NULL,
  `homeimgfile` varchar(255) NOT NULL DEFAULT '',
  `homeimgalt` varchar(255) NOT NULL DEFAULT '',
  `homeimgthumb` varchar(255) NOT NULL DEFAULT '',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `keywords` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nv3_vi_news_11`
--

INSERT INTO `nv3_vi_news_11` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`, `keywords`) VALUES
(7, 11, '11', 0, 1, '', 2, 1307197282, 1307197381, 1, 1307197260, 0, 2, 'Tuyển dụng lập trình viên, chuyên viên đồ họa phát triển NukeViet', 'Tuyen-dung-lap-trinh-vien-chuyen-vien-do-hoa-phat-trien-NukeViet', 'Bạn đam mê nguồn mở? Bạn có năng khiếu lập trình PHP & MySQL? Bạn là chuyên gia đồ họa, HTML, CSS? Chúng tôi sẽ giúp bạn hiện thực hóa ước mơ của mình với một mức lương đảm bảo. Hãy gia nhập VINADES.,JSC để xây dựng mã nguồn mở hàng đầu cho Việt Nam.', 'nukeviet-job.jpg', '', 'thumb/nukeviet-job.jpg|block/nukeviet-job.jpg', 1, 2, 1, 2, 0, 0, 0, 'vinades, nukeviet, lập trình viên, chuyên viên đồ họa, php, mysql');

-- --------------------------------------------------------

--
-- Table structure for table `nv3_vi_news_12`
--

CREATE TABLE IF NOT EXISTS `nv3_vi_news_12` (
  `id` int(11) unsigned NOT NULL,
  `catid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) NOT NULL DEFAULT '',
  `topicid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(255) NOT NULL DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `hometext` mediumtext NOT NULL,
  `homeimgfile` varchar(255) NOT NULL DEFAULT '',
  `homeimgalt` varchar(255) NOT NULL DEFAULT '',
  `homeimgthumb` varchar(255) NOT NULL DEFAULT '',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `keywords` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nv3_vi_news_12`
--

INSERT INTO `nv3_vi_news_12` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`, `keywords`) VALUES
(1, 1, '1,8,12', 0, 1, 'Quỳnh Nhi', 1, 1274989177, 1275318126, 1, 1274989140, 0, 2, 'Ra mắt công ty mã nguồn mở đầu tiên tại Việt Nam', 'Ra-mat-cong-ty-ma-nguon-mo-dau-tien-tai-Viet-Nam', 'Mã nguồn mở NukeViet vốn đã quá quen thuộc với cộng đồng CNTT Việt Nam trong mấy năm qua. Tuy chưa hoạt động chính thức, nhưng chỉ trong khoảng 5 năm gần đây, mã nguồn mở NukeViet đã được dùng phổ biến ở Việt Nam, áp dụng ở hầu hết các lĩnh vực, từ tin tức đến thương mại điện tử, từ các website cá nhân cho tới những hệ thống website doanh nghiệp.', 'nangly.jpg', 'Thành lập VINADES.,JSC', 'thumb/nangly.jpg|block/nangly.jpg', 1, 2, 1, 2, 0, 0, 0, 'nguồn mở, quen thuộc, cộng đồng, việt nam, hoạt động, gần đây, phổ biến, áp dụng, hầu hết, hết các, lĩnh vực, tin tức, thương mại điện, điện tử, cá nhân, hệ thống'),
(2, 1, '1,8,12', 1, 1, 'laser', 2, 1274989787, 1275318114, 1, 1274989740, 0, 2, 'Công bố dự án NukeViet 3.0 sau 1 tháng ra mắt VINADES.,JSC', 'Cong-bo-du-an-NukeViet-3-0-sau-1-thang-ra-mat-VINADES-JSC', 'NukeViet 3.0 - Một nền tảng được xây dựng hoàn toàn mới với những công nghệ web tiên tiến nhất hiện nay hứa hẹn sẽ làm một cuộc cách mạng về mã nguồn mở ở Việt Nam. Món quà này là lời cảm ơn chân thành nhất mà VINADES.,JSC muốn gửi tới cộng đồng sau một tháng chính thức ra mắt.', 'nukeviet3.jpg', 'NukeViet 3.0', 'thumb/nukeviet3.jpg|block/nukeviet3.jpg', 1, 2, 1, 3, 0, 0, 0, 'nền tảng, xây dựng, hoàn toàn, với những, công nghệ, tiên tiến, hiện nay, hứa hẹn, cách mạng, nguồn mở, việt nam, món quà, cảm ơn, chân thành, thành nhất, cộng đồng');

-- --------------------------------------------------------

--
-- Table structure for table `nv3_vi_news_admins`
--

CREATE TABLE IF NOT EXISTS `nv3_vi_news_admins` (
  `userid` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `admin` tinyint(4) NOT NULL DEFAULT '0',
  `add_content` tinyint(4) NOT NULL DEFAULT '0',
  `pub_content` tinyint(4) NOT NULL DEFAULT '0',
  `edit_content` tinyint(4) NOT NULL DEFAULT '0',
  `del_content` tinyint(4) NOT NULL DEFAULT '0',
  `comment` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `nv3_vi_news_block`
--

CREATE TABLE IF NOT EXISTS `nv3_vi_news_block` (
  `bid` int(11) unsigned NOT NULL,
  `id` int(11) unsigned NOT NULL,
  `weight` int(11) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nv3_vi_news_block`
--

INSERT INTO `nv3_vi_news_block` (`bid`, `id`, `weight`) VALUES
(1, 5, 3),
(1, 2, 2),
(1, 1, 1),
(2, 6, 4),
(2, 5, 3),
(2, 2, 2),
(2, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv3_vi_news_block_cat`
--

CREATE TABLE IF NOT EXISTS `nv3_vi_news_block_cat` (
  `bid` mediumint(8) unsigned NOT NULL,
  `adddefault` tinyint(4) NOT NULL DEFAULT '0',
  `number` mediumint(4) NOT NULL DEFAULT '10',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `weight` smallint(4) NOT NULL DEFAULT '0',
  `keywords` mediumtext NOT NULL,
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nv3_vi_news_block_cat`
--

INSERT INTO `nv3_vi_news_block_cat` (`bid`, `adddefault`, `number`, `title`, `alias`, `image`, `thumbnail`, `description`, `weight`, `keywords`, `add_time`, `edit_time`) VALUES
(1, 0, 4, 'Tin tiêu điểm', 'Tin-tieu-diem', '', '', 'Tin tiêu điểm', 1, '', 1279945710, 1279956943),
(2, 1, 4, 'Tin mới nhất', 'Tin-moi-nhat', '', '', 'Tin tiêu điểm', 2, '', 1279945725, 1279956445);

-- --------------------------------------------------------

--
-- Table structure for table `nv3_vi_news_bodyhtml_1`
--

CREATE TABLE IF NOT EXISTS `nv3_vi_news_bodyhtml_1` (
  `id` int(11) unsigned NOT NULL,
  `bodyhtml` longtext NOT NULL,
  `sourcetext` varchar(255) NOT NULL DEFAULT '',
  `imgposition` tinyint(1) NOT NULL DEFAULT '1',
  `copyright` tinyint(1) NOT NULL DEFAULT '0',
  `allowed_send` tinyint(1) NOT NULL DEFAULT '0',
  `allowed_print` tinyint(1) NOT NULL DEFAULT '0',
  `allowed_save` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nv3_vi_news_bodyhtml_1`
--

INSERT INTO `nv3_vi_news_bodyhtml_1` (`id`, `bodyhtml`, `sourcetext`, `imgposition`, `copyright`, `allowed_send`, `allowed_print`, `allowed_save`) VALUES
(1, '<p style="text-align: justify;"> Để chuyên nghiệp hóa việc phát hành mã nguồn mở NukeViet, Ban quản trị NukeViet quyết định thành lập doanh nghiệp chuyên quản NukeViet mang tên Công ty cổ phần Phát triển nguồn mở Việt Nam (Viết tắt là VINADES.,JSC), chính thức ra mắt vào ngày 25-2-2010 (trụ sở tại Hà Nội) nhằm phát triển, phổ biến hệ thống NukeViet tại Việt Nam.<br  /> <br  /> Theo ông Nguyễn Anh Tú, Chủ tịch HĐQT VINADES, công ty sẽ phát triển bộ mã nguồn NukeViet nhất quán theo con đường mã nguồn mở đã chọn, chuyên nghiệp và quy mô hơn bao giờ hết. Đặc biệt là hoàn toàn miễn phí đúng tinh thần mã nguồn mở quốc tế.<br  /> <br  /> NukeViet là một hệ quản trị nội dung mã nguồn mở (Opensource Content Management System) thuần Việt từ nền tảng PHP-Nuke và cơ sở dữ liệu MySQL. Người sử dụng thường gọi NukeViet là portal vì nó có khả năng tích hợp nhiều ứng dụng trên nền web, cho phép người sử dụng có thể dễ dàng xuất bản và quản trị các nội dung của họ lên internet hoặc intranet.<br  /> <br  /> NukeViet cung cấp nhiều dịch vụ và ứng dụng nhờ khả năng tăng cường tính năng thêm các module, block... tạo sự dễ dàng cài đặt, quản lý, ngay cả với những người mới tiếp cận với website. Người dùng có thể tìm hiểu thêm thông tin và tải về sản phẩm tại địa chỉ http://nukeviet.vn</p><blockquote> <p style="text-align: justify;"> <em>Thông tin ra mắt công ty VINADES có thể tìm thấy trên trang 7 báo Hà Nội Mới ra ngày 25/02/2010 (<a href="http://hanoimoi.com.vn/newsdetail/Cong_nghe/309750/ra-mat-cong-ty-ma-nguon-mo-dau-tien-tai-viet-nam.htm" target="_blank">xem chi tiết</a>), Bản tin tiếng Anh của đài tiếng nói Việt Nam ngày 26/02/2010 (<a href="http://english.vovnews.vn/Home/First-opensource-company-starts-operation/20102/112960.vov" target="_blank">xem chi tiết</a>); trang 7 báo An ninh Thủ Đô số 2858 ra vào thứ 2 ngày 01/03/2010 và các trang tin tức, báo điện tử khác.</em></p></blockquote>', 'http://hanoimoi.com.vn/newsdetail/Cong_nghe/309750/ra-mat-cong-ty-ma-nguon-mo-dau-tien-tai-viet-nam.htm', 1, 0, 1, 1, 1),
(2, '<p style="font-weight: bold;"> <span style="font-size: 14pt;">Câu chuyện của NukeViet và VINADES.,JSC</span></p><p style="font-weight: bold;"> Từ một trăn trở</p><p style="text-align: justify;"> Giữa năm 2009, trước yêu cầu cấp thiết phải đổi mới và làm một cuộc cách mạng cho mã nguồn mở NukeViet, một cuộc thảo luận sôi nổi đã diễn ra với tiêu đề &quot;Lối đi nào để chuyên nghiệp hóa mã nguồn mở NukeViet&quot;.</p><p> Kết quả của cuộc thảo luận này là 55 bài viết với hàng chục ý kiến đóng góp đã được đưa ra. Các giải pháp về tài chính, nhân lực, phương hướng hoạt động được đem ra thảo luận. rockbuilc, Nkd833 đề xuất phương án thành lập doanh nghiệp chuyên quản NukeViet như một giải pháp toàn diện để giải quyết vấn đề chuyên nghiệp hóa NukeViet. Các vấn đề được các thành viên tham gia thảo luận và mổ xẻ thẳng thắn, nhiều ý kiến phản biện trái chiều cũng được đưa ra trên tinh thần xây dựng. Sau 2 tháng thảo luận, Ban Quản Trị đã có dự định...</p><p> <span style="font-weight: bold;">Gặp mặt</span></p><p> Tháng 11, Sau khi tham khảo các ý kiến của mọi người trên diễn đàn, Anh Tú đã trực tiếp về Việt Nam. Một cuộc offline được tổ chức chớp nhoáng với sự tham gia của các thành viên chủ chốt tại Hà Nội. Các cuộc tìm hiểu và tiếp xúc được triển khai gấp rút trong giai đoạn này.</p><p> <span style="font-weight: bold;">Một mô hình - một lối đi</span></p><p style="text-align: justify;"> Hướng đi chuyên nghiệp hóa việc phát triển NukeViet đã được anh Tú chọn lựa: &quot;Thành lập doanh nghiệp chuyên quản NukeViet&quot;. Doanh nghiệp chuyên quản NukeViet được thành lập từ chính nhu cầu của cộng đồng nhằm chuyên nghiệp hóa NukeViet, vì vậy mô hình công ty cổ phần được chọn lựa để đáp ứng yêu cầu đó. Chịu trách nhiệm triển khai, laser đã lên phương án đầu tư, mục tiêu, kế hoạch phát triển ngắn và dài hạn.</p><p> <br  /> <span style="font-weight: bold;">Triển khai thực hiện</span></p><p style="text-align: justify;"> Tháng 1 năm 2010, việc thành lập đã được xúc tiến. Ngày 25/02/2010, trên các bản tin tiếng Anh và tiếng Việt xuất hiện bản tin &quot;Ra mắt công ty mã nguồn mở đầu tiên tại Việt Nam&quot;. Đó là Công ty cổ phần Phát triển nguồn mở Việt Nam (VIET NAM OPEN SOURCE DEVELOPMENT JOINT STOCK COMPANY - VINADES.,JSC). Đây là một vài hình ảnh trong ngày khai trương:</p><div style="text-align: center;"> <img alt="Anh Tú phát biểu khai trương VINADES.,JSC " height="332" src="http://nukeviet.vn/uploads/spaw2/images/anhtu-phatbieu.jpg" style="border: 0px solid;" width="500" /></div><div style="text-align: center;"> Anh Tú phát biểu khai trương VINADES.,JSC <p> <br  /> <img alt="" border="0" src="http://nukeviet.vn/uploads/spaw2/images/hung-phatbieu.jpg" style="width: 500px;" width="500" /></p> <p> Nguyễn Hùng giới thiệu đôi nét về công ty, mục tiêu và phương hướng hoạt động.</p> <p> <br  /> <img alt="" border="0" height="332" src="http://nukeviet.vn/uploads/spaw2/images/nangly.jpg" style="width: 500px; height: 332px;" width="500" /></p> <p> Cùng nâng ly chúc mừng khai trương.</p></div><p style="font-weight: bold;"> ... và lời cảm ơn gửi tới cộng đồng</p><p style="text-align: justify;"> VINADES.,JSC từ khi được thai nghén tới lúc chập chững những bước đi ban đầu đều có sự động viên, ủng hộ và đóng góp lớn nhỏ của cộng đồng NukeViet - Một cộng đồng gắn liền với những ký ức, những kỷ niệm buồn vui và mang trong mỗi thành viên một đam mê, một hoài bão lớn lao. &quot;Lửa thử vàng, gian nan thử sức&quot;, mỗi khó khăn trả qua khiến cộng đồng NukeViet lớn dần lên, gắn kết với nhau bằng một sợi dây vô hình không thể chia cắt: đó là niềm đam mê với mã nguồn mở, với công nghệ web. VINADES.,JSC được tạo ra từ cộng đồng và sẽ cố gắng hết sức để hoạt động vì lợi ích của cộng đồng.</p><p>  </p><div style="text-align: center;"> <img alt="" border="0" height="375" src="http://nukeviet.vn/uploads/spaw2/images/anhvp2.jpg" style="width: 500px; height: 375px;" width="500" /></div><p>  </p><p style="text-align: center;"> Văn phòng làm việc của VINADES.,JSC ở Hà Nội.</p><div style="text-align: center;"> <img alt="" border="0" height="375" src="http://nukeviet.vn/uploads/spaw2/images/anhvp3.jpg" style="width: 500px; height: 375px;" width="500" /></div><p>  </p><p style="text-align: center;"> Một góc văn phòng nhìn từ trong ra ngoài.</p><p style="font-weight: bold;"> NukeViet 3.0 - Cuộc cách mạng của NukeViet</p><p style="text-align: justify;"> Sau nhiều tháng triển khai, NukeViet 3.0 đã được định hình và dự định công bố bản beta trong thời gian gần. NukeViet 3.0 là phiên bản mang tính cách mạng của hệ thống NukeViet vì 100% các dòng code của NukeViet 3.0 đã được viết mới hoàn toàn chứ không sử dụng nền tảng cũ. Việc này đã ngốn rất nhiều thời gian và công sức của đội ngũ lập trình. Đó cũng là lý do vì sao bản 2.0 không được cải tiến nhiều trong thời gian qua.</p><div style="text-align: justify;"> NukeViet 3.0 được xây dựng với mong muốn có một nền tảng ổn định để sau đó có thể đầu tư lâu dài, xây dựng một thư viện ứng dụng phong phú. VINADES.,JSC sẽ song hành cùng cộng đồng NukeViet trong việc hỗ trợ và phát triển NukeViet thành một mã nguồn mở hoạt động ở quy mô chuyên nghiệp. Đây là bước đi đầu tiên trong trong tiến trình chuyên nghiệp hóa này. Các ứng dụng bổ sung sẽ được xây dựng bài bản, chất lượng. Cộng đồng NukeViet sẽ không chỉ là cộng đồng người sử dụng mà sẽ được đầu tư về đào tạo để trở thành một cộng đồng lập trình mạnh. Thông tin chi tiết về dự án phát triển NukeViet 3.0 được cập nhật tại đây: <a href="http://nukeviet.vn/phpbb/viewforum.php?f=99" target="_blank">http://nukeviet.vn/phpbb/viewforum.php?f=99</a></div>', 'http://vinades.vn/vi/news/thong-cao-bao-chi/Cong-bo-du-an-NukeViet-3-0-sau-1-thang-ra-mat-VINADES-JSC-2/', 1, 0, 1, 1, 1),
(5, '<p> <strong><span style="font-size: 14px;">THÔNGTIN VỀ MÃ NGUỒN MỞ NUKEVIET</span></strong></p><p style="font-weight: bold;"> I. Giới thiệu chung:</p><p> NukeViet là một hệ quản trị nội dung mã nguồn mở (Opensource Content Management System), người sử dụng thường gọi NukeViet là portal vì nó có khả năng tích hợp nhiều ứng dụng trên nền Web.</p><p> NukeViet có 2 dòng phiên bản chính:</p><p> Dòng phiên bản trước năm 2009 (NukeViet 2.0 trở về trước) được Nguyễn Anh Tú- một lưu học sinh người Việt tại Nga - cùng cộng đồng phát triển thành một ứng dụng thuần Việt từ nền tảng PHP-Nuke.</p><p> Dòng phiên bản NukeViet 3.0 trở về sau (kể từ năm 2010 trở đi) là dòng phiên bản hoàn toàn mới, được xây dựng từ đầu với nhiều tính năng ưu việt.</p><p> NukeViet được viết bằng ngôn ngữ PHP và chủ yếu sử dụng cơ sở dữ liệu MySQL, cho phép người sử dụng có thể dễ dàng xuất bản &amp;quản trị các nội dung của họ lên Internet hoặc Intranet.</p><p> NukeViet được sử dụng ở nhiều website, từ những website cá nhân cho tới những hệ thống website doanh nghiệp, nó cung cấp nhiều dịch vụ và ứng dụng nhờ khả năng tăng cường tính năng bằng cách cài thêm các module, block... NukeViet có thể dễ dàng cài đặt, dễ dàng quản lý kể cả với những người mới sử dụng.</p><p style="text-align: justify;"> NukeViet là giải pháp hoàn hảo cho các Website từ cá nhân cho tới các doanh nghiệp. NukeViet là bộ mã nguồn chất lượng cao, được phát hành theo giấy phép mã nguồn mở nên việc sử dụng NukeViet hoàn toàn miễn phí. Với người sử dụng cá nhân, tất cả đều có thể tự tạo cho mình một website chuyên nghiệp mà không mất bất cứ chi phí nào. Với những nhà phát triển Web, sử dụng NukeViet có thể nhanh chóng xây dựng các hệ thống lớn mà việc lập trình không đòi hỏi quá nhiều thời gian vì NukeViet đã xây dựng sẵn hệ thống quản lý ưu việt.</p> <p>Thông tin chi tiết về NukeViet có thể tìm thấy ở bách khoa toàn thư mở Wikipedia: <a href="http://vi.wikipedia.org/wiki/NukeViet">http://vi.wikipedia.org/wiki/NukeViet</a></p><p style="font-weight: bold;"> II. Thông tin về diễn đàn NukeViet:</p><p> Diễn đàn NukeViet hoạt động trên website: <a href="http://nukeviet.vn/"><span style="font-weight: bold;">http://nukeviet.vn</span></a> hiện có trên 22.000 thành viên thực gồm học sinh, sinh viên &amp; nhiều thành phần khác thuộc giới trí thức ở trong và ngoài nước.</p><p> Là một diễn đàn của các nhà quản lý website, rất nhiều thành viên trong diễn đàn NukeViet là cán bộ, lãnh đạo từ đủ mọi lĩnh vực: công nghệ thông tin, xây dựng,văn hóa - xã hội, thể thao, dịch vụ - du lịch... từ cử nhân, bác sĩ, kỹ sư cho đến bộ đội, công an...</p><p> Nhiều học sinh, sinh viên tham gia diễn đàn NukeViet, đam mê mã nguồn mở và đã thành công với chính công việc mà họ yêu thích.</p>', 'http://nukeviet.vn/vi/news/Tin-tuc/Gioi-thieu-ve-ma-nguon-mo-NukeViet-5/', 1, 0, 1, 1, 1),
(6, '<div style="text-align: center;"> <h2 style="color: rgb(255, 69, 0);"> THƯ MỜI HỢP TÁC</h2> <h4> TRONG VIỆC LIÊN KẾT QUẢNG CÁO, CUNG CẤP HOSTING THỬ NGHIỆM PHÁT TRIỂN</h4> <h2> MÃ NGUỒN MỞ NUKEVIET</h2> </div> <p style="text-align: justify; line-height: 130%; font-weight: bold;">  </p> <p style="text-align: justify; line-height: 130%; font-weight: bold;"> Kính gửi: QUÍ KHÁCH VÀ ĐỐI TÁC</p> <p style="text-align: justify; line-height: 130%; font-style: italic; text-indent: 1cm;"> Lời đầu tiên, Ban giám đốc công ty cổ phần Phát Triển Nguồn Mở Việt Nam (VINADES.,JSC) xin gửi đến Quý đối tác lời chào trân trọng, lời chúc may mắn và thành công. Tiếp đến chúng tôi xin được giới thiệu và ngỏ lời mời hợp tác kinh doanh.</p> <p style="text-align: justify; line-height: 130%; font-style: italic; text-indent: 1cm;"> VINADES.,JSC ra đời nhằm chuyên nghiệp hóa việc phát hành mã nguồn mở NukeViet. Đồng thời khai thác các dự án từ NukeViet tạo kinh phí phát triển bền vững cho mã nguồn này.</p> <p style="text-align: justify; line-height: 130%; font-style: italic; text-indent: 1cm;"> NukeViet là hệ quản trị nội dung, là website đa năng đầu tiên của Việt Nam do cộng đồng người Việt phát triển. Có nhiều lợi thế như cộng đồng người sử dụng đông đảo nhất tại Việt Nam hiện nay, sản phẩm thuần Việt, dễ sử dụng, dễ phát triển.</p> <p style="text-align: justify; line-height: 130%; font-style: italic; text-indent: 1cm;"> Hiện tại VINADES.,JSC đang tiến hành phát triển bộ mã nguồn NukeViet phiên bản 3.0 – một thế hệ CMS hoàn toàn mới với nhiều tính năng ưu việt, được đầu tư bài bản với kinh phí lớn.</p> <p style="text-align: justify; line-height: 130%; font-style: italic; text-indent: 1cm;"> Với thiện chí hợp tác cùng phát triển VINADES.,JSC xin trân trọng gửi lời mời hợp tác đến Quý đối tác là các công ty cung cấp tên miền - hosting, các doanh nghiệp quan tâm và mong muốn hợp tác cùng VINADES để cùng thực hiện chung các hoạt động kinh doanh nhằm gia tăng giá trị, quảng bá thương hiệu chung cho cả hai bên.</p> <p style="text-align: justify; line-height: 130%; text-indent: 1cm; font-weight: bold;"> Phương thức hợp tác nhưsau:</p> <p style="text-align: justify; line-height: 130%; font-weight: bold;"> 1.Quảng cáo, trao đổi banner, liên kết website:</p> <p style="text-align: justify; line-height: 130%;"> a. Mô tả hình thức:</p> <p style="text-align: justify; line-height: 130%; text-indent: 1cm;"> - Quảng cáo trên website &amp; hệ thống kênh truyền thông của 2 bên.</p> <p style="text-align: justify; line-height: 130%; text-indent: 1cm;"> - Quảng cáo trên các phiên bản phát hành của mã nguồn mở NukeViet.</p> <p style="text-align: justify; line-height: 130%;"> b, Lợi ích:</p> <p style="text-align: justify; line-height: 130%; text-indent: 1cm;"> - Quảng bá rộng rãi cho đối tượng của 2 bên.</p> <p style="text-align: justify; line-height: 130%; text-indent: 1cm;"> - Giảm chi phí quảng bá cho 2 bên.</p> <p style="text-align: justify; line-height: 130%;"> c, Trách nhiệm:</p> <p style="text-align: justify; line-height: 130%; text-indent: 1cm;"> - Hai bên sẽ thỏa thuận và đưa quảng cáo của mình vào website của đối tác. Thỏa thuận vị trí, kích thước và trang đặt banner quảng cáo nhằm mang lại hiệu quả cao cho cả hai bên.</p> <p style="text-align: justify; line-height: 130%; text-indent: 1cm;"> - Mở forum hỗ trợ người dùng hosting ngay tại diễn đàn NukeViet.VN để quý công ty dễ dàng hỗ trợ người sử dụng cũng như thực hiện các kế hoạch truyền thông của mình tới cộng đồng NukeViet.</p> <p style="text-align: justify; line-height: 130%; font-weight: bold;"> 2.Hợp tác cung cấp hosting thử nghiệm NukeViet:</p> <p style="text-align: justify; line-height: 130%;"> a. Mô tả hình thức:</p> <p style="text-align: justify; line-height: 130%; text-indent: 1cm;"> - Hai bên ký hợp đồng nguyên tắc &amp; thỏa thuận hợp tác trong việc hợp tác phát triển mã nguồn mở NukeViet. Theo đó:</p> <p style="text-align: justify; line-height: 130%; text-indent: 1cm;"> + Phía đối tác cung cấp mỗi loại 1 gói hosting đại lý cho VINADES.,JSC để chúng tôi test trong quá trình phát triển mã nguồn mở NukeViet, để đảm bảo NukeViet sẵn sàng tương thích với hosting của quý khách ngay khi ra mắt.</p> <p style="text-align: justify; line-height: 130%; text-indent: 1cm;"> + VINADES.,JSC sẽ công báo thông tin chứng nhận host của phía đối tác là phù hợp, tương thích tốt nhất với NukeViet tới cộng đồng những người phát triển và sử dụng NukeViet.</p> <p style="text-align: justify; line-height: 130%;"> b. Lợi ích:</p> <p style="text-align: justify; line-height: 130%; text-indent: 1cm;"> - Mở rộng thị trường theo cả hướng đối tượng.</p> <p style="text-align: justify; line-height: 130%; text-indent: 1cm;"> - Tiết kiệm chi phí –nâng cao hiệu quả kinh doanh.</p> <p style="text-align: justify; line-height: 130%;"> c. Trách nhiệm:</p> <p style="text-align: justify; line-height: 130%; text-indent: 1cm;"> - Bên đối tác cung cấp miễn phí host để VINADES.,JSC thực hiện việc test tương thích mã nguồn NukeViet trên các gói hosting của đối tác.</p> <p style="text-align: justify; line-height: 130%; text-indent: 1cm;"> - VINADES.,JSC công bố tới cộng đồng về kết quả chứng nhận chất lượng host của phía đối tác.</p> <p style="text-align: justify; line-height: 130%; font-weight: bold;"> 3,Hợp tác nhân lực hỗ trợ người sử dụng:</p> <p style="text-align: justify; line-height: 130%;"> a, Mô tả hình thức:</p> <p style="text-align: justify; line-height: 130%; text-indent: 1cm;"> - Hai bên sẽ hỗ trợ lẫn nhau trong quá trình giải quyết các yêu cầu của khách hàng.</p> <p style="text-align: justify; line-height: 130%; text-indent: 1cm;"> + Bên đối tác gửi các yêu cầu của khách hàng về mã nguồn NukeViet tới VINADES.,JSC</p> <p style="text-align: justify; line-height: 130%; text-indent: 1cm;"> + VINADES gửi các yêu cầu của khách hàng có liên quan đến dịch vụ hosting tới phía đối tác.</p> <p style="text-align: justify; line-height: 130%;"> b, Lợi ích:</p> <p style="text-align: justify; line-height: 130%; text-indent: 1cm;"> - Giảm thiểu chi phí, nhân lực hỗ trợ khách hàng của cả 2 bên.</p> <p style="text-align: justify; line-height: 130%; text-indent: 1cm;"> - Tăng hiệu quả hỗ trợ khách hàng.</p> <p style="text-align: justify; line-height: 130%;"> c, Trách nhiệm:</p> <p style="text-align: justify; line-height: 130%; text-indent: 1cm;"> - Khi nhận được yêu cầu hỗ trợ VINADES hoặc bên đối tác cần ưu tiên xử lý nhanh gọn nhằm nâng cao hiệu quả của sự hợp tác song phưong này.</p> <p style="text-align: justify; line-height: 130%; font-weight: bold;"> 4. Các hình thức khác:</p> <p style="text-align: justify; line-height: 130%; text-indent: 1cm;"> Ngoài các hình thức đã đề xuất ở trên, là đơn vị phát hành mã nguồn mở NukeViet chúng tôi có thể phát hành quảng cáo trên giao diện phần mềm, trên các bài viết giới thiệu xuất hiện ngay sau khi cài đặt phần mềm… chúng tôi tin tưởng rằng với lượng phát hành lên đến hàng chục ngàn lượt tải về cho mỗi phiên bản là một cơ hội quảng cáo rất hiệu quả đến cộng đồng Webmaster Việt Nam.</p> <p style="text-align: justify; line-height: 130%; text-indent: 1cm;"> Với mong muốn tạo nên cộng đồng phát triển và sử dụng NukeViet rộng lớn đúng như mục tiêu đề ra,chúng tôi luôn linh động trong các hình thức hợp tác nhằm mang lại sự thuận tiện cho đối tác cũng như mục tiêu hợp tác đa phương. Chúng tôi sẽ tiếp nhận các hình thức hợp tác khác mà bên đối tác trình bày hợp lý và hiệu quả, mong nhận được thêm nhiều hình thức hợp tác khác từ đối tác. Phương châm của chúng tôi “Cùng hợp tác để phát triển”.</p> <p style="text-align: justify; line-height: 130%; font-style: italic; text-indent: 1cm;"> Trân trọng cảm ơn, rất mong được hợp tác cùng quý vị.</p> <span style="font-weight: bold;">Thông tin liên hệ:</span> <p style="text-align: justify;"> CÔNG TY CỔ PHẦN PHÁT TRIỂN NGUỒN MỞ VIỆT NAM (VINADES.,JSC)</p> <p style="text-align: justify; text-indent: 1cm;"> Trụ sở chính: Phòng 1805 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội.</p> <p style="text-align: justify; text-indent: 1cm;"> Điện thoại: (84-4) 85 872007</p> <p style="text-align: justify; text-indent: 1cm;"> Fax: (84-4) 35 500 914</p> <p style="text-align: justify; text-indent: 1cm;"> Website: <a href="http://www.vinades.vn/">www.vinades.vn</a> – <a href="http://www.nukeviet.vn/">www.nukeviet.vn</a></p> <p style="text-align: justify; text-indent: 1cm;"> Email: <a href="mailto:contact@vinades.vn">contact@vinades.vn</a></p>', 'http://vinades.vn/vi/news/thong-cao-bao-chi/Thu-moi-hop-tac-6/', 1, 0, 1, 1, 1),
(7, 'Công ty cổ phần phát triển nguồn mở Việt Nam (VINADES.,JSC) đang thu hút tuyển dụng nhân tài là các lập trình viên PHP và MySQL, Chuyên Viên Đồ Hoạ để làm việc cho công ty, hiện thực hóa ước mơ một nguồn mở chuyên nghiệp cho Việt Nam vươn ra thế giới.<br  /><br  />Tại VINADES.,JSC bạn sẽ được tham gia các dự án của công ty, tham gia xây dựng và phát triển bộ nhân hệ thống NukeViet, được học hỏi và trau dồi nâng cao kiến thức và kỹ năng cá nhân.<br  /><p style="text-align: justify;"> <strong>1. Vị trí dự tuyển</strong>: Chuyên viên đồ hoạ; Lập trình viên.</p><p style="text-align: justify;"> <strong>2. Mô tả công việc:</strong></p>Với vị trí lập trình viên PHP &amp; MySQL: Viết module trên nền NukeViet, tham gia phát triển hệ thống NukeViet.<br  /><p style="text-align: justify;"> Nếu là chuyên viên đồ họa, kỹ thuật viên cắt giao diện... bạn có thể đảm nhiệm một trong các công việc sau:</p><p style="margin-left: 40px; text-align: justify;"> + Vẽ và cắt giao diện.</p><p style="margin-left: 40px; text-align: justify;"> + Valid CSS, xHTML.</p><p style="margin-left: 40px; text-align: justify;"> + Ghép giao diện cho hệ thống.</p><strong>3. Yêu cầu: </strong><br  /><br  />Lập trình viên PHP &amp; MySQL: Thành thạo PHP, MySQL. Biết CSS, XHTML, JavaScript là một ưu thế.<br  /><br  />Chuyên viên đồ họa: Sử dụng thành thạo một trong các phần mềm Photoshop, illustrator, 3Dmax, coreldraw. Biết CSS, xHTML.<p style="text-align: justify; margin-left: 40px;"> + Trình độ tối thiểu cho người làm đồ họa web: Biết vẽ giao diện hoặc cắt PSD ra xHTML &amp; CSS.</p><p style="text-align: justify; margin-left: 40px;"> + Ưu tiên người cắt giao diện đạt chuẩn W3C (Test trên Internet Explorer 7+, FireFox 3+, Chrome 8+, Opera 10+)</p>Chúng tôi ưu tiên các ứng viên có kỹ năng làm việc độc lập, làm việc theo nhóm, có tinh thần trách nhiệm cao, chủ động trong công việc.<br  /><p style="text-align: justify;"> <strong>4: Quyền lợi:</strong></p><p style="text-align: justify;"> <strong>-</strong> Lương: thoả thuận, trả qua ATM.</p><p style="text-align: justify;"> - Thưởng theo dự án, các ngày lễ tết.</p><p style="text-align: justify;"> - Hưởng các chế độ khác theo quy định của công ty và pháp luật: Bảo hiểm y tế, bảo hiểm xã hội...</p><p style="text-align: justify;"> <strong>5. Thời gian làm việc:</strong> Toàn thời gian cố định hoặc làm <strong>online</strong>.</p><p style="text-align: justify;"> <strong>6. Hạn nộp hồ sơ</strong>: Không hạn chế, vui lòng kiểm tra tại <a href="http://vinades.vn/vi/news/Tuyen-dung/" target="_blank">http://vinades.vn/vi/news/Tuyen-dung/</a></p><p style="text-align: justify;"> <strong>7. Hồ sơ bao gồm:</strong></p><p style="text-align: justify;"> &nbsp;&nbsp;<strong>&nbsp; *&nbsp; Cách thức đăng ký dự tuyển</strong>: Làm Hồ sơ xin việc (file mềm) và gửi về hòm thư tuyendung@vinades.vn<br  /> &nbsp;&nbsp;&nbsp; *&nbsp; <strong>Nội dung hồ sơ xin việc file mềm gồm</strong>:<br  /> <br  /> <strong>+ Đơn xin việc:</strong> Tự biên soạn.</p><p style="text-align: justify;"> <strong>+ Thông tin ứng viên:</strong> Theo mẫu của VINADES.,JSC (dowload tại đây: <strong><u><a href="http://vinades.vn/vi/download/Thong-tin-ung-vien/Mau-ly-lich-ung-vien/" target="_blank" title="Mẫu lý lịch ứng viên">Mẫu lý lịch ứng viên</a></u></strong>)<br  /> <br  /> Chi tiết vui lòng tham khảo tại: <a href="http://vinades.vn/vi/news/Tuyen-dung/" target="_blank">http://vinades.vn/vi/news/Tuyen-dung/</a><br  /> <br  /> Mọi thắc mắc vui lòng liên hệ:<br  /> <br  /> <strong>Công ty cổ phần phát triển nguồn mở Việt Nam.</strong><br  /> Trụ sở chính: Phòng 1805 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội.</p><div> - Tel: +84-4-85872007 - Fax: +84-4-35500914<br  /> - Email: <a href="mailto:contact@vinades.vn">contact@vinades.vn</a> - Website: <a href="http://www.vinades.vn/">http://www.vinades.vn</a></div><p style="text-align: justify;"> &nbsp;</p>', 'http://vinades.vn/vi/news/Tuyen-dung/', 2, 0, 1, 1, 1),
(8, '<p style="text-align: justify;"> <span style="font-size:16px;"><strong>Giảm giá tới 90% giá module, ngày nào cũng là ngày &quot;mua chung&quot; trên webnhanh.vn!</strong></span></p><p style="text-align: justify;"> Như thông báo trên webnhanh.vn, chương trình &quot;<a href="http://webnhanh.vn/vi/thiet-ke-web/detail/Mua-chung-tren-Webnhanhvn-se-giam-gia-90-gia-module-da-cong-bo-245/" target="_blank"><strong>mua chung module</strong></a>&quot; nằm trong chính sách chung của webnhanh.vn trong việc hỗ trợ phát triển mã nguồn mở, giúp cho mọi người được hưởng những dịch vụ thiết kế website tốt nhất với chi phí thấp nhất. Tham gia chương trình này, bạn chỉ phải trả số tiền bằng 1/10 giá trị module mà vẫn được sở hữu module với tính năng hấp dẫn mà bạn&nbsp; mong muốn.<br  /> <br  /> Cụ thể, các module trong <a href="http://webnhanh.vn/vi/nvresources/cat/Modules-1/" target="_blank"><strong>kho module của webnhanh.vn</strong></a> đang chờ hoàn thiện sẽ được giảm giá tới 90% nếu khách hàng đăng ký mua chung module. Tuy nhiên sau 2 tháng thực hiện, Ban Quản Trị webnhanh.vn thấy rằng khả năng xuất hiện nhu cầu cùng mua chung 1 sản phẩm và dịch vụ có tính đặc thù như code dành cho web là rất thấp. Chính vì thế webnhanh.vn đã giảm giá đồng loạt các module trên webnhanh.vn để khách hàng có nhu cầu sẽ có nhiều cơ hội được sử dụng các module mà mình mong muốn cung cấp lên website.<br  /> <br  /> Đại đa số các module sẽ được giảm giá xuống mức giá siêu rẻ để đảm bảo mọi người đều có khả năng sử dụng. Đặc biệt với các module có mức giá từ 10-20 triệu đồng sẽ giảm giá xuống còn ở mức 1-5 triệu đồng.<br  /> <br  /> <span style="font-size:16px;"><strong>Giá rẻ hơn, nhiều giao diện hơn cho web</strong></span></p><p style="text-align: justify;"> Ngoài việc giảm giá <a href="http://webnhanh.vn/vi/nvresources/cat/Giao-dien-3/" target="_blank"><strong>các giao diện website</strong></a> do VINADES.,JSC thiết kế (từ mức giá 2 triệu đồng xuống còn 300 đến 700 ngàn đồng). Webnhanh.vn cũng sẽ cải thiện kho giao diện của mình bằng cách đưa vào sử dụng các mẫu giao diện của các nhà thiết kế giao diện khác với giá trung bình khoảng 300 ngàn đồng (chi phí chuyển template thành giao diện có thể cài đặt cho website). Khách hàng cũng có thể gửi mẫu giao diện (đã cắt HTML) để chúng tôi thực hiện việc ghép giao diện với mức giá 300-500 ngàn đồng (áp dụng mô hình giá chia sẻ của VINADES.,JSC&nbsp; trong <strong><a href="http://vinades.vn/vi/news/San-pham/Thiet-ke-giao-dien-14/" target="_blank">thiết kế giao diện web</a></strong> <sup>(*)</sup>).<br  /> <br  /> <span style="font-size:16px;"><strong>Giảm giá các gói web dựng sẵn, nâng cao chất lượng và cấu hình dịch vụ</strong></span></p><p style="text-align: justify;"> Cơ cấu chất lượng sản phẩm và dịch vụ cũng thay đổi theo hướng nâng cao rõ rệt. Ngoài việc giảm giá các <strong><a href="http://webnhanh.vn/vi/nvresources/package/" target="_blank">gói web dựng sẵn</a></strong>, webnhanh.vn đồng thời nâng cao chất lượng các dịch vụ đi kèm của các gói web này. Theo đó ngoài việc kéo dài thời gian bảo hành miễn phí lên 12 tháng, đồng thời webnhanh.vn cũng kéo dài thời gian sử dụng hosting miễn phí lên 12 tháng. Với mức hỗ trợ này, website thiết kế trên webnhanh.vn đảm bảo chất lượng cao và mức giá còn rẻ hơn cả các nhà cung cấp dịch vụ web giá rẻ. Đây là cơ hội rất lớn cho <strong><a href="http://webnhanh.vn/vi/dealers/" target="_blank">các đại lý của webnhanh.vn</a></strong> để tạo nên lợi thế cạnh tranh về chất lượng và giá cả dịch vụ.<br  /> <br  /> <strong><sup>(*)</sup> &quot;Giá chia sẻ&quot;</strong> là mức giá tiết kiệm cho khách hàng, nếu mua với mức giá này khách hàng sẽ tiết kiệm chi phí thiết kế giao diện một cách tối đa mà vẫn được toàn quyền sử dụng mẫu giao diện đã đặt hàng. Webnhanh.vn sẽ giữ lại mẫu giao diện này và đưa vào thư viện giao diện để cung cấp cho các khách hàng khác. Mô hình &quot;Giá chia sẻ&quot; sử dụng cho các khách hàng không quá khắt khe về việc đảm bảo tính duy nhất của mẫu giao diện đồng thời giúp webnhanh.vn làm phong phú thêm kho giao diện của mình.</p><strong>Chú ý:</strong> Ngoài việc cung cấp các gói web dựng sẵn với chi phí thấp phục vụ người dùng phổ thông, <strong><a href="http://vinades.vn">VINADES.,JSC</a></strong> vẫn duy trì dịch vụ thiết kế giao diện riêng và thiết kế website theo yêu cầu để phục vụ những khách hàng có nhu cầu riêng biệt và cao cấp hơn, khách hàng có nhu cầu vui lòng truy cập <a href="http://vinades.vn" target="_blank">http://vinades.vn</a> hoặc liên hệ nhân viên kinh doanh của VINADES.,JSC để được tư vấn và báo giá dịch vụ.<br  /><br  /><div style="text-align: justify;"> Như vậy, cùng với việc tham gia cung cấp hosting chuyên nghiệp dành cho NukeViet của các nhà cung cấp hosting trong và ngoài nước như <strong><a href="http://vinades.vn/vi/news/Doi-tac/VINADES-JSC-va-DIGISTAR-hop-tac-trong-viec-phat-trien-ma-nguon-mo-NukeViet-17/">DIGISTAR</a></strong>, <strong><a href="http://nukeviet.vn/vi/news/the-gioi-cong-nghe/TMDHosting-cung-cap-dich-vu-hosting-chuyen-NukeViet-64/" title="TMDHosting cung cấp dịch vụ hosting chuyên NukeViet">TMDHosting</a></strong> hay <strong><a href="http://nukeviet.vn/vi/news/the-gioi-cong-nghe/SiteGround-cung-cap-dich-vu-hosting-chuyen-NukeViet-59/" title="SiteGround cung cấp dịch vụ hosting chuyên NukeViet">SiteGround</a></strong>, <a href="http://nukeviet.vn/vi/news/the-gioi-cong-nghe/website-dau-tien-thiet-ke-website-va-ban-code-chuyen-nghiep-danh-cho-NukeViet-67/" title="Webnhanh.vn - website đầu tiên thiết kế website và bán code chuyên nghiệp dành cho NukeViet"><strong>Webnhanh.vn</strong> là website đầu tiên có dịch vụ thiết kế website và bán code chuyên nghiệp</a> dành riêng cho NukeViet. Sự chuyên nghiệp hóa trong các khâu từ phát triển đến cung cấp dịch vụ cho mã nguồn mở NukeViet sẽ mở ra một cơ hội phát triển mới cho người sử dụng web ở Việt Nam.</div>', 'http://nukeviet.vn/vi/news/website/website-dau-tien-thiet-ke-website-va-ban-code-chuyen-nghiep-danh-cho-NukeViet-67/', 2, 0, 1, 1, 1),
(9, '<div> Nhắc đến các hệ thống quản trị nội dung (Content Management System – CMS) để quản lý các cổng thông tin điện tử trên Internet, không ít người sẽ nhắc đến các bộ công cụ như Joomla hay Wordpress. Tuy nhiên, có một sản phẩm hoàn toàn thuần Việt, do người Việt xây dựng không hề thua kém những sản phẩm trên cả về tính năng lẫn khả năng ứng dụng, đó là NukeViet của nhóm tác giả thuộc Công ty Cổ phần phát triển nguồn mở Việt Nam (VINADES).</div><div> &nbsp;</div><div> Với NukeViet, người dùng tại Việt Nam sẽ vượt qua các trở ngại về rào cản ngôn ngữ, có thể xây dựng và vận hành các trang web một cách dễ dàng nhất, đồng thời nhận được sự hỗ trợ của cộng đồng người dùng và các nhà phát triển cũng chính là người Việt Nam.</div><div> &nbsp;</div><div> Mới đây nhất, Ban giám khảo <span style="FONT-STYLE: italic">Giải thưởng Nhân Tài Đất Việt 2011</span> đã quyết định đưa NukeViet vào danh sách các sản phẩm đã vượt qua vòng sơ khảo để tranh tài tại vòng chung khảo của <span style="FONT-STYLE: italic">Giải Thưởng Nhân Tài Đất Việt 2011</span> diễn ra vào ngày 17-18/11 tới đây.</div><div> &nbsp;</div><div> <span style="FONT-WEIGHT: bold">Những ý tưởng giúp hình thành nên sản phẩm “thuần Việt”</span></div><div> &nbsp;</div><div> Theo chia sẻ của đại diện nhóm tác giả, năm 2004, anh Nguyễn Anh Tú, một lưu học sinh người Việt tại Nga với ý tưởng xây dựng một website để kết nối cộng đồng sinh viên du học đã sử dụng bộ CMS mã nguồn mở PHP-Nuke để thực hiện.</div><div> &nbsp;</div><div> Sau đó, anh Nguyễn Anh Tú đã phát triển và cải tiến bộ mã nguồn mở PHP-Nuke để chia sẻ cho các thành viên có nhu cầu xây dựng website một cách đơn giản và thuận tiện hơn. Được sự đón nhận của đông đảo người sử dụng, bộ mã nguồn đã liên tục được phát triển và trở thành một ứng dụng thuần Việt với tên gọi NukeViet. NukeViet đã nhanh chóng trở nên phổ biến trong giới các nhà xây dựng và phát triển website tại Việt Nam.</div><div> &nbsp;</div><div style="TEXT-ALIGN: center"> <div> <span style="FONT-FAMILY: Tahoma; FONT-SIZE: 10pt"><img _fl="" align="middle" src="http://dantri4.vcmedia.vn/tI0YUx18mEaF5kMsGHJ/Image/2011/11/NukeViet-1_4b905.jpg" style="MARGIN: 5px" width="450" /></span></div></div><div style="TEXT-ALIGN: center"> <span style="FONT-SIZE: 10pt"><span style="FONT-FAMILY: Tahoma">Giao diện một website tin tức được xây dựng bằng NukeViet</span></span></div><div> &nbsp;</div><div> Trong quá trình phát triển NukeViet, có một điều đội ngũ kỹ thuật luôn trăn trở là làm sao để có thể nâng cao tỉ lệ đóng góp của người Việt vào trong mã nguồn sản phẩm. Chính vì ý thức được điều này nên mức độ thuần Việt của sản phẩm ngày càng được nâng cao trong từng phiên bản phát hành. Cho đến phiên bản 3.0 (phát hành tháng 10 năm 2010) thì NukeViet đã thực sự trở thành một sản phẩm mã nguồn mở riêng của Việt Nam với 100% dòng code được viết mới.</div><div> &nbsp;</div><div> Kể từ đây, cộng đồng mã nguồn mở Việt Nam đã có riêng một bộ mã nguồn thuần Việt, tự hào sánh bước ngang vai cùng các cộng đồng mã nguồn mở khác trên thế giới. NukeViet ra đời đã giúp cộng đồng mạng Việt Nam giải quyết nhu cầu và mong muốn có một bộ mã nguồn mở của riêng Việt Nam, giúp phát triển hệ thống website của người Việt một cách an toàn nhất, đảm bảo nhất.</div><div> &nbsp;</div><div style="TEXT-ALIGN: center"> <div> <span style="FONT-FAMILY: Tahoma; FONT-SIZE: 10pt"><img _fl="" align="middle" src="http://dantri4.vcmedia.vn/tI0YUx18mEaF5kMsGHJ/Image/2011/11/NukeViet-2_600d0.jpg" style="MARGIN: 5px" width="450" /></span></div></div><div style="TEXT-ALIGN: center"> <span style="FONT-SIZE: 10pt"><span style="FONT-FAMILY: Tahoma">Một website bán hành trực tuyến xây dựng bằng NukeViet</span></span></div><div> &nbsp;</div><div> NukeViet là CMS mã nguồn mở đầu tiên của Việt Nam có quá trình phát triển lâu dài nhất, có lượng người sử dụng đông nhất. Hiện NukeViet cũng là một trong những mã nguồn mở chuyên nghiệp đầu tiên của Việt Nam, cơ quan chủ quản của NukeViet là VINADES.,JSC - đơn vị chịu trách nhiệm phát triển NukeViet và triển khai NukeViet thành các ứng dụng cụ thể cho doanh nghiệp.</div><div> &nbsp;</div><div> <span style="FONT-WEIGHT: bold">Khả năng ứng dụng và những ưu điểm của NukeViet</span></div><div> &nbsp;</div><div> Kể từ khi ra đời và trải qua một quá trình dài phát triển, NukeViet hiện được sử dụng ở nhiều website, từ những website cá nhân cho tới những hệ thống website doanh nghiệp. NukeViet cung cấp nhiều dịch vụ và ứng dụng nhờ khả năng tăng cường tính năng bằng cách cài thêm các module, block...&nbsp;</div><div> &nbsp;</div><div> NukeViet chủ yếu được sử dụng làm trang tin tức &nbsp;nhờ module News tích hợp sẵn trong NukeViet được viết rất công phu, nó lại đặc biệt phù hợp với yêu cầu và đặc điểm sử dụng cho hệ thống tin tức. NukeViet có thể dễ dàng cài đặt, dễ dàng quản lý kể cả với những người mới sử dụng do đó thường được những đối tượng người dùng không chuyên ưa thích.</div><div> &nbsp;</div><div style="TEXT-ALIGN: center"> <div> <span style="FONT-FAMILY: Tahoma; FONT-SIZE: 10pt"><img _fl="" align="middle" src="http://dantri4.vcmedia.vn/tI0YUx18mEaF5kMsGHJ/Image/2011/11/NukeViet-4_416a1.jpg" style="MARGIN: 5px" width="450" /></span></div></div><div style="TEXT-ALIGN: center"> <span style="FONT-SIZE: 10pt"><span style="FONT-FAMILY: Tahoma">Website phòng Giáo dục và Đào tạo Lạng Giang được xây dựng trên mã nguồn NukeViet</span></span></div><div> &nbsp;</div><div> NukeViet có mã nguồn mở do đó việc sử dụng NukeViet là hoàn toàn miễn phí cho tất cả mọi người trên thế giới. Từ phiên bản 2.0 trở về trước, đối tượng người dùng chủ yếu của NukeViet là người Việt vì những đặc điểm của bản thân mã nguồn (có nguồn gốc từ PHP-Nuke) và vì chính sách của nhóm phát triển là: &quot;hệ thống Portal dành cho người Việt&quot;. Tuy nhiên, kể từ phiên bản 3.0, đội ngũ phát triển NukeViet định hướng đưa NukeViet ra cộng đồng quốc tế với hỗ trợ thêm nhiều ngôn ngữ.&nbsp;</div><div> &nbsp;</div><div> Trên thực tế, với những ưu điểm vượt trội của mình, NukeViet 3 đã được ứng dụng ở hàng ngàn website khác nhau. Đặc biệt, không ít các cơ quan, tổ chức của Nhà nước đã tin tưởng sử dụng mã nguồn NukeViet để xây dựng cổng thông tin điện tử của mình, như &nbsp;Cổng thông tin tích hợp 1 cửa cho Phòng giáo dục Lạng Giang, cổng thông tin 2 chiều - Công ty cổ phần đầu tư tài chính công đoàn dầu khí Việt Nam, Hệ thống tra cứu điểm, tra cứu văn bằng - Cổng thông tin Sở GD&amp;ĐT Quảng Ninh, Website viện y học cổ truyền Quân Đội…</div><div> &nbsp;</div><div> Tất cả các dự án trên đều được khách hàng đánh giá rất cao về tính ứng dụng, hiệu quả do tiết kiệm chi phí và đáp ứng rất tốt nhu cầu sử dụng của các đơn vị.&nbsp;</div><div> &nbsp;</div><div> <span style="FONT-WEIGHT: bold">Hướng phát triển trong tương lai và những kỳ vọng trước mắt</span></div><div> &nbsp;</div><div> Với ý nghĩa là phần mềm quản lý website (chiếm tới 90% các giao tiếp và tương tác trực tiếp với người sử dụng trên môi trường internet), khi phát triển, NukeViet sẽ trở thành một công cụ truyền thông rất mạnh, có thể đem lại những hiệu quả to lớn khác. Nhóm phát triển sẽ phát huy lợi thế này để phát triển sản phẩm.</div><div> &nbsp;</div><div> Nhóm phát triển cũng muốn tăng cường các khả năng liên kết, chia sẻ và tích hợp dữ liệu giữa các hệ thống khác nhau nhằm tạo nên một mạng lưới lớn, rộng khắp và hoàn chỉnh, có thể huy động sức mạnh tổng lực, thực hiện các nhiệm vụ xã hội khác trên mã nguồn NukeViet của mình.</div><div> &nbsp;</div><div> NukeViet khi được kết hợp với xu thế phát triển của điện toán đám mây sẽ trở thành một nền tảng giúp phát triển nhiều hệ thống dịch vụ trực tuyến có thể thu hút nhiều người dùng với giá trị thương mại cao.</div><div> &nbsp;</div><div style="TEXT-ALIGN: center"> <div> <span style="FONT-FAMILY: Tahoma; FONT-SIZE: 10pt"><img _fl="" align="middle" src="http://dantri4.vcmedia.vn/tI0YUx18mEaF5kMsGHJ/Image/2011/11/NukeViet-3_46e98.jpg" style="MARGIN: 5px" width="450" /></span></div></div><div style="TEXT-ALIGN: center"> <span style="FONT-FAMILY: Tahoma; FONT-SIZE: 10pt">Giao diện soạn thảo nội dung trên NukeViet</span></div><div> &nbsp;</div><div> Với việc gửi sản phẩm dự thi tại <span style="FONT-STYLE: italic">Giải thưởng Nhân Tài Đất Việt 2011</span>, nhóm tác giả của NukeViet hy vọng mã nguồn mở của mình sẽ đạt vị trí cao tại Giải thưởng, như một cách thức để quảng bá rộng rãi sản phẩm, được thừa nhận và hỗ trợ sử dụng trong các lĩnh vực mà nó có thể phục vụ tốt và đem lại hiệu quả kinh tế, xã hội cao như: lĩnh vực giáo dục, lĩnh vực hành chính… để các bộ-ban-ngành, các cơ quan hành chính, chính quyền địa phương nhìn thấy giá trị và hiệu quả to lớn của mã nguồn mở NukeViet để triển khai NukeViet phục vụ các cơ quan này. NukeViet sẽ giúp hiện thực hóa cải cách hành chính và góp phần đẩy nhanh thủ tục một cửa một cách tiết kiệm mà vẫn đạt hiệu quả cao nhất.</div><div> &nbsp;</div><div> Ngoài ra, uy tính của Giải thưởng, nhóm tác giả NukeViet hy vọng sẽ đem NukeViet đến nhiều người hơn, để cả xã hội được sử dụng thành quả lớn lao của bộ mã nguồn mở được coi là biểu tượng và đại diện tiểu biểu cho sự phát triển và thành công của mã nguồn mở Việt Nam. Không chỉ thế, mở ra cơ hội tiếp cận và học hỏi công nghệ cho hàng ngàn học sinh, sinh viên, qua đó có được các kiến thức đầy đủ về công nghệ web, về internet và vô số các kỹ năng làm việc trên máy tính khác mà có thể do vô tình hay cố ý, trong quá trình tìm hiểu, học tập và vận hành NukeViet mà họ đã có được.</div><div> &nbsp;</div><div> Với những ứng dụng rộng rãi mà NukeViet đã có được kể từ khi ra mắt và và trải qua thời gian dài phát triển, Hội đồng <span style="FONT-STYLE: italic">Giám khảo Giải Thưởng Nhân &nbsp;Tài Đất Việt</span> đã đánh giá rất cao những ưu điểm và thế mạnh của NukeViet để đưa sản phẩm vào danh sách 17 sản phẩm sẽ tranh tài tại vòng Chung khảo của <span style="FONT-STYLE: italic">Giải Thưởng Nhân Tài Đất Việt 2011</span> diễn ra vào ngày 17-18/11 tới đây.</div><div> &nbsp;</div><div> Bạn đọc có thể tìm hiểu thêm về NukeViet tại <span style="FONT-WEIGHT: bold"><a href="http://nukeviet.vn/vi/news/Bao-chi-viet/">http://nukeviet.vn/</a>.</span></div>', 'http://dantri.com.vn/c119/s119-537812/nukeviet-cong-cu-ma-nguon-mo-cho-cong-dong-thiet-ke-website-vn.htm', 1, 0, 1, 1, 1);
INSERT INTO `nv3_vi_news_bodyhtml_1` (`id`, `bodyhtml`, `sourcetext`, `imgposition`, `copyright`, `allowed_send`, `allowed_print`, `allowed_save`) VALUES
(10, 'Cả hội trường như vỡ òa, rộn tiếng vỗ tay, tiếng cười nói chúc mừng các nhà khoa học, các nhóm tác giả đoạt Giải thưởng Nhân tài Đất Việt năm 2011. Năm thứ 7 liên tiếp, Giải thưởng đã phát hiện và tôn vinh nhiều tài năng của đất nước.<div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/01_b7d3f.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Sân khấu trước lễ trao giải.</span></div><div> &nbsp;</div><div align="center"> &nbsp;</div><div align="left"> Cơ cấu Giải thưởng của Nhân tài Đất Việt 2011 trong lĩnh vực CNTT bao gồm 2 hệ thống giải dành cho “Sản phẩm có tiềm năng ứng dụng” và “Sản phẩm đã ứng dụng rộng rãi trong thực tế”. Mỗi hệ thống giải sẽ có 1 giải Nhất, 1 giải Nhì và 1 giải Ba với trị giá giải thưởng tương đương là 100 triệu đồng, 50 triệu đồng và 30 triệu đồng cùng phần thưởng của các đơn vị tài trợ.</div><div align="center"> &nbsp;</div><div align="center"> <div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/03_f19bd.jpg" width="350" /></div> <div align="center"> Nhiều tác giả, nhóm tác giả đến lễ trao giải từ rất sớm.</div></div><p> Giải thưởng Nhân tài Đất Việt 2011 trong lĩnh vực Khoa học Tự nhiên được gọi chính thức là Giải thưởng Khoa học Tự nhiên Việt Nam sẽ có tối đa 6 giải, trị giá 100 triệu đồng/giải dành cho các lĩnh vực: Toán học, Cơ học, Vật lý, Hoá học, Các khoa học về sự sống, Các khoa học về trái đất (gồm cả biển) và môi trường, và các lĩnh vực khoa học liên ngành hoặc đa ngành của hai hoặc nhiều ngành nói trên. Viện Khoa học và Công nghệ Việt Nam thành lập Hội đồng giám khảo gồm các nhà khoa học tự nhiên hàng đầu trong nước để thực hiện việc đánh giá và trao giải.</p><div> Sau thành công của việc trao Giải thưởng Nhân tài Đất Việt trong lĩnh vực Y dược năm 2010, Ban Tổ chức tiếp tục tìm kiếm những chủ nhân xứng đáng cho Giải thưởng này trong năm 2011.</div><div> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/07_78b85.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Nguyên Tổng Bí thư BCH TW Đảng Cộng sản Việt Nam Lê Khả Phiêu tới&nbsp;dự Lễ trao giải.</span></div><div> &nbsp;</div><div> 45 phút trước lễ trao giải, không khí tại Cung Văn hóa Hữu nghị Việt - Xô đã trở nên nhộn nhịp. Sảnh phía trước Cung gần như chật kín. Rất đông bạn trẻ yêu thích công nghệ thông tin, sinh viên các trường đại học đã đổ về đây, cùng với đó là những bó hoa tươi tắn sẽ được dành cho các tác giả, nhóm tác giả đoạt giải.</div><div> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/09_aef87.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Phó Chủ tịch nước CHXHCN Việt Nam Nguyễn Thị Doan.</span></div><div> &nbsp;</div><div> Các vị khách quý cũng đến từ rất sớm. Tới tham dự lễ trao giải năm nay có ông Lê Khả Phiêu, nguyên Tổng Bí thư BCH TW Đảng Cộng sản Việt Nam; bà Nguyễn Thị Doan, Phó Chủ tịch nước CHXHCN Việt Nam; ông Vũ Oanh, nguyên Ủy viên Bộ Chính trị, nguyên Chủ tịch Hội Khuyến học Việt Nam; ông Nguyễn Bắc Son, Bộ trưởng Bộ Thông tin và Truyền thông; ông Đặng Ngọc Tùng, Chủ tịch Tổng Liên đoàn lao động Việt Nam; ông Phạm Văn Linh, Phó trưởng ban Tuyên giáo Trung ương; ông Đỗ Trung Tá, Phái viên của Thủ tướng Chính phủ về CNTT, Chủ tịch Hội đồng Khoa học công nghệ quốc gia; ông Nguyễn Quốc Triệu, nguyên Bộ trưởng Bộ Y tế, Trưởng Ban Bảo vệ Sức khỏe TƯ; bà Cù Thị Hậu, Chủ tịch Hội người cao tuổi Việt Nam; ông Lê Doãn Hợp, nguyên Bộ trưởng Bộ Thông tin Truyền thông, Chủ tịch Hội thông tin truyền thông số…</div><div> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/08_ba46c.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Bộ trưởng Bộ Thông tin và Truyền thông Nguyễn Bắc Son.</span></div><div align="center"> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/06_29592.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Giáo sư - Viện sỹ Nguyễn Văn Hiệu.</span></div><div align="center"> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/04_051f2.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Nguyên Bộ trưởng Bộ Y tế Nguyễn Quốc Triệu.</span></div><div align="center"> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/05_c7ea4.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Ông Vũ Oanh, nguyên Ủy viên Bộ Chính trị, nguyên Chủ tịch Hội Khuyến học Việt Nam.</span></div><p> Do tuổi cao, sức yếu hoặc bận công tác không đến tham dự lễ trao giải nhưng Đại tướng Võ Nguyên Giáp và Chủ tịch nước Trương Tấn Sang cũng gửi lẵng hoa đến chúc mừng lễ trao giải.</p><div> Đúng 20h, Lễ trao giải bắt đầu với bài hát “Nhân tài Đất Việt” do ca sỹ Thái Thùy Linh cùng ca sĩ nhí và nhóm múa biểu diễn. Các nhóm tác giả tham dự Giải thưởng năm 2011 và những tác giả của các năm trước từ từ bước ra sân khấu trong tiếng vỗ tay tán dương của khán giả.</div><div> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/12_74abf.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> &nbsp;</div><div align="center"> <div> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/PHN15999_3e629.jpg" style="MARGIN: 5px" width="450" /></div></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Tiết mục mở màn Lễ trao giải.</span></div><p> Trước Lễ trao giải Giải thưởng Nhân tài Đất Việt năm 2011, Đại tướng Võ Nguyên Giáp, Chủ tịch danh dự Hội Khuyến học Việt Nam, đã gửi thư chúc mừng, khích lệ Ban tổ chức Giải thưởng cũng như các nhà khoa học, các tác giả tham dự.</p><blockquote> <p> <em><span style="FONT-STYLE: italic">Hà Nội, ngày 16 tháng 11 năm 2011</span></em></p> <div> <em>Giải thưởng “Nhân tài đất Việt” do Hội Khuyến học Việt Nam khởi xướng đã bước vào năm thứ bảy (2005 - 2011) với ba lĩnh vực: Công nghệ thông tin, Khoa học tự nhiên và Y dược.</em></div></blockquote><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/thuDaituong1_767f4.jpg" style="MARGIN: 5px" width="400" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Thư của Đại tướng Võ Nguyên Giáp gửi BTC Giải thưởng Nhân tài đất Việt.</span></div><blockquote> <p> <em>Tôi gửi lời chúc mừng các nhà khoa học và các thí sinh được nhận giải thưởng “Nhân tài đất Việt” năm nay.</em></p> <p> <em>Mong rằng, các sản phẩm và các công trình nghiên cứu được trao giải sẽ được tiếp tục hoàn thiện và được ứng dụng rộng rãi trong đời sống, đem lại hiệu quả kinh tế và xã hội thiết thực.</em></p> <p> <em>Nhân ngày “Nhà giáo Việt Nam”, chúc Hội Khuyến học Việt nam, chúc các thầy giáo và cô giáo, với tâm huyết và trí tuệ của mình, sẽ đóng góp xứng đáng vào công cuộc đổi mới căn bản và toàn diện nền giáo dục nước nhà, để cho nền giáo dục Việt Nam thực sự là cội nguồn của nguyên khí quốc gia, đảm bảo cho mọi nhân cách và tài năng đất Việt được vun đắp và phát huy vì sự trường tồn, sự phát triển tiến bộ và bền vững của đất nước trong thời đại toàn cầu hóa và hội nhập quốc tế.</em></p> <p> <em>Chào thân ái,</em></p> <p> <strong><em>Chủ tịch danh dự Hội Khuyến học Việt Nam</em></strong></p> <p> <strong><em>Đại tướng Võ Nguyên Giáp</em></strong></p></blockquote><p> Phát biểu khai mạc Lễ trao giải, Nhà báo Phạm Huy Hoàn, TBT báo điện tử Dân trí, Trưởng Ban tổ chức, bày tỏ lời cám ơn chân thành về những tình cảm cao đẹp và sự quan tâm chăm sóc của Đại tướng Võ Nguyên Giáp và Chủ tịch nước Trương Tấn Sang đã và đang dành cho Nhân tài Đất Việt.</p><div> Nhà báo Phạm Huy Hoàn nhấn mạnh, Giải thưởng Nhân tài Đất Việt suốt 7 năm qua đều nhận được sự quan tâm của các vị lãnh đạo Đảng, Nhà nước và của toàn xã hội. Tại Lễ trao giải, Ban tổ chức luôn có vinh dự được đón tiếp&nbsp;các vị lãnh đạo&nbsp; Đảng và Nhà nước đến dự và trực tiếp trao Giải thưởng.</div><div> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/15_4670c.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Trưởng Ban tổ chức Phạm Huy Hoàn phát biểu khai mạc buổi lễ.</span></div><p> Năm 2011, Giải thưởng có 3 lĩnh vực được xét trao giải là CNTT, Khoa học tự nhiên và Y dược. Lĩnh&nbsp; vực CNTT đã đón nhận 204 sản phẩm tham dự từ mọi miền đất nước và cả nước ngoài như thí sinh Nguyễn Thái Bình từ bang California - Hoa Kỳ và một thí sinh ở Pháp cũng đăng ký tham gia.</p><div> “Cùng với lĩnh vực CNTT, năm nay, Hội đồng khoa học của Viện khoa học và công nghệ Việt Nam và Hội đồng khoa học - Bộ Y tế tiếp tục giới thiệu những nhà khoa học xuất&nbsp; sắc, có công trình nghiên cứu đem lại nhiều lợi ích cho xã hội trong lĩnh vực khoa học tự nhiên và lĩnh vực y dược. Đó là những bác sĩ tài năng, những nhà khoa học mẫn tuệ, những người đang ngày đêm thầm lặng cống hiến trí tuệ sáng tạo của mình cho xã hội trong công cuộc xây dựng đất nước.” - nhà báo Phạm Huy Hoàn nói.</div><div> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/14_6e18f.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Nhà báo Phạm Huy Hoàn, TBT báo điện tử Dân trí, Trưởng BTC Giải thưởng và ông Phan Hoàng Đức, Phó TGĐ Tập đoàn VNPT nhận lẵng hoa chúc mừng của Đại tướng Võ Nguyên Giáp và Chủ tịch nước Trương Tấn Sang.</span></div><p> Cũng theo Trưởng Ban tổ chức Phạm Huy Hoàn, đến nay, vị Chủ tịch danh dự đầu tiên của Hội Khuyến học Việt Nam, Đại tướng Võ Nguyên Giáp, đã bước qua tuổi 100 nhưng vẫn luôn dõi theo và động viên từng bước phát triển của Giải thưởng Nhân tài Đất Việt. Đại tướng luôn quan tâm chăm sóc Giải thưởng ngay từ khi Giải thưởng&nbsp; mới ra đời cách đây 7 năm.</p><p> Trước lễ trao giải, Đại tướng Võ Nguyên Giáp đã gửi thư chúc mừng, động viên Ban tổ chức. Trong thư, Đại tướng viết: “Mong rằng, các sản phẩm và các công trình nghiên cứu được trao giải sẽ được tiếp tục hoàn thiện và được ứng dụng rộng rãi trong đời sống, đem lại hiệu quả kinh tế và xã hội thiết thực.</p><p> Sau phần khai mạc, cả hội trường hồi hội chờ đợi phút vinh danh các nhà khoa học và các tác giả, nhóm tác giả đoạt giải.</p><div> <span style="FONT-WEIGHT: bold">* Giải thưởng Khoa học Tự nhiên Việt Nam </span>thuộc về 2 nhà khoa học GS.TS Trần Đức Thiệp và GS.TS Nguyễn Văn Đỗ - Viện Vật lý, Viện Khoa học công nghệ Việt Nam với công trình “Nghiên cứu cấu trúc hạt nhân và các phản ứng hạt nhân”.</div><div> &nbsp;</div><div align="center"> <div> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/khtn_d4aae.jpg" style="MARGIN: 5px" width="450" /></div></div><p> Hai nhà khoa học đã tiến hành thành công các nghiên cứu về phản ứng hạt nhân với nơtron, phản ứng quang hạt nhân, quang phân hạch và các phản ứng hạt nhân khác có cơ chế phức tạp trên các máy gia tốc như máy phát nơtron, Microtron và các máy gia tốc thẳng của Việt Nam và Quốc tế. Các nghiên cứu này đã góp phần làm sáng tỏ cấu trúc hạt nhân và cơ chế phản ứng hạt nhân, đồng thời cung cấp nhiều số liệu hạt nhân mới có giá trị cho Kho tàng số liệu hạt nhân.</p><p> GS.TS Trần Đức Thiệp và GS.TS Nguyễn Văn Đỗ đã khai thác hiệu quả hai máy gia tốc đầu tiên của Việt Nam là máy phát nơtron NA-3-C và Microtron MT-17 trong nghiên cứu cơ bản, nghiên cứu ứng dụng và đào tạo nhân lực. Trên cơ sở các thiết bị này, hai nhà khoa học đã tiến hành thành công những nghiên cứu cơ bản thực nghiệm đầu tiên về phản ứng hạt nhân ở Việt Nam; nghiên cứu và phát triển các phương pháp phân tích hạt nhân hiện đại và áp dụng thành công ở Việt Nam.</p><div> Bà Nguyễn Thị Doan, Phó Chủ tịch nước CHXHCNVN và Giáo sư - Viện sỹ Nguyễn Văn Hiệu trao giải thưởng cho 2 nhà khoa học.</div><div> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/khtn2_e2865.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Phó Chủ tịch nước CHXHCNVN Nguyễn Thị Doan và Giáo sư - Viện sỹ Nguyễn Văn Hiệu trao giải thưởng cho 2 nhà khoa học GS.TS Trần Đức Thiệp và GS.TS Nguyễn Văn Đỗ.</span></div><p> GS.VS Nguyễn Văn Hiệu chia sẻ: “Cách đây không lâu, Chính phủ đã ký quyết định xây dựng nhà máy điện hạt nhân trong điều kiện đất nước còn nhỏ bé, nghèo khó và vì thế việc đào tạo nhân lực là nhiệm vụ số 1 hiện nay. Rất may, Việt Nam có 2 nhà khoa học cực kỳ tâm huyết và nổi tiếng trong cả nước cũng như trên thế giới. Hội đồng khoa học chúng tôi muốn xướng tên 2 nhà khoa học này để Chính phủ huy động cùng phát triển xây dựng nhà máy điện hạt nhân.”</p><p> GS.VS Hiệu nhấn mạnh, mặc dù điều kiện làm việc của 2 nhà khoa học không được quan tâm, làm việc trên những máy móc cũ kỹ được mua từ năm 1992 nhưng 2 ông vẫn xay mê cống hiến hết mình cho lĩnh Khoa học tự nhiên Việt Nam.</p><p> <span style="FONT-WEIGHT: bold">* Giải thưởng Nhân tài Đất Việt trong lĩnh vực Y Dược:</span> 2 giải</p><div> <span style="FONT-WEIGHT: bold">1.</span> Nhóm nghiên cứu của Bệnh viện Hữu nghị Việt - Đức với công trình <span style="FONT-STYLE: italic">“Nghiên cứu triển khai ghép gan, thận, tim lấy từ người cho chết não”</span>.</div><div> &nbsp;</div><div align="center"> <div> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/y_3dca2.jpg" style="MARGIN: 5px" width="450" /></div></div><div> &nbsp;</div><div> Tại bệnh viện Việt Đức, tháng 4/2011, các ca ghép tạng từ nguồn cho là người bệnh chết não được triển khai liên tục. Với 4 người cho chết não hiến tạng, bệnh viện đã ghép tim cho một trường hợp,&nbsp;2 người được ghép gan, 8 người được ghép thận, 2 người được ghép van tim và tất cả các ca ghép này đều thành công, người bệnh được ghép đã có một cuộc sống tốt hơn với tình trạng sức khỏe ổn định.</div><div> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/y2_cb5a1.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Nguyên Tổng Bí Ban chấp hành TW Đảng CSVN Lê Khả Phiêu và ông Vũ Văn Tiền, Chủ tịch Hội đồng quản trị Ngân hàng An Bình trao giải thưởng cho nhóm nghiên cứu của BV Hữu nghị Việt - Đức.</span></div><p> Công trong việc ghép tạng từ người cho chết não không chỉ thể hiện năng lực, trình độ, tay nghề của bác sĩ Việt Nam mà nó còn mang một ý nghĩa nhân văn to lớn, mang một thông điệp gửi đến những con người giàu lòng nhân ái với nghĩa cử cao đẹp đã hiến tạng để cứu sống những người bệnh khác.</p><p> <span style="FONT-WEIGHT: bold">2.</span> Hội đồng ghép tim Bệnh viện Trung ương Huế với công trình nghiên cứu <span style="FONT-STYLE: italic">“Triển khai ghép tim trên người lấy từ người cho chết não”</span>.</p><div> Đề tài được thực hiện dựa trên ca mổ ghép tim thành công lần đầu tiên ở Việt Nam của chính 100% đội ngũ y, bác sĩ của Bệnh viện Trung ương Huế đầu tháng 3/2011. Bệnh nhân được ghép tim thành công là anh Trần Mậu Đức (26 tuổi, ở phường Phú Hội, TP. Huế).</div><div> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/y3_7768c.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Hội đồng ghép tim BV Trung ương Huế nhận Giải thưởng Nhân tài Đất Việt.</span></div><p> Ghép tim từ người cho chết não đến người bị bệnh tim cần được ghép tim phải đảm bảo các yêu cầu: đánh giá chức năng các cơ quan; đánh giá tương hợp miễn dịch và phát hiện nguy cơ tiềm ẩn có thể xảy ra trong và sau khi ghép tim để từ đó có phương thức điều trị thích hợp. Có tới 30 xét nghiệm cận lâm sàng trung và cao cấp tiến hành cho cả người cho tim chết não và người sẽ nhận ghép tim tại hệ thống labo của bệnh viện.</p><p> ---------------------</p><p> <span style="FONT-WEIGHT: bold">* Giải thưởng Nhân tài đất Việt Lĩnh vực Công nghệ thông tin.</span></p><p> <span style="FONT-STYLE: italic">Hệ thống sản phẩm đã ứng dụng thực tế:</span></p><p> <span style="FONT-STYLE: italic">Giải Nhất:</span> Không có.</p><p> <span style="FONT-STYLE: italic">Giải Nhì:</span> Không có</p><p> <span style="FONT-STYLE: italic">Giải Ba:</span> 3 giải, mỗi giải trị giá 30 triệu đồng.</p><div> <span style="FONT-WEIGHT: bold">1.</span> <span style="FONT-STYLE: italic">“Bộ cạc xử lý tín hiệu HDTV”</span> của nhóm HD Việt Nam.</div><div> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/hdtv_13b10.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Nhóm HDTV Việt Nam lên nhận giải.</span></div><p> Đây là bộ cạc xử lý tín hiệu HDTV đầu tiên tại Việt Nam đạt tiêu chuẩn OpenGear. Bộ thiết bị bao gồm 2 sản phẩm là cạc khuếch đại phân chia tín hiệu HD DA và cạc xử lý tín hiệu HD FX1. Nhờ bộ cạc này mà người sử dụng cũng có thể điều chỉnh mức âm thanh hoặc video để tín hiệu của kênh tuân theo mức chuẩn và không phụ thuộc vào chương trình đầu vào.</p><div> <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">2.</span> <span style="FONT-STYLE: italic">“Mã nguồn mở NukeViet”</span> của nhóm tác giả Công ty cổ phần phát triển nguồn mở Việt Nam (VINADES.,JSC).</div><div> &nbsp;</div><div align="center"> <div> <img _fl="" align="middle" alt="NukeViet nhận giải ba Nhân tài đất Việt 2011" src="/shopall/uploads/news/nukeviet-nhantaidatviet2011.jpg" style="margin: 5px; width: 450px; height: 301px;" /></div></div><p> NukeViet là CMS mã nguồn mở đầu tiên của Việt Nam có quá trình phát triển lâu dài nhất, có lượng người sử dụng đông nhất. Hiện NukeViet cũng là một trong những mã nguồn mở chuyên nghiệp đầu tiên của Việt Nam, cơ quan chủ quản của NukeViet là VINADES.,JSC - đơn vị chịu trách nhiệm phát triển NukeViet và triển khai NukeViet thành các ứng dụng cụ thể cho doanh nghiệp.</p><div> <span style="FONT-WEIGHT: bold">3.</span> <span style="FONT-STYLE: italic">“Hệ thống ngôi nhà thông minh homeON”</span> của nhóm Smart home group.</div><div> &nbsp;</div><div align="center"> <div> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/PHN16132_82014.jpg" style="MARGIN: 5px" width="450" /></div></div><p> Sản phẩm là kết quả từ những nghiên cứu miệt mài nhằm xây dựng một ngôi nhà thông minh, một cuộc sống xanh với tiêu chí: An toàn, tiện nghi, sang trọng và tiết kiệm năng lượng, hưởng ứng lời kêu gọi tiết kiệm năng lượng của Chính phủ.&nbsp;</p><p> <strong><span style="FONT-STYLE: italic">* Hệ thống sản phẩm có tiềm năng ứng dụng:</span></strong></p><p> <span style="FONT-STYLE: italic">Giải Nhất: </span>Không có.</p><div> <span style="FONT-STYLE: italic">Giải Nhì:</span> trị giá 50 triệu đồng: <span style="FONT-STYLE: italic">“Dịch vụ Thông tin và Tri thức du lịch ứng dụng cộng nghệ ngữ nghĩa - iCompanion”</span> của nhóm tác giả SIG.</div><div> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/nhi_7eee0.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Nhóm tác giả SIG nhận giải Nhì Nhân tài đất Việt 2011 ở hệ thống sản phẩm có tiềm năng ứng dụng.</span></div><p> ICompanion là hệ thống thông tin đầu tiên ứng dụng công nghệ ngữ nghĩa trong lĩnh vực du lịch - với đặc thù khác biệt là cung cấp các dịch vụ tìm kiếm, gợi ý thông tin “thông minh” hơn, hướng người dùng và kết hợp khai thác các tính năng hiện đại của môi trường di động.</p><p> Đại diện nhóm SIG chia sẻ: “Tinh thần sáng tạo và lòng khát khao muốn được tạo ra các sản phẩm mới có khả năng ứng dụng cao trong thực tiễn luôn có trong lòng của những người trẻ Việt Nam. Cảm ơn ban tổ chức và những nhà tài trợ đã giúp chúng tôi có một sân chơi thú vị để khuyến khích và chắp cánh thực hiện ước mơ của mình. Xin cảm ơn trường ĐH Bách Khoa đã tạo ra một môi trường nghiên cứu và sáng tạo, gắn kết 5 thành viên trong nhóm.”</p><p> <span style="FONT-STYLE: italic">Giải Ba:</span> 2 giải, mỗi giải trị giá 30 triệu đồng.</p><div> <span style="FONT-WEIGHT: bold">1. </span><span style="FONT-STYLE: italic">“Bộ điều khiển IPNET”</span> của nhóm IPNET</div><div> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/PHN16149_ed58d.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Nhà báo Phạm Huy Hoàn, Trưởng Ban Tổ chức Giải thưởng NTĐV, Tổng Biên tập báo điện tử Dân trí và ông Tạ Hữu Thanh - Phó TGĐ Jetstar Pacific trao giải cho nhóm IPNET.</span></div><p> Bằng cách sử dụng kiến thức thiên văn học để tính giờ mặt trời lặn và mọc tại vị trí cần chiếu sáng được sáng định bởi kinh độ, vĩ độ cao độ, hàng ngày sản phẩm sẽ tính lại thời gian cần bật/tắt đèn cho phù hợp với giờ mặt trời lặn/mọc.</p><div> <span style="FONT-WEIGHT: bold">2.</span> <span style="FONT-STYLE: italic">“Hệ thống lập kế hoạch xạ trị ung thư quản lý thông tin bệnh nhân trên web - LYNX”</span> của nhóm LYNX.</div><div> &nbsp;</div><div align="center"> <div> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/3tiem-nang_32fee.jpg" style="MARGIN: 5px" width="450" /></div></div><p> Đây là loại phần mềm hoàn toàn mới ở Việt Nam, là hệ thống lập kế hoạch và quản lý thông tin của bệnh nhân ung thư qua Internet (LYNX) dựa vào nền tảng Silverlight của Microsoft và kiến thức chuyên ngành Vật lý y học. LYNX giúp ích cho các nhà khoa học, bác sĩ, kỹ sư vật lý, bệnh nhân và mọi thành viên trong việc quản lý và theo dõi hệ thống xạ trị ung thư một cách tổng thể. LYNX có thể được sử dụng thông qua các thiết bị như máy tính cá nhân, máy tính bảng… và các trình duyệt Internet Explorer, Firefox, Chrome…</p><div> Chương trình trao giải đã được truyền hình trực tiếp trên VTV2 - Đài Truyền hình Việt Nam và tường thuật trực&nbsp;tuyến trên báo điện tử Dân trí từ 20h tối 20/11/2011.</div><div> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/NVH0545_c898e.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/NVH0560_c995c.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/PHN16199_36a5c.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> &nbsp;</div><div align="center"> <div align="center"> <table border="1" cellpadding="0" cellspacing="0" width="90%"> <tbody> <tr> <td> <div> <span style="FONT-WEIGHT: bold"><span style="FONT-WEIGHT: normal; FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Khởi xướng từ năm 2005, Giải thưởng Nhân tài Đất Việt đã phát hiện và tôn vinh nhiều tài năng trong lĩnh vực CNTT-TT, Khoa học tự nhiên và Y dược, trở thành một sân chơi bổ ích cho những người yêu thích CNTT. Mỗi năm, Giải thưởng ngày càng thu hút số lượng tác giả và sản phẩm tham gia đông đảo và nhận được sự quan tâm sâu sắc của lãnh đạo Đảng, Nhà nước cũng như công chúng.</span></span></div> <div> <span style="FONT-WEIGHT: bold">&nbsp;</span></div> <div> <span style="FONT-WEIGHT: bold"><span style="FONT-WEIGHT: normal; FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Đối tượng tham gia Giải thưởng trong lĩnh vực CNTT là những người Việt Nam ở mọi lứa tuổi, đang sinh sống trong cũng như ngoài nước. Năm 2006, Giải thưởng có sự tham gia của thí sinh đến từ 8 nước trên thế giới và 40 tỉnh thành của Việt Nam. Từ năm 2009, Giải thưởng được mở rộng sang lĩnh vực Khoa học tự nhiên, và năm 2010 là lĩnh vực Y dược, vinh danh những nhà khoa học trong các lĩnh vực này.</span>&nbsp;</span></div> <div> <span style="FONT-WEIGHT: bold">&nbsp;</span></div> </td> </tr> </tbody> </table> </div></div>', 'http://dantri.com.vn/c119/s119-539911/nhan-tai-dat-viet-chap-canh-khat-khao-sang-tao.htm', 2, 0, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv3_vi_news_bodytext`
--

CREATE TABLE IF NOT EXISTS `nv3_vi_news_bodytext` (
  `id` int(11) unsigned NOT NULL,
  `bodytext` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nv3_vi_news_bodytext`
--

INSERT INTO `nv3_vi_news_bodytext` (`id`, `bodytext`) VALUES
(1, 'Để chuyên nghiệp hóa việc phát hành mã nguồn mở NukeViet, Ban quản trị NukeViet quyết định thành lập doanh nghiệp chuyên quản NukeViet mang tên Công ty cổ phần Phát triển nguồn mở Việt Nam (Viết tắt là VINADES.,JSC), chính thức ra mắt vào ngày 25-2-2010 (trụ sở tại Hà Nội) nhằm phát triển, phổ biến hệ thống NukeViet tại Việt Nam. Theo ông Nguyễn Anh Tú, Chủ tịch HĐQT VINADES, công ty sẽ phát triển bộ mã nguồn NukeViet nhất quán theo con đường mã nguồn mở đã chọn, chuyên nghiệp và quy mô hơn bao giờ hết. Đặc biệt là hoàn toàn miễn phí đúng tinh thần mã nguồn mở quốc tế. NukeViet là một hệ quản trị nội dung mã nguồn mở (Opensource Content Management System) thuần Việt từ nền tảng PHP-Nuke và cơ sở dữ liệu MySQL. Người sử dụng thường gọi NukeViet là portal vì nó có khả năng tích hợp nhiều ứng dụng trên nền web, cho phép người sử dụng có thể dễ dàng xuất bản và quản trị các nội dung của họ lên internet hoặc intranet. NukeViet cung cấp nhiều dịch vụ và ứng dụng nhờ khả năng tăng cường tính năng thêm các module, block... tạo sự dễ dàng cài đặt, quản lý, ngay cả với những người mới tiếp cận với website. Người dùng có thể tìm hiểu thêm thông tin và tải về sản phẩm tại địa chỉ http://nukeviet.vn Thông tin ra mắt công ty VINADES có thể tìm thấy trên trang 7 báo Hà Nội Mới ra ngày 25/02/2010 (http://hanoimoi.com.vn/newsdetail/Cong_nghe/309750/ra-mat-cong-ty-ma-nguon-mo-dau-tien-tai-viet-nam.htm xem chi tiết), Bản tin tiếng Anh của đài tiếng nói Việt Nam ngày 26/02/2010 (http://english.vovnews.vn/Home/First-opensource-company-starts-operation/20102/112960.vov xem chi tiết); trang 7 báo An ninh Thủ Đô số 2858 ra vào thứ 2 ngày 01/03/2010 và các trang tin tức, báo điện tử khác.'),
(2, 'Câu chuyện của NukeViet và VINADES.,JSC Từ một trăn trở Giữa năm 2009, trước yêu cầu cấp thiết phải đổi mới và làm một cuộc cách mạng cho mã nguồn mở NukeViet, một cuộc thảo luận sôi nổi đã diễn ra với tiêu đề "Lối đi nào để chuyên nghiệp hóa mã nguồn mở NukeViet". Kết quả của cuộc thảo luận này là 55 bài viết với hàng chục ý kiến đóng góp đã được đưa ra. Các giải pháp về tài chính, nhân lực, phương hướng hoạt động được đem ra thảo luận. rockbuilc, Nkd833 đề xuất phương án thành lập doanh nghiệp chuyên quản NukeViet như một giải pháp toàn diện để giải quyết vấn đề chuyên nghiệp hóa NukeViet. Các vấn đề được các thành viên tham gia thảo luận và mổ xẻ thẳng thắn, nhiều ý kiến phản biện trái chiều cũng được đưa ra trên tinh thần xây dựng. Sau 2 tháng thảo luận, Ban Quản Trị đã có dự định... Gặp mặt Tháng 11, Sau khi tham khảo các ý kiến của mọi người trên diễn đàn, Anh Tú đã trực tiếp về Việt Nam. Một cuộc offline được tổ chức chớp nhoáng với sự tham gia của các thành viên chủ chốt tại Hà Nội. Các cuộc tìm hiểu và tiếp xúc được triển khai gấp rút trong giai đoạn này. Một mô hình - một lối đi Hướng đi chuyên nghiệp hóa việc phát triển NukeViet đã được anh Tú chọn lựa: "Thành lập doanh nghiệp chuyên quản NukeViet". Doanh nghiệp chuyên quản NukeViet được thành lập từ chính nhu cầu của cộng đồng nhằm chuyên nghiệp hóa NukeViet, vì vậy mô hình công ty cổ phần được chọn lựa để đáp ứng yêu cầu đó. Chịu trách nhiệm triển khai, laser đã lên phương án đầu tư, mục tiêu, kế hoạch phát triển ngắn và dài hạn. Triển khai thực hiện Tháng 1 năm 2010, việc thành lập đã được xúc tiến. Ngày 25/02/2010, trên các bản tin tiếng Anh và tiếng Việt xuất hiện bản tin "Ra mắt công ty mã nguồn mở đầu tiên tại Việt Nam". Đó là Công ty cổ phần Phát triển nguồn mở Việt Nam (VIET NAM OPEN SOURCE DEVELOPMENT JOINT STOCK COMPANY - VINADES.,JSC). Đây là một vài hình ảnh trong ngày khai trương: Anh Tú phát biểu khai trương VINADES.,JSC Anh Tú phát biểu khai trương VINADES.,JSC http://nukeviet.vn/uploads/spaw2/images/hung-phatbieu.jpg Anh Tú phát biểu khai trương VINADES.,JSC Nguyễn Hùng giới thiệu đôi nét về công ty, mục tiêu và phương hướng hoạt động. http://nukeviet.vn/uploads/spaw2/images/nangly.jpg Cùng nâng ly chúc mừng khai trương. Cùng nâng ly chúc mừng khai trương. ... và lời cảm ơn gửi tới cộng đồng VINADES.,JSC từ khi được thai nghén tới lúc chập chững những bước đi ban đầu đều có sự động viên, ủng hộ và đóng góp lớn nhỏ của cộng đồng NukeViet - Một cộng đồng gắn liền với những ký ức, những kỷ niệm buồn vui và mang trong mỗi thành viên một đam mê, một hoài bão lớn lao. "Lửa thử vàng, gian nan thử sức", mỗi khó khăn trả qua khiến cộng đồng NukeViet lớn dần lên, gắn kết với nhau bằng một sợi dây vô hình không thể chia cắt: đó là niềm đam mê với mã nguồn mở, với công nghệ web. VINADES.,JSC được tạo ra từ cộng đồng và sẽ cố gắng hết sức để hoạt động vì lợi ích của cộng đồng. http://nukeviet.vn/uploads/spaw2/images/anhvp2.jpg Văn phòng làm việc của VINADES.,JSC ở Hà Nội. http://nukeviet.vn/uploads/spaw2/images/anhvp3.jpg Một góc văn phòng nhìn từ trong ra ngoài. NukeViet 3.0 - Cuộc cách mạng của NukeViet Sau nhiều tháng triển khai, NukeViet 3.0 đã được định hình và dự định công bố bản beta trong thời gian gần. NukeViet 3.0 là phiên bản mang tính cách mạng của hệ thống NukeViet vì 100% các dòng code của NukeViet 3.0 đã được viết mới hoàn toàn chứ không sử dụng nền tảng cũ. Việc này đã ngốn rất nhiều thời gian và công sức của đội ngũ lập trình. Đó cũng là lý do vì sao bản 2.0 không được cải tiến nhiều trong thời gian qua. NukeViet 3.0 được xây dựng với mong muốn có một nền tảng ổn định để sau đó có thể đầu tư lâu dài, xây dựng một thư viện ứng dụng phong phú. VINADES.,JSC sẽ song hành cùng cộng đồng NukeViet trong việc hỗ trợ và phát triển NukeViet thành một mã nguồn mở hoạt động ở quy mô chuyên nghiệp. Đây là bước đi đầu tiên trong trong tiến trình chuyên nghiệp hóa này. Các ứng dụng bổ sung sẽ được xây dựng bài bản, chất lượng. Cộng đồng NukeViet sẽ không chỉ là cộng đồng người sử dụng mà sẽ được đầu tư về đào tạo để trở thành một cộng đồng lập trình mạnh. Thông tin chi tiết về dự án phát triển NukeViet 3.0 được cập nhật tại đây: http://nukeviet.vn/phpbb/viewforum.php?f=99 http://nukeviet.vn/phpbb/viewforum.php?f=99'),
(5, 'THÔNGTIN VỀ MÃ NGUỒN MỞ NUKEVIET Giới thiệu chung NukeViet là một hệ quản trị nội dung mã nguồn mở (Opensource Content Management System), người sử dụng thường gọi NukeViet là portal vì nó có khả năng tích hợp nhiều ứng dụng trên nền Web. NukeViet có 2 dòng phiên bản chính: Dòng phiên bản trước năm 2009 (NukeViet 2.0 trở về trước) được Nguyễn Anh Tú- một lưu học sinh người Việt tại Nga - cùng cộng đồng phát triển thành một ứng dụng thuần Việt từ nền tảng PHP-Nuke. Dòng phiên bản NukeViet 3.0 trở về sau (kể từ năm 2010 trở đi) là dòng phiên bản hoàn toàn mới, được xây dựng từ đầu với nhiều tính năng ưu việt. NukeViet được viết bằng ngôn ngữ PHP và chủ yếu sử dụng cơ sở dữ liệu MySQL, cho phép người sử dụng có thể dễ dàng xuất bản &quản trị các nội dung của họ lên Internet hoặc Intranet. NukeViet được sử dụng ở nhiều website, từ những website cá nhân cho tới những hệ thống website doanh nghiệp, nó cung cấp nhiều dịch vụ và ứng dụng nhờ khả năng tăng cường tính năng bằng cách cài thêm các module, block... NukeViet có thể dễ dàng cài đặt, dễ dàng quản lý kể cả với những người mới sử dụng. NukeViet là giải pháp hoàn hảo cho các Website từ cá nhân cho tới các doanh nghiệp. NukeViet là bộ mã nguồn chất lượng cao, được phát hành theo giấy phép mã nguồn mở nên việc sử dụng NukeViet hoàn toàn miễn phí. Với người sử dụng cá nhân, tất cả đều có thể tự tạo cho mình một website chuyên nghiệp mà không mất bất cứ chi phí nào. Với những nhà phát triển Web, sử dụng NukeViet có thể nhanh chóng xây dựng các hệ thống lớn mà việc lập trình không đòi hỏi quá nhiều thời gian vì NukeViet đã xây dựng sẵn hệ thống quản lý ưu việt.   Thông tin chi tiết về NukeViet có thể tìm thấy ở bách khoa toàn thư mở Wikipedia: http://vi.wikipedia.org/wiki/NukeViet http://vi.wikipedia.org/wiki/NukeViet II. Thông tin về diễn đàn NukeViet: Diễn đàn NukeViet hoạt động trên website: http://nukeviet.vn/ http://nukeviet.vn hiện có trên 13.000 thành viên thực gồm học sinh, sinh viên & nhiều thành phần khác thuộc giới trí thức ở trong và ngoài nước. Là một diễn đàn của các nhà quản lý website, rất nhiều thành viên trong diễn đàn NukeViet là cán bộ, lãnh đạo từ đủ mọi lĩnh vực: công nghệ thông tin, xây dựng,văn hóa - xã hội, thể thao, dịch vụ - du lịch... từ cử nhân, bác sĩ, kỹ sư cho đến bộ đội, công an... Nhiều học sinh, sinh viên tham gia diễn đàn NukeViet, đam mê mã nguồn mở và đã thành công với chính công việc mà họ yêu thích.'),
(6, 'THƯ MỜI HỢP TÁC TRONG VIỆC LIÊN KẾT QUẢNG CÁO, CUNG CẤP HOSTING THỬ NGHIỆM PHÁT TRIỂN MÃ NGUỒN MỞ NUKEVIET   Kính gửi: QUÍ KHÁCH VÀ ĐỐI TÁC Lời đầu tiên, Ban giám đốc công ty cổ phần Phát Triển Nguồn Mở Việt Nam (VINADES.,JSC) xin gửi đến Quý đối tác lời chào trân trọng, lời chúc may mắn và thành công. Tiếp đến chúng tôi xin được giới thiệu và ngỏ lời mời hợp tác kinh doanh. VINADES.,JSC ra đời nhằm chuyên nghiệp hóa việc phát hành mã nguồn mở NukeViet. Đồng thời khai thác các dự án từ NukeViet tạo kinh phí phát triển bền vững cho mã nguồn này. NukeViet là hệ quản trị nội dung, là website đa năng đầu tiên của Việt Nam do cộng đồng người Việt phát triển. Có nhiều lợi thế như cộng đồng người sử dụng đông đảo nhất tại Việt Nam hiện nay, sản phẩm thuần Việt, dễ sử dụng, dễ phát triển. Hiện tại VINADES.,JSC đang tiến hành phát triển bộ mã nguồn NukeViet phiên bản 3.0 – một thế hệ CMS hoàn toàn mới với nhiều tính năng ưu việt, được đầu tư bài bản với kinh phí lớn. Với thiện chí hợp tác cùng phát triển VINADES.,JSC xin trân trọng gửi lời mời hợp tác đến Quý đối tác là các công ty cung cấp tên miền - hosting, các doanh nghiệp quan tâm và mong muốn hợp tác cùng VINADES để cùng thực hiện chung các hoạt động kinh doanh nhằm gia tăng giá trị, quảng bá thương hiệu chung cho cả hai bên. Phương thức hợp tác nhưsau: 1.Quảng cáo, trao đổi banner, liên kết website: a. Mô tả hình thức: - Quảng cáo trên website & hệ thống kênh truyền thông của 2 bên. - Quảng cáo trên các phiên bản phát hành của mã nguồn mở NukeViet. b, Lợi ích: - Quảng bá rộng rãi cho đối tượng của 2 bên. - Giảm chi phí quảng bá cho 2 bên. c, Trách nhiệm: - Hai bên sẽ thỏa thuận và đưa quảng cáo của mình vào website của đối tác. Thỏa thuận vị trí, kích thước và trang đặt banner quảng cáo nhằm mang lại hiệu quả cao cho cả hai bên. - Mở forum hỗ trợ người dùng hosting ngay tại diễn đàn NukeViet.VN để quý công ty dễ dàng hỗ trợ người sử dụng cũng như thực hiện các kế hoạch truyền thông của mình tới cộng đồng NukeViet. 2.Hợp tác cung cấp hosting thử nghiệm NukeViet: a. Mô tả hình thức: - Hai bên ký hợp đồng nguyên tắc & thỏa thuận hợp tác trong việc hợp tác phát triển mã nguồn mở NukeViet. Theo đó: + Phía đối tác cung cấp mỗi loại 1 gói hosting đại lý cho VINADES.,JSC để chúng tôi test trong quá trình phát triển mã nguồn mở NukeViet, để đảm bảo NukeViet sẵn sàng tương thích với hosting của quý khách ngay khi ra mắt. + VINADES.,JSC sẽ công báo thông tin chứng nhận host của phía đối tác là phù hợp, tương thích tốt nhất với NukeViet tới cộng đồng những người phát triển và sử dụng NukeViet. b. Lợi ích: - Mở rộng thị trường theo cả hướng đối tượng. - Tiết kiệm chi phí –nâng cao hiệu quả kinh doanh. c. Trách nhiệm: - Bên đối tác cung cấp miễn phí host để VINADES.,JSC thực hiện việc test tương thích mã nguồn NukeViet trên các gói hosting của đối tác. - VINADES.,JSC công bố tới cộng đồng về kết quả chứng nhận chất lượng host của phía đối tác. 3,Hợp tác nhân lực hỗ trợ người sử dụng: a, Mô tả hình thức: - Hai bên sẽ hỗ trợ lẫn nhau trong quá trình giải quyết các yêu cầu của khách hàng. + Bên đối tác gửi các yêu cầu của khách hàng về mã nguồn NukeViet tới VINADES.,JSC + VINADES gửi các yêu cầu của khách hàng có liên quan đến dịch vụ hosting tới phía đối tác. b, Lợi ích: - Giảm thiểu chi phí, nhân lực hỗ trợ khách hàng của cả 2 bên. - Tăng hiệu quả hỗ trợ khách hàng. c, Trách nhiệm: - Khi nhận được yêu cầu hỗ trợ VINADES hoặc bên đối tác cần ưu tiên xử lý nhanh gọn nhằm nâng cao hiệu quả của sự hợp tác song phưong này. 4. Các hình thức khác: Ngoài các hình thức đã đề xuất ở trên, là đơn vị phát hành mã nguồn mở NukeViet chúng tôi có thể phát hành quảng cáo trên giao diện phần mềm, trên các bài viết giới thiệu xuất hiện ngay sau khi cài đặt phần mềm… chúng tôi tin tưởng rằng với lượng phát hành lên đến hàng chục ngàn lượt tải về cho mỗi phiên bản là một cơ hội quảng cáo rất hiệu quả đến cộng đồng Webmaster Việt Nam. Với mong muốn tạo nên cộng đồng phát triển và sử dụng NukeViet rộng lớn đúng như mục tiêu đề ra,chúng tôi luôn linh động trong các hình thức hợp tác nhằm mang lại sự thuận tiện cho đối tác cũng như mục tiêu hợp tác đa phương. Chúng tôi sẽ tiếp nhận các hình thức hợp tác khác mà bên đối tác trình bày hợp lý và hiệu quả, mong nhận được thêm nhiều hình thức hợp tác khác từ đối tác. Phương châm của chúng tôi “Cùng hợp tác để phát triển”. Trân trọng cảm ơn, rất mong được hợp tác cùng quý vị. Thông tin liên hệ: CÔNG TY CỔ PHẦN PHÁT TRIỂN NGUỒN MỞ VIỆT NAM (VINADES.,JSC) Trụ sở chính: Phòng 1805 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội. Điện thoại: +84-4-85872007 Fax: +84-4-35500914 Website: http://www.vinades.vn/ www.vinades.vn – http://www.nukeviet.vn/ www.nukeviet.vn Email: mailto:contact@vinades.vn contact@vinades.vn'),
(7, 'Công ty cổ phần phát triển nguồn mở Việt Nam (VINADES.,JSC) đang thu hút tuyển dụng nhân tài là các lập trình viên PHP và MySQL, Chuyên Viên Đồ Hoạ để làm việc cho công ty, hiện thực hóa ước mơ một nguồn mở chuyên nghiệp cho Việt Nam vươn ra thế giới.Tại VINADES.,JSC bạn sẽ được tham gia các dự án của công ty, tham gia xây dựng và phát triển bộ nhân hệ thống NukeViet, được học hỏi và trau dồi nâng cao kiến thức và kỹ năng cá nhân. 1. Vị trí dự tuyển: Chuyên viên đồ hoạ; Lập trình viên. 2. Mô tả công việc:Với vị trí lập trình viên PHP & MySQL: Viết module trên nền NukeViet, tham gia phát triển hệ thống NukeViet. Nếu là chuyên viên đồ họa, kỹ thuật viên cắt giao diện... bạn có thể đảm nhiệm một trong các công việc sau: + Vẽ và cắt giao diện. + Valid CSS, xHTML. + Ghép giao diện cho hệ thống.3. Yêu cầu: Lập trình viên PHP & MySQL: Thành thạo PHP, MySQL. Biết CSS, XHTML, JavaScript là một ưu thế.Chuyên viên đồ họa: Sử dụng thành thạo một trong các phần mềm Photoshop, illustrator, 3Dmax, coreldraw. Biết CSS, xHTML. + Trình độ tối thiểu cho người làm đồ họa web: Biết vẽ giao diện hoặc cắt PSD ra xHTML & CSS. + Ưu tiên người cắt giao diện đạt chuẩn W3C (Test trên Internet Explorer 7+, FireFox 3+, Chrome 8+, Opera 10+)Chúng tôi ưu tiên các ứng viên có kỹ năng làm việc độc lập, làm việc theo nhóm, có tinh thần trách nhiệm cao, chủ động trong công việc. 4: Quyền lợi: - Lương: thoả thuận, trả qua ATM. - Thưởng theo dự án, các ngày lễ tết. - Hưởng các chế độ khác theo quy định của công ty và pháp luật: Bảo hiểm y tế, bảo hiểm xã hội... 5. Thời gian làm việc: Toàn thời gian cố định hoặc làm online. 6. Hạn nộp hồ sơ: Không hạn chế, vui lòng kiểm tra tại http://vinades.vn/vi/news/Tuyen-dung/ http://vinades.vn/vi/news/Tuyen-dung/ 7. Hồ sơ bao gồm: * Cách thức đăng ký dự tuyển: Làm Hồ sơ xin việc (file mềm) và gửi về hòm thư tuyendung@vinades.vn * Nội dung hồ sơ xin việc file mềm gồm: + Đơn xin việc: Tự biên soạn. + Thông tin ứng viên: Theo mẫu của VINADES.,JSC (dowload tại đây: http://vinades.vn/vi/download/Thong-tin-ung-vien/Mau-ly-lich-ung-vien/ Mẫu lý lịch ứng viên) Chi tiết vui lòng tham khảo tại: http://vinades.vn/vi/news/Tuyen-dung/ http://vinades.vn/vi/news/Tuyen-dung/ Mọi thắc mắc vui lòng liên hệ: Công ty cổ phần phát triển nguồn mở Việt Nam. Địa chỉ: Phòng 1805 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội. - Tel: +84-4-85872007 - Fax: +84-4-35500914 - Email: mailto:contact@vinades.vn contact@vinades.vn - Website: http://www.vinades.vn/ http://www.vinades.vn'),
(8, 'Giảm giá tới 90% giá module, ngày nào cũng là ngày "mua chung" trên webnhanh.vn! Như thông báo trên webnhanh.vn, chương trình "http://webnhanh.vn/vi/thiet-ke-web/detail/Mua-chung-tren-Webnhanhvn-se-giam-gia-90-gia-module-da-cong-bo-245/ mua chung module" nằm trong chính sách chung của webnhanh.vn trong việc hỗ trợ phát triển mã nguồn mở, giúp cho mọi người được hưởng những dịch vụ thiết kế website tốt nhất với chi phí thấp nhất. Tham gia chương trình này, bạn chỉ phải trả số tiền bằng 1/10 giá trị module mà vẫn được sở hữu module với tính năng hấp dẫn mà bạn mong muốn. Cụ thể, các module trong http://webnhanh.vn/vi/nvresources/cat/Modules-1/ kho module của webnhanh.vn đang chờ hoàn thiện sẽ được giảm giá tới 90% nếu khách hàng đăng ký mua chung module. Tuy nhiên sau 2 tháng thực hiện, Ban Quản Trị webnhanh.vn thấy rằng khả năng xuất hiện nhu cầu cùng mua chung 1 sản phẩm và dịch vụ có tính đặc thù như code dành cho web là rất thấp. Chính vì thế webnhanh.vn đã giảm giá đồng loạt các module trên webnhanh.vn để khách hàng có nhu cầu sẽ có nhiều cơ hội được sử dụng các module mà mình mong muốn cung cấp lên website. Đại đa số các module sẽ được giảm giá xuống mức giá siêu rẻ để đảm bảo mọi người đều có khả năng sử dụng. Đặc biệt với các module có mức giá từ 10-20 triệu đồng sẽ giảm giá xuống còn ở mức 1-5 triệu đồng. Giá rẻ hơn, nhiều giao diện hơn cho web Ngoài việc giảm giá http://webnhanh.vn/vi/nvresources/cat/Giao-dien-3/ các giao diện website do VINADES.,JSC thiết kế (từ mức giá 2 triệu đồng xuống còn 300 đến 700 ngàn đồng). Webnhanh.vn cũng sẽ cải thiện kho giao diện của mình bằng cách đưa vào sử dụng các mẫu giao diện của các nhà thiết kế giao diện khác với giá trung bình khoảng 300 ngàn đồng (chi phí chuyển template thành giao diện có thể cài đặt cho website). Khách hàng cũng có thể gửi mẫu giao diện (đã cắt HTML) để chúng tôi thực hiện việc ghép giao diện với mức giá 300-500 ngàn đồng (áp dụng mô hình giá chia sẻ của VINADES.,JSC trong http://vinades.vn/vi/news/San-pham/Thiet-ke-giao-dien-14/ thiết kế giao diện web (*)). Giảm giá các gói web dựng sẵn, nâng cao chất lượng và cấu hình dịch vụ Cơ cấu chất lượng sản phẩm và dịch vụ cũng thay đổi theo hướng nâng cao rõ rệt. Ngoài việc giảm giá các http://webnhanh.vn/vi/nvresources/package/ gói web dựng sẵn, webnhanh.vn đồng thời nâng cao chất lượng các dịch vụ đi kèm của các gói web này. Theo đó ngoài việc kéo dài thời gian bảo hành miễn phí lên 12 tháng, đồng thời webnhanh.vn cũng kéo dài thời gian sử dụng hosting miễn phí lên 12 tháng. Với mức hỗ trợ này, website thiết kế trên webnhanh.vn đảm bảo chất lượng cao và mức giá còn rẻ hơn cả các nhà cung cấp dịch vụ web giá rẻ. Đây là cơ hội rất lớn cho http://webnhanh.vn/vi/dealers/ các đại lý của webnhanh.vn để tạo nên lợi thế cạnh tranh về chất lượng và giá cả dịch vụ. (*) "Giá chia sẻ" là mức giá tiết kiệm cho khách hàng, nếu mua với mức giá này khách hàng sẽ tiết kiệm chi phí thiết kế giao diện một cách tối đa mà vẫn được toàn quyền sử dụng mẫu giao diện đã đặt hàng. Webnhanh.vn sẽ giữ lại mẫu giao diện này và đưa vào thư viện giao diện để cung cấp cho các khách hàng khác. Mô hình "Giá chia sẻ" sử dụng cho các khách hàng không quá khắt khe về việc đảm bảo tính duy nhất của mẫu giao diện đồng thời giúp webnhanh.vn làm phong phú thêm kho giao diện của mình.Chú ý: Ngoài việc cung cấp các gói web dựng sẵn với chi phí thấp phục vụ người dùng phổ thông, http://vinades.vn VINADES.,JSC vẫn duy trì dịch vụ thiết kế giao diện riêng và thiết kế website theo yêu cầu để phục vụ những khách hàng có nhu cầu riêng biệt và cao cấp hơn, khách hàng có nhu cầu vui lòng truy cập http://vinades.vn http://vinades.vn hoặc liên hệ nhân viên kinh doanh của VINADES.,JSC để được tư vấn và báo giá dịch vụ. Như vậy, cùng với việc tham gia cung cấp hosting chuyên nghiệp dành cho NukeViet của các nhà cung cấp hosting trong và ngoài nước như http://vinades.vn/vi/news/Doi-tac/VINADES-JSC-va-DIGISTAR-hop-tac-trong-viec-phat-trien-ma-nguon-mo-NukeViet-17/ DIGISTAR, http://nukeviet.vn/vi/news/the-gioi-cong-nghe/TMDHosting-cung-cap-dich-vu-hosting-chuyen-NukeViet-64/ TMDHosting hay http://nukeviet.vn/vi/news/the-gioi-cong-nghe/SiteGround-cung-cap-dich-vu-hosting-chuyen-NukeViet-59/ SiteGround, http://nukeviet.vn/vi/news/the-gioi-cong-nghe/website-dau-tien-thiet-ke-website-va-ban-code-chuyen-nghiep-danh-cho-NukeViet-67/ Webnhanh.vn là website đầu tiên có dịch vụ thiết kế website và bán code chuyên nghiệp dành riêng cho NukeViet. Sự chuyên nghiệp hóa trong các khâu từ phát triển đến cung cấp dịch vụ cho mã nguồn mở NukeViet sẽ mở ra một cơ hội phát triển mới cho người sử dụng web ở Việt Nam.'),
(9, ' Nhắc đến các hệ thống quản trị nội dung (Content Management System – CMS) để quản lý các cổng thông tin điện tử trên Internet, không ít người sẽ nhắc đến các bộ công cụ như Joomla hay Wordpress. Tuy nhiên, có một sản phẩm hoàn toàn thuần Việt, do người Việt xây dựng không hề thua kém những sản phẩm trên cả về tính năng lẫn khả năng ứng dụng, đó là NukeViet của nhóm tác giả thuộc Công ty Cổ phần phát triển nguồn mở Việt Nam (VINADES). Với NukeViet, người dùng tại Việt Nam sẽ vượt qua các trở ngại về rào cản ngôn ngữ, có thể xây dựng và vận hành các trang web một cách dễ dàng nhất, đồng thời nhận được sự hỗ trợ của cộng đồng người dùng và các nhà phát triển cũng chính là người Việt Nam. Mới đây nhất, Ban giám khảo Giải thưởng Nhân Tài Đất Việt 2011 đã quyết định đưa NukeViet vào danh sách các sản phẩm đã vượt qua vòng sơ khảo để tranh tài tại vòng chung khảo của Giải Thưởng Nhân Tài Đất Việt 2011 diễn ra vào ngày 17-18/11 tới đây. Những ý tưởng giúp hình thành nên sản phẩm “thuần Việt” Theo chia sẻ của đại diện nhóm tác giả, năm 2004, anh Nguyễn Anh Tú, một lưu học sinh người Việt tại Nga với ý tưởng xây dựng một website để kết nối cộng đồng sinh viên du học đã sử dụng bộ CMS mã nguồn mở PHP-Nuke để thực hiện. Sau đó, anh Nguyễn Anh Tú đã phát triển và cải tiến bộ mã nguồn mở PHP-Nuke để chia sẻ cho các thành viên có nhu cầu xây dựng website một cách đơn giản và thuận tiện hơn. Được sự đón nhận của đông đảo người sử dụng, bộ mã nguồn đã liên tục được phát triển và trở thành một ứng dụng thuần Việt với tên gọi NukeViet. NukeViet đã nhanh chóng trở nên phổ biến trong giới các nhà xây dựng và phát triển website tại Việt Nam. http://dantri4.vcmedia.vn/tI0YUx18mEaF5kMsGHJ/Image/2011/11/NukeViet-1_4b905.jpg Giao diện một website tin tức được xây dựng bằng NukeViet Trong quá trình phát triển NukeViet, có một điều đội ngũ kỹ thuật luôn trăn trở là làm sao để có thể nâng cao tỉ lệ đóng góp của người Việt vào trong mã nguồn sản phẩm. Chính vì ý thức được điều này nên mức độ thuần Việt của sản phẩm ngày càng được nâng cao trong từng phiên bản phát hành. Cho đến phiên bản 3.0 (phát hành tháng 10 năm 2010) thì NukeViet đã thực sự trở thành một sản phẩm mã nguồn mở riêng của Việt Nam với 100% dòng code được viết mới. Kể từ đây, cộng đồng mã nguồn mở Việt Nam đã có riêng một bộ mã nguồn thuần Việt, tự hào sánh bước ngang vai cùng các cộng đồng mã nguồn mở khác trên thế giới. NukeViet ra đời đã giúp cộng đồng mạng Việt Nam giải quyết nhu cầu và mong muốn có một bộ mã nguồn mở của riêng Việt Nam, giúp phát triển hệ thống website của người Việt một cách an toàn nhất, đảm bảo nhất. http://dantri4.vcmedia.vn/tI0YUx18mEaF5kMsGHJ/Image/2011/11/NukeViet-2_600d0.jpg Một website bán hành trực tuyến xây dựng bằng NukeViet NukeViet là CMS mã nguồn mở đầu tiên của Việt Nam có quá trình phát triển lâu dài nhất, có lượng người sử dụng đông nhất. Hiện NukeViet cũng là một trong những mã nguồn mở chuyên nghiệp đầu tiên của Việt Nam, cơ quan chủ quản của NukeViet là VINADES.,JSC - đơn vị chịu trách nhiệm phát triển NukeViet và triển khai NukeViet thành các ứng dụng cụ thể cho doanh nghiệp. Khả năng ứng dụng và những ưu điểm của NukeViet Kể từ khi ra đời và trải qua một quá trình dài phát triển, NukeViet hiện được sử dụng ở nhiều website, từ những website cá nhân cho tới những hệ thống website doanh nghiệp. NukeViet cung cấp nhiều dịch vụ và ứng dụng nhờ khả năng tăng cường tính năng bằng cách cài thêm các module, block... NukeViet chủ yếu được sử dụng làm trang tin tức nhờ module News tích hợp sẵn trong NukeViet được viết rất công phu, nó lại đặc biệt phù hợp với yêu cầu và đặc điểm sử dụng cho hệ thống tin tức. NukeViet có thể dễ dàng cài đặt, dễ dàng quản lý kể cả với những người mới sử dụng do đó thường được những đối tượng người dùng không chuyên ưa thích. http://dantri4.vcmedia.vn/tI0YUx18mEaF5kMsGHJ/Image/2011/11/NukeViet-4_416a1.jpg Website phòng Giáo dục và Đào tạo Lạng Giang được xây dựng trên mã nguồn NukeViet NukeViet có mã nguồn mở do đó việc sử dụng NukeViet là hoàn toàn miễn phí cho tất cả mọi người trên thế giới. Từ phiên bản 2.0 trở về trước, đối tượng người dùng chủ yếu của NukeViet là người Việt vì những đặc điểm của bản thân mã nguồn (có nguồn gốc từ PHP-Nuke) và vì chính sách của nhóm phát triển là: "hệ thống Portal dành cho người Việt". Tuy nhiên, kể từ phiên bản 3.0, đội ngũ phát triển NukeViet định hướng đưa NukeViet ra cộng đồng quốc tế với hỗ trợ thêm nhiều ngôn ngữ. Trên thực tế, với những ưu điểm vượt trội của mình, NukeViet 3 đã được ứng dụng ở hàng ngàn website khác nhau. Đặc biệt, không ít các cơ quan, tổ chức của Nhà nước đã tin tưởng sử dụng mã nguồn NukeViet để xây dựng cổng thông tin điện tử của mình, như Cổng thông tin tích hợp 1 cửa cho Phòng giáo dục Lạng Giang, cổng thông tin 2 chiều - Công ty cổ phần đầu tư tài chính công đoàn dầu khí Việt Nam, Hệ thống tra cứu điểm, tra cứu văn bằng - Cổng thông tin Sở GD&ĐT Quảng Ninh, Website viện y học cổ truyền Quân Đội… Tất cả các dự án trên đều được khách hàng đánh giá rất cao về tính ứng dụng, hiệu quả do tiết kiệm chi phí và đáp ứng rất tốt nhu cầu sử dụng của các đơn vị. Hướng phát triển trong tương lai và những kỳ vọng trước mắt Với ý nghĩa là phần mềm quản lý website (chiếm tới 90% các giao tiếp và tương tác trực tiếp với người sử dụng trên môi trường internet), khi phát triển, NukeViet sẽ trở thành một công cụ truyền thông rất mạnh, có thể đem lại những hiệu quả to lớn khác. Nhóm phát triển sẽ phát huy lợi thế này để phát triển sản phẩm. Nhóm phát triển cũng muốn tăng cường các khả năng liên kết, chia sẻ và tích hợp dữ liệu giữa các hệ thống khác nhau nhằm tạo nên một mạng lưới lớn, rộng khắp và hoàn chỉnh, có thể huy động sức mạnh tổng lực, thực hiện các nhiệm vụ xã hội khác trên mã nguồn NukeViet của mình. NukeViet khi được kết hợp với xu thế phát triển của điện toán đám mây sẽ trở thành một nền tảng giúp phát triển nhiều hệ thống dịch vụ trực tuyến có thể thu hút nhiều người dùng với giá trị thương mại cao. http://dantri4.vcmedia.vn/tI0YUx18mEaF5kMsGHJ/Image/2011/11/NukeViet-3_46e98.jpg Giao diện soạn thảo nội dung trên NukeViet Với việc gửi sản phẩm dự thi tại Giải thưởng Nhân Tài Đất Việt 2011, nhóm tác giả của NukeViet hy vọng mã nguồn mở của mình sẽ đạt vị trí cao tại Giải thưởng, như một cách thức để quảng bá rộng rãi sản phẩm, được thừa nhận và hỗ trợ sử dụng trong các lĩnh vực mà nó có thể phục vụ tốt và đem lại hiệu quả kinh tế, xã hội cao như: lĩnh vực giáo dục, lĩnh vực hành chính… để các bộ-ban-ngành, các cơ quan hành chính, chính quyền địa phương nhìn thấy giá trị và hiệu quả to lớn của mã nguồn mở NukeViet để triển khai NukeViet phục vụ các cơ quan này. NukeViet sẽ giúp hiện thực hóa cải cách hành chính và góp phần đẩy nhanh thủ tục một cửa một cách tiết kiệm mà vẫn đạt hiệu quả cao nhất. Ngoài ra, uy tính của Giải thưởng, nhóm tác giả NukeViet hy vọng sẽ đem NukeViet đến nhiều người hơn, để cả xã hội được sử dụng thành quả lớn lao của bộ mã nguồn mở được coi là biểu tượng và đại diện tiểu biểu cho sự phát triển và thành công của mã nguồn mở Việt Nam. Không chỉ thế, mở ra cơ hội tiếp cận và học hỏi công nghệ cho hàng ngàn học sinh, sinh viên, qua đó có được các kiến thức đầy đủ về công nghệ web, về internet và vô số các kỹ năng làm việc trên máy tính khác mà có thể do vô tình hay cố ý, trong quá trình tìm hiểu, học tập và vận hành NukeViet mà họ đã có được. Với những ứng dụng rộng rãi mà NukeViet đã có được kể từ khi ra mắt và và trải qua thời gian dài phát triển, Hội đồng Giám khảo Giải Thưởng Nhân Tài Đất Việt đã đánh giá rất cao những ưu điểm và thế mạnh của NukeViet để đưa sản phẩm vào danh sách 17 sản phẩm sẽ tranh tài tại vòng Chung khảo của Giải Thưởng Nhân Tài Đất Việt 2011 diễn ra vào ngày 17-18/11 tới đây. Bạn đọc có thể tìm hiểu thêm về NukeViet tại http://nukeviet.vn/vi/news/Bao-chi-viet/ http://nukeviet.vn/.'),
(10, 'Cả hội trường như vỡ òa, rộn tiếng vỗ tay, tiếng cười nói chúc mừng các nhà khoa học, các nhóm tác giả đoạt Giải thưởng Nhân tài Đất Việt năm 2011. Năm thứ 7 liên tiếp, Giải thưởng đã phát hiện và tôn vinh nhiều tài năng của đất nước. http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/01_b7d3f.jpg Sân khấu trước lễ trao giải. Cơ cấu Giải thưởng của Nhân tài Đất Việt 2011 trong lĩnh vực CNTT bao gồm 2 hệ thống giải dành cho “Sản phẩm có tiềm năng ứng dụng” và “Sản phẩm đã ứng dụng rộng rãi trong thực tế”. Mỗi hệ thống giải sẽ có 1 giải Nhất, 1 giải Nhì và 1 giải Ba với trị giá giải thưởng tương đương là 100 triệu đồng, 50 triệu đồng và 30 triệu đồng cùng phần thưởng của các đơn vị tài trợ. http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/03_f19bd.jpg Nhiều tác giả, nhóm tác giả đến lễ trao giải từ rất sớm. Giải thưởng Nhân tài Đất Việt 2011 trong lĩnh vực Khoa học Tự nhiên được gọi chính thức là Giải thưởng Khoa học Tự nhiên Việt Nam sẽ có tối đa 6 giải, trị giá 100 triệu đồng/giải dành cho các lĩnh vực: Toán học, Cơ học, Vật lý, Hoá học, Các khoa học về sự sống, Các khoa học về trái đất (gồm cả biển) và môi trường, và các lĩnh vực khoa học liên ngành hoặc đa ngành của hai hoặc nhiều ngành nói trên. Viện Khoa học và Công nghệ Việt Nam thành lập Hội đồng giám khảo gồm các nhà khoa học tự nhiên hàng đầu trong nước để thực hiện việc đánh giá và trao giải. Sau thành công của việc trao Giải thưởng Nhân tài Đất Việt trong lĩnh vực Y dược năm 2010, Ban Tổ chức tiếp tục tìm kiếm những chủ nhân xứng đáng cho Giải thưởng này trong năm 2011. http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/07_78b85.jpg Nguyên Tổng Bí thư BCH TW Đảng Cộng sản Việt Nam Lê Khả Phiêu tới dự Lễ trao giải. 45 phút trước lễ trao giải, không khí tại Cung Văn hóa Hữu nghị Việt - Xô đã trở nên nhộn nhịp. Sảnh phía trước Cung gần như chật kín. Rất đông bạn trẻ yêu thích công nghệ thông tin, sinh viên các trường đại học đã đổ về đây, cùng với đó là những bó hoa tươi tắn sẽ được dành cho các tác giả, nhóm tác giả đoạt giải. http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/09_aef87.jpg Phó Chủ tịch nước CHXHCN Việt Nam Nguyễn Thị Doan. Các vị khách quý cũng đến từ rất sớm. Tới tham dự lễ trao giải năm nay có ông Lê Khả Phiêu, nguyên Tổng Bí thư BCH TW Đảng Cộng sản Việt Nam; bà Nguyễn Thị Doan, Phó Chủ tịch nước CHXHCN Việt Nam; ông Vũ Oanh, nguyên Ủy viên Bộ Chính trị, nguyên Chủ tịch Hội Khuyến học Việt Nam; ông Nguyễn Bắc Son, Bộ trưởng Bộ Thông tin và Truyền thông; ông Đặng Ngọc Tùng, Chủ tịch Tổng Liên đoàn lao động Việt Nam; ông Phạm Văn Linh, Phó trưởng ban Tuyên giáo Trung ương; ông Đỗ Trung Tá, Phái viên của Thủ tướng Chính phủ về CNTT, Chủ tịch Hội đồng Khoa học công nghệ quốc gia; ông Nguyễn Quốc Triệu, nguyên Bộ trưởng Bộ Y tế, Trưởng Ban Bảo vệ Sức khỏe TƯ; bà Cù Thị Hậu, Chủ tịch Hội người cao tuổi Việt Nam; ông Lê Doãn Hợp, nguyên Bộ trưởng Bộ Thông tin Truyền thông, Chủ tịch Hội thông tin truyền thông số… http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/08_ba46c.jpg Bộ trưởng Bộ Thông tin và Truyền thông Nguyễn Bắc Son. http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/06_29592.jpg Giáo sư - Viện sỹ Nguyễn Văn Hiệu. http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/04_051f2.jpg Nguyên Bộ trưởng Bộ Y tế Nguyễn Quốc Triệu. http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/05_c7ea4.jpg Ông Vũ Oanh, nguyên Ủy viên Bộ Chính trị, nguyên Chủ tịch Hội Khuyến học Việt Nam. Do tuổi cao, sức yếu hoặc bận công tác không đến tham dự lễ trao giải nhưng Đại tướng Võ Nguyên Giáp và Chủ tịch nước Trương Tấn Sang cũng gửi lẵng hoa đến chúc mừng lễ trao giải. Đúng 20h, Lễ trao giải bắt đầu với bài hát “Nhân tài Đất Việt” do ca sỹ Thái Thùy Linh cùng ca sĩ nhí và nhóm múa biểu diễn. Các nhóm tác giả tham dự Giải thưởng năm 2011 và những tác giả của các năm trước từ từ bước ra sân khấu trong tiếng vỗ tay tán dương của khán giả. http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/12_74abf.jpg http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/PHN15999_3e629.jpg Tiết mục mở màn Lễ trao giải. Trước Lễ trao giải Giải thưởng Nhân tài Đất Việt năm 2011, Đại tướng Võ Nguyên Giáp, Chủ tịch danh dự Hội Khuyến học Việt Nam, đã gửi thư chúc mừng, khích lệ Ban tổ chức Giải thưởng cũng như các nhà khoa học, các tác giả tham dự. Hà Nội, ngày 16 tháng 11 năm 2011 Giải thưởng “Nhân tài đất Việt” do Hội Khuyến học Việt Nam khởi xướng đã bước vào năm thứ bảy (2005 - 2011) với ba lĩnh vực: Công nghệ thông tin, Khoa học tự nhiên và Y dược. http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/thuDaituong1_767f4.jpg Thư của Đại tướng Võ Nguyên Giáp gửi BTC Giải thưởng Nhân tài đất Việt. Tôi gửi lời chúc mừng các nhà khoa học và các thí sinh được nhận giải thưởng “Nhân tài đất Việt” năm nay. Mong rằng, các sản phẩm và các công trình nghiên cứu được trao giải sẽ được tiếp tục hoàn thiện và được ứng dụng rộng rãi trong đời sống, đem lại hiệu quả kinh tế và xã hội thiết thực. Nhân ngày “Nhà giáo Việt Nam”, chúc Hội Khuyến học Việt nam, chúc các thầy giáo và cô giáo, với tâm huyết và trí tuệ của mình, sẽ đóng góp xứng đáng vào công cuộc đổi mới căn bản và toàn diện nền giáo dục nước nhà, để cho nền giáo dục Việt Nam thực sự là cội nguồn của nguyên khí quốc gia, đảm bảo cho mọi nhân cách và tài năng đất Việt được vun đắp và phát huy vì sự trường tồn, sự phát triển tiến bộ và bền vững của đất nước trong thời đại toàn cầu hóa và hội nhập quốc tế. Chào thân ái, Chủ tịch danh dự Hội Khuyến học Việt Nam Đại tướng Võ Nguyên Giáp Phát biểu khai mạc Lễ trao giải, Nhà báo Phạm Huy Hoàn, TBT báo điện tử Dân trí, Trưởng Ban tổ chức, bày tỏ lời cám ơn chân thành về những tình cảm cao đẹp và sự quan tâm chăm sóc của Đại tướng Võ Nguyên Giáp và Chủ tịch nước Trương Tấn Sang đã và đang dành cho Nhân tài Đất Việt. Nhà báo Phạm Huy Hoàn nhấn mạnh, Giải thưởng Nhân tài Đất Việt suốt 7 năm qua đều nhận được sự quan tâm của các vị lãnh đạo Đảng, Nhà nước và của toàn xã hội. Tại Lễ trao giải, Ban tổ chức luôn có vinh dự được đón tiếp các vị lãnh đạo Đảng và Nhà nước đến dự và trực tiếp trao Giải thưởng. http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/15_4670c.jpg Trưởng Ban tổ chức Phạm Huy Hoàn phát biểu khai mạc buổi lễ. Năm 2011, Giải thưởng có 3 lĩnh vực được xét trao giải là CNTT, Khoa học tự nhiên và Y dược. Lĩnh vực CNTT đã đón nhận 204 sản phẩm tham dự từ mọi miền đất nước và cả nước ngoài như thí sinh Nguyễn Thái Bình từ bang California - Hoa Kỳ và một thí sinh ở Pháp cũng đăng ký tham gia. “Cùng với lĩnh vực CNTT, năm nay, Hội đồng khoa học của Viện khoa học và công nghệ Việt Nam và Hội đồng khoa học - Bộ Y tế tiếp tục giới thiệu những nhà khoa học xuất sắc, có công trình nghiên cứu đem lại nhiều lợi ích cho xã hội trong lĩnh vực khoa học tự nhiên và lĩnh vực y dược. Đó là những bác sĩ tài năng, những nhà khoa học mẫn tuệ, những người đang ngày đêm thầm lặng cống hiến trí tuệ sáng tạo của mình cho xã hội trong công cuộc xây dựng đất nước.” - nhà báo Phạm Huy Hoàn nói. http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/14_6e18f.jpg Nhà báo Phạm Huy Hoàn, TBT báo điện tử Dân trí, Trưởng BTC Giải thưởng và ông Phan Hoàng Đức, Phó TGĐ Tập đoàn VNPT nhận lẵng hoa chúc mừng của Đại tướng Võ Nguyên Giáp và Chủ tịch nước Trương Tấn Sang. Cũng theo Trưởng Ban tổ chức Phạm Huy Hoàn, đến nay, vị Chủ tịch danh dự đầu tiên của Hội Khuyến học Việt Nam, Đại tướng Võ Nguyên Giáp, đã bước qua tuổi 100 nhưng vẫn luôn dõi theo và động viên từng bước phát triển của Giải thưởng Nhân tài Đất Việt. Đại tướng luôn quan tâm chăm sóc Giải thưởng ngay từ khi Giải thưởng mới ra đời cách đây 7 năm. Trước lễ trao giải, Đại tướng Võ Nguyên Giáp đã gửi thư chúc mừng, động viên Ban tổ chức. Trong thư, Đại tướng viết: “Mong rằng, các sản phẩm và các công trình nghiên cứu được trao giải sẽ được tiếp tục hoàn thiện và được ứng dụng rộng rãi trong đời sống, đem lại hiệu quả kinh tế và xã hội thiết thực. Sau phần khai mạc, cả hội trường hồi hội chờ đợi phút vinh danh các nhà khoa học và các tác giả, nhóm tác giả đoạt giải. * Giải thưởng Khoa học Tự nhiên Việt Nam thuộc về 2 nhà khoa học GS.TS Trần Đức Thiệp và GS.TS Nguyễn Văn Đỗ - Viện Vật lý, Viện Khoa học công nghệ Việt Nam với công trình “Nghiên cứu cấu trúc hạt nhân và các phản ứng hạt nhân”. http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/khtn_d4aae.jpg Hai nhà khoa học đã tiến hành thành công các nghiên cứu về phản ứng hạt nhân với nơtron, phản ứng quang hạt nhân, quang phân hạch và các phản ứng hạt nhân khác có cơ chế phức tạp trên các máy gia tốc như máy phát nơtron, Microtron và các máy gia tốc thẳng của Việt Nam và Quốc tế. Các nghiên cứu này đã góp phần làm sáng tỏ cấu trúc hạt nhân và cơ chế phản ứng hạt nhân, đồng thời cung cấp nhiều số liệu hạt nhân mới có giá trị cho Kho tàng số liệu hạt nhân. GS.TS Trần Đức Thiệp và GS.TS Nguyễn Văn Đỗ đã khai thác hiệu quả hai máy gia tốc đầu tiên của Việt Nam là máy phát nơtron NA-3-C và Microtron MT-17 trong nghiên cứu cơ bản, nghiên cứu ứng dụng và đào tạo nhân lực. Trên cơ sở các thiết bị này, hai nhà khoa học đã tiến hành thành công những nghiên cứu cơ bản thực nghiệm đầu tiên về phản ứng hạt nhân ở Việt Nam; nghiên cứu và phát triển các phương pháp phân tích hạt nhân hiện đại và áp dụng thành công ở Việt Nam. Bà Nguyễn Thị Doan, Phó Chủ tịch nước CHXHCNVN và Giáo sư - Viện sỹ Nguyễn Văn Hiệu trao giải thưởng cho 2 nhà khoa học. http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/khtn2_e2865.jpg Phó Chủ tịch nước CHXHCNVN Nguyễn Thị Doan và Giáo sư - Viện sỹ Nguyễn Văn Hiệu trao giải thưởng cho 2 nhà khoa học GS.TS Trần Đức Thiệp và GS.TS Nguyễn Văn Đỗ. GS.VS Nguyễn Văn Hiệu chia sẻ: “Cách đây không lâu, Chính phủ đã ký quyết định xây dựng nhà máy điện hạt nhân trong điều kiện đất nước còn nhỏ bé, nghèo khó và vì thế việc đào tạo nhân lực là nhiệm vụ số 1 hiện nay. Rất may, Việt Nam có 2 nhà khoa học cực kỳ tâm huyết và nổi tiếng trong cả nước cũng như trên thế giới. Hội đồng khoa học chúng tôi muốn xướng tên 2 nhà khoa học này để Chính phủ huy động cùng phát triển xây dựng nhà máy điện hạt nhân.” GS.VS Hiệu nhấn mạnh, mặc dù điều kiện làm việc của 2 nhà khoa học không được quan tâm, làm việc trên những máy móc cũ kỹ được mua từ năm 1992 nhưng 2 ông vẫn xay mê cống hiến hết mình cho lĩnh Khoa học tự nhiên Việt Nam. * Giải thưởng Nhân tài Đất Việt trong lĩnh vực Y Dược: 2 giải 1. Nhóm nghiên cứu của Bệnh viện Hữu nghị Việt - Đức với công trình “Nghiên cứu triển khai ghép gan, thận, tim lấy từ người cho chết não”. http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/y_3dca2.jpg Tại bệnh viện Việt Đức, tháng 4/2011, các ca ghép tạng từ nguồn cho là người bệnh chết não được triển khai liên tục. Với 4 người cho chết não hiến tạng, bệnh viện đã ghép tim cho một trường hợp, 2 người được ghép gan, 8 người được ghép thận, 2 người được ghép van tim và tất cả các ca ghép này đều thành công, người bệnh được ghép đã có một cuộc sống tốt hơn với tình trạng sức khỏe ổn định. http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/y2_cb5a1.jpg Nguyên Tổng Bí Ban chấp hành TW Đảng CSVN Lê Khả Phiêu và ông Vũ Văn Tiền, Chủ tịch Hội đồng quản trị Ngân hàng An Bình trao giải thưởng cho nhóm nghiên cứu của BV Hữu nghị Việt - Đức. Công trong việc ghép tạng từ người cho chết não không chỉ thể hiện năng lực, trình độ, tay nghề của bác sĩ Việt Nam mà nó còn mang một ý nghĩa nhân văn to lớn, mang một thông điệp gửi đến những con người giàu lòng nhân ái với nghĩa cử cao đẹp đã hiến tạng để cứu sống những người bệnh khác. 2. Hội đồng ghép tim Bệnh viện Trung ương Huế với công trình nghiên cứu “Triển khai ghép tim trên người lấy từ người cho chết não”. Đề tài được thực hiện dựa trên ca mổ ghép tim thành công lần đầu tiên ở Việt Nam của chính 100% đội ngũ y, bác sĩ của Bệnh viện Trung ương Huế đầu tháng 3/2011. Bệnh nhân được ghép tim thành công là anh Trần Mậu Đức (26 tuổi, ở phường Phú Hội, TP. Huế). http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/y3_7768c.jpg Hội đồng ghép tim BV Trung ương Huế nhận Giải thưởng Nhân tài Đất Việt. Ghép tim từ người cho chết não đến người bị bệnh tim cần được ghép tim phải đảm bảo các yêu cầu: đánh giá chức năng các cơ quan; đánh giá tương hợp miễn dịch và phát hiện nguy cơ tiềm ẩn có thể xảy ra trong và sau khi ghép tim để từ đó có phương thức điều trị thích hợp. Có tới 30 xét nghiệm cận lâm sàng trung và cao cấp tiến hành cho cả người cho tim chết não và người sẽ nhận ghép tim tại hệ thống labo của bệnh viện. --------------------- * Giải thưởng Nhân tài đất Việt Lĩnh vực Công nghệ thông tin. Hệ thống sản phẩm đã ứng dụng thực tế: Giải Nhất: Không có. Giải Nhì: Không có Giải Ba: 3 giải, mỗi giải trị giá 30 triệu đồng. 1. “Bộ cạc xử lý tín hiệu HDTV” của nhóm HD Việt Nam. http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/hdtv_13b10.jpg Nhóm HDTV Việt Nam lên nhận giải. Đây là bộ cạc xử lý tín hiệu HDTV đầu tiên tại Việt Nam đạt tiêu chuẩn OpenGear. Bộ thiết bị bao gồm 2 sản phẩm là cạc khuếch đại phân chia tín hiệu HD DA và cạc xử lý tín hiệu HD FX1. Nhờ bộ cạc này mà người sử dụng cũng có thể điều chỉnh mức âm thanh hoặc video để tín hiệu của kênh tuân theo mức chuẩn và không phụ thuộc vào chương trình đầu vào. 2. “Mã nguồn mở NukeViet” của nhóm tác giả Công ty cổ phần phát triển nguồn mở Việt Nam (VINADES.,JSC). /uploads/news/2011_11/nukeviet-nhantaidatviet2011.jpg NukeViet nhận giải ba Nhân tài đất Việt 2011 NukeViet là CMS mã nguồn mở đầu tiên của Việt Nam có quá trình phát triển lâu dài nhất, có lượng người sử dụng đông nhất. Hiện NukeViet cũng là một trong những mã nguồn mở chuyên nghiệp đầu tiên của Việt Nam, cơ quan chủ quản của NukeViet là VINADES.,JSC - đơn vị chịu trách nhiệm phát triển NukeViet và triển khai NukeViet thành các ứng dụng cụ thể cho doanh nghiệp. 3. “Hệ thống ngôi nhà thông minh homeON” của nhóm Smart home group. http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/PHN16132_82014.jpg Sản phẩm là kết quả từ những nghiên cứu miệt mài nhằm xây dựng một ngôi nhà thông minh, một cuộc sống xanh với tiêu chí: An toàn, tiện nghi, sang trọng và tiết kiệm năng lượng, hưởng ứng lời kêu gọi tiết kiệm năng lượng của Chính phủ. * Hệ thống sản phẩm có tiềm năng ứng dụng: Giải Nhất: Không có. Giải Nhì: trị giá 50 triệu đồng: “Dịch vụ Thông tin và Tri thức du lịch ứng dụng cộng nghệ ngữ nghĩa - iCompanion” của nhóm tác giả SIG. http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/nhi_7eee0.jpg Nhóm tác giả SIG nhận giải Nhì Nhân tài đất Việt 2011 ở hệ thống sản phẩm có tiềm năng ứng dụng. ICompanion là hệ thống thông tin đầu tiên ứng dụng công nghệ ngữ nghĩa trong lĩnh vực du lịch - với đặc thù khác biệt là cung cấp các dịch vụ tìm kiếm, gợi ý thông tin “thông minh” hơn, hướng người dùng và kết hợp khai thác các tính năng hiện đại của môi trường di động. Đại diện nhóm SIG chia sẻ: “Tinh thần sáng tạo và lòng khát khao muốn được tạo ra các sản phẩm mới có khả năng ứng dụng cao trong thực tiễn luôn có trong lòng của những người trẻ Việt Nam. Cảm ơn ban tổ chức và những nhà tài trợ đã giúp chúng tôi có một sân chơi thú vị để khuyến khích và chắp cánh thực hiện ước mơ của mình. Xin cảm ơn trường ĐH Bách Khoa đã tạo ra một môi trường nghiên cứu và sáng tạo, gắn kết 5 thành viên trong nhóm.” Giải Ba: 2 giải, mỗi giải trị giá 30 triệu đồng. 1. “Bộ điều khiển IPNET” của nhóm IPNET http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/PHN16149_ed58d.jpg Nhà báo Phạm Huy Hoàn, Trưởng Ban Tổ chức Giải thưởng NTĐV, Tổng Biên tập báo điện tử Dân trí và ông Tạ Hữu Thanh - Phó TGĐ Jetstar Pacific trao giải cho nhóm IPNET. Bằng cách sử dụng kiến thức thiên văn học để tính giờ mặt trời lặn và mọc tại vị trí cần chiếu sáng được sáng định bởi kinh độ, vĩ độ cao độ, hàng ngày sản phẩm sẽ tính lại thời gian cần bật/tắt đèn cho phù hợp với giờ mặt trời lặn/mọc. 2. “Hệ thống lập kế hoạch xạ trị ung thư quản lý thông tin bệnh nhân trên web - LYNX” của nhóm LYNX. http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/3tiem-nang_32fee.jpg Đây là loại phần mềm hoàn toàn mới ở Việt Nam, là hệ thống lập kế hoạch và quản lý thông tin của bệnh nhân ung thư qua Internet (LYNX) dựa vào nền tảng Silverlight của Microsoft và kiến thức chuyên ngành Vật lý y học. LYNX giúp ích cho các nhà khoa học, bác sĩ, kỹ sư vật lý, bệnh nhân và mọi thành viên trong việc quản lý và theo dõi hệ thống xạ trị ung thư một cách tổng thể. LYNX có thể được sử dụng thông qua các thiết bị như máy tính cá nhân, máy tính bảng… và các trình duyệt Internet Explorer, Firefox, Chrome… Chương trình trao giải đã được truyền hình trực tiếp trên VTV2 - Đài Truyền hình Việt Nam và tường thuật trực tuyến trên báo điện tử Dân trí từ 20h tối 20/11/2011. http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/NVH0545_c898e.jpg http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/NVH0560_c995c.jpg http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/PHN16199_36a5c.jpg Khởi xướng từ năm 2005, Giải thưởng Nhân tài Đất Việt đã phát hiện và tôn vinh nhiều tài năng trong lĩnh vực CNTT-TT, Khoa học tự nhiên và Y dược, trở thành một sân chơi bổ ích cho những người yêu thích CNTT. Mỗi năm, Giải thưởng ngày càng thu hút số lượng tác giả và sản phẩm tham gia đông đảo và nhận được sự quan tâm sâu sắc của lãnh đạo Đảng, Nhà nước cũng như công chúng. Đối tượng tham gia Giải thưởng trong lĩnh vực CNTT là những người Việt Nam ở mọi lứa tuổi, đang sinh sống trong cũng như ngoài nước. Năm 2006, Giải thưởng có sự tham gia của thí sinh đến từ 8 nước trên thế giới và 40 tỉnh thành của Việt Nam. Từ năm 2009, Giải thưởng được mở rộng sang lĩnh vực Khoa học tự nhiên, và năm 2010 là lĩnh vực Y dược, vinh danh những nhà khoa học trong các lĩnh vực này. ');

-- --------------------------------------------------------

--
-- Table structure for table `nv3_vi_news_cat`
--

CREATE TABLE IF NOT EXISTS `nv3_vi_news_cat` (
  `catid` mediumint(8) unsigned NOT NULL,
  `parentid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `titlesite` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT '',
  `thumbnail` varchar(255) NOT NULL DEFAULT '',
  `weight` smallint(4) unsigned NOT NULL DEFAULT '0',
  `order` mediumint(8) NOT NULL DEFAULT '0',
  `lev` smallint(4) NOT NULL DEFAULT '0',
  `viewcat` varchar(50) NOT NULL DEFAULT 'viewcat_page_new',
  `numsubcat` int(11) NOT NULL DEFAULT '0',
  `subcatid` varchar(255) NOT NULL DEFAULT '',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `numlinks` tinyint(2) unsigned NOT NULL DEFAULT '3',
  `keywords` mediumtext NOT NULL,
  `admins` mediumtext NOT NULL,
  `add_time` int(11) unsigned NOT NULL DEFAULT '0',
  `edit_time` int(11) unsigned NOT NULL DEFAULT '0',
  `who_view` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `groups_view` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nv3_vi_news_cat`
--

INSERT INTO `nv3_vi_news_cat` (`catid`, `parentid`, `title`, `titlesite`, `alias`, `description`, `image`, `thumbnail`, `weight`, `order`, `lev`, `viewcat`, `numsubcat`, `subcatid`, `inhome`, `numlinks`, `keywords`, `admins`, `add_time`, `edit_time`, `who_view`, `groups_view`) VALUES
(1, 0, 'Tin tức', '', 'Tin-tuc', '', '', '', 1, 1, 0, 'viewcat_page_new', 3, '8,12,9', 1, 4, '', '', 1274986690, 1274986690, 0, ''),
(2, 0, 'Sản phẩm', '', 'San-pham', '', '', '', 2, 5, 0, 'viewcat_page_new', 0, '', 1, 4, '', '', 1274986705, 1274986705, 0, ''),
(8, 1, 'Thông cáo báo chí', '', 'thong-cao-bao-chi', '', '', '', 1, 2, 1, 'viewcat_page_new', 0, '', 1, 4, '', '', 1274987105, 1274987244, 0, ''),
(9, 1, 'Tin công nghệ', '', 'Tin-cong-nghe', '', '', '', 3, 4, 1, 'viewcat_page_new', 0, '', 1, 4, '', '', 1274987212, 1274987212, 0, ''),
(10, 0, 'Đối tác', '', 'Doi-tac', '', '', '', 3, 9, 0, 'viewcat_page_new', 0, '', 1, 4, '', '', 1274987460, 1274987460, 0, ''),
(11, 0, 'Tuyển dụng', '', 'Tuyen-dung', '', '', '', 4, 12, 0, 'viewcat_page_new', 0, '', 1, 4, '', '', 1274987538, 1274987538, 0, ''),
(12, 1, 'Bản tin nội bộ', '', 'Ban-tin-noi-bo', '', '', '', 2, 3, 1, 'viewcat_page_new', 0, '', 1, 4, '', '', 1274987902, 1274987902, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `nv3_vi_news_comments`
--

CREATE TABLE IF NOT EXISTS `nv3_vi_news_comments` (
  `cid` mediumint(8) unsigned NOT NULL,
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  `post_time` int(11) unsigned NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `post_name` varchar(100) NOT NULL,
  `post_email` varchar(100) NOT NULL,
  `post_ip` varchar(15) NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `nv3_vi_news_config_post`
--

CREATE TABLE IF NOT EXISTS `nv3_vi_news_config_post` (
  `pid` mediumint(9) NOT NULL,
  `member` tinyint(4) NOT NULL,
  `group_id` mediumint(9) NOT NULL,
  `addcontent` tinyint(4) NOT NULL,
  `postcontent` tinyint(4) NOT NULL,
  `editcontent` tinyint(4) NOT NULL,
  `delcontent` tinyint(4) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nv3_vi_news_config_post`
--

INSERT INTO `nv3_vi_news_config_post` (`pid`, `member`, `group_id`, `addcontent`, `postcontent`, `editcontent`, `delcontent`) VALUES
(1, 0, 0, 0, 0, 0, 0),
(2, 1, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv3_vi_news_rows`
--

CREATE TABLE IF NOT EXISTS `nv3_vi_news_rows` (
  `id` int(11) unsigned NOT NULL,
  `catid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) NOT NULL DEFAULT '',
  `topicid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(255) NOT NULL DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `hometext` mediumtext NOT NULL,
  `homeimgfile` varchar(255) NOT NULL DEFAULT '',
  `homeimgalt` varchar(255) NOT NULL DEFAULT '',
  `homeimgthumb` varchar(255) NOT NULL DEFAULT '',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `keywords` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nv3_vi_news_rows`
--

INSERT INTO `nv3_vi_news_rows` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`, `keywords`) VALUES
(1, 1, '1,8,12', 0, 1, 'Quỳnh Nhi', 1, 1274989177, 1275318126, 1, 1274989140, 0, 2, 'Ra mắt công ty mã nguồn mở đầu tiên tại Việt Nam', 'Ra-mat-cong-ty-ma-nguon-mo-dau-tien-tai-Viet-Nam', 'Mã nguồn mở NukeViet vốn đã quá quen thuộc với cộng đồng CNTT Việt Nam trong mấy năm qua. Tuy chưa hoạt động chính thức, nhưng chỉ trong khoảng 5 năm gần đây, mã nguồn mở NukeViet đã được dùng phổ biến ở Việt Nam, áp dụng ở hầu hết các lĩnh vực, từ tin tức đến thương mại điện tử, từ các website cá nhân cho tới những hệ thống website doanh nghiệp.', 'nangly.jpg', 'Thành lập VINADES.,JSC', 'thumb/nangly.jpg|block/nangly.jpg', 1, 2, 1, 2, 0, 0, 0, 'nguồn mở, quen thuộc, cộng đồng, việt nam, hoạt động, gần đây, phổ biến, áp dụng, hầu hết, hết các, lĩnh vực, tin tức, thương mại điện, điện tử, cá nhân, hệ thống'),
(2, 1, '1,8,12', 1, 1, 'laser', 2, 1274989787, 1275318114, 1, 1274989740, 0, 2, 'Công bố dự án NukeViet 3.0 sau 1 tháng ra mắt VINADES.,JSC', 'Cong-bo-du-an-NukeViet-3-0-sau-1-thang-ra-mat-VINADES-JSC', 'NukeViet 3.0 - Một nền tảng được xây dựng hoàn toàn mới với những công nghệ web tiên tiến nhất hiện nay hứa hẹn sẽ làm một cuộc cách mạng về mã nguồn mở ở Việt Nam. Món quà này là lời cảm ơn chân thành nhất mà VINADES.,JSC muốn gửi tới cộng đồng sau một tháng chính thức ra mắt.', 'nukeviet3.jpg', 'NukeViet 3.0', 'thumb/nukeviet3.jpg|block/nukeviet3.jpg', 1, 2, 1, 3, 0, 0, 0, 'nền tảng, xây dựng, hoàn toàn, với những, công nghệ, tiên tiến, hiện nay, hứa hẹn, cách mạng, nguồn mở, việt nam, món quà, cảm ơn, chân thành, thành nhất, cộng đồng'),
(5, 2, '2', 1, 1, '', 5, 1274993307, 1275318039, 1, 1274993280, 0, 2, 'Giới thiệu về mã nguồn mở NukeViet', 'Gioi-thieu-ve-ma-nguon-mo-NukeViet', 'Chắc hẳn đây không phải lần đầu tiên bạn nghe nói đến mã nguồn mở. Và nếu bạn là người mê lướt web thì hẳn bạn từng nhìn thấy đâu đó cái tên NukeViet. NukeViet, phát âm là Nu-Ke-Việt, chính là phần mềm dùng để xây dựng các Website mà bạn ngày ngày online để truy cập đấy.', 'screenshot.jpg', '', 'thumb/screenshot.jpg|block/screenshot.jpg', 0, 2, 1, 2, 0, 0, 0, 'quản trị, nội dung, sử dụng, khả năng, tích hợp, ứng dụng'),
(6, 10, '1,8,10', 0, 1, '', 2, 1274994722, 1275318001, 1, 1274994720, 0, 2, 'Thư mời hợp tác liên kết quảng cáo và cung cấp hosting thử nghiệm', 'Thu-moi-hop-tac', 'Hiện tại VINADES.,JSC đang tiến hành phát triển bộ mã nguồn NukeViet phiên bản 3.0 – một thế hệ CMS hoàn toàn mới với nhiều tính năng ưu việt, được đầu tư bài bản với kinh phí lớn. Với thiện chí hợp tác cùng phát triển VINADES.,JSC xin trân trọng gửi lời mời hợp tác đến Quý đối tác là các công ty cung cấp tên miền - hosting, các doanh nghiệp quan tâm và mong muốn hợp tác cùng VINADES để cùng thực hiện chung các hoạt động kinh doanh nhằm gia tăng giá trị, quảng bá thương hiệu chung cho cả hai bên.', 'hoptac.jpg', '', 'thumb/hoptac.jpg|block/hoptac.jpg', 1, 2, 1, 3, 0, 0, 0, 'hiện tại, tiến hành, phát triển, phiên bản, thế hệ, hoàn toàn, tính năng, ưu việt, kinh phí, thiện chí, hợp tác, trân trọng, mời hợp tác, đối tác, các công ty, công ty, cung cấp, tên miền, các doanh, doanh nghiệp, quan tâm'),
(7, 11, '11', 0, 1, '', 2, 1307197282, 1307197381, 1, 1307197260, 0, 2, 'Tuyển dụng lập trình viên, chuyên viên đồ họa phát triển NukeViet', 'Tuyen-dung-lap-trinh-vien-chuyen-vien-do-hoa-phat-trien-NukeViet', 'Bạn đam mê nguồn mở? Bạn có năng khiếu lập trình PHP & MySQL? Bạn là chuyên gia đồ họa, HTML, CSS? Chúng tôi sẽ giúp bạn hiện thực hóa ước mơ của mình với một mức lương đảm bảo. Hãy gia nhập VINADES.,JSC để xây dựng mã nguồn mở hàng đầu cho Việt Nam.', 'nukeviet-job.jpg', '', 'thumb/nukeviet-job.jpg|block/nukeviet-job.jpg', 1, 2, 1, 2, 0, 0, 0, 'vinades, nukeviet, lập trình viên, chuyên viên đồ họa, php, mysql'),
(8, 9, '9', 0, 1, 'laser', 3, 1310067949, 1310068009, 1, 1310067949, 0, 2, 'Webnhanh.vn - website dịch vụ chuyên nghiệp cho NukeViet chính thức ra mắt', 'Webnhanhvn-website-dich-vu-chuyen-nghiep-cho-NukeViet-chinh-thuc-ra-mat', 'Sau một thời gian đi vào hoạt động, Webnhanh.vn đã nhận được nhiều ủng hộ cùng sự quan tâm, góp ý của cộng đồng và khách hàng. Để đáp ứng mong mỏi của cộng đồng về một dịch vụ web chuyên nghiệp với mức giá tối thiểu, Webnhanh.vn đã thực hiện chiến dịch siêu khuyến mại Giảm giá tất cả các gói web dựng sẵn, module, block và giao diện (theme). Mức giảm giá cao nhất tới 90% giá so với trước tháng 7 năm 2011.', 'webnhanh-vn.jpg', '', 'thumb/webnhanh-vn.jpg|block/webnhanh-vn.jpg', 1, 2, 1, 1, 0, 0, 0, 'khai trương, khuyến mại, giảm giá, siêu khuyến mại, webnhanh, thiết kế website, giao diện web, thiết kế web'),
(9, 2, '2', 0, 1, 'Phạm Thế Quang Huy', 4, 1322685396, 1322686088, 1, 1322685396, 0, 2, 'NukeViet - Công cụ mã nguồn mở cho cộng đồng thiết kế website Việt Nam', 'NukeViet-Cong-cu-ma-nguon-mo-cho-cong-dong-thiet-ke-website-Viet-Nam', '(Dân trí) - Là một trong những hệ quản trị nội dung nổi tiếng hàng đầu tại Việt Nam, NukeViet đã được áp dụng rộng rãi trong việc xây dựng nhiều trang báo điện tử và các cổng thông tin điện tử nổi tiếng tại Việt Nam. Mới đây nhất, NukeViet đã vượt qua vòng sơ khảo để tranh tài tại vòng chung khảo của Giải Thưởng Nhân Tài Đất Việt 2011', 'product_box.jpg', 'Sản phẩm dự thi Nhân tài Đất Việt 2011&#x3A; Mã nguồn mở NukeViet', 'thumb/product_box.jpg|block/product_box.jpg', 1, 2, 1, 2, 0, 0, 0, 'Nhân tài Đất Việt 2011, mã nguồn mở'),
(10, 1, '1,9', 0, 1, '', 4, 1322685920, 1322686042, 1, 1322685920, 0, 2, 'Mã nguồn mở NukeViet giành giải ba Nhân tài đất Việt 2011', 'Ma-nguon-mo-NukeViet-gianh-giai-ba-Nhan-tai-dat-Viet-2011', 'Không có giải nhất và giải nhì, sản phẩm Mã nguồn mở NukeViet của VINADES.,JSC là một trong ba sản phẩm đã đoạt giải ba Nhân tài đất Việt 2011 - Lĩnh vực Công nghệ thông tin (Sản phẩm đã ứng dụng rộng rãi).', 'nukeviet-nhantaidatviet2011.jpg', 'Mã nguồn mở NukeViet giành giải ba Nhân tài đất Việt 2011', 'thumb/nukeviet-nhantaidatviet2011.jpg|block/nukeviet-nhantaidatviet2011.jpg', 1, 2, 1, 4, 0, 0, 0, 'Nhân tài đất Việt 2011, mã nguồn mở');

-- --------------------------------------------------------

--
-- Table structure for table `nv3_vi_news_sources`
--

CREATE TABLE IF NOT EXISTS `nv3_vi_news_sources` (
  `sourceid` mediumint(8) unsigned NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `logo` varchar(255) NOT NULL DEFAULT '',
  `weight` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) unsigned NOT NULL,
  `edit_time` int(11) unsigned NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nv3_vi_news_sources`
--

INSERT INTO `nv3_vi_news_sources` (`sourceid`, `title`, `link`, `logo`, `weight`, `add_time`, `edit_time`) VALUES
(1, 'Báo Hà Nội Mới', 'http://hanoimoi.com.vn', '', 1, 1274989177, 1274989177),
(2, 'VINADES.,JSC', 'http://vinades.vn', '', 2, 1274989787, 1274989787),
(3, 'NukeViet', 'http://nukeviet.vn', '', 2, 1274989787, 1274989787),
(4, 'Báo điện tử Dân Trí', 'http://dantri.com.vn', '', 3, 1322685396, 1322685396);

-- --------------------------------------------------------

--
-- Table structure for table `nv3_vi_news_topics`
--

CREATE TABLE IF NOT EXISTS `nv3_vi_news_topics` (
  `topicid` mediumint(8) unsigned NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `weight` smallint(4) NOT NULL DEFAULT '0',
  `keywords` mediumtext NOT NULL,
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nv3_vi_news_topics`
--

INSERT INTO `nv3_vi_news_topics` (`topicid`, `title`, `alias`, `image`, `thumbnail`, `description`, `weight`, `keywords`, `add_time`, `edit_time`) VALUES
(1, 'NukeViet 3', 'NukeViet-3', '', '', 'NukeViet 3', 1, 'NukeViet 3', 1274990212, 1274990212);

-- --------------------------------------------------------

--
-- Table structure for table `nv3_vi_referer_stats`
--

CREATE TABLE IF NOT EXISTS `nv3_vi_referer_stats` (
  `host` varchar(255) NOT NULL,
  `total` int(11) NOT NULL DEFAULT '0',
  `month01` int(11) NOT NULL DEFAULT '0',
  `month02` int(11) NOT NULL DEFAULT '0',
  `month03` int(11) NOT NULL DEFAULT '0',
  `month04` int(11) NOT NULL DEFAULT '0',
  `month05` int(11) NOT NULL DEFAULT '0',
  `month06` int(11) NOT NULL DEFAULT '0',
  `month07` int(11) NOT NULL DEFAULT '0',
  `month08` int(11) NOT NULL DEFAULT '0',
  `month09` int(11) NOT NULL DEFAULT '0',
  `month10` int(11) NOT NULL DEFAULT '0',
  `month11` int(11) NOT NULL DEFAULT '0',
  `month12` int(11) NOT NULL DEFAULT '0',
  `last_update` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `nv3_vi_searchkeys`
--

CREATE TABLE IF NOT EXISTS `nv3_vi_searchkeys` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `keys` varchar(255) NOT NULL,
  `total` int(11) NOT NULL DEFAULT '0',
  `search_engine` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `nv3_vi_voting`
--

CREATE TABLE IF NOT EXISTS `nv3_vi_voting` (
  `vid` mediumint(8) unsigned NOT NULL,
  `question` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL DEFAULT '',
  `acceptcm` int(2) NOT NULL DEFAULT '1',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `who_view` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `groups_view` varchar(255) NOT NULL,
  `publ_time` int(11) unsigned NOT NULL DEFAULT '0',
  `exp_time` int(11) unsigned NOT NULL DEFAULT '0',
  `act` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nv3_vi_voting`
--

INSERT INTO `nv3_vi_voting` (`vid`, `question`, `link`, `acceptcm`, `admin_id`, `who_view`, `groups_view`, `publ_time`, `exp_time`, `act`) VALUES
(2, 'Bạn biết gì về NukeViet 3?', '', 1, 1, 0, '0', 1275318563, 0, 1),
(3, 'Bạn quan tâm gì nhất ở mã nguồn mở?', '', 1, 1, 0, '0', 1275318589, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv3_vi_voting_rows`
--

CREATE TABLE IF NOT EXISTS `nv3_vi_voting_rows` (
  `id` int(11) unsigned NOT NULL,
  `vid` int(11) unsigned NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `hitstotal` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nv3_vi_voting_rows`
--

INSERT INTO `nv3_vi_voting_rows` (`id`, `vid`, `title`, `url`, `hitstotal`) VALUES
(5, 2, 'Một bộ sourcecode cho web hoàn toàn mới.', '', 0),
(6, 2, 'Mã nguồn mở, sử dụng miễn phí.', '', 0),
(7, 2, 'Sử dụng xHTML, CSS và hỗ trợ Ajax', '', 0),
(8, 2, 'Tất cả các ý kiến trên', '', 0),
(9, 3, 'Liên tục được cải tiến, sửa đổi bởi cả thế giới.', '', 0),
(10, 3, 'Được sử dụng miễn phí không mất tiền.', '', 0),
(11, 3, 'Được tự do khám phá, sửa đổi theo ý thích.', '', 0),
(12, 3, 'Phù hợp để học tập, nghiên cứu vì được tự do sửa đổi theo ý thích.', '', 0),
(13, 3, 'Tất cả các ý kiến trên', '', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `nv3_authors`
--
ALTER TABLE `nv3_authors`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `nv3_authors_config`
--
ALTER TABLE `nv3_authors_config`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `keyname` (`keyname`);

--
-- Indexes for table `nv3_banip`
--
ALTER TABLE `nv3_banip`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ip` (`ip`);

--
-- Indexes for table `nv3_banners_click`
--
ALTER TABLE `nv3_banners_click`
  ADD KEY `bid` (`bid`),
  ADD KEY `click_day` (`click_day`),
  ADD KEY `click_ip` (`click_ip`),
  ADD KEY `click_country` (`click_country`),
  ADD KEY `click_browse_key` (`click_browse_key`),
  ADD KEY `click_os_key` (`click_os_key`);

--
-- Indexes for table `nv3_banners_clients`
--
ALTER TABLE `nv3_banners_clients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login` (`login`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `full_name` (`full_name`);

--
-- Indexes for table `nv3_banners_plans`
--
ALTER TABLE `nv3_banners_plans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `title` (`title`);

--
-- Indexes for table `nv3_banners_rows`
--
ALTER TABLE `nv3_banners_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`),
  ADD KEY `clid` (`clid`);

--
-- Indexes for table `nv3_config`
--
ALTER TABLE `nv3_config`
  ADD UNIQUE KEY `lang` (`lang`,`module`,`config_name`);

--
-- Indexes for table `nv3_cronjobs`
--
ALTER TABLE `nv3_cronjobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `is_sys` (`is_sys`);

--
-- Indexes for table `nv3_groups`
--
ALTER TABLE `nv3_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD UNIQUE KEY `title` (`title`),
  ADD KEY `exp_time` (`exp_time`);

--
-- Indexes for table `nv3_ipcountry`
--
ALTER TABLE `nv3_ipcountry`
  ADD UNIQUE KEY `ip_from` (`ip_from`,`ip_to`),
  ADD KEY `ip_file` (`ip_file`),
  ADD KEY `country` (`country`),
  ADD KEY `time` (`time`);

--
-- Indexes for table `nv3_language`
--
ALTER TABLE `nv3_language`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `filelang` (`idfile`,`lang_key`);

--
-- Indexes for table `nv3_language_file`
--
ALTER TABLE `nv3_language_file`
  ADD PRIMARY KEY (`idfile`),
  ADD UNIQUE KEY `module` (`module`,`admin_file`);

--
-- Indexes for table `nv3_logs`
--
ALTER TABLE `nv3_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv3_sessions`
--
ALTER TABLE `nv3_sessions`
  ADD UNIQUE KEY `session_id` (`session_id`),
  ADD KEY `onl_time` (`onl_time`);

--
-- Indexes for table `nv3_setup`
--
ALTER TABLE `nv3_setup`
  ADD UNIQUE KEY `lang` (`lang`,`module`);

--
-- Indexes for table `nv3_setup_language`
--
ALTER TABLE `nv3_setup_language`
  ADD PRIMARY KEY (`lang`);

--
-- Indexes for table `nv3_setup_modules`
--
ALTER TABLE `nv3_setup_modules`
  ADD PRIMARY KEY (`title`);

--
-- Indexes for table `nv3_shops_block`
--
ALTER TABLE `nv3_shops_block`
  ADD UNIQUE KEY `bid` (`bid`,`id`);

--
-- Indexes for table `nv3_shops_block_cat`
--
ALTER TABLE `nv3_shops_block_cat`
  ADD PRIMARY KEY (`bid`),
  ADD UNIQUE KEY `vi_alias` (`vi_alias`);

--
-- Indexes for table `nv3_shops_catalogs`
--
ALTER TABLE `nv3_shops_catalogs`
  ADD PRIMARY KEY (`catid`),
  ADD UNIQUE KEY `vi_alias` (`vi_alias`),
  ADD KEY `parentid` (`parentid`);

--
-- Indexes for table `nv3_shops_comments_vi`
--
ALTER TABLE `nv3_shops_comments_vi`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `nv3_shops_group`
--
ALTER TABLE `nv3_shops_group`
  ADD PRIMARY KEY (`groupid`),
  ADD UNIQUE KEY `vi_alias` (`vi_alias`),
  ADD KEY `parentid` (`parentid`);

--
-- Indexes for table `nv3_shops_money_vi`
--
ALTER TABLE `nv3_shops_money_vi`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `nv3_shops_orders`
--
ALTER TABLE `nv3_shops_orders`
  ADD PRIMARY KEY (`order_id`),
  ADD UNIQUE KEY `order_code` (`order_code`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `order_time` (`order_time`),
  ADD KEY `shop_id` (`shop_id`);

--
-- Indexes for table `nv3_shops_payment`
--
ALTER TABLE `nv3_shops_payment`
  ADD PRIMARY KEY (`payment`);

--
-- Indexes for table `nv3_shops_rows`
--
ALTER TABLE `nv3_shops_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `listcatid` (`listcatid`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`);

--
-- Indexes for table `nv3_shops_sources`
--
ALTER TABLE `nv3_shops_sources`
  ADD PRIMARY KEY (`sourceid`);

--
-- Indexes for table `nv3_shops_transaction`
--
ALTER TABLE `nv3_shops_transaction`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `payment_id` (`payment_id`);

--
-- Indexes for table `nv3_shops_units`
--
ALTER TABLE `nv3_shops_units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv3_users`
--
ALTER TABLE `nv3_users`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `md5username` (`md5username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `nv3_users_config`
--
ALTER TABLE `nv3_users_config`
  ADD PRIMARY KEY (`config`);

--
-- Indexes for table `nv3_users_openid`
--
ALTER TABLE `nv3_users_openid`
  ADD PRIMARY KEY (`opid`),
  ADD KEY `userid` (`userid`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `nv3_users_question`
--
ALTER TABLE `nv3_users_question`
  ADD PRIMARY KEY (`qid`),
  ADD UNIQUE KEY `title` (`title`,`lang`);

--
-- Indexes for table `nv3_users_reg`
--
ALTER TABLE `nv3_users_reg`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `login` (`username`),
  ADD UNIQUE KEY `md5username` (`md5username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `nv3_vi_about`
--
ALTER TABLE `nv3_vi_about`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `nv3_vi_blocks_groups`
--
ALTER TABLE `nv3_vi_blocks_groups`
  ADD PRIMARY KEY (`bid`),
  ADD KEY `theme` (`theme`),
  ADD KEY `module` (`module`),
  ADD KEY `position` (`position`),
  ADD KEY `exp_time` (`exp_time`);

--
-- Indexes for table `nv3_vi_blocks_weight`
--
ALTER TABLE `nv3_vi_blocks_weight`
  ADD UNIQUE KEY `bid` (`bid`,`func_id`);

--
-- Indexes for table `nv3_vi_contact_rows`
--
ALTER TABLE `nv3_vi_contact_rows`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `full_name` (`full_name`);

--
-- Indexes for table `nv3_vi_contact_send`
--
ALTER TABLE `nv3_vi_contact_send`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sender_name` (`sender_name`);

--
-- Indexes for table `nv3_vi_counter`
--
ALTER TABLE `nv3_vi_counter`
  ADD UNIQUE KEY `c_type` (`c_type`,`c_val`);

--
-- Indexes for table `nv3_vi_menu_menu`
--
ALTER TABLE `nv3_vi_menu_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `nv3_vi_menu_rows`
--
ALTER TABLE `nv3_vi_menu_rows`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv3_vi_modfuncs`
--
ALTER TABLE `nv3_vi_modfuncs`
  ADD PRIMARY KEY (`func_id`),
  ADD UNIQUE KEY `func_name` (`func_name`,`in_module`);

--
-- Indexes for table `nv3_vi_modthemes`
--
ALTER TABLE `nv3_vi_modthemes`
  ADD UNIQUE KEY `func_id` (`func_id`,`layout`,`theme`);

--
-- Indexes for table `nv3_vi_modules`
--
ALTER TABLE `nv3_vi_modules`
  ADD PRIMARY KEY (`title`);

--
-- Indexes for table `nv3_vi_news_1`
--
ALTER TABLE `nv3_vi_news_1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `nv3_vi_news_2`
--
ALTER TABLE `nv3_vi_news_2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `nv3_vi_news_8`
--
ALTER TABLE `nv3_vi_news_8`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `nv3_vi_news_9`
--
ALTER TABLE `nv3_vi_news_9`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `nv3_vi_news_10`
--
ALTER TABLE `nv3_vi_news_10`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `nv3_vi_news_11`
--
ALTER TABLE `nv3_vi_news_11`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `nv3_vi_news_12`
--
ALTER TABLE `nv3_vi_news_12`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `nv3_vi_news_admins`
--
ALTER TABLE `nv3_vi_news_admins`
  ADD UNIQUE KEY `userid` (`userid`,`catid`);

--
-- Indexes for table `nv3_vi_news_block`
--
ALTER TABLE `nv3_vi_news_block`
  ADD UNIQUE KEY `bid` (`bid`,`id`);

--
-- Indexes for table `nv3_vi_news_block_cat`
--
ALTER TABLE `nv3_vi_news_block_cat`
  ADD PRIMARY KEY (`bid`),
  ADD UNIQUE KEY `title` (`title`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `nv3_vi_news_bodyhtml_1`
--
ALTER TABLE `nv3_vi_news_bodyhtml_1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv3_vi_news_bodytext`
--
ALTER TABLE `nv3_vi_news_bodytext`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv3_vi_news_cat`
--
ALTER TABLE `nv3_vi_news_cat`
  ADD PRIMARY KEY (`catid`),
  ADD UNIQUE KEY `alias` (`alias`),
  ADD KEY `parentid` (`parentid`);

--
-- Indexes for table `nv3_vi_news_comments`
--
ALTER TABLE `nv3_vi_news_comments`
  ADD PRIMARY KEY (`cid`),
  ADD KEY `post_time` (`post_time`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `nv3_vi_news_config_post`
--
ALTER TABLE `nv3_vi_news_config_post`
  ADD PRIMARY KEY (`pid`),
  ADD UNIQUE KEY `member` (`member`,`group_id`);

--
-- Indexes for table `nv3_vi_news_rows`
--
ALTER TABLE `nv3_vi_news_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `nv3_vi_news_sources`
--
ALTER TABLE `nv3_vi_news_sources`
  ADD PRIMARY KEY (`sourceid`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `nv3_vi_news_topics`
--
ALTER TABLE `nv3_vi_news_topics`
  ADD PRIMARY KEY (`topicid`),
  ADD UNIQUE KEY `title` (`title`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `nv3_vi_referer_stats`
--
ALTER TABLE `nv3_vi_referer_stats`
  ADD UNIQUE KEY `host` (`host`),
  ADD KEY `total` (`total`);

--
-- Indexes for table `nv3_vi_searchkeys`
--
ALTER TABLE `nv3_vi_searchkeys`
  ADD KEY `id` (`id`),
  ADD KEY `keys` (`keys`),
  ADD KEY `search_engine` (`search_engine`);

--
-- Indexes for table `nv3_vi_voting`
--
ALTER TABLE `nv3_vi_voting`
  ADD PRIMARY KEY (`vid`),
  ADD UNIQUE KEY `question` (`question`);

--
-- Indexes for table `nv3_vi_voting_rows`
--
ALTER TABLE `nv3_vi_voting_rows`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vid` (`vid`,`title`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `nv3_authors_config`
--
ALTER TABLE `nv3_authors_config`
  MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv3_banip`
--
ALTER TABLE `nv3_banip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv3_banners_clients`
--
ALTER TABLE `nv3_banners_clients`
  MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv3_banners_plans`
--
ALTER TABLE `nv3_banners_plans`
  MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `nv3_banners_rows`
--
ALTER TABLE `nv3_banners_rows`
  MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `nv3_cronjobs`
--
ALTER TABLE `nv3_cronjobs`
  MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `nv3_groups`
--
ALTER TABLE `nv3_groups`
  MODIFY `group_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `nv3_language`
--
ALTER TABLE `nv3_language`
  MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv3_language_file`
--
ALTER TABLE `nv3_language_file`
  MODIFY `idfile` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv3_logs`
--
ALTER TABLE `nv3_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=583;
--
-- AUTO_INCREMENT for table `nv3_shops_block_cat`
--
ALTER TABLE `nv3_shops_block_cat`
  MODIFY `bid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `nv3_shops_catalogs`
--
ALTER TABLE `nv3_shops_catalogs`
  MODIFY `catid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `nv3_shops_comments_vi`
--
ALTER TABLE `nv3_shops_comments_vi`
  MODIFY `cid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv3_shops_group`
--
ALTER TABLE `nv3_shops_group`
  MODIFY `groupid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `nv3_shops_orders`
--
ALTER TABLE `nv3_shops_orders`
  MODIFY `order_id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv3_shops_rows`
--
ALTER TABLE `nv3_shops_rows`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=78;
--
-- AUTO_INCREMENT for table `nv3_shops_sources`
--
ALTER TABLE `nv3_shops_sources`
  MODIFY `sourceid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv3_shops_transaction`
--
ALTER TABLE `nv3_shops_transaction`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv3_shops_units`
--
ALTER TABLE `nv3_shops_units`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `nv3_users`
--
ALTER TABLE `nv3_users`
  MODIFY `userid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `nv3_users_question`
--
ALTER TABLE `nv3_users_question`
  MODIFY `qid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `nv3_users_reg`
--
ALTER TABLE `nv3_users_reg`
  MODIFY `userid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv3_vi_about`
--
ALTER TABLE `nv3_vi_about`
  MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `nv3_vi_blocks_groups`
--
ALTER TABLE `nv3_vi_blocks_groups`
  MODIFY `bid` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=83;
--
-- AUTO_INCREMENT for table `nv3_vi_contact_rows`
--
ALTER TABLE `nv3_vi_contact_rows`
  MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `nv3_vi_contact_send`
--
ALTER TABLE `nv3_vi_contact_send`
  MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv3_vi_menu_menu`
--
ALTER TABLE `nv3_vi_menu_menu`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `nv3_vi_menu_rows`
--
ALTER TABLE `nv3_vi_menu_rows`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `nv3_vi_modfuncs`
--
ALTER TABLE `nv3_vi_modfuncs`
  MODIFY `func_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=87;
--
-- AUTO_INCREMENT for table `nv3_vi_news_1`
--
ALTER TABLE `nv3_vi_news_1`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `nv3_vi_news_2`
--
ALTER TABLE `nv3_vi_news_2`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `nv3_vi_news_8`
--
ALTER TABLE `nv3_vi_news_8`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `nv3_vi_news_9`
--
ALTER TABLE `nv3_vi_news_9`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `nv3_vi_news_10`
--
ALTER TABLE `nv3_vi_news_10`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `nv3_vi_news_11`
--
ALTER TABLE `nv3_vi_news_11`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `nv3_vi_news_12`
--
ALTER TABLE `nv3_vi_news_12`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `nv3_vi_news_block_cat`
--
ALTER TABLE `nv3_vi_news_block_cat`
  MODIFY `bid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `nv3_vi_news_cat`
--
ALTER TABLE `nv3_vi_news_cat`
  MODIFY `catid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `nv3_vi_news_comments`
--
ALTER TABLE `nv3_vi_news_comments`
  MODIFY `cid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv3_vi_news_config_post`
--
ALTER TABLE `nv3_vi_news_config_post`
  MODIFY `pid` mediumint(9) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `nv3_vi_news_rows`
--
ALTER TABLE `nv3_vi_news_rows`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `nv3_vi_news_sources`
--
ALTER TABLE `nv3_vi_news_sources`
  MODIFY `sourceid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `nv3_vi_news_topics`
--
ALTER TABLE `nv3_vi_news_topics`
  MODIFY `topicid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `nv3_vi_voting`
--
ALTER TABLE `nv3_vi_voting`
  MODIFY `vid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `nv3_vi_voting_rows`
--
ALTER TABLE `nv3_vi_voting_rows`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

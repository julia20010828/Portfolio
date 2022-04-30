CREATE TABLE IF NOT EXISTS `t_user` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`username` varchar(30) NOT NULL COMMENT '使用者名稱',
`password` varchar(32) NOT NULL COMMENT '密碼',
`email` varchar(30) NOT NULL COMMENT '郵箱',
`token` varchar(50) NOT NULL COMMENT '帳號啟用碼',
`token_exptime` int(10) NOT NULL COMMENT '啟用碼有效期',
`status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '狀態,0-未啟用,1-已啟用',
`regtime` int(10) NOT NULL COMMENT '註冊時間',
PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
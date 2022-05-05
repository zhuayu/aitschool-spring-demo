CREATE TABLE IF NOT EXISTS `users` (
                         `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
                         `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                         `unionid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '微信 unionid',
                         `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '电话',
                         `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '密码',
                         `session_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '微信小程序登录态',
                         `nickname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '昵称',
                         `realname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '真实姓名',
                         `gender` tinyint(3) unsigned DEFAULT NULL COMMENT '性别',
                         `avatar_url` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户图像url',
                         `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '国家',
                         `province` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '省',
                         `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '城市',
                         `district` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '区',
                         `birthday` date DEFAULT NULL COMMENT '出生日期',
                         `introduction` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '自我介绍',
                         `visited_at` datetime DEFAULT NULL COMMENT '最后登录时间',
                         `created_at` timestamp NULL DEFAULT NULL,
                         `updated_at` timestamp NULL DEFAULT NULL,
                         PRIMARY KEY (`id`),
                         UNIQUE KEY `users_email_unique` (`email`),
                         UNIQUE KEY `users_unionid_unique` (`unionid`),
                         UNIQUE KEY `users_phone_unique` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
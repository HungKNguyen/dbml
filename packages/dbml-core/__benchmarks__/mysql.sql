CREATE TABLE `bad_faith_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`) USING BTREE 
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `booking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id_one` int(11) DEFAULT NULL,
  `user_id_two` int(11) DEFAULT NULL,
  `timezone` varchar(512) NOT NULL DEFAULT '',
  `date` varchar(255) DEFAULT NULL,
  `spot` varchar(255) DEFAULT NULL,
  `address` text,
  `time` varchar(255) DEFAULT NULL,
  `is_accept` int(11) DEFAULT NULL,
  `message_id` text,
  `channel_id` text,
  `privateChat` varchar(255) DEFAULT NULL,
  `cron_status_before` int(11) DEFAULT '0',
  `cron_status_during` int(11) DEFAULT '0',
  `cron_status_after` int(11) DEFAULT '0',
  `before_time_3hrs` varchar(100) DEFAULT NULL,
  `before_time_20mins` varchar(100) DEFAULT NULL,
  `after_time_8hrs` varchar(100) DEFAULT NULL,
  `user_one_status` tinyint(2) NOT NULL DEFAULT '0',
  `user_two_status` tinyint(2) NOT NULL DEFAULT '0',
  `feedback_notification` int(11) NOT NULL DEFAULT '0',
  `feedback_notification_two` int(11) NOT NULL DEFAULT '0',
  `Created_at` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `venue` (`user_id_two`) USING BTREE,
  KEY `user_id_one` (`user_id_one`) USING HASH
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=latin1;

CREATE TABLE `test0` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `gid` USING BTREE (`gid`) USING HASH
) ENGINE = MEMORY;

CREATE TABLE `test1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `gid` (`gid`) USING HASH
) ENGINE = MEMORY;

CREATE TABLE `test2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `gid` USING BTREE (`gid`)
) ENGINE = MEMORY;

CREATE TABLE `test3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `gid` USING HASH (`gid`) USING BTREE
) ENGINE = MEMORY;
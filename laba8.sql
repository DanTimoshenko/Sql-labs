-- Adminer 4.8.1 MySQL 5.5.5-10.3.32-MariaDB-1:10.3.32+maria~focal dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `files`;
CREATE TABLE `files` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` char(255) DEFAULT NULL,
  `link` char(255) NOT NULL,
  'project_id' int(10) DEFAULT NULL,
  'task_id' int(10) DEFAULT NULL,
   CONSTRAINT `project_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`),
   CONSTRAINT `project_ibfk_2` FOREIGN KEY (`task_id`) REFERENCES `task` (`id`),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `files` (`id`, `Name`, `project_id`, `task_id`,`link`) VALUES
(1,	'Name1',	'NULL', '1', 'https/1'),
(2,	'Name2',	'1', 'NULL', 'https/2');

DROP TABLE IF EXISTS `project`;
CREATE TABLE `project` (
  `id` int(10) NOT NULL,
  `name` char(255) NOT NULL,
  `author_id` int(10) NOT NULL,
  KEY `author_id` (`author_id`),
  CONSTRAINT `project_ibfk_2` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `project` (`id`, `name`, `author_id`) VALUES
(1,	'A',  2),
(2,	'B',	1);

DROP TABLE IF EXISTS `project_users`;
CREATE TABLE `project_users` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `project_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `project_users` (`id`, `user_id`, `project_id`) VALUES
(1,	1,	1),
(2,	4,	2);

DROP TABLE IF EXISTS `task`;
CREATE TABLE `task` (
  `id` int(255) NOT NULL,
  `name` char(255) NOT NULL,
  `author_id` int(10) NOT NULL,
  KEY `id` (`id`),
  KEY `author_id` (`author_id`),
  CONSTRAINT `task_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `task` (`id`, `name`, `author_id`) VALUES
(1,	'Creat_menu',	1),
(2,	'Create_hero',	2);

DROP TABLE IF EXISTS `task_users`;
CREATE TABLE `task_users` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `task_id` int(10) NOT NULL,
  KEY `user_id` (`user_id`),
  KEY `task_id` (`task_id`),
  CONSTRAINT `task_users_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `task_users_ibfk_2` FOREIGN KEY (`task_id`) REFERENCES `task` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `task_users` (`id`, `user_id`, `task_id`) VALUES
(1,	1,	1),
(2,	2,	2);

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(255) NOT NULL,
  `name` char(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `users` (`id`, `name`) VALUES
(1,	'Danil'),
(2,	'Vadim'),
(3,	'Nikita'),
(4,	'Anton'),
(5,	'Den'),
(6,	'Anna');

-- 2023-05-22 14:34:28

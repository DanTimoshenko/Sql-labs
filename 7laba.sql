-- Adminer 4.8.1 MySQL 5.5.5-10.3.32-MariaDB-1:10.3.32+maria~focal dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(255) NOT NULL,
  `id_of_news` int(255) NOT NULL,
  `name` char(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `rating`;
CREATE TABLE `rating` (
  `ip` int(255) NOT NULL,
  `id_of_news` int(255) NOT NULL,
  `comment` char(255) NOT NULL,
  `rating_of_news` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `rating` (`ip`, `id_of_news`, `comment`, `rating_of_news`) VALUES
(1,	1,	'I was waiting more from Vadim',	3);

DROP TABLE IF EXISTS `registration`;
CREATE TABLE `registration` (
  `ip` int(255) NOT NULL,
  `nickname` char(255) NOT NULL,
  `email` char(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `topic`;
CREATE TABLE `topic` (
  `id` int(255) NOT NULL,
  `topic_of_news` char(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- 2023-05-05 20:25:31

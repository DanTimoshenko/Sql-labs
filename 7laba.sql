Adminer 4.8.1 MySQL 5.5.5-10.3.32-MariaDB-1:10.3.32+maria~focal dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `registration`;
CREATE TABLE `registration` (
  `ip` int(255) NOT NULL,
  `nickname` char(255) NOT NULL,
  `email` char(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `registration` (`ip`, `nickname`, `email`) VALUES
(1,	'Danchick',	'123253263g@gmail.com'),
(2,	'AndriiSergiovich',	'andrii.khoroshun@khpi.edu.ua');

DROP TABLE IF EXISTS `topic`;
CREATE TABLE `topic` (
  `id` int(255) NOT NULL,
  `topic_of_news` char(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `topics` (`id`, `topic_of_news`) VALUES
(1,	'sport'),
(2,	'nature'),
(3,	'science');

DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(255) NOT NULL,
  `topic_id` int(255) NOT NULL,
  `name` char(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `news` (`id`, `news_id`, `name`) VALUES
(1,	1,	'Match of the Year: Daniil Timoshenko vs Vadim Plushnikov'),
(1,	2,	'Scientists have discovered an immortal animal'),
(1,	3,	'Physicists have discovered a new property of gravity');

DROP TABLE IF EXISTS `rating`;
CREATE TABLE `rating` (
  `ip` int(255) NOT NULL,
  `news_id` int(255) NOT NULL,
  `comment` char(255) NOT NULL,
  `rating_of_news` int(255) NOT NULL,
  KEY `rating_of_news` (`rating_of_news`),
  CONSTRAINT `rating_ibfk_1` FOREIGN KEY (`rating_of_news`) REFERENCES `numbers` (`rating_of_news`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `rating` (`ip`, `news_id`, `comment`, `rating_of_news`) VALUES
(1,	1,	'I was waiting more from Vadim',	2);

DROP TABLE IF EXISTS `numbers`;
CREATE TABLE `numbers` (
  `rating_of_news` int(255) NOT NULL,
  PRIMARY KEY (`rating_of_news`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `numbers` (`rating_of_news`) VALUES
(1),
(2),
(3),
(4),
(5);


-- 2023-05-05 21:04:23

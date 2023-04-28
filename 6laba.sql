SELECT cities.name,  regions.name
FROM cities, regions
WHERE cities.region=regions.uuid AND population >350000



SELECT cities.name,  regions.name
FROM cities, regions
WHERE cities.region=regions.uuid AND regions.name = 'Nord' 


SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `Line_of_metro`;
CREATE TABLE `Line_of_metro` (
  `id` int(255) NOT NULL,
  `name` char(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `Line_of_metro` (`id`, `name`) VALUES
(1,	'green'),
(2,	'red'),
(3,	'blue');

DROP TABLE IF EXISTS `station_of_metro`;
CREATE TABLE `station_of_metro` (
  `id_of_station` int(255) NOT NULL,
  `name_of_station` char(255) NOT NULL,
  `number_of_line` int(255) NOT NULL,
  `number_of_station_in_line` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `station_of_metro` (`id_of_station`, `name_of_station`, `number_of_line`, `number_of_station_in_line`) VALUES
(1,	'HolodnaGora',	2,	1),
(2,	'GeroevPrasi',	3,	1),
(3,	'Peremoga',	1,	1),
(4,	'Indystialna',	2,	13),
(5,	'IstorishniiMysei',	3,	8),
(6,	'MetroBudivnikiv',	1,	9);

DROP TABLE IF EXISTS `tranisition_on_line_to_line`;
CREATE TABLE `tranisition_on_line_to_line` (
  `from_line` int(255) NOT NULL,
  `to_line` int(255) NOT NULL,
  `from_station` int(255) NOT NULL,
  `to_station` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `tranisition_on_line_to_line` (`from_line`, `to_line`, `from_station`, `to_station`) VALUES
(2,	3,	4,	1);


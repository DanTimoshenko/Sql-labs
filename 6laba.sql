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

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `branches_of_metro`;
CREATE TABLE `branches_of_metro` (
  `name_of_branch` char(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name_of_city` char(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name_of_country` char(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `Cities_with_metro`;
CREATE TABLE `Cities_with_metro` (
  `Id` int(100) NOT NULL AUTO_INCREMENT,
  `Cities_with_metro` char(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Country` char(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `Cities_with_metro` (`Id`, `Cities_with_metro`, `Country`) VALUES
(1,	'Kharkiv',	'Ukraine'),
(2,	'Kiev',	'Ukraine'),
(3,	'Palma',	'Italy');

DROP TABLE IF EXISTS `places`;
CREATE TABLE `places` (
  `name` char(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch` char(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `Transition stations`;
CREATE TABLE `Transition stations` (
  `Зі станції` char(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `На станцію` char(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `З гілки` char(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `На гілку` char(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



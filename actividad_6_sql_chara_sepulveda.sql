-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.24-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para los_animales
DROP DATABASE IF EXISTS `los_animales`;
CREATE DATABASE IF NOT EXISTS `los_animales` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `los_animales`;

-- Volcando estructura para tabla los_animales.displacement_forms
DROP TABLE IF EXISTS `displacement_forms`;
CREATE TABLE IF NOT EXISTS `displacement_forms` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='esta tabla es para mostrar todo sobre como se desplazan los animales';

-- Volcando datos para la tabla los_animales.displacement_forms: ~3 rows (aproximadamente)
DELETE FROM `displacement_forms`;
INSERT INTO `displacement_forms` (`id`, `name`) VALUES
	(1, 'cuadrupedo'),
	(2, 'bipedo'),
	(3, 'reptar');

-- Volcando estructura para tabla los_animales.embryonic_developments
DROP TABLE IF EXISTS `embryonic_developments`;
CREATE TABLE IF NOT EXISTS `embryonic_developments` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='esta tabla es para mostrar todo sobre el desarrollo embrionario animal';

-- Volcando datos para la tabla los_animales.embryonic_developments: ~3 rows (aproximadamente)
DELETE FROM `embryonic_developments`;
INSERT INTO `embryonic_developments` (`id`, `name`) VALUES
	(1, 'oviparo'),
	(2, 'viviparo'),
	(3, 'ovoviviparo');

-- Volcando estructura para tabla los_animales.habitats
DROP TABLE IF EXISTS `habitats`;
CREATE TABLE IF NOT EXISTS `habitats` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='esta tabla es para saber los habitats de los animales';

-- Volcando datos para la tabla los_animales.habitats: ~3 rows (aproximadamente)
DELETE FROM `habitats`;
INSERT INTO `habitats` (`id`, `name`) VALUES
	(1, 'terrestre'),
	(2, 'acuatico'),
	(3, 'voladores');

-- Volcando estructura para tabla los_animales.habitats_species_animal
DROP TABLE IF EXISTS `habitats_species_animal`;
CREATE TABLE IF NOT EXISTS `habitats_species_animal` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `especies_animals_id` tinyint(4) NOT NULL,
  `habitats_id` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COMMENT='esta tabla es para unir las tablas especies de animal y sus habitats';

-- Volcando datos para la tabla los_animales.habitats_species_animal: ~13 rows (aproximadamente)
DELETE FROM `habitats_species_animal`;
INSERT INTO `habitats_species_animal` (`id`, `especies_animals_id`, `habitats_id`) VALUES
	(1, 1, 1),
	(2, 2, 1),
	(3, 3, 1),
	(4, 4, 2),
	(5, 5, 2),
	(6, 6, 1),
	(7, 7, 1),
	(8, 8, 1),
	(9, 9, 3),
	(10, 10, 1),
	(11, 11, 1),
	(12, 12, 3),
	(13, 13, 3);

-- Volcando estructura para tabla los_animales.species_animals
DROP TABLE IF EXISTS `species_animals`;
CREATE TABLE IF NOT EXISTS `species_animals` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `population` float NOT NULL,
  `fecha` date NOT NULL DEFAULT '2018-08-23',
  `types_food_id` smallint(6) NOT NULL,
  `embryonic_developments_id` smallint(6) NOT NULL,
  `states_conservation_id` smallint(6) NOT NULL,
  `displacement_forms_id` smallint(6) NOT NULL,
  `types_species_id` smallint(6) NOT NULL,
  `habitats_id` int(11) NOT NULL,
  `habitats_species_animal_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COMMENT='esta es la tabla mostramos todo sobre las especies de animales';

-- Volcando datos para la tabla los_animales.species_animals: ~13 rows (aproximadamente)
DELETE FROM `species_animals`;
INSERT INTO `species_animals` (`id`, `name`, `population`, `fecha`, `types_food_id`, `embryonic_developments_id`, `states_conservation_id`, `displacement_forms_id`, `types_species_id`, `habitats_id`, `habitats_species_animal_id`) VALUES
	(1, 'rana', 4740, '2018-08-23', 3, 1, 2, 1, 3, 0, 0),
	(2, 'serpiente', 3700, '2018-09-05', 1, 1, 2, 3, 3, 0, 0),
	(3, 'hipopotamo', 125000, '2018-08-23', 2, 2, 3, 1, 2, 0, 0),
	(4, 'oso polar', 30000, '2018-09-09', 1, 2, 3, 1, 2, 0, 0),
	(5, 'ballena azul', 25000, '2018-05-08', 1, 2, 3, 0, 2, 0, 0),
	(6, 'tigre blanco', 300, '2016-08-23', 1, 2, 3, 1, 4, 0, 0),
	(7, 'tigre bengala ', 3890, '2015-08-23', 1, 2, 3, 1, 4, 0, 0),
	(8, 'jirafa', 117000, '2014-08-23', 2, 2, 2, 1, 2, 0, 0),
	(9, 'gallina', 23000000, '2020-08-23', 3, 1, 2, 2, 2, 0, 0),
	(10, 'tiranosaurio rex', 2500000, '2022-08-23', 1, 1, 1, 2, 1, 0, 0),
	(11, 'mono cabeciblanco', 7000, '2018-04-23', 3, 2, 3, 1, 2, 0, 0),
	(12, 'condor andino', 6700, '2015-05-23', 1, 1, 3, 2, 0, 0, 0),
	(13, 'gorila', 1063, '2018-08-23', 2, 2, 3, 1, 2, 0, 0);

-- Volcando estructura para tabla los_animales.states_conservation
DROP TABLE IF EXISTS `states_conservation`;
CREATE TABLE IF NOT EXISTS `states_conservation` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='esta tabla es para saber todo sobre el estado de supervivvencia de los animales';

-- Volcando datos para la tabla los_animales.states_conservation: ~3 rows (aproximadamente)
DELETE FROM `states_conservation`;
INSERT INTO `states_conservation` (`id`, `name`) VALUES
	(1, 'extinto'),
	(2, 'bajo riesgo'),
	(3, 'en peligro de extinsion');

-- Volcando estructura para tabla los_animales.types_food
DROP TABLE IF EXISTS `types_food`;
CREATE TABLE IF NOT EXISTS `types_food` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='esta tabla es para mostrar todo sobre el tipo de alimentacion  de animales';

-- Volcando datos para la tabla los_animales.types_food: ~3 rows (aproximadamente)
DELETE FROM `types_food`;
INSERT INTO `types_food` (`id`, `name`) VALUES
	(1, 'carnivoro'),
	(2, 'herbivoro'),
	(3, 'omnivoro');

-- Volcando estructura para tabla los_animales.types_species
DROP TABLE IF EXISTS `types_species`;
CREATE TABLE IF NOT EXISTS `types_species` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='esta tabla es para saber todo sobre los tipos de especies de animales';

-- Volcando datos para la tabla los_animales.types_species: ~4 rows (aproximadamente)
DELETE FROM `types_species`;
INSERT INTO `types_species` (`id`, `name`) VALUES
	(1, 'reptil'),
	(2, 'mamifero'),
	(3, 'anfibio'),
	(4, 'felino');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;

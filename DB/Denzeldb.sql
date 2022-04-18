-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema denzelmoviesdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `denzelmoviesdb` ;

-- -----------------------------------------------------
-- Schema denzelmoviesdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `denzelmoviesdb` DEFAULT CHARACTER SET utf8 ;
USE `denzelmoviesdb` ;

-- -----------------------------------------------------
-- Table `movies`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `movies` ;

CREATE TABLE IF NOT EXISTS `movies` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(100) NOT NULL,
  `release_year` INT NOT NULL,
  `rating` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS denzelmovies@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'denzelmovies'@'localhost' IDENTIFIED BY 'denzelmovies';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'denzelmovies'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `movies`
-- -----------------------------------------------------
START TRANSACTION;
USE `denzelmoviesdb`;
INSERT INTO `movies` (`id`, `title`, `release_year`, `rating`) VALUES (1, 'The Mighty Quinn', 1989, 'R');
INSERT INTO `movies` (`id`, `title`, `release_year`, `rating`) VALUES (2, 'For Queen & Country', 1989, 'R');
INSERT INTO `movies` (`id`, `title`, `release_year`, `rating`) VALUES (3, 'Glory', 1989, 'R');
INSERT INTO `movies` (`id`, `title`, `release_year`, `rating`) VALUES (4, 'Heart Condition', 1990, 'R');
INSERT INTO `movies` (`id`, `title`, `release_year`, `rating`) VALUES (5, 'Malcom X', 1992, 'PG13');
INSERT INTO `movies` (`id`, `title`, `release_year`, `rating`) VALUES (6, 'The Pelican Brief', 1993, 'PG13');
INSERT INTO `movies` (`id`, `title`, `release_year`, `rating`) VALUES (7, 'Crimson Tide', 1995, 'R');
INSERT INTO `movies` (`id`, `title`, `release_year`, `rating`) VALUES (8, 'Courage Under Fire', 1996, 'R');
INSERT INTO `movies` (`id`, `title`, `release_year`, `rating`) VALUES (9, 'Fallen', 1998, 'R');
INSERT INTO `movies` (`id`, `title`, `release_year`, `rating`) VALUES (10, 'The Siege', 1998, 'R');
INSERT INTO `movies` (`id`, `title`, `release_year`, `rating`) VALUES (11, 'The Bone Collector', 1999, 'R');
INSERT INTO `movies` (`id`, `title`, `release_year`, `rating`) VALUES (12, 'Remember the Titans', 2000, 'PG');
INSERT INTO `movies` (`id`, `title`, `release_year`, `rating`) VALUES (13, 'Traingin Day', 2001, 'R');
INSERT INTO `movies` (`id`, `title`, `release_year`, `rating`) VALUES (14, 'John Q', 2002, 'PG13');
INSERT INTO `movies` (`id`, `title`, `release_year`, `rating`) VALUES (15, 'Man on Fire', 2004, 'R');
INSERT INTO `movies` (`id`, `title`, `release_year`, `rating`) VALUES (16, 'The Manchurian Candidate', 2004, 'R');
INSERT INTO `movies` (`id`, `title`, `release_year`, `rating`) VALUES (17, 'Inside Man', 2006, 'R');
INSERT INTO `movies` (`id`, `title`, `release_year`, `rating`) VALUES (18, 'Deja Vu', 2006, 'PG13');
INSERT INTO `movies` (`id`, `title`, `release_year`, `rating`) VALUES (19, 'American Gangster', 2007, 'R');
INSERT INTO `movies` (`id`, `title`, `release_year`, `rating`) VALUES (20, 'The Book of Eli', 2010, 'R');
INSERT INTO `movies` (`id`, `title`, `release_year`, `rating`) VALUES (21, 'Safe House', 2012, 'R');
INSERT INTO `movies` (`id`, `title`, `release_year`, `rating`) VALUES (22, 'Flight', 2012, 'R');
INSERT INTO `movies` (`id`, `title`, `release_year`, `rating`) VALUES (23, '2 Guns', 2013, 'R');
INSERT INTO `movies` (`id`, `title`, `release_year`, `rating`) VALUES (24, 'The Equalizer', 2014, 'R');
INSERT INTO `movies` (`id`, `title`, `release_year`, `rating`) VALUES (25, 'The Magnificent Seven', 2016, 'R');
INSERT INTO `movies` (`id`, `title`, `release_year`, `rating`) VALUES (26, 'Fences', 2016, 'PG13');
INSERT INTO `movies` (`id`, `title`, `release_year`, `rating`) VALUES (27, 'The Equalizer 2', 2018, 'R');
INSERT INTO `movies` (`id`, `title`, `release_year`, `rating`) VALUES (28, 'The Little Things', 2021, 'R');

COMMIT;


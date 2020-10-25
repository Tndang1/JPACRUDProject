-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema swissarmyknifedb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `swissarmyknifedb` ;

-- -----------------------------------------------------
-- Schema swissarmyknifedb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `swissarmyknifedb` DEFAULT CHARACTER SET utf8 ;
USE `swissarmyknifedb` ;

-- -----------------------------------------------------
-- Table `tool`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tool` ;

CREATE TABLE IF NOT EXISTS `tool` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `in_production` CHAR(1) NULL,
  `price` DECIMAL(5,2) NULL,
  `size` TINYINT(3) NULL,
  `scale_tools` VARCHAR(45) NULL,
  `main_tools` VARCHAR(100) NULL,
  `back_tools` VARCHAR(100) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS sakuser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'sakuser'@'localhost' IDENTIFIED BY 'sakuser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'sakuser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `tool`
-- -----------------------------------------------------
START TRANSACTION;
USE `swissarmyknifedb`;
INSERT INTO `tool` (`id`, `name`, `in_production`, `price`, `size`, `scale_tools`, `main_tools`, `back_tools`) VALUES (1, 'Classic', 't', 16.99, 58, 'toothpick, tweezers', 'Knife, nail file, scissors', NULL);
INSERT INTO `tool` (`id`, `name`, `in_production`, `price`, `size`, `scale_tools`, `main_tools`, `back_tools`) VALUES (2, 'Spartan', 't', 24.00, 91, 'toothpick, tweezers', 'large knife, small knife, bottle opener/screwdriver, can opener/screwdriver', 'corkscrew, awl');
INSERT INTO `tool` (`id`, `name`, `in_production`, `price`, `size`, `scale_tools`, `main_tools`, `back_tools`) VALUES (3, 'Trekker', 't', 46.00, 111, 'toothpick, tweezers', 'knife, saw, bottle opener, can opener', 'phillips screwdriver, awl');
INSERT INTO `tool` (`id`, `name`, `in_production`, `price`, `size`, `scale_tools`, `main_tools`, `back_tools`) VALUES (4, 'Compact', 't', 44.99, 91, 'toothpick, tweezers, pen, safety pin', 'knife, scissors, bottle/can opener', 'corkscrew, mini screwdriver, hook');

COMMIT;


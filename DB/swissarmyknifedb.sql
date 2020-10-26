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
  `brand` VARCHAR(25) NOT NULL,
  `description` VARCHAR(45) NULL,
  `year_bought` YEAR NULL,
  `location` VARCHAR(45) NULL,
  `state_condition` VARCHAR(45) NULL,
  `power_type` VARCHAR(45) NULL,
  `replacement_cost` DECIMAL(6,2) NULL,
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
INSERT INTO `tool` (`id`, `brand`, `description`, `year_bought`, `location`, `state_condition`, `power_type`, `replacement_cost`) VALUES (1, 'Dewalt', '1/4 Impact Driver 20v XR', 2014, 'Morgan House', 'Worn', 'battery', 139.00);
INSERT INTO `tool` (`id`, `brand`, `description`, `year_bought`, `location`, `state_condition`, `power_type`, `replacement_cost`) VALUES (2, 'Dewalt', '1/2 in Drill 20v XR', 2014, 'Morgan House', 'Good', 'battery', 139.00);
INSERT INTO `tool` (`id`, `brand`, `description`, `year_bought`, `location`, `state_condition`, `power_type`, `replacement_cost`) VALUES (3, 'Dewalt', 'Oscillating Multitool 20v XR', 2018, 'Virginia House', 'Like new', 'battery', 139.00);
INSERT INTO `tool` (`id`, `brand`, `description`, `year_bought`, `location`, `state_condition`, `power_type`, `replacement_cost`) VALUES (4, 'Dewalt', 'Portable Vacuum 20v XR', 2019, 'Dang House', 'Good', 'battery/plugin', 159.00);
INSERT INTO `tool` (`id`, `brand`, `description`, `year_bought`, `location`, `state_condition`, `power_type`, `replacement_cost`) VALUES (5, 'Bosch', 'Flexiclick 12v', 2017, 'Dang House', 'Good', 'battery', 129.00);

COMMIT;


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
-- Table `swiss_army_knife`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `swiss_army_knife` ;

CREATE TABLE IF NOT EXISTS `swiss_army_knife` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
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
-- Data for table `swiss_army_knife`
-- -----------------------------------------------------
START TRANSACTION;
USE `swissarmyknifedb`;
INSERT INTO `swiss_army_knife` (`id`, `name`) VALUES (1, 'Classic');

COMMIT;


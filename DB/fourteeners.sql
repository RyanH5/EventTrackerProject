-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `mydb` ;

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `fourteener`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `fourteener` ;

CREATE TABLE IF NOT EXISTS `fourteener` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `rank` INT NULL,
  `peak` VARCHAR(200) NULL,
  `elevation` VARCHAR(200) NULL,
  `mtn_range` VARCHAR(200) NULL,
  `complete` TINYINT NULL DEFAULT 0,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS marmot@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'marmot'@'localhost' IDENTIFIED BY 'marmot';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'marmot'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `fourteener`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `fourteener` (`id`, `rank`, `peak`, `elevation`, `mtn_range`, `complete`) VALUES (1, 1, 'Mt. Elbert', '14,433', 'Sawatch', 0);
INSERT INTO `fourteener` (`id`, `rank`, `peak`, `elevation`, `mtn_range`, `complete`) VALUES (2, 2, 'Mt. Massive', '14,421', 'Sawatch', 0);
INSERT INTO `fourteener` (`id`, `rank`, `peak`, `elevation`, `mtn_range`, `complete`) VALUES (3, 3, 'Mt. Harvard', '14,420', 'Sawatch', 0);
INSERT INTO `fourteener` (`id`, `rank`, `peak`, `elevation`, `mtn_range`, `complete`) VALUES (4, 4, 'Blanca Peak', '14,345', 'Sangre de Cristo', 0);
INSERT INTO `fourteener` (`id`, `rank`, `peak`, `elevation`, `mtn_range`, `complete`) VALUES (5, 5, 'La Plata Peak', '14,336', 'Sawatch', 0);
INSERT INTO `fourteener` (`id`, `rank`, `peak`, `elevation`, `mtn_range`, `complete`) VALUES (6, 6, 'Uncompahgre Peak', '14,309', 'San Juan', 0);
INSERT INTO `fourteener` (`id`, `rank`, `peak`, `elevation`, `mtn_range`, `complete`) VALUES (7, 7, 'Crestone Peak', '14,294', 'Sangre de Cristo', 0);
INSERT INTO `fourteener` (`id`, `rank`, `peak`, `elevation`, `mtn_range`, `complete`) VALUES (8, 8, 'Mt. Lincoln', '14,286', 'Mosquito', 0);
INSERT INTO `fourteener` (`id`, `rank`, `peak`, `elevation`, `mtn_range`, `complete`) VALUES (9, 9, 'Grays Peak', '14,270', 'Front', 0);
INSERT INTO `fourteener` (`id`, `rank`, `peak`, `elevation`, `mtn_range`, `complete`) VALUES (10, 10, 'Mt. Antero', '14,269', 'Sawatch', 0);
INSERT INTO `fourteener` (`id`, `rank`, `peak`, `elevation`, `mtn_range`, `complete`) VALUES (11, 11, 'Torreys Peak', '14,267', 'Front', 0);
INSERT INTO `fourteener` (`id`, `rank`, `peak`, `elevation`, `mtn_range`, `complete`) VALUES (12, 12, 'Castle Peak', '14,265', 'Elk', 0);
INSERT INTO `fourteener` (`id`, `rank`, `peak`, `elevation`, `mtn_range`, `complete`) VALUES (13, 13, 'Quandary Peak', '14,265', 'Tenmile', 0);
INSERT INTO `fourteener` (`id`, `rank`, `peak`, `elevation`, `mtn_range`, `complete`) VALUES (14, 14, 'Mt. Evans', '14,264', 'Front', 0);
INSERT INTO `fourteener` (`id`, `rank`, `peak`, `elevation`, `mtn_range`, `complete`) VALUES (15, 15, 'Longs Peak', '14,255', 'Front', 0);
INSERT INTO `fourteener` (`id`, `rank`, `peak`, `elevation`, `mtn_range`, `complete`) VALUES (16, 16, 'Mt. Wilson', '14,246', 'San Juan', 0);
INSERT INTO `fourteener` (`id`, `rank`, `peak`, `elevation`, `mtn_range`, `complete`) VALUES (17, 17, 'Mt. Shavano', '14,229', 'Sawatch', 0);
INSERT INTO `fourteener` (`id`, `rank`, `peak`, `elevation`, `mtn_range`, `complete`) VALUES (18, 18, 'Mt. Princeton', '14,197', 'Sawatch', 0);
INSERT INTO `fourteener` (`id`, `rank`, `peak`, `elevation`, `mtn_range`, `complete`) VALUES (19, 19, 'Mt. Belford', '14,197', 'Sawatch', 0);
INSERT INTO `fourteener` (`id`, `rank`, `peak`, `elevation`, `mtn_range`, `complete`) VALUES (20, 20, 'Crestone Needle', '14,197', 'Sangre de Cristo', 0);
INSERT INTO `fourteener` (`id`, `rank`, `peak`, `elevation`, `mtn_range`, `complete`) VALUES (21, 21, 'Mt. Yale', '14,196', 'Sawatch', 0);
INSERT INTO `fourteener` (`id`, `rank`, `peak`, `elevation`, `mtn_range`, `complete`) VALUES (22, 22, 'Mt. Bross', '14,172', 'Mosquito', 0);
INSERT INTO `fourteener` (`id`, `rank`, `peak`, `elevation`, `mtn_range`, `complete`) VALUES (23, 23, 'Kit Carson Peak', '14,165', 'Sangre de Cristo', 0);
INSERT INTO `fourteener` (`id`, `rank`, `peak`, `elevation`, `mtn_range`, `complete`) VALUES (24, 24, 'Maroon Peak', '14,156', 'Elk', 0);
INSERT INTO `fourteener` (`id`, `rank`, `peak`, `elevation`, `mtn_range`, `complete`) VALUES (25, 25, 'Tabeguache Peak', '14,155', 'Sawatch', 0);
INSERT INTO `fourteener` (`id`, `rank`, `peak`, `elevation`, `mtn_range`, `complete`) VALUES (26, 26, 'Mt. Oxford', '14,153', 'Sawatch', 0);
INSERT INTO `fourteener` (`id`, `rank`, `peak`, `elevation`, `mtn_range`, `complete`) VALUES (27, 27, 'Mt. Sneffels', '14,150', 'San Juan', 0);
INSERT INTO `fourteener` (`id`, `rank`, `peak`, `elevation`, `mtn_range`, `complete`) VALUES (28, 28, 'Mt. Democrat', '14,148', 'Mosquito', 0);
INSERT INTO `fourteener` (`id`, `rank`, `peak`, `elevation`, `mtn_range`, `complete`) VALUES (29, 29, 'Capitol Peak', '14,130', 'Elk', 0);
INSERT INTO `fourteener` (`id`, `rank`, `peak`, `elevation`, `mtn_range`, `complete`) VALUES (30, 30, 'Pikes Peak', '14,110', 'Front', 0);
INSERT INTO `fourteener` (`id`, `rank`, `peak`, `elevation`, `mtn_range`, `complete`) VALUES (31, 31, 'Snowmass Mountain', '14,092', 'Elk', 0);
INSERT INTO `fourteener` (`id`, `rank`, `peak`, `elevation`, `mtn_range`, `complete`) VALUES (32, 32, 'Windom Peak', '14,087', 'San Juan', 0);
INSERT INTO `fourteener` (`id`, `rank`, `peak`, `elevation`, `mtn_range`, `complete`) VALUES (33, 33, 'Mt. Eolus', '14,083', 'San Juan', 0);
INSERT INTO `fourteener` (`id`, `rank`, `peak`, `elevation`, `mtn_range`, `complete`) VALUES (34, 34, 'Challenger Point', '14,081', 'Sangre de Cristo', 0);
INSERT INTO `fourteener` (`id`, `rank`, `peak`, `elevation`, `mtn_range`, `complete`) VALUES (35, 35, 'Mt. Columbia', '14,073', 'Sawatch', 0);
INSERT INTO `fourteener` (`id`, `rank`, `peak`, `elevation`, `mtn_range`, `complete`) VALUES (36, 36, 'Missouri Mountain', '14,067', 'Sawatch', 0);
INSERT INTO `fourteener` (`id`, `rank`, `peak`, `elevation`, `mtn_range`, `complete`) VALUES (37, 37, 'Humboldt Peak', '14,064', 'Sangre de Cristo', 0);
INSERT INTO `fourteener` (`id`, `rank`, `peak`, `elevation`, `mtn_range`, `complete`) VALUES (38, 38, 'Mt. Bierstadt', '14,060', 'Front', 0);
INSERT INTO `fourteener` (`id`, `rank`, `peak`, `elevation`, `mtn_range`, `complete`) VALUES (39, 39, 'Sunlight Peak', '14,059', 'San Juan', 0);
INSERT INTO `fourteener` (`id`, `rank`, `peak`, `elevation`, `mtn_range`, `complete`) VALUES (40, 40, 'Handies Peak', '14,048', 'San Juan', 0);
INSERT INTO `fourteener` (`id`, `rank`, `peak`, `elevation`, `mtn_range`, `complete`) VALUES (41, 41, 'Culebra Peak', '14,047', 'Sangre de Cristo', 0);
INSERT INTO `fourteener` (`id`, `rank`, `peak`, `elevation`, `mtn_range`, `complete`) VALUES (42, 42, 'Mt. Lindsey', '14,042', 'Sangre de Cristo', 0);
INSERT INTO `fourteener` (`id`, `rank`, `peak`, `elevation`, `mtn_range`, `complete`) VALUES (43, 43, 'Ellingwood Point', '14,042', 'Sangre de Cristo', 0);
INSERT INTO `fourteener` (`id`, `rank`, `peak`, `elevation`, `mtn_range`, `complete`) VALUES (44, 44, 'Little Bear Peak', '14,037', 'Sangre de Cristo', 0);
INSERT INTO `fourteener` (`id`, `rank`, `peak`, `elevation`, `mtn_range`, `complete`) VALUES (45, 45, 'Mt. Sherman', '14,036', 'Mosquito', 0);
INSERT INTO `fourteener` (`id`, `rank`, `peak`, `elevation`, `mtn_range`, `complete`) VALUES (46, 46, 'Redcloud Peak', '14,034', 'San Juan', 0);
INSERT INTO `fourteener` (`id`, `rank`, `peak`, `elevation`, `mtn_range`, `complete`) VALUES (47, 47, 'Pyramid Peak', '14,018', 'Elk', 0);
INSERT INTO `fourteener` (`id`, `rank`, `peak`, `elevation`, `mtn_range`, `complete`) VALUES (48, 48, 'Wilson Peak', '14,017', 'San Juan', 0);
INSERT INTO `fourteener` (`id`, `rank`, `peak`, `elevation`, `mtn_range`, `complete`) VALUES (49, 49, 'Wetterhorn Peak', '14,015', 'San Juan', 0);
INSERT INTO `fourteener` (`id`, `rank`, `peak`, `elevation`, `mtn_range`, `complete`) VALUES (50, 50, 'San Luis Peak', '14,014', 'San Juan', 0);
INSERT INTO `fourteener` (`id`, `rank`, `peak`, `elevation`, `mtn_range`, `complete`) VALUES (51, 51, 'Mt. of the Holy Cross', '14,005', 'Sawatch', 0);
INSERT INTO `fourteener` (`id`, `rank`, `peak`, `elevation`, `mtn_range`, `complete`) VALUES (52, 52, 'Huron Peak', '14,003', 'Sawatch', 0);
INSERT INTO `fourteener` (`id`, `rank`, `peak`, `elevation`, `mtn_range`, `complete`) VALUES (53, 53, 'Sunshine Peak', '14,001', 'San Juan', 0);

COMMIT;


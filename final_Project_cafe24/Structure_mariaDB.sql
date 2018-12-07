-- MySQL Script generated by MySQL Workbench
-- Sun Dec  2 14:26:04 2018
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema ktm06069
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `ktm06069` ;

-- -----------------------------------------------------
-- Schema ktm06069
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `ktm06069` DEFAULT CHARACTER SET utf8 ;
USE `ktm06069` ;

-- -----------------------------------------------------
-- Table `ktm06069`.`made_wedding_halls`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ktm06069`.`made_wedding_halls` ;

CREATE TABLE IF NOT EXISTS `ktm06069`.`made_wedding_halls` (
  `hall_hno` INT(11) NOT NULL AUTO_INCREMENT,
  `hall_name` VARCHAR(50) NOT NULL,
  `hall_location` VARCHAR(100) NOT NULL,
  `hall_person` INT(11) NOT NULL,
  `hall_price` INT(11) NOT NULL,
  `hall_thema` VARCHAR(150) NOT NULL,
  `hall_contents` VARCHAR(250) NOT NULL,
  `hall_link` VARCHAR(25) NOT NULL,
  `hall_area` INT(11) NOT NULL,
  PRIMARY KEY (`hall_hno`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `ktm06069`.`made_wedding_halls_img`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ktm06069`.`made_wedding_halls_img` ;

CREATE TABLE IF NOT EXISTS `ktm06069`.`made_wedding_halls_img` (
  `ino` INT(11) NOT NULL AUTO_INCREMENT,
  `fullName` VARCHAR(200) NOT NULL,
  `regdate` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `hno` INT(11) NOT NULL,
  `area` INT(11) NOT NULL,
  `link` VARCHAR(25) NOT NULL,
  PRIMARY KEY (`ino`, `fullName`, `hno`),
  CONSTRAINT `fk_made_wedding_halls_img_hno`
    FOREIGN KEY (`hno`)
    REFERENCES `ktm06069`.`made_wedding_halls` (`hall_hno`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE INDEX `fk_made_wedding_halls_img_idx` ON `ktm06069`.`made_wedding_halls_img` (`hno` ASC);


-- -----------------------------------------------------
-- Table `ktm06069`.`made_wedding_member`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ktm06069`.`made_wedding_member` ;

CREATE TABLE IF NOT EXISTS `ktm06069`.`made_wedding_member` (
  `mwno` INT(11) NOT NULL AUTO_INCREMENT,
  `mwid` VARCHAR(20) NOT NULL,
  `mwpw` VARCHAR(500) NOT NULL,
  `mwname` VARCHAR(20) NOT NULL,
  `mwmobile` VARCHAR(11) NOT NULL,
  `mwbirth` VARCHAR(6) NOT NULL,
  `mwregdate` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isOut` INT(1) NULL DEFAULT '0',
  PRIMARY KEY (`mwno`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE UNIQUE INDEX `mwid_UNIQUE` ON `ktm06069`.`made_wedding_member` (`mwid` ASC);

CREATE UNIQUE INDEX `isOut_UNIQUE` ON `ktm06069`.`made_wedding_member` (`isOut` ASC);


-- -----------------------------------------------------
-- Table `ktm06069`.`made_wedding_step1`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ktm06069`.`made_wedding_step1` ;

CREATE TABLE IF NOT EXISTS `ktm06069`.`made_wedding_step1` (
  `memberID` VARCHAR(20) NOT NULL,
  `list_day` VARCHAR(150) NOT NULL,
  `list_week` VARCHAR(150) NOT NULL,
  `list_area` VARCHAR(150) NOT NULL,
  `list_etc` VARCHAR(200) NOT NULL,
  PRIMARY KEY (`memberID`),
  CONSTRAINT `step1_memberID`
    FOREIGN KEY (`memberID`)
    REFERENCES `ktm06069`.`made_wedding_member` (`mwid`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `ktm06069`.`made_wedding_step2`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ktm06069`.`made_wedding_step2` ;

CREATE TABLE IF NOT EXISTS `ktm06069`.`made_wedding_step2` (
  `memberID` VARCHAR(20) NOT NULL,
  `list_day` VARCHAR(150) NOT NULL,
  `list_week` VARCHAR(150) NOT NULL,
  `list_area` VARCHAR(150) NOT NULL,
  `list_etc` VARCHAR(200) NOT NULL,
  PRIMARY KEY (`memberID`),
  CONSTRAINT `step2_memberID`
    FOREIGN KEY (`memberID`)
    REFERENCES `ktm06069`.`made_wedding_member` (`mwid`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `ktm06069`.`made_wedding_step3`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ktm06069`.`made_wedding_step3` ;

CREATE TABLE IF NOT EXISTS `ktm06069`.`made_wedding_step3` (
  `memberID` VARCHAR(20) NOT NULL,
  `list_day` VARCHAR(150) NOT NULL,
  `list_week` VARCHAR(150) NOT NULL,
  `list_area` VARCHAR(150) NOT NULL,
  `list_etc` VARCHAR(200) NOT NULL,
  PRIMARY KEY (`memberID`),
  CONSTRAINT `step3_memberID`
    FOREIGN KEY (`memberID`)
    REFERENCES `ktm06069`.`made_wedding_member` (`mwid`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `ktm06069`.`made_wedding_step4`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ktm06069`.`made_wedding_step4` ;

CREATE TABLE IF NOT EXISTS `ktm06069`.`made_wedding_step4` (
  `memberID` VARCHAR(20) NOT NULL,
  `list_day` VARCHAR(150) NOT NULL,
  `list_week` VARCHAR(150) NOT NULL,
  `list_area` VARCHAR(150) NOT NULL,
  `list_etc` VARCHAR(200) NOT NULL,
  PRIMARY KEY (`memberID`),
  CONSTRAINT `step4_memberID`
    FOREIGN KEY (`memberID`)
    REFERENCES `ktm06069`.`made_wedding_member` (`mwid`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `ktm06069`.`made_wedding_studios`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ktm06069`.`made_wedding_studios` ;

CREATE TABLE IF NOT EXISTS `ktm06069`.`made_wedding_studios` (
  `studio_hno` INT(11) NOT NULL AUTO_INCREMENT,
  `studio_name` VARCHAR(50) NOT NULL,
  `studio_location` VARCHAR(100) NOT NULL,
  `studio_person` INT(11) NOT NULL,
  `studio_price` INT(11) NOT NULL,
  `studio_thema` VARCHAR(150) NOT NULL,
  `studio_contents` VARCHAR(250) NOT NULL,
  `studio_link` VARCHAR(25) NOT NULL,
  `studio_area` INT(11) NOT NULL,
  PRIMARY KEY (`studio_hno`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `ktm06069`.`made_wedding_studios_img`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ktm06069`.`made_wedding_studios_img` ;

CREATE TABLE IF NOT EXISTS `ktm06069`.`made_wedding_studios_img` (
  `ino` INT(11) NOT NULL AUTO_INCREMENT,
  `fullName` VARCHAR(200) NOT NULL,
  `regdate` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `hno` INT(11) NOT NULL,
  `area` INT(11) NOT NULL,
  `link` VARCHAR(25) NOT NULL,
  PRIMARY KEY (`ino`, `fullName`, `hno`),
  CONSTRAINT `fk_made_wedding_studios_img_hno`
    FOREIGN KEY (`hno`)
    REFERENCES `ktm06069`.`made_wedding_studios` (`studio_hno`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE INDEX `fk_made_wedding_studios_img_hno_idx` ON `ktm06069`.`made_wedding_studios_img` (`hno` ASC);


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

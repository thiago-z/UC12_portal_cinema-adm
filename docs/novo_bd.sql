-- MySQL Script generated by MySQL Workbench
-- 04/03/18 16:27:46
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema portal_cinema_1
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema portal_cinema_1
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `portal_cinema_1` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `portal_cinema_1` ;

-- -----------------------------------------------------
-- Table `portal_cinema_1`.`filmes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `portal_cinema_1`.`filmes` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(100) NULL,
  `nomeOriginal` VARCHAR(100) NULL,
  `estreia` VARCHAR(45) NULL,
  `genero` VARCHAR(45) NULL,
  `paisOrigem` VARCHAR(100) NULL,
  `diretor` VARCHAR(100) NULL,
  `poster` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `portal_cinema_1`.`noticias`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `portal_cinema_1`.`noticias` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `tipo` INT(1) NULL DEFAULT 1,
  `titulo` VARCHAR(100) NULL,
  `subtitulo` VARCHAR(200) NULL,
  `texto` TEXT NULL,
  `data` DATE NULL,
  `hora` TIME NULL,
  `nome` VARCHAR(100) NULL,
  `email` VARCHAR(100) NULL,
  `autor` INT NULL,
  `relacionado` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `ID_FK_filme_idx` (`relacionado` ASC),
  CONSTRAINT `ID_FK_filme`
    FOREIGN KEY (`relacionado`)
    REFERENCES `portal_cinema_1`.`filmes` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `portal_cinema_1`.`usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `portal_cinema_1`.`usuarios` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(100) NULL,
  `email` VARCHAR(100) NULL,
  `nomeUser` VARCHAR(45) NULL,
  `senha` VARCHAR(100) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

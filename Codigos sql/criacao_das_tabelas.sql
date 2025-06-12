-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`time`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`time` (
  `id_time` INT NOT NULL AUTO_INCREMENT,
  `id_administrador` INT NOT NULL,
  `id_tecnico` INT NOT NULL,
  `nome_do_time` VARCHAR(255) NOT NULL,
  `icone_time` VARCHAR(255) NULL,
  PRIMARY KEY (`id_time`),
  INDEX `fk_time_usuario1_idx` (`id_administrador` ASC) VISIBLE,
  INDEX `fk_time_usuario2_idx` (`id_tecnico` ASC) VISIBLE,
  UNIQUE INDEX `nome_do_time_UNIQUE` (`nome_do_time` ASC) VISIBLE,
  CONSTRAINT `fk_time_usuario1`
    FOREIGN KEY (`id_administrador`)
    REFERENCES `mydb`.`usuario` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_time_usuario2`
    FOREIGN KEY (`id_tecnico`)
    REFERENCES `mydb`.`usuario` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`usuario` (
  `id_usuario` INT NOT NULL AUTO_INCREMENT,
  `usuario_id_time` INT NULL,
  `email` VARCHAR(255) NOT NULL,
  `nome` VARCHAR(255) NOT NULL,
  `senha` VARCHAR(255) NOT NULL,
  `cargo` VARCHAR(45) NULL,
  `foto_de_perfil` VARCHAR(255) NULL,
  `rota` VARCHAR(45) NULL,
  PRIMARY KEY (`id_usuario`),
  INDEX `fk_usuario_time1_idx` (`usuario_id_time` ASC) VISIBLE,
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE,
  CONSTRAINT `fk_usuario_time1`
    FOREIGN KEY (`usuario_id_time`)
    REFERENCES `mydb`.`time` (`id_time`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`treino`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`treino` (
  `id_treino` INT NOT NULL AUTO_INCREMENT,
  `treino_id_time` INT NOT NULL,
  `data` DATE NOT NULL,
  `adversario` VARCHAR(255) NULL,
  `resultado` VARCHAR(20) NOT NULL,
  `tipo_de_treino` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_treino`),
  INDEX `fk_treino_time1_idx` (`treino_id_time` ASC) VISIBLE,
  CONSTRAINT `fk_treino_time1`
    FOREIGN KEY (`treino_id_time`)
    REFERENCES `mydb`.`time` (`id_time`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`conta_league`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`conta_league` (
  `id_conta_league` INT NOT NULL AUTO_INCREMENT,
  `conta_league_id_usuario` INT NOT NULL,
  `nome_no_jogo` VARCHAR(255) NOT NULL,
  `tagline` VARCHAR(45) NOT NULL,
  `puuid` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id_conta_league`),
  INDEX `fk_conta_league_usuario1_idx` (`conta_league_id_usuario` ASC) VISIBLE,
  UNIQUE INDEX `puuid_UNIQUE` (`puuid` ASC) VISIBLE,
  CONSTRAINT `fk_conta_league_usuario1`
    FOREIGN KEY (`conta_league_id_usuario`)
    REFERENCES `mydb`.`usuario` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`campeao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`campeao` (
  `id_campeao` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `imagem_url` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id_campeao`),
  UNIQUE INDEX `nome_UNIQUE` (`nome` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`treino_has_conta_league`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`treino_has_conta_league` (
  `treino_id_treino` INT NOT NULL,
  `conta_league_id_conta_league` INT NOT NULL,
  `campeao_id_campeao` INT NOT NULL,
  `abates` INT NOT NULL,
  `assistencias` INT NOT NULL,
  `mortes` INT NOT NULL,
  PRIMARY KEY (`treino_id_treino`, `conta_league_id_conta_league`),
  INDEX `fk_treino_has_conta_league_conta_league1_idx` (`conta_league_id_conta_league` ASC) VISIBLE,
  INDEX `fk_treino_has_conta_league_treino1_idx` (`treino_id_treino` ASC) VISIBLE,
  INDEX `fk_treino_has_conta_league_campeao1_idx` (`campeao_id_campeao` ASC) VISIBLE,
  CONSTRAINT `fk_treino_has_conta_league_treino1`
    FOREIGN KEY (`treino_id_treino`)
    REFERENCES `mydb`.`treino` (`id_treino`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_treino_has_conta_league_conta_league1`
    FOREIGN KEY (`conta_league_id_conta_league`)
    REFERENCES `mydb`.`conta_league` (`id_conta_league`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_treino_has_conta_league_campeao1`
    FOREIGN KEY (`campeao_id_campeao`)
    REFERENCES `mydb`.`campeao` (`id_campeao`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

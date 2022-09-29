-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema tienda
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `tienda` ;

-- -----------------------------------------------------
-- Schema tienda
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `tienda` ;
USE `tienda` ;

-- -----------------------------------------------------
-- Table `tienda`.`clientes`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tienda`.`clientes` ;

CREATE TABLE IF NOT EXISTS `tienda`.`clientes` (
  `RFC` VARCHAR(13) NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `apellidos` VARCHAR(45) NOT NULL,
  `direccion` VARCHAR(45) NOT NULL,
  `fecha_nacimiento` DATE NOT NULL,
  PRIMARY KEY (`RFC`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `tienda`.`proveedores`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tienda`.`proveedores` ;

CREATE TABLE IF NOT EXISTS `tienda`.`proveedores` (
  `RFC` VARCHAR(13) NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `direccion` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`RFC`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `tienda`.`productos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tienda`.`productos` ;

CREATE TABLE IF NOT EXISTS `tienda`.`productos` (
  `codigo` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `precio_unitario` VARCHAR(45) NOT NULL,
  `proveedores_RFC` VARCHAR(13) NULL,
  PRIMARY KEY (`codigo`),
  INDEX `fk_productos_proveedores_idx` (`proveedores_RFC` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


-- -----------------------------------------------------
-- Table `tienda`.`compras`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tienda`.`compras` ;

CREATE TABLE IF NOT EXISTS `tienda`.`compras` (
  `folio` INT NOT NULL AUTO_INCREMENT,
  `clientes_RFC` VARCHAR(13) NOT NULL,
  `productos_codigo` INT NOT NULL,
  PRIMARY KEY (`folio`),
  INDEX `fk_clientes_has_productos_productos1_idx` (`productos_codigo` ASC) VISIBLE,
  INDEX `fk_clientes_has_productos_clientes1_idx` (`clientes_RFC` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_spanish_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

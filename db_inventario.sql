
CREATE TABLE IF NOT EXISTS `db_inventario`.`tbl_unidad_medida` (
  `id_unidad_medida` INT(11) NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(50) NULL DEFAULT NULL,
  `abreviado` VARCHAR(10) NULL DEFAULT NULL,
  PRIMARY KEY (`id_unidad_medida`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;




CREATE TABLE IF NOT EXISTS `db_inventario`.`tbl_producto` (
  `id_producto` INT(11) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(100) NULL DEFAULT NULL,
  `descripcion` VARCHAR(500) NULL DEFAULT NULL,
  `id_unidad_medida` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_producto`),
  INDEX `fk_tbl_producto_tbl_unidad_medida_idx` (`id_unidad_medida` ASC),
  CONSTRAINT `fk_tbl_producto_tbl_unidad_medida`
    FOREIGN KEY (`id_unidad_medida`)
    REFERENCES `db_inventario`.`tbl_unidad_medida` (`id_unidad_medida`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;

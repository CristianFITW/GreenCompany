CREATE DATABASE IF NOT EXISTS bd_login3
DEFAULT CHARACTER SET utf8mb4
DEFAULT COLLATE utf8mb4_0900_ai_ci;

USE bd_login3;
CREATE TABLE `usuarios` (
	`curp` VARCHAR(18) NOT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`nombre` VARCHAR(25) NOT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`apellidos` VARCHAR(25) NOT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`contrasena` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`usuario_generado_automaticamente` VARCHAR(50) NOT NULL DEFAULT '' COLLATE 'utf8mb4_0900_ai_ci',
	`nombrei` VARCHAR(255) NOT NULL DEFAULT '',  -- Nombre no puede ser NULL, tiene valor por defecto
    `ruta` VARCHAR(255) NOT NULL DEFAULT '',   -- Ruta no puede ser NULL, tiene valor por defecto
	PRIMARY KEY (`curp`) USING BTREE
)
COLLATE='utf8mb4_0900_ai_ci'
ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS problematica (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(50) NOT NULL,
    descripcion TEXT NOT NULL,
    alcaldia VARCHAR(50) NOT NULL,
    usuario VARCHAR(50) NOT NULL
);


select * from usuarios;
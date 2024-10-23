CREATE DATABASE IF NOT EXISTS bd_login
DEFAULT CHARACTER SET utf8mb4
DEFAULT COLLATE utf8mb4_0900_ai_ci;

USE bd_login;
CREATE TABLE `usuarios` (
	`curp` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`nombre` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`apellidos` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`contrasena` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`usuario_generado_automaticamente` VARCHAR(50) NOT NULL DEFAULT '' COLLATE 'utf8mb4_0900_ai_ci',
	PRIMARY KEY (`curp`) USING BTREE
)
COLLATE='utf8mb4_0900_ai_ci'
ENGINE=InnoDB
;
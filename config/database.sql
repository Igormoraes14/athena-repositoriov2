DROP DATABASE `athenashop`;
CREATE DATABASE `athenashop`;
USE `athenashop`;

CREATE TABLE `anunciantes` (
  `id_anun` int NOT NULL,
  `nome_anun` varchar(100) NOT NULL,
  `empresa_anun` varchar(100) NOT NULL,
  `email_anun` varchar(50) NOT NULL,
  `senha_anun` varchar(50) DEFAULT NULL,
  `cnpj_anun` varchar(50) NOT NULL,
  `tel_anun` varchar(14) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO `anunciantes` (`id_anun`, `nome_anun`, `empresa_anun`, `email_anun`, `cnpj_anun`, `tel_anun`, `created_at`) VALUES
(1, 'Igor Moraes', 'Igor Serviços LTDA', 'igor@gmail.com', '31.139.805/0001-44', '11973438910','2023-06-28 21:13:25');

CREATE TABLE `tipo_usu` (
  `id_tipo_usu` int NOT NULL AUTO_INCREMENT,
  `tipo_usu` varchar(25) DEFAULT NULL,
  `descricao_usu` varchar(160) DEFAULT NULL,
  `status_tipo_usu` int DEFAULT '1',
  PRIMARY KEY(`id_tipo_usu`)
)ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `usuarios` (
  `id_usu` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `nome_usu` varchar(50) NOT NULL,
  `user_usu` varchar(50) DEFAULT NULL,
  `senha_usu` varchar(50) NOT NULL,
  `confirmar_usu` varchar(50) NOT NULL,
  `tel_usu` varchar(14) DEFAULT NULL,
  `cep_usu` varchar(9) NOT NULL,
  `ende_usu` varchar(100) NOT NULL,
  `created_at_usu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO `usuarios` (`id_usu`, `nome_usu`, `user_usu`, `senha_usu`, `confirmar_usu`, `tel_usu`,`cep_usu`,`ende_usu`, `created_at_usu`) VALUES
(1, 'Breno Tavares', 'BeTava@gmail.com', '987654', 'Breno Tavares', '11996307616','06423-090','Rua do Ouvidor, 480', '2023-06-28 21:10:31');

ALTER TABLE `anunciantes` ADD PRIMARY KEY (`id_anun`);

ALTER TABLE `anunciantes` MODIFY `id_anun` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `usuarios` MODIFY `id_usu` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
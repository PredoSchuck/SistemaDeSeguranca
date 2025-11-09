CREATE DATABASE pccf;
USE pccf;

CREATE TABLE pessoa (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) NOT NULL UNIQUE,
    rg VARCHAR(20),
    data_nascimento DATE,
    telefone VARCHAR(20),
    tipo ENUM('Funcionário', 'Inquilino', 'Visitante')
);

CREATE TABLE usuario (
  id INT AUTO_INCREMENT PRIMARY KEY,
  usuario VARCHAR(100) NOT NULL UNIQUE,
  senha VARCHAR(255) NOT NULL
);

INSERT INTO usuario (usuario, senha) VALUES ('adm', 'adm');
SELECT * FROM usuario;
SELECT * FROM pessoa;
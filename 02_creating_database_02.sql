-- this is unecessary in the new version.

CREATE DATABASE cadastro
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;

CREATE TABLE pessoas (
	id INT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(30) NOT NULL,
	nascimento DATE,
	sexo ENUM('M', 'F'),
	peso DECIMAL(5,2), -- 5 representa numero total de numeros e o 2 quantos ficam após a virgula
    altura DECIMAL(3,2),
	nacionalidade VARCHAR(20) DEFAULT 'Brasil',
    PRIMARY KEY(id)
);


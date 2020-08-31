-- creating a really basic database

CREATE DATABASE cadastro;

-- adding info into database

use cadastro;
CREATE TABLE pessoas (
nome varchar(30),
idade tinyint(3),
sexo char(1),
peso float,
altura float,
nacionalidade varchar(20)
);

-- checking database info type

describe pessoas;


-- deleating database, so we can create a better version.

DROP DATABASE cadastro;
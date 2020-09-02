-- Creating  new table
CREATE TABLE IF NOT EXISTS cursos (
	nome VARCHAR(30) NOT NULL UNIQUE,
    descricao TEXT,
    carga INT UNSIGNED,
    totaulas INT UNSIGNED,
    ano YEAR DEFAULT '2016'
);

DESC cursos;

-- Adding primary key
ALTER TABLE cursos
ADD idcurso INT FIRST;

ALTER TABLE cursos
ADD PRIMARY KEY (idcurso);

-- dropping tables
CREATE TABLE IF NOT EXISTS test(
id INT,
nome VARCHAR(10),
idade INT 
);

INSERT INTO test VALUES
('1', 'Pedro', '22'),
('2', 'Maria', '32'),
('3', 'Maricota', '77');

SELECT *
FROM test;

INSERT INTO test VALUE 
('5', 'Ana', '31');

-- deleting a non existent table
DROP TABLE IF EXISTS alunos;

-- deleting a table and data
DROP TABLE IF EXISTS test;

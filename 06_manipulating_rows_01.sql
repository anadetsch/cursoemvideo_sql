use cadastro;

SELECT *
FROM gafanhotos;

SELECT *
FROM cursos;

-- Including new values into cursos
INSERT INTO cursos
VALUES
('1', 'HTML4', 'Curso de HTML5', '40', '37', '2014'),
('2', 'Algoritmos', 'Lógica de Programacao', '20', '15', '2014'),
('3', 'Photoshop', 'Dicas de Photoshop CC', '10', '8', '2014'),
('4', 'PGP', 'Curso de PHP para inciantes', '40', '20', '2010'),
('5', 'Jarva', 'Introducao à Linguagem Java', '10', '29', '2000'),
('6', 'MySQL', 'Banco de Dados MySQL', '30', '15', '2016'),
('7', 'Word', 'Curso completo de Word', '40', '30', '2016'),
('8', 'Sapateado', 'Dancas Rítmicas', '40', '30', '2018'),
('9', 'Cozinha Árabe', 'Aprenda a fazer Kibe', '40', '30', '2018'),
('10', 'Youtuber', 'Gerar polêmica e ganhar inscritos', '5', '2', '2018');

-- correcting the values
UPDATE cursos
SET nome = 'HTML5'
WHERE idcurso = '1';

SELECT *
FROM cursos;

UPDATE cursos
SET
	nome = 'PHP',
    ano = '2015'
WHERE idcurso = '4';

UPDATE cursos
SET
	nome = 'Java',
    ano = '2015',
    carga = '40'
WHERE idcurso = '5'
LIMIT 1;

-- updating more than one row at once.
UPDATE cursos
SET ano = '2050', carga = '800'
WHERE ano = '2018';

SELECT *
FROM cursos;

-- using update requires a lot of attention. We need to have a copy of our database when using update. 

UPDATE cursos
SET ano = '2018', carga = '0'
WHERE ano = '2050'
LIMIT 1;

-- deleting rows
DELETE FROM cursos
WHERE idcurso = '8';

DELETE FROM cursos
WHERE ano = '2050';

-- deleting ALL rows
TRUNCATE cursos;

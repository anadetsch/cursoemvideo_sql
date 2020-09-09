SELECT *
FROM cursos
WHERE nome = 'PHP';

-- starts with p
SELECT *
FROM cursos
WHERE nome LIKE 'P%';

-- ends with a
SELECT *
FROM cursos
WHERE nome LIKE '%a';

-- has a
SELECT *
FROM cursos
WHERE nome LIKE '%a%';

-- without a
SELECT *
FROM cursos 
WHERE nome NOT LIKE '%a%';

UPDATE cursos SET nome = 'PáOO' WHERE idcurso = '9';

-- starts with ph and end with p followed by something
SELECT *
FROM cursos
WHERE nome LIKE 'ph%p_';

SELECT *
FROM cursos
WHERE nome LIKE 'p_p%';

-- any nome that has silva in it.
SELECT *
FROM gafanhotos
WHERE nome LIKE '%silva%';

-- last name is silva
SELECT *
FROM gafanhotos
WHERE nome LIKE '%silva';

-- no duplicates
SELECT DISTINCT(nacionalidade)
FROM gafanhotos
ORDER BY nacionalidade;

-- counting
SELECT COUNT(*)
FROM cursos;

SELECT *
FROM cursos
WHERE carga > 40;

SELECT COUNT(*)
FROM cursos
WHERE carga > 40;

-- maximum and minimum
SELECT *
FROM cursos
ORDER BY carga;

SELECT 
MAX(carga),
MIN(carga)
FROM cursos;

SELECT 
MAX(totaulas),
MIN(totaulas)
FROM cursos
WHERE ano = '2016';

-- sum
SELECT SUM(totaulas)
FROM cursos
WHERE ano = '2016';

-- avg
SELECT AVG(totaulas)
FROM cursos
WHERE ano = '2016';
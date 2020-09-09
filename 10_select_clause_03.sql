-- DISTINCT or GROUPY BY?
-- the result might look the same, but is not

SELECT DISTINCT carga
FROM cursos
ORDER BY carga;

SELECT carga
FROM cursos
GROUP BY carga;

SELECT
carga,
count(*)
FROM cursos
GROUP BY carga
ORDER BY carga;

SELECT carga,
COUNT(*)
FROM cursos
WHERE totaulas = '30'
GROUP BY carga;

SELECT
ano,
COUNT(*)
FROM cursos
GROUP BY ano
HAVING count(*) >= 5
ORDER BY COUNT(*) DESC;


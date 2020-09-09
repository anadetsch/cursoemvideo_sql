-- exercícios para treinar select

/*
1. Lista com nome de todas as gafanhotas! 
*/
SELECT nome
FROM gafanhotos
WHERE sexo = 'F'
ORDER BY nome;


/*
2. Lista com dados de todos aqueles que nasceram entre
01/jan/2000 e 31/dec/2015
*/

SELECT * 
FROM gafanhotos
WHERE nascimento BETWEEN '2000-01-01' AND '2015-12-31'
ORDER BY nascimento;

/*
3. Lista com nome de todos os homens que trabalham como programador
*/
SELECT nome
FROM gafanhotos
WHERE sexo = 'M' AND profissao = 'programador'
ORDER BY nome;

/*
 4. Lista com todos os dados de todas as mulheres que nasceram no Brasil 
 e que tem nome iniciando com a letra J
*/
SELECT *
FROM gafanhotos
WHERE sexo = 'F' AND nacionalidade LIKE 'Brasil' AND nome LIKE 'J%';

/*
 5. Lista com nome e nacionalidade de todos os homens que tem Silva no nome,
 nao nasceram no Brasil e pesam menos de 100kg
*/
SELECT 
nome, 
nacionalidade
FROM gafanhotos
WHERE 
	sexo = 'M' 
    AND nome LIKE '%silva%' 
    AND nacionalidade NOT LIKE 'Brasil' 
    AND peso < '100';

/*
 6. Qual a maior altura entre homens que moram no Brasil?
*/
SELECT MAX(altura)
FROM gafanhotos
WHERE sexo = 'M' AND nacionalidade = 'Brasil';

/*
 7. Qual é a media de peso dos gafanhotos cadastrados?
*/
SELECT AVG(peso)
FROM gafanhotos;

/*
 8. Qual é o menor peso entre as mulheres que nasceram fora do brasil e entre
 01/jan/1990 e 31/dec/2000?
*/
SELECT MIN(peso)
FROM gafanhotos
WHERE (sexo = 'F') AND (nacionalidade <> 'Brasil') AND (nascimento BETWEEN '1990-01-01' AND '2000-12-31');

/*
 9. Quantas mulheres tem mais de 1.90 de altura?
*/
SELECT COUNT(*)
FROM gafanhotos
WHERE sexo = 'F' AND altura < '1.90';
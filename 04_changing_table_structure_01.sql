DESC pessoas;

-- Using alter table to add a new column
ALTER TABLE pessoas
ADD COLUMN profissao VARCHAR(10);

SELECT *
FROM pessoas;

-- deleting the new column
ALTER TABLE pessoas
DROP COLUMN profissao;

-- Adding new column in a specific position
ALTER TABLE pessoas
ADD COLUMN profissao VARCHAR(10) AFTER nome;

ALTER TABLE pessoas
ADD COLUMN codigo INT FIRST;

ALTER TABLE pessoas
MODIFY profissao VARCHAR(20) DEFAULT ' ';

ALTER TABLE pessoas
ADD profissao VARCHAR(20) NOT NULL DEFAULT ' ' AFTER nome;

-- Changing the column name
ALTER TABLE pessoas
CHANGE profissao prof VARCHAR(20) NOT NULL DEFAULT ' ' AFTER nome;

-- Renaming table
ALTER TABLE pessoas
RENAME TO gafanhotos;

DESC gafanhotos;
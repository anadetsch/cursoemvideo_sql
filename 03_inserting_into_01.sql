USE cadastro;

INSERT INTO pessoas
(nome, nascimento, sexo, peso, altura, nacionalidade)
VALUES
('Godofredo', '1984-01-02', 'M', '78.5', '1.83', 'Brasil');

SELECT *
FROM pessoas;

INSERT INTO pessoas
(nome, nascimento, sexo, peso, altura, nacionalidade)
VALUES
('MAria', '1999-12-30', 'F', '55.2', '1.65', 'Portugal');

INSERT INTO pessoas
(id, nome, nascimento, sexo, peso, altura, nacionalidade)
VALUES
(DEFAULT, 'Creuza', '1920-12-30', 'F', '50.2', '1.65', DEFAULT);

INSERT INTO pessoas
VALUES
(DEFAULT, 'Adalgiza', '1930-11-02', 'F', '63.2', '1.75', 'Irlanda');

INSERT INTO pessoas
	VALUES
		(DEFAULT, 'Ana', '1975-12-22', 'F', '52.3', '1.45', 'EUA'),
		(DEFAULT, 'Pedro', '2000-07-15', 'M', '52.3', '1.45', 'Brasil'),
		(DEFAULT, 'Janaina', '1999-05-30', 'F', '75.9', '1.70', 'Portugal');

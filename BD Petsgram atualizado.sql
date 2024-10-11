create database Petsgram;
Use petsgram;
CREATE TABLE usuario (
id INT PRIMARY KEY,
nome VARCHAR(100),
telefone VARCHAR(20),
email VARCHAR(100)
);

CREATE TABLE raca (
id INT PRIMARY KEY,
nome VARCHAR(100)
);

CREATE TABLE especie (
id INT PRIMARY KEY,
nome VARCHAR(50)
);


CREATE TABLE animais (
id INT PRIMARY KEY,
raca_id INT,
tamanho VARCHAR(50),
cor VARCHAR(50),
idade INT,
especie_id INT,
FOREIGN KEY (raca_id) REFERENCES raca(id),
FOREIGN KEY (especie_id) REFERENCES especie(id)
);

ALTER TABLE animal
ADD genero VARCHAR(15);

select * from animal;

UPDATE animal
SET genero = 'femea' 
WHERE id = 10;

INSERT INTO usuario (id, nome, telefone, email) VALUES
(1, 'João Silva', '123456789', 'joao.silva@example.com'),
(2, 'Maria Oliveira', '987654321', 'maria.oliveira@example.com'),
(3, 'Carlos Souza', '555555555', 'carlos.souza@example.com'),
(4, 'Mari Alves', '40295050', 'mary.alves@example.com'),
(5, 'Camila Fernandes', '40296060', 'camila@example.com'),
(6, 'Luiz Felipe', '40297070', 'luiz@example.com'),
(7, 'Lucas luska', '40290101', 'luska@example.com');

INSERT INTO raca (id, nome) VALUES
(1, 'Labrador'),
(2, 'Srd'),
(3, 'siames'),
(4, 'angora'),
(5, 'maine coon'),
(6, 'Poodle'),
(7, 'Bulldog'),
(8, 'Persa'),
(9, 'Siamês');

INSERT INTO especie (id, nome) VALUES
(1, 'Gato'),
(2, 'Cachorro'),
(3, 'Hamster'),
(4, 'Coelho'),
(5, 'Papagaio'),
(6, 'Peixe'),
(7, 'Tartaruga'),
(8, 'Cavalo'),
(9, 'Porquinho-da-Índia'),
(10, 'Canário');

INSERT INTO animais (id, raca_id, tamanho, cor, idade, especie_id) VALUES
(1, 1, 'Grande', 'Amarelo', 3, 2),  -- Labrador, Cachorro
(2, 2, 'Médio', 'Branco', 2, 2),    -- Poodle, Cachorro
(3, 3, 'Pequeno', 'Marrom', 4, 2),  -- Bulldog, Cachorro
(4, 4, 'Pequeno', 'Cinza', 5, 1),   -- Persa, Gato
(5, 5, 'Pequeno', 'Branco', 3, 1),  -- Siamês, Gato
(6, 1, 'Grande', 'Preto', 6, 2),    -- Labrador, Cachorro
(7, 2, 'Médio', 'Cinza', 1, 2),     -- Poodle, Cachorro
(8, 3, 'Pequeno', 'Branco', 2, 2),  -- Bulldog, Cachorro
(9, 4, 'Pequeno', 'Preto', 4, 1),   -- Persa, Gato
(10, 5, 'Pequeno', 'Marrom', 5, 1); -- Siamês, Gato

select * from animal;
select * from especie;
select * from raca;
select * from usuario;

UPDATE usuario
SET endereco = 'rua estado da bahia ,321, salto-sp'
WHERE id =7;

ALTER TABLE usuario
ADD endereco VARCHAR(255);

ALTER TABLE animais
RENAME TO animal;

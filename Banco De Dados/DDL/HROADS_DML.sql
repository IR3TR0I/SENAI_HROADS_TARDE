USE SENAI_HROADS_TARDE;

INSERT INTO Classe(NomeClasse) values 
('Bárbaro'),
('Cruzado'),
('Caçadora de Demônios'),
('Monge'),
('Necromante'),
('Feiticeiro'),
('Arcanista');

INSERT INTO TipoHabilidade(Nome) values
 ('Ataque'),
 ('Defesa'),
 ('Cura'),
 ('Magia');

INSERT INTO Habilidade(IdTipo, Nome) values
 (1, 'Lança Mortal'),
 (2, 'Escudo Supremo'),
 (3, 'Recuperar Vida');

INSERT INTO HabiliClasse(IdClasse, IdHabilidade) values
 (1,1),
 (1,2),
 (2,2),
 (3,1),
 (4,2),
 (4,3),
 (6,3);

INSERT INTO Personagem(IdClasse, Nome, Vida, Mana, DataAtual, DataCriacao) values
  (1, 'DeuBug', 100, 80, '02/03/2021', '18/01/2019'),
  (4, 'BitBug', 70, 100, '02/03/2021', '17/03/2016'),
  (7, 'Fer8', 180, 150, '02/03/2021', '18/03/2018');

UPDATE Personagem
SET Nome = 'Fer7'
WHERE IdPersonagem = 3;

UPDATE Classe
SET NomeClasse = 'Necromancer'
WHERE IdClasse = 5;
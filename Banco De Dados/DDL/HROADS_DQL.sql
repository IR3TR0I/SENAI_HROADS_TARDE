USE SENAI_HROADS_TARDE;

SELECT * FROM Personagem;

SELECT * FROM Classe;

SELECT NomeClasse FROM Classe;

SELECT * FROM Habilidade;

SELECT COUNT (*) as NumeroHabilidades FROM Habilidade;

SELECT IdHabilidade FROM Habilidade order by IdHabilidade;

SELECT * FROM TipoHabilidade

SELECT Habilidade.Nome, TipoHabilidade.Nome 
FROM Habilidade
LEFT JOIN TipoHabilidade 
on Habilidade.IdTipo = TipoHabilidade.IdTipo

SELECT Personagem.Nome, Classe.NomeClasse
FROM Personagem
LEFT JOIN Classe 
on Personagem.IdClasse = Classe.IdClasse

SELECT Personagem.Nome, Classe.NomeClasse
FROM Personagem
RIGHT JOIN Classe 
on Personagem.IdClasse = Classe.IdClasse

SELECT Classe.NomeClasse, Habilidade.Nome
FROM HabiliClasse
RIGHT JOIN Classe
on Classe.IdClasse = HabiliClasse.IdClasse
RIGHT JOIN Habilidade
on Habilidade.IdHabilidade = HabiliClasse.IdHabilidade

SELECT Habilidade.Nome, Classe.NomeClasse
FROM HabiliClasse
full outer join Habilidade
on Habilidade.IdHabilidade = HabiliClasse.IdHabilidade
full outer join Classe
on Classe.IdClasse = HabiliClasse.IdClasse
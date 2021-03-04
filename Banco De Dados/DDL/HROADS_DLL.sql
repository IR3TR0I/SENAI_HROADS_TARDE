Create database SENAI_HROADS_TARDE;
USE SENAI_HROADS_TARDE;


CREATE TABLE Classe(
  IdClasse int Primary Key Identity,
  NomeClasse varchar(80)
);
CREATE TABLE Personagem(
  IdPersonagem int primary key identity,
  IdClasse int Foreign key references Classe(IdClasse),
  Nome varchar(30),
  Vida Int,
  Mana Int,
  DataAtual Date,
  DataCriacao Date
);
CREATE TABLE TipoHabilidade(
  IdTipo int Primary Key Identity,
  Nome varchar(50)
);
CREATE TABLE Habilidade(
  IdHabilidade int Primary Key Identity,
  IdTipo int Foreign Key References TipoHabilidade(IdTipo),
  Nome varchar(80)
);
CREATE TABLE HabiliClasse(
  IdClasse int Foreign Key References Classe(IdClasse),
  IdHabilidade int Foreign Key References Habilidade(IdHabilidade),
);
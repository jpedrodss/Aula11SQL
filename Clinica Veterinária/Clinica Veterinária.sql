CREATE DATABASE ClinicaVeterinaria;

USE ClinicaVeterinaria;

CREATE TABLE Clinica(
	IdClinica INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR(50) NOT NULL,
	Endereco VARCHAR(200) NOT NULL
);

CREATE TABLE Veterinario(
	IdVeterinario INT IDENTITY PRIMARY KEY NOT NULL,
	CRMV VARCHAR(100) NOT NULL,
	Nome VARCHAR(100) NOT NULL,

	IdClinica INT FOREIGN KEY REFERENCES Clinica(IdClinica)
);

CREATE TABLE Dono(
	IdDono INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR(100)
);

CREATE TABLE TipoPet(
	IdTipoPet INT IDENTITY PRIMARY KEY NOT NULL,
	Descricao VARCHAR(500) NOT NULL
);

CREATE TABLE Raca(
	IdRaca INT IDENTITY PRIMARY KEY NOT NULL,
	Descricao VARCHAR(500) NOT NULL,

	IdTipoPet INT FOREIGN KEY REFERENCES TipoPet(IdTipoPet)
);

CREATE TABLE Pet(
	IdPet INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR(20) NOT NULL,
	DataNascimento DATE NOT NULL,

	IdRaca INT FOREIGN KEY REFERENCES Raca(IdRaca),
	IdDono INT FOREIGN KEY REFERENCES Dono(IdDono)
);

CREATE TABLE Atendimento(
	IdAtendimento INT IDENTITY PRIMARY KEY NOT NULL,
	Descricao VARCHAR(500) NOT NULL,
	DataAtendimento DateTime NOT NULL,

	IdPet INT FOREIGN KEY REFERENCES Pet(IdPet),
	IdVeterinario INT FOREIGN KEY REFERENCES Veterinario(IdVeterinario)
);
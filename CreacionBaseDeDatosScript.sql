CREATE DATABASE CasaTequileraBarrilito;

USE CasaTequileraBarrilito;

CREATE TABLE Usuario

	(
		IdUsuario INT PRIMARY KEY NOT NULL,
		Nombre NVARCHAR(50) NOT NULL,
		Nombre_Corto NVARCHAR(50) NOT NULL,
		Contrasenia BINARY(16) NOT NULL,
		Foto VARBINARY(MAX) NOT NULL,
		
	);

CREATE TABLE Seccion
	(
		IdSeccion INT PRIMARY KEY NOT NULL,
		Nombre NVARCHAR (50) NOT NULL, 
		
	);

CREATE TABLE Rol
	(
		IdRol INT PRIMARY KEY NOT NULL,
		IdUsuario INT NOT NULL, 
		CONSTRAINT IdUsuario Foreign Key (idUsuario)
		REFERENCES Usuario (IdUsuario),
		IdSeccion INT NOT NULL, 
		CONSTRAINT IdSeccion Foreign Key (IdSeccion)
		REFERENCES Seccion (IdSeccion)
	);

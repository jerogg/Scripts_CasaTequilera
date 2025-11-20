
CREATE DATABASE CasaTequileraBarrilito;
GO
USE CasaTequileraBarrilito;
GO
CREATE TABLE Usuario

	(
		IdUsuario INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
		Nombre NVARCHAR(50) NOT NULL,
		Nombre_Corto NVARCHAR(50) NOT NULL,
		Contrasenia NVARCHAR(16) NOT NULL,
		Foto VARBINARY(MAX) NOT NULL,
		
	);

CREATE TABLE Seccion
	(
		IdSeccion INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
		Nombre NVARCHAR (50) NOT NULL, 
		
	);

CREATE TABLE Rol
	(
		IdRol INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
		IdUsuario INT NOT NULL, 
		CONSTRAINT IdUsuario Foreign Key (idUsuario)
		REFERENCES Usuario (IdUsuario),
		IdSeccion INT NOT NULL, 
		CONSTRAINT IdSeccion Foreign Key (IdSeccion)
		REFERENCES Seccion (IdSeccion)
	);



INSERT INTO Usuario (Nombre, Nombre_Corto, Contrasenia, Foto)
VALUES ('User','user','1234', 0x1234567890ABCDEF);

INSERT INTO Usuario (Nombre, Nombre_Corto, Contrasenia, Foto)
VALUES ('User2','user2','123', 0x1234567890ABCDEF);

INSERT INTO Usuario (Nombre, Nombre_Corto, Contrasenia, Foto)
VALUES ('User3','user3','1234', 0x1234567890ABCDEF);


DROP TABLE PrecioProducto;
SELECT * FROM USUARIO;

	CREATE TABLE Producto
	(
		IdProducto INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
		CodigoBarras NVARCHAR(50), 
		Descripcion NVARCHAR(150) NOT NULL,
		Costo DECIMAL NOT NULL,
		IdDepartamento INT NOT NULL,
		CONSTRAINT IdDepartamento Foreign Key (IdDepartamento)
		REFERENCES Departamentos (IdDepartamento)
	);

	CREATE TABLE PrecioProducto
	(
		IdPrecioProducto INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
		Descripcion NVARCHAR(150) NOT NULL,
		PrecioVenta DECIMAL NOT NULL,
		IdProducto INT NOT NULL,
		CONSTRAINT IdProducto Foreign Key (IdProducto)
		REFERENCES Producto (IdProducto)

	);
	CREATE TABLE SeccionBodega
	(
		IdSeccionBodega INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
		Nombre NVARCHAR (50) NOT NULL, 
		
	);

	CREATE TABLE Inventario
	(
		IdInventario INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
		Existencias INT NOT NULL,
		Minimo INT NOT NULL,
		IdProducto INT NOT NULL,
		CONSTRAINT IdProducto FOREIGN KEY (IdProducto)
		REFERENCES Productos (IdProducto),
		IdSeccionBodega INT NOT NULL,
		CONSTRAINT IdSeccionBodega FOREIGN KEY (IdSeccionBodega)
		REFERENCES SeccionBodega (IdSeccionBodega)
	);

	
	
	CREATE TABLE Departamentos
	(
		IdDepartamento INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
		NombreDepartamento NVARCHAR(50) NOT NULL
	);

	

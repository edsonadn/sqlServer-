/* EJERCICIO 8 DELETE CREATE SELECT UPDATE*/

USE holamundo;  
GO

SELECT name, database_id, create_date  
	FROM sys.databases;  
GO

IF OBJECT_ID('animales') is not null
	DROP TABLE animales
GO

/*Creamos la tabla*/
CREATE TABLE animales(
	/*condicion que me permite hacerlo auto incrementable*/
	id INT IDENTITY (1,1) NOT NULL ,
	CONSTRAINT PK_animales_id PRIMARY KEY CLUSTERED (id),
	/*final de la instruccion*/
	tipo VARCHAR(30),
	estado VARCHAR(30)
	)
GO

/*insertamos registros a las tablas*/
INSERT INTO animales (tipo, estado) 
	VALUES ('chanchito','feliz')
GO

INSERT INTO animales (tipo, estado) 
	VALUES ('Perrito','Enogado')
GO

INSERT INTO animales (tipo, estado)
	VALUES ('dragon', 'triste')
GO
/*finalizamos la insercion de registros*/

SELECT id,tipo FROM animales 
GO

SELECT * FROM animales 
	WHERE id=1 
GO

SELECT tipo FROM animales 
	WHERE id =1 AND estado = 'feliz'  
GO

UPDATE animales 
	SET estado = 'feliz' WHERE id = 2
GO

SELECT * FROM animales
GO

DELETE FROM animales 
	WHERE estado = 'triste'
GO

SELECT * FROM animales
GO


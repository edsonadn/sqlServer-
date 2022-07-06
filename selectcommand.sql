USE holamundo
GO

IF OBJECT_ID('usuario') IS NOT NULL
	DROP TABLE usuario
GO

CREATE TABLE usuario(
	id INT IDENTITY(1,1) NOT NULL,
	nombre VARCHAR(50) NOT NULL,
	edad INT NOT NULL,
	email VARCHAR(100) NOT NULL,
	CONSTRAINT PK_usuario_id PRIMARY KEY CLUSTERED(id)
)
GO

INSERT INTO usuario (nombre, edad, email)
	VALUES ('edson',22,'edsonarturodimasn@hotmail.com')
INSERT INTO usuario (nombre, edad, email)
	VALUES ('Pedro',42,'pedro@hotmail.com')
INSERT INTO usuario (nombre, edad, email)
	VALUES ('Samuel',32,'samuel@hotmail.com')
GO

SELECT * FROM usuario
GO

SELECT * FROM usuario 
	WHERE edad > 23 AND nombre = 'Pedro'
GO

SELECT * FROM usuario
	WHERE edad BETWEEN 23 AND 41
GO

SELECT * FROM usuario 
	WHERE email like 'samuel%'
GO

SELECT * FROM usuario 
	ORDER BY edad asc /*desc (decendente)*/
GO

SELECT max(edad) as mayor, min(edad) as menor from usuario

GO

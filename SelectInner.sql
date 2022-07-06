USE holamundo
GO

IF OBJECT_ID('productos') IS NOT NULL
	DROP TABLE productos
GO
IF OBJECT_ID('producto') IS NOT NULL
	DROP TABLE producto
GO

CREATE TABLE productos(
	IdProductos INT IDENTITY (1,1) PRIMARY KEY NOT NULL,
	created_by int /*FOREIGN KEY (created_by) REFERENCES dbo.usuario(IdUsuario)*/ NOT NULL,
	nombre VARCHAR(50) NOT NULL,
	marca VARCHAR (50) NOT NULL,
	CONSTRAINT FK_usuarios_id FOREIGN KEY (created_by) 
	REFERENCES dbo.usuario(IdUsuario)
	--ON DELETE RESTRICT ON UPDATE CASCADE
)
GO

--EXEC sp_rename 'productos','producto'
--GO

INSERT INTO productos(created_by, nombre, marca)
	VALUES 
		(1,'ipad','apple'),
		(2,'iphone','apple')	
GO

SELECT u.IdUsuario,u.nombre,p.nombre FROM usuario u 
	LEFT JOIN productos p 
	ON u.IdUsuario = p.created_by 
GO

SELECT u.IdUsuario,u.nombre,p.nombre FROM usuario u 
	RIGHT JOIN productos p 
	ON u.IdUsuario = p.created_by 
GO

SELECT u.IdUsuario,u.nombre,p.nombre FROM usuario u 
	INNER JOIN productos p 
	ON u.IdUsuario = p.created_by 
GO

SELECT u.IdUsuario,u.nombre,p.nombre FROM usuario u 
	CROSS JOIN productos p 
GO

SELECT count(IdProductos) as cantidad,marca FROM productos 
	GROUP BY marca
GO
/*
SELECT count(p.IdProductos) as cantidad,u.nombre FROM productos p 
	INNER JOIN usuario u 
	ON u.IdUsuario = p.created_by 
	GROUP BY u.nombre
GO

SELECT count(p.IdProductos) as cantidad,u.nombre FROM productos p 
	LEFT JOIN usuario u 
	ON u.IdUsuario = p.created_by 
	GROUP BY u.nombre
	HAVING count(p.IdProductos) >=2;
GO
*/
SELECT * FROM productos
GO

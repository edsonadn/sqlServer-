# conexion a base de datos
USE nombre_database
GO
#

create database bd1;      ->  crea base de datos

create table usuarios(
  nombre varchar(30),
  clave varchar(10)
)

exect sp_tables  @table_owner-'dbo'

drop table usuarios   ->  sirve para eliminar tablas

exec sp columns usuarios;  -> te permite ver las columnas de las tablas

##  program 1 

if objet_id('usuarios')
  drop table usuarios;
 
create table ususarios(
  nombre varchar(30),
  clave varchar(10)
)

exec sp_tables @tables_owner='bdo'

exec sp_columns usuarios;

drop table usuarios

exec sp_tables @table_owner='bdo';


/* Ejemplo 1 */

if objet_id('usuarios')
   drop table usuarios;
   
create table usuarios(
  nombre varchar(30),
  clave varchar(10)
);   

insert into usuarios(nombre,clave)  values('Mariano', '1234abc');

select * from usuarios;

insert into usuarios(nombre, clave) values ('ana','hola123');

select * from usuarios;

/* Ejemplo 2 */

USE db1; 
GO

/*IF OBJECT_ID('usuarios') is null*/

CREATE TABLE usuarios(
	nombre varchar(30),
	clave varchar(15)
);

insert into usuarios(nombre,clave) values ('emiliano','starcraft');

SELECT * FROM usuarios;

drop table usuarios;

/* ejemplo 3 */

if OBJECT_ID('libros')is not null
	drop table libros;

create table libros(
	titulo varchar(80),
	autor varchar(40),
	editorial varchar(30),
	precio float,
	cantidad integer
);

exec sp_columns libros;

insert into libros(titulo,autor,editorial,precio, cantidad) values ('el alph', 'broge', 'enro', 25.50,200 );

select * from libros;

/* ejemplo 5 */

if OBJECT_ID('peliculas') is not null
	drop table peliculas;

create table peliculas(
	nombre varchar(50),
	actor varchar(50),
	duracion integer,
	cantidad integer
);

exec sp_columns peliculas;

insert into peliculas(nombre,actor,duracion,cantidad) values ('fly','sacarlet',50,200);

select * from peliculas;

/* ejemplo 6*/

if OBJECT_ID('empleados') is not null
	drop table empleados;

create table empleados(
	nombre varchar(30),
	documento varchar(8),
	sexo varchar (1),
	domicilio varchar (40),
	sueldobasico float
);

exec sp_columns empleados;

insert into empleados(nombre,documento,sexo,domicilio,sueldobasico) 
 values('juan Perez','123sdoos','M','calle santa anita',5000);

select * from empleados;

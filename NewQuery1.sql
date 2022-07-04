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

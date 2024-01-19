create database ejemploetl

use ejemploetl

create table productos(
  productoId int not null identity(1,1),
  nombreproducto nvarchar(40) not null,
  precio money not null, 
  stock smallint not null,
  importe as
  (precio * stock),
  categoria nvarchar(15) not null,
  constraint pk_producto
  primary key(productoId)
)

alter table productos 
add categoria nvarchar(15) not null

select * from productos

select * from 
NORTHWND.dbo.Categories

select * from 
NORTHWND.dbo.Products

-- Permite visualizar las caracteristicas de las tablas
select * from sys.tables


insert into ejemploetl.dbo.productos
select p.ProductName, p.UnitPrice, p.UnitsInStock,
c.CategoryName
from 
NORTHWND.dbo.Products as p
inner join NORTHWND.dbo.Categories as c
on c.CategoryID = p.CategoryID

select * from productos

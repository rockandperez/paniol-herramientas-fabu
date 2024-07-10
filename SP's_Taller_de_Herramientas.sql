--use Master
--go

--Create Database Taller_de_Herramientas
--GO

use Taller_de_Herramientas
GO

CREATE TABLE [usuarios] (
  [usuario] bigint PRIMARY KEY,
  [contrasenia] varchar(16),
  [rol] int,
  [estado] bit DEFAULT (1),
  [nombre] varchar (50) NOT NULL,
  [apellido] varchar(50) NOT NULL
)
GO

CREATE TABLE [roles] (
  [id] int PRIMARY KEY IDENTITY(1, 1),
  [nombre_rol] varchar (50 )NOT NULL
)
GO

CREATE TABLE [herramientas] (
  [id] int PRIMARY KEY IDENTITY(1, 1),
  [id_categoria_herramienta] int,
  [nombre] varchar(50) NOT NULL,
  [stock] int NOT NULL DEFAULT (0),
  [disponible] int NOT NULL DEFAULT (0),
  [en_reparacion] int NOT NULL DEFAULT (0)
)
GO

CREATE TABLE [herramientas_uso] (
  [id] int PRIMARY KEY IDENTITY(1, 1),
  [id_herramienta] int,
  [cantidad_retirada] int NOT NULL,
  [cantidad_devueltas_rotas] int DEFAULT (0),
  [id_profesor] bigint,
 [fecha] date NOT NULL DEFAULT GETDATE(),
[hora_retiro] time NOT NULL DEFAULT GETDATE(),
[hora_devolucion] time
)
GO

CREATE TABLE [herramientas_categoria] (
  [id] int PRIMARY KEY IDENTITY(1, 1),
  [categoria] varchar (50) NOT NULL
)
GO

ALTER TABLE [usuarios] ADD FOREIGN KEY ([rol]) REFERENCES [roles] ([id])
GO

ALTER TABLE [herramientas] ADD FOREIGN KEY ([id_categoria_herramienta]) REFERENCES [herramientas_categoria] ([id])
GO

ALTER TABLE [herramientas_uso] ADD FOREIGN KEY ([id_herramienta]) REFERENCES [herramientas] ([id])
GO

ALTER TABLE [herramientas_uso] ADD FOREIGN KEY ([id_profesor]) REFERENCES [usuarios] ([usuario])
GO

---------------------------------------------------------------------------------------
--SPs, views, etc
---------------------------------------------------------------------------------------

Create view lista_usuarios AS
select 
	usu.usuario as 'usuario',
	rol.nombre_rol as 'rol',
	rol.id as 'rol_id',
	usu.estado as 'estado',
	usu.nombre  as 'nombre',
	usu.apellido as 'apellido'

from 
	usuarios usu
join 
	roles rol on rol.id = usu.rol;
GO

Create view listar_herramientas as
select
	herr.id as 'id',
	herr.id_categoria_herramienta as 'id_cat',
	her_cat.categoria as 'categoria',
	herr.nombre as 'nombre',
	herr.stock as 'stock',
	herr.disponible as 'disponible',
	herr.en_reparacion as 'reparacion'
from
	herramientas herr
join
	herramientas_categoria her_cat on her_cat.id = herr.id_categoria_herramienta;
GO

Create procedure actualizar_usuario 
	@ID int,
	@nombre varchar(50),
	@apellido varchar(50),
	@rol int,
	@estado bit
as

update
	usuarios
set
	nombre = @nombre,
	apellido = @apellido,
	estado = @estado,
	rol = @rol
where
	usuario = @ID;
GO


CREATE PROCEDURE modif_herramienta_y_categoria
	@ID_HERRAMIENTA INT,
	@NOMBRE varchar(50),
	@ID_CATEGORIA int

AS
	UPDATE herramientas
	set
		nombre = @NOMBRE,
		id_categoria_herramienta = @ID_CATEGORIA
	WHERE
		id = @ID_HERRAMIENTA;
GO


CREATE PROCEDURE aumentar_stock_herramientas
	@ID_HERRAMIENTA INT,
	@AUMENTA INT
AS
	UPDATE herramientas
	SET
		stock = stock + @AUMENTA,
		disponible = disponible + @AUMENTA
	WHERE
		id = @ID_HERRAMIENTA;
GO

CREATE PROCEDURE disminuir_stock_herramientas
	@ID_HERRAMIENTA INT,
	@DISMINUYE INT
AS
	UPDATE herramientas
	SET
		stock = stock - @DISMINUYE,
		en_reparacion = en_reparacion - @DISMINUYE
	WHERE
		id = @ID_HERRAMIENTA;
GO



--------------------------------------------------------------------------
--insertts de prueba
----------------------------------------------------------------------------


INSERT INTO [roles] ([nombre_rol])
VALUES 
('Administrador'),
('Pañolero'),
('Profesor');


INSERT INTO [herramientas_categoria] ([categoria])
VALUES 
('Manuales'),
('Eléctricas');


INSERT INTO [usuarios] ([usuario], [contrasenia], [rol], [nombre], [apellido])
VALUES 
(12345671, 'fabian24', 1, 'Fabian', 'Luna'),
(12345672, 'rosa24', 3, 'Rosa', 'Ojeda'),
(12345673, 'facundo24', 2, 'Facundo', 'Luna'),
(12345674, 'juan24', 3, 'Juan', 'Mancinelli'),
(12345675, 'cristian24', 3, 'Cristián', 'Curcio'),
(12345676, 'daniel24', 3, 'Daniel', 'Gómez');


INSERT INTO [herramientas] ([id_categoria_herramienta], [nombre], [stock], [disponible], [en_reparacion])
VALUES 
(1, 'Martillo', 20, 18, 2),
(1, 'Pinza', 15, 12, 3),
(1, 'Destornillador', 20, 20, 0),
(2, 'Taladro', 10, 8, 2),
(2, 'Amoladora', 10, 7, 3),
(2, 'Lijadora', 3,2,1),
(2, 'Soldadora', 9, 7, 2),
(1, 'Lima', 20, 20, 0),
(1, 'Serrucho', 18, 16, 2),
(1, 'Cinta métrica', 12, 10, 2),
(1, 'Alicate', 18, 16, 2);


INSERT INTO [herramientas_uso] ([id_herramienta], [cantidad_retirada],[cantidad_devueltas_rotas], [id_profesor], [fecha], [hora_retiro], [hora_devolucion])
VALUES
(1, 3, 0, 12345673, '2024-05-21', '10:15:00', '11:50:00'),
(1, 4, 0, 12345674, '2024-05-21', '10:20:00', '11:30:00'),
(5, 1, 0, 12345675, '2024-05-21', '10:21:00', '11:40:00'),
(9, 3, 0, 12345673, '2024-05-23', '13:15:00', '14:50:00'),
(4, 3, 0, 12345674, '2024-05-23', '10:15:00', '11:30:00');




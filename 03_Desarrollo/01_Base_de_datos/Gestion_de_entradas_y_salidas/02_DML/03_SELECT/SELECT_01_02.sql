-- Forma numero 1
SELECT * FROM [dbo].[TipoIdentificacion]
GO
-- Forma numero 2
SELECT 
 [TI].[TipoIdentificacionId],
 [TI].[Descripcion],
 [TI].[Estado]
FROM 
 [dbo].[TipoIdentificacion] AS [TI]
GO


-- Forma numero 1
SELECT * FROM [dbo].[Persona]
GO
-- Forma numero 2
SELECT 
 [P].[PersonaId],
 [P].[Nombres], [P].[Apellidos],
 [P].[TipoIdentificacion_TipoIdentificacionId],
 [P].[NumeroIdentificacion], [P].[Estado]
FROM 
 [dbo].[Persona] AS [P]
GO


-- Forma numero 1
SELECT * FROM [dbo].[TipoPersona]
GO
-- Forma numero 2
SELECT
 [TP].[TipoPersonaId],
 [TP].[Descripcion]
FROM 
 [dbo].[TipoPersona] AS [TP]
GO


-- Forma numero 1
SELECT * FROM [dbo].[Operacion]
GO
-- Forma numero 2
SELECT 
 [O].[OperacionId],
 [O].[Descripcion]
FROM 
 [dbo].[Operacion] AS [O]
GO


-- Forma numero 1
SELECT * FROM [dbo].[Registro]
GO
-- Forma numero 2
SELECT 
 [R].[RegistroId],
 [R].[Operacion_OperacionId],
 [R].[TipoPersona_TipoPersonaId],
 [R].[Persona_PersonaId],
 [R].[FechaRegistro],
 [R].[Estado]
FROM 
 [Registro] AS [R]
GO


-- Forma numero 1
SELECT * FROM [dbo].[TipoVehiculo]
GO
-- Forma numero 2
SELECT
 [TV].[TipoVehiculoId],
 [TV].[Descripcion],
 [TV].[Estado]
FROM 
 [dbo].[TipoVehiculo] AS [TV]
GO


-- Forma numero 1
SELECT * FROM [dbo].[Vehiculo]
GO
-- Forma numero 2
SELECT 
 [V].[Registro_RegistroId],
 [V].[TipoVehiculo_TipoVehiculoId],
 [V].[Placa], [V].[DescripcionAdicional],
 [V].[Estado]
FROM 
 [dbo].[Vehiculo] AS [V]
GO


-- Forma numero 1
SELECT * FROM [dbo].[Visita]
GO
-- Forma numero 2
SELECT 
 [VS].[Registro_RegistroId],
 [VS].[NumeroTorre],
 [VS].[NumeroApartamento],
 [VS].[TelefonoResidente],
 [VS].[Estado]
FROM 
 [dbo].[Visita] AS [VS]
GO
SELECT 
 [TI].[TipoIdentificacionId],
 [TI].[Descripcion],
 [TI].[Estado]
FROM 
 [dbo].[TipoIdentificacion] AS [TI]
GO

SELECT 
 [P].[PersonaId],
 [P].[Nombres], [P].[Apellidos],
 [P].[TipoIdentificacion_TipoIdentificacionId],
 [P].[NumeroIdentificacion], [P].[Estado]
FROM 
 [dbo].[Persona] AS [P]
GO

SELECT
 [TP].[TipoPersonaId],
 [TP].[Descripcion]
FROM 
 [dbo].[TipoPersona] AS [TP]
GO

SELECT 
 [O].[OperacionId],
 [O].[Descripcion]
FROM 
 [dbo].[Operacion] AS [O]
GO

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

SELECT
 [TV].[TipoVehiculoId],
 [TV].[Descripcion],
 [TV].[Estado]
FROM 
 [dbo].[TipoVehiculo] AS [TV]
GO

SELECT 
 [V].[Registro_RegistroId],
 [V].[TipoVehiculo_TipoVehiculoId],
 [V].[Placa], [V].[DescripcionAdicional],
 [V].[Estado]
FROM 
 [dbo].[Vehiculo] AS [V]
GO

SELECT 
 [VS].[Registro_RegistroId],
 [VS].[NumeroTorre],
 [VS].[NumeroApartamento],
 [VS].[TelefonoResidente],
 [VS].[Estado]
FROM 
 [dbo].[Visita] AS [VS]
GO
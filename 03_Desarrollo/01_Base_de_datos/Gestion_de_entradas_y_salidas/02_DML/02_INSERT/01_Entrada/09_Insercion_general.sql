INSERT INTO 
 [dbo].[TipoIdentificacion]([Descripcion], [Estado]) 
VALUES 
 ('Registro Civil', 1)
GO

INSERT INTO 
 [dbo].[TipoIdentificacion]([Descripcion], [Estado]) 
VALUES 
 ('Tarjeta de Identidad', 1)
GO

INSERT INTO 
 [dbo].[TipoIdentificacion]([Descripcion], [Estado]) 
VALUES 
 ('Cédula de Ciudadanía', 1)
GO

INSERT INTO 
 [dbo].[TipoIdentificacion]([Descripcion], [Estado])
VALUES 
 ('Cédula de Extranjería', 1)
GO

INSERT INTO 
 [dbo].[TipoIdentificacion]([Descripcion], [Estado])
VALUES 
 ('Menor sin Identificación', 1)
GO

INSERT INTO 
 [dbo].[TipoIdentificacion]([Descripcion], [Estado])
VALUES 
 ('Adulto sin Identificación', 1)
GO

INSERT INTO 
 [dbo].[Persona]([Nombres], [Apellidos], [TipoIdentificacion_TipoIdentificacionId], [NumeroIdentificacion], [Estado])
VALUES 
 ('Juliana Andrea', 'Pedrozo Perez', 3, '1000788655', 1)
GO

INSERT INTO 
 [dbo].[Persona]([Nombres], [Apellidos], [TipoIdentificacion_TipoIdentificacionId], [NumeroIdentificacion], [Estado])
VALUES 
 ('Stiven Alejandro', 'Herrera Perez', 3, '1051559969', 1)
GO

INSERT INTO 
 [dbo].[Persona]([Nombres], [Apellidos], [TipoIdentificacion_TipoIdentificacionId], [NumeroIdentificacion], [Estado])
VALUES
 ('Cristian David', 'Rincon Muñoz', 3, '1078653245', 1)
GO

INSERT INTO 
 [dbo].[Persona]([Nombres], [Apellidos], [TipoIdentificacion_TipoIdentificacionId], [NumeroIdentificacion], [Estado])
VALUES 
 ('David Eduardo', 'Carreño Mora', 3, '1062588474', 1)
GO

INSERT INTO 
 [dbo].[Persona]([Nombres], [Apellidos], [TipoIdentificacion_TipoIdentificacionId], [NumeroIdentificacion], [Estado])
VALUES 
 ('Camila Andrea', 'Cruz Saldaña', 3, '1000131237', 1)
GO

INSERT INTO 
 [dbo].[Persona]([Nombres], [Apellidos], [TipoIdentificacion_TipoIdentificacionId], [NumeroIdentificacion], [Estado])
VALUES 
 ('Juan Camilo', 'Jaramillo Carvajal', 3, '1888599623', 1)
GO

INSERT INTO 
 [dbo].[Persona]([Nombres], [Apellidos], [TipoIdentificacion_TipoIdentificacionId], [NumeroIdentificacion], [Estado])
VALUES 
 ('Adriana Carolina', 'Martinez Saenz', 3, '1000027340', 1)
GO

INSERT INTO 
 [dbo].[Persona]([Nombres], [Apellidos], [TipoIdentificacion_TipoIdentificacionId], [NumeroIdentificacion], [Estado])
VALUES 
 ('Kevin Alexander', 'Orjuela Ortiz', 2, '1899542258', 1)
GO

INSERT INTO 
 [dbo].[Persona]([Nombres], [Apellidos], [TipoIdentificacion_TipoIdentificacionId], [NumeroIdentificacion], [Estado])
VALUES 
 ('Johan Sebastian', 'Moreno Fajardo', 3, '1000856739', 1)
GO

INSERT INTO 
 [dbo].[Persona]([Nombres], [Apellidos], [TipoIdentificacion_TipoIdentificacionId], [NumeroIdentificacion], [Estado])
VALUES 
 ('Leidy Carolina', 'Rodriguez Franco', 3, '1007333855', 1)
GO

INSERT INTO 
 [dbo].[TipoPersona]([Descripcion])
VALUES 
 ('Residente')
GO

INSERT INTO 
 [dbo].[TipoPersona]([Descripcion])
VALUES 
 ('Visitante')
GO

INSERT INTO
 [dbo].[TipoPersona]([Descripcion])
VALUES 
 ('Empleado')
GO

INSERT INTO 
 [dbo].[Operacion]([Descripcion])
VALUES 
 ('Entrada')
GO

INSERT INTO 
 [dbo].[Operacion]([Descripcion])
VALUES 
 ('Salida')
GO

INSERT INTO 
 [dbo].[Registro]([Operacion_OperacionId], [TipoPersona_TipoPersonaId], [Persona_PersonaId], [Estado])
VALUES 
 (1, 1, 1, 1)
GO

INSERT INTO 
 [dbo].[Registro]([Operacion_OperacionId], [TipoPersona_TipoPersonaId], [Persona_PersonaId], [Estado])
VALUES
 (1, 2, 2, 1)
GO

INSERT INTO 
 [dbo].[Registro]([Operacion_OperacionId], [TipoPersona_TipoPersonaId], [Persona_PersonaId], [Estado])
VALUES 
 (1, 3, 3, 1)
GO

INSERT INTO 
 [dbo].[Registro]([Operacion_OperacionId], [TipoPersona_TipoPersonaId], [Persona_PersonaId], [Estado])
VALUES 
 (1, 1, 4, 1)
GO

INSERT INTO 
 [dbo].[Registro]([Operacion_OperacionId], [TipoPersona_TipoPersonaId], [Persona_PersonaId], [Estado])
VALUES 
 (1, 2, 5, 1)
GO

INSERT INTO 
 [dbo].[Registro]([Operacion_OperacionId], [TipoPersona_TipoPersonaId], [Persona_PersonaId], [Estado])
VALUES 
 (1, 3, 6, 1)
GO

INSERT INTO 
 [dbo].[Registro]([Operacion_OperacionId], [TipoPersona_TipoPersonaId], [Persona_PersonaId], [Estado])
VALUES 
 (1, 1, 7, 1)
GO

INSERT INTO
 [dbo].[Registro]([Operacion_OperacionId], [TipoPersona_TipoPersonaId], [Persona_PersonaId], [Estado])
VALUES 
 (1, 2, 8, 1)
GO

INSERT INTO 
 [dbo].[Registro]([Operacion_OperacionId], [TipoPersona_TipoPersonaId], [Persona_PersonaId], [Estado])
VALUES
 (1, 3, 9, 1)
GO

INSERT INTO 
 [dbo].[Registro]([Operacion_OperacionId], [TipoPersona_TipoPersonaId], [Persona_PersonaId], [Estado])
VALUES
 (1, 1, 10, 1)
GO

INSERT INTO 
 [dbo].[TipoVehiculo]([Descripcion], [Estado])
VALUES 
 ('Motocicleta', 1)
GO

INSERT INTO 
 [dbo].[TipoVehiculo]([Descripcion], [Estado])
VALUES 
 ('Automovil', 1)
GO

INSERT INTO 
 [dbo].[Vehiculo]([Registro_RegistroId], [TipoVehiculo_TipoVehiculoId], [Placa], [DescripcionAdicional], [Estado])
VALUES 
 (1, 2, 'CVY000', 'Hyundai grand i10', 1)
GO

INSERT INTO 
 [dbo].[Vehiculo]([Registro_RegistroId], [TipoVehiculo_TipoVehiculoId], [Placa], [DescripcionAdicional], [Estado])
VALUES 
 (2, 1, 'DPZ72A', 'AKT CR4 125 EuroIII', 1)
GO

INSERT INTO
 [dbo].[Vehiculo]([Registro_RegistroId], [TipoVehiculo_TipoVehiculoId], [Placa], [DescripcionAdicional], [Estado])
VALUES 
 (4, 2, 'CDU760', 'Kia Rio Ub Ex 1.4 Cc', 1)
GO

INSERT INTO 
 [dbo].[Vehiculo]([Registro_RegistroId], [TipoVehiculo_TipoVehiculoId], [Placa], [DescripcionAdicional], [Estado])
VALUES 
 (7, 1, 'GTO07D', 'Honda Cb 125', 1)
GO

INSERT INTO 
 [dbo].[Vehiculo]([Registro_RegistroId], [TipoVehiculo_TipoVehiculoId], [Placa], [DescripcionAdicional], [Estado])
VALUES
 (10, 2, 'MAK281', 'Toyota Corolla Apex', 1)
GO

INSERT 
 [dbo].[Visita]([Registro_RegistroId], [NumeroTorre], [NumeroApartamento], [TelefonoResidente], [Estado])
VALUES 
 (2, 1, 101, '3252648582',1)
GO

INSERT 
 [dbo].[Visita]([Registro_RegistroId], [NumeroTorre], [NumeroApartamento], [TelefonoResidente], [Estado])
VALUES 
 (5, 1, 105, '3002221478',1)
GO

INSERT 
 [dbo].[Visita]([Registro_RegistroId], [NumeroTorre], [NumeroApartamento], [TelefonoResidente], [Estado])
VALUES
 (8, 1, 109, '3008798787',1)
GO
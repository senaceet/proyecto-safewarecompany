-- 1. Obtener un registro general de todas aquellas personas (residentes, visitantes y/o empleados), que hayan realizado las operaciones de “entrada” y “salida” del conjunto residencial.
SELECT 
 [TP].[Descripcion] AS [Tipo de persona],
 [O].[Descripcion] AS [Tipo de operación],
 [TI].[Descripcion] AS [Tipo de identificación],
 [P].[NumeroIdentificacion] AS [Numero de identificación],
 [P].[Nombres], 
 [P].[Apellidos],
 CONVERT(VARCHAR, [R].[FechaRegistro], 100) AS [Fecha del registro]
FROM 
 [dbo].[TipoIdentificacion] AS [TI]
 INNER JOIN [dbo].[Persona] AS [P] ON [TI].[TipoIdentificacionId] = [P].[TipoIdentificacion_TipoIdentificacionId]
 INNER JOIN [dbo].[Registro] AS [R] ON [P].[PersonaId] = [R].[Persona_PersonaId]
 INNER JOIN [dbo].[TipoPersona] AS [TP] ON [TP].[TipoPersonaId] = [R].[TipoPersona_TipoPersonaId]
 INNER JOIN [dbo].[Operacion] AS [O] ON [O].[OperacionId] = [R].[Operacion_OperacionId]
WHERE 
 ([TI].[Estado] = 1) AND
 ([P].[Estado] = 1) AND 
 ([R].[Estado] = 1)



--2. Obtener un registro de todos aquellos residentes que actualmente se encuentren conjunto residencial; se debe conocer cada uno de los detalles del vehículo con el cual realizaron la respectiva operación de “entrada”.
SELECT
 [TP].[Descripcion] AS [Tipo de persona],
 [O].[Descripcion] AS [Tipo de operación],
 [TI].[Descripcion] AS [Tipo de identificación],
 [P].[NumeroIdentificacion] AS [Numero de identificación],
 [P].[Nombres], 
 [P].[Apellidos],
 [TV].[Descripcion] AS [Tipo de vehículo],
 [V].[Placa],
 [V].[DescripcionAdicional] AS [Descripción adicional] ,
 CONVERT(VARCHAR, [R].[FechaRegistro], 100) AS [Fecha de ingreso]
FROM 
 [dbo].[TipoIdentificacion] AS [TI]
 INNER JOIN [dbo].[Persona] AS [P] ON [TI].[TipoIdentificacionId] = [P].[TipoIdentificacion_TipoIdentificacionId]
 INNER JOIN [dbo].[Registro] AS [R] ON [P].[PersonaId] = [R].[Persona_PersonaId]
 INNER JOIN [dbo].[TipoPersona] AS [TP] ON [TP].[TipoPersonaId] = [R].[TipoPersona_TipoPersonaId]
 INNER JOIN [dbo].[Operacion] AS [O] ON [O].[OperacionId] = [R].[Operacion_OperacionId]
 INNER JOIN [dbo].[Vehiculo] AS [V] ON [R].[RegistroId] = [V].[Registro_RegistroId]
 INNER JOIN [dbo].[TipoVehiculo] AS [TV] ON [TV].[TipoVehiculoId] = [V].[TipoVehiculo_TipoVehiculoId]
WHERE 
 ([TP].[TipoPersonaId] = 1) AND 
 ([O].[OperacionId] = 1)  AND
 ([TI].[Estado] = 1) AND 
 ([P].[Estado] = 1) AND
 ([R].[Estado] = 1) AND
 ([TI].[Estado] = 1) AND
 ([V].[Estado] = 1)



--3. Obtener un registro de todos aquellos residentes que hayan realizado la operación de “salida” del conjunto residencial; se debe conocer cada uno de los detalles del vehículo con el cual realizaron la respectiva operación.
SELECT
 [TP].[Descripcion] AS [Tipo de persona],
 [O].[Descripcion] AS [Tipo de operación],
 [TI].[Descripcion] AS [Tipo de identificación],
 [P].[NumeroIdentificacion] AS [Numero de identificación],
 [P].[Nombres], 
 [P].[Apellidos],
 [TV].[Descripcion] AS [Tipo de vehículo],
 [V].[Placa],
 [V].[DescripcionAdicional] AS [Descripción adicional] ,
 CONVERT(VARCHAR, [R].[FechaRegistro], 100) AS [Fecha de salida]
FROM 
 [dbo].[TipoIdentificacion] AS [TI]
 INNER JOIN [dbo].[Persona] AS [P] ON [TI].[TipoIdentificacionId] = [P].[TipoIdentificacion_TipoIdentificacionId]
 INNER JOIN [dbo].[Registro] AS [R] ON [P].[PersonaId] = [R].[Persona_PersonaId]
 INNER JOIN [dbo].[TipoPersona] AS [TP] ON [TP].[TipoPersonaId] = [R].[TipoPersona_TipoPersonaId]
 INNER JOIN [dbo].[Operacion] AS [O] ON [O].[OperacionId] = [R].[Operacion_OperacionId]
 INNER JOIN [dbo].[Vehiculo] AS [V] ON [R].[RegistroId] = [V].[Registro_RegistroId]
 INNER JOIN [dbo].[TipoVehiculo] AS [TV] ON [TV].[TipoVehiculoId] = [V].[TipoVehiculo_TipoVehiculoId]
WHERE 
 ([TP].[TipoPersonaId] = 1) AND 
 ([O].[OperacionId] = 2)  AND
 ([TI].[Estado] = 1) AND 
 ([P].[Estado] = 1) AND
 ([R].[Estado] = 1) AND
 ([TI].[Estado] = 1) AND
 ([V].[Estado] = 1)



--4. Obtener un registro de todos aquellos visitantes que actualmente se encuentren en el conjunto residencial; se debe conocer detalles de cada uno de los apartamentos que se encuentran visitando.
SELECT 
 [TP].[Descripcion] AS [Tipo de persona],
 [O].[Descripcion] AS [Tipo de operación],
 [TI].[Descripcion] AS [Tipo de identificación],
 [P].[NumeroIdentificacion] AS [Numero de identificación],
 [P].[Nombres], 
 [P].[Apellidos],
 [VS].[NumeroTorre] AS [Numero de torre],
 [VS].[NumeroApartamento] AS [Apartamento visitado],
 [VS].[TelefonoResidente] AS [Teléfono del residente],
 CONVERT(VARCHAR, [R].[FechaRegistro], 100) AS [Fecha de ingreso]
FROM 
 [dbo].[TipoIdentificacion] AS [TI]
 INNER JOIN [dbo].[Persona] AS [P] ON [TI].[TipoIdentificacionId] = [P].[TipoIdentificacion_TipoIdentificacionId]
 INNER JOIN [dbo].[Registro] AS [R] ON [P].[PersonaId] = [R].[Persona_PersonaId]
 INNER JOIN [dbo].[TipoPersona] AS [TP] ON [TP].[TipoPersonaId] = [R].[TipoPersona_TipoPersonaId]
 INNER JOIN [dbo].[Operacion] AS [O] ON [O].[OperacionId] = [R].[Operacion_OperacionId]
 INNER JOIN [dbo].[Visita] AS [VS] ON [R].[RegistroId] = [VS].[Registro_RegistroId]
WHERE 
 ([TP].[TipoPersonaId] = 2) AND
 ([O].[OperacionId] = 1) AND
 ([TI].[Estado] = 1) AND 
 ([P].[Estado] = 1) AND 
 ([R].[Estado] = 1) AND
 ([VS].[Estado] = 1)



--5. Obtener un registro de todos aquellos visitantes que hayan realizado la operación de “salida” del conjunto residencial.
SELECT 
 [TP].[Descripcion] AS [Tipo de persona],
 [O].[Descripcion] AS [Tipo de operación],
 [TI].[Descripcion] AS [Tipo de identificación],
 [P].[NumeroIdentificacion] AS [Numero de identificación],
 [P].[Nombres], 
 [P].[Apellidos],
 CONVERT(VARCHAR, [R].[FechaRegistro], 100) AS [Fecha de salida]
FROM 
 [dbo].[TipoIdentificacion] AS [TI]
 INNER JOIN [dbo].[Persona] AS [P] ON [TI].[TipoIdentificacionId] = [P].[TipoIdentificacion_TipoIdentificacionId]
 INNER JOIN [dbo].[Registro] AS [R] ON [P].[PersonaId] = [R].[Persona_PersonaId]
 INNER JOIN [dbo].[TipoPersona] AS [TP] ON [TP].[TipoPersonaId] = [R].[TipoPersona_TipoPersonaId]
 INNER JOIN [dbo].[Operacion] AS [O] ON [O].[OperacionId] = [R].[Operacion_OperacionId]
WHERE 
 ([TP].[TipoPersonaId] = 2) AND
 ([O].[OperacionId] = 2) AND
 ([TI].[Estado] = 1) AND 
 ([P].[Estado] = 1) AND 
 ([R].[Estado] = 1)



 --6. Obtener un registro de todos aquellos visitantes que actualmente se encuentren en el conjunto residencial con algún tipo de vehículo; se debe conocer detalles de cada uno de los apartamentos que visitan y los vehículos que ingresaron al conjunto.
 SELECT
 [TP].[Descripcion] AS [Tipo de persona],
 [O].[Descripcion] AS [Tipo de operación],
 [TI].[Descripcion] AS [Tipo de identificación],
 [P].[NumeroIdentificacion] AS [Numero de identificación],
 [P].[Nombres], 
 [P].[Apellidos],
 [VS].[NumeroTorre] AS [Numero de torre],
 [VS].[NumeroApartamento] AS [Apartamento visitado],
 [VS].[TelefonoResidente] AS [Teléfono del residente],
 [TV].[Descripcion] AS [Tipo de vehículo],
 [V].[Placa],
 [V].[DescripcionAdicional] AS [Descripción adicional] ,
 CONVERT(VARCHAR, [R].[FechaRegistro], 100) AS [Fecha de ingreso]
FROM 
 [dbo].[TipoIdentificacion] AS [TI]
 INNER JOIN [dbo].[Persona] AS [P] ON [TI].[TipoIdentificacionId] = [P].[TipoIdentificacion_TipoIdentificacionId]
 INNER JOIN [dbo].[Registro] AS [R] ON [P].[PersonaId] = [R].[Persona_PersonaId]
 INNER JOIN [dbo].[TipoPersona] AS [TP] ON [TP].[TipoPersonaId] = [R].[TipoPersona_TipoPersonaId]
 INNER JOIN [dbo].[Operacion] AS [O] ON [O].[OperacionId] = [R].[Operacion_OperacionId]
 INNER JOIN [dbo].[Vehiculo] AS [V] ON [R].[RegistroId] = [V].[Registro_RegistroId]
 INNER JOIN [dbo].[TipoVehiculo] AS [TV] ON [TV].[TipoVehiculoId] = [V].[TipoVehiculo_TipoVehiculoId]
 INNER JOIN [dbo].[Visita] AS [VS] ON [R].[RegistroId] = [VS].[Registro_RegistroId]
WHERE 
 ([TP].[TipoPersonaId] = 2) AND 
 ([O].[OperacionId] = 1)  AND
 ([TI].[Estado] = 1) AND 
 ([P].[Estado] = 1) AND
 ([R].[Estado] = 1) AND
 ([TI].[Estado] = 1) AND
 ([V].[Estado] = 1) AND
 ([VS].[Estado] = 1)



 --7. Obtener un registro de todos aquellos visitantes que hayan realizado la operación de “salida” con algún tipo de vehículo.
SELECT
 [TP].[Descripcion] AS [Tipo de persona],
 [O].[Descripcion] AS [Tipo de operación],
 [TI].[Descripcion] AS [Tipo de identificación],
 [P].[NumeroIdentificacion] AS [Numero de identificación],
 [P].[Nombres], 
 [P].[Apellidos],
 [TV].[Descripcion] AS [Tipo de vehículo],
 [V].[Placa],
 [V].[DescripcionAdicional] AS [Descripción adicional] ,
 CONVERT(VARCHAR, [R].[FechaRegistro], 100) AS [Fecha de salida]
FROM 
 [dbo].[TipoIdentificacion] AS [TI]
 INNER JOIN [dbo].[Persona] AS [P] ON [TI].[TipoIdentificacionId] = [P].[TipoIdentificacion_TipoIdentificacionId]
 INNER JOIN [dbo].[Registro] AS [R] ON [P].[PersonaId] = [R].[Persona_PersonaId]
 INNER JOIN [dbo].[TipoPersona] AS [TP] ON [TP].[TipoPersonaId] = [R].[TipoPersona_TipoPersonaId]
 INNER JOIN [dbo].[Operacion] AS [O] ON [O].[OperacionId] = [R].[Operacion_OperacionId]
 INNER JOIN [dbo].[Vehiculo] AS [V] ON [R].[RegistroId] = [V].[Registro_RegistroId]
 INNER JOIN [dbo].[TipoVehiculo] AS [TV] ON [TV].[TipoVehiculoId] = [V].[TipoVehiculo_TipoVehiculoId]
WHERE 
 ([TP].[TipoPersonaId] = 2) AND 
 ([O].[OperacionId] = 2)  AND
 ([TI].[Estado] = 1) AND 
 ([P].[Estado] = 1) AND
 ([R].[Estado] = 1) AND
 ([TI].[Estado] = 1) AND
 ([V].[Estado] = 1)



--8. Obtener un registro de todos aquellos empleados del conjunto residencial que se encuentren dentro del mismo.
SELECT 
 [TP].[Descripcion] AS [Tipo de persona],
 [O].[Descripcion] AS [Tipo de operación],
 [TI].[Descripcion] AS [Tipo de identificación],
 [P].[NumeroIdentificacion] AS [Numero de identificación],
 [P].[Nombres], 
 [P].[Apellidos],
 CONVERT(VARCHAR, [R].[FechaRegistro], 100) AS [Fecha de ingreso]
FROM 
 [dbo].[TipoIdentificacion] AS [TI]
 INNER JOIN [dbo].[Persona] AS [P] ON [TI].[TipoIdentificacionId] = [P].[TipoIdentificacion_TipoIdentificacionId]
 INNER JOIN [dbo].[Registro] AS [R] ON [P].[PersonaId] = [R].[Persona_PersonaId]
 INNER JOIN [dbo].[TipoPersona] AS [TP] ON [TP].[TipoPersonaId] = [R].[TipoPersona_TipoPersonaId]
 INNER JOIN [dbo].[Operacion] AS [O] ON [O].[OperacionId] = [R].[Operacion_OperacionId]
WHERE 
 ([TP].[TipoPersonaId] = 3) AND
 ([O].[OperacionId] = 1) AND
 ([TI].[Estado] = 1) AND
 ([P].[Estado] = 1) AND 
 ([R].[Estado] = 1)



--9. Obtener un registro de todos aquellos empleados del conjunto residencial que hayan realizado la operación de “salida” del mismo.
SELECT 
 [TP].[Descripcion] AS [Tipo de persona],
 [O].[Descripcion] AS [Tipo de operación],
 [TI].[Descripcion] AS [Tipo de identificación],
 [P].[NumeroIdentificacion] AS [Numero de identificación],
 [P].[Nombres], 
 [P].[Apellidos],
 CONVERT(VARCHAR, [R].[FechaRegistro], 100) AS [Fecha de salida]
FROM 
 [dbo].[TipoIdentificacion] AS [TI]
 INNER JOIN [dbo].[Persona] AS [P] ON [TI].[TipoIdentificacionId] = [P].[TipoIdentificacion_TipoIdentificacionId]
 INNER JOIN [dbo].[Registro] AS [R] ON [P].[PersonaId] = [R].[Persona_PersonaId]
 INNER JOIN [dbo].[TipoPersona] AS [TP] ON [TP].[TipoPersonaId] = [R].[TipoPersona_TipoPersonaId]
 INNER JOIN [dbo].[Operacion] AS [O] ON [O].[OperacionId] = [R].[Operacion_OperacionId]
WHERE 
 ([TP].[TipoPersonaId] = 3) AND
 ([O].[OperacionId] = 2) AND
 ([TI].[Estado] = 1) AND
 ([P].[Estado] = 1) AND 
 ([R].[Estado] = 1)
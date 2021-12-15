UPDATE 
 [dbo].[Persona]
SET
 [Nombres] = 'David Andres',
 [Apellidos] = 'Hernandez Triana',
 [TipoIdentificacion_TipoIdentificacionId] = 3,
 [NumeroIdentificacion] = '1000786541',
 [Estado] = 1
WHERE [dbo].[Persona].[PersonaId] = 4
GO




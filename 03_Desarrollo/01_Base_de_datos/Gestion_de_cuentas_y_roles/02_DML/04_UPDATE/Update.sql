UPDATE
[dbo].[AspNetRoles]
SET
[Name] = 'Admin',
[Estado] = 2,
[Descripcion] = 'Admin de un conjunto residencial',
[Discriminator] = 'ApplicationRole'
WHERE [dbo].[AspNetRoles].[Id] = 1
GO



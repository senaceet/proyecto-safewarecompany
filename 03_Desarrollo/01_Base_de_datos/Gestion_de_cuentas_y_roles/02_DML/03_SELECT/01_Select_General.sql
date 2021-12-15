--AspNetRoles
-- Forma #1 
SELECT * FROM [dbo].[AspNetRoles]
GO

-- Forma #2
SELECT
[ANR].[Id],
[ANR].[Name],
[ANR].[Estado],
[ANR].[Descripcion],
[ANR].[Discriminator]
FROM 
[dbo].[AspNetRoles] AS [ANR]
GO

--AspNetUsers
-- Forma #1 
SELECT * FROM [dbo].[AspNetUsers]
GO

-- Forma #2
SELECT
[ANU].[Id],
[ANU].[Email],
[ANU].[UserName],
[ANU].[Nombres],
[ANU].[Apellidos]
FROM 
[dbo].[AspNetUsers] AS [ANU]
GO


--AspNetUserRoles
-- Forma #1 
SELECT * FROM [dbo].[AspNetUserRoles]
GO

-- Forma #2
SELECT
[ANR].[UserId],
[ANR].[RoleId]
FROM 
[dbo].[AspNetUserRoles] AS [ANR]
GO





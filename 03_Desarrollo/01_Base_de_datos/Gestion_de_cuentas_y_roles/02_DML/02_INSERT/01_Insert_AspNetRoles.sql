
INSERT INTO 
[dbo].[AspNetRoles]([Id],[Name], [Estado], [Descripcion], [Discriminator])
VALUES
('Administrador', 1, 'Administrador del conjunto residencial', 'ApplicationRole')
GO

INSERT INTO 
[dbo].[AspNetRoles]([Id], [Name], [Estado], [Descripcion], [Discriminator])
VALUES
(2,'Lider Asamblea', 1, 'Lider de asamblea del conjunto residencial', 'ApplicationRole')
GO

INSERT INTO 
[dbo].[AspNetRoles]([Id], [Name], [Estado], [Descripcion], [Discriminator])
VALUES
(3, 'Guarda de seguridad', 1, 'guarda de seguridad del conjunto residencial', 'ApplicationRole')
GO











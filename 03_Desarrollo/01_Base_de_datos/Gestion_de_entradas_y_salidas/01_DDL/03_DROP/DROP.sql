USE SafewareCompanyDb
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Visita]') AND type in (N'U'))
DROP TABLE [dbo].[Visita]
GO



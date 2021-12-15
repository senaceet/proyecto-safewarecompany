USE MASTER
GO

CREATE DATABASE [SafewareCompanyDb]
GO

USE [SafewareCompanyDb]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Operacion](
	[OperacionId] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](30) NOT NULL,
 CONSTRAINT [PK__Operacio__8A668AD76171A605] PRIMARY KEY CLUSTERED 
(
	[OperacionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Persona](
	[PersonaId] [int] IDENTITY(1,1) NOT NULL,
	[Nombres] [varchar](80) NOT NULL,
	[Apellidos] [varchar](80) NOT NULL,
	[TipoIdentificacion_TipoIdentificacionId] [int] NULL,
	[NumeroIdentificacion] [varchar](15) NULL,
	[Estado] [bit] NULL,
 CONSTRAINT [PK__Persona__7C34D3035CC07D37] PRIMARY KEY CLUSTERED 
(
	[PersonaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Registro](
	[RegistroId] [int] IDENTITY(1,1) NOT NULL,
	[Operacion_OperacionId] [int] NOT NULL,
	[TipoPersona_TipoPersonaId] [int] NOT NULL,
	[Persona_PersonaId] [int] NOT NULL,
	[FechaRegistro] [datetime] NULL,
	[Estado] [bit] NULL,
 CONSTRAINT [PK__Registro__FFA45A9963617345] PRIMARY KEY CLUSTERED 
(
	[RegistroId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TipoIdentificacion](
	[TipoIdentificacionId] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](40) NOT NULL,
	[Estado] [bit] NULL,
 CONSTRAINT [PK__TiposdeD__C774CA7419F29AC9] PRIMARY KEY CLUSTERED 
(
	[TipoIdentificacionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TipoPersona](
	[TipoPersonaId] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](15) NOT NULL,
 CONSTRAINT [PK__TipoIndi__2D4459CB98F320E5] PRIMARY KEY CLUSTERED 
(
	[TipoPersonaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TipoVehiculo](
	[TipoVehiculoId] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](40) NOT NULL,
	[Estado] [bit] NULL,
 CONSTRAINT [PK_TiposVehiculo] PRIMARY KEY CLUSTERED 
(
	[TipoVehiculoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Vehiculo](
	[Registro_RegistroId] [int] NOT NULL,
	[TipoVehiculo_TipoVehiculoId] [int] NOT NULL,
	[Placa] [varchar](10) NOT NULL,
	[DescripcionAdicional] [varchar](1000) NOT NULL,
	[Estado] [bit] NULL,
 CONSTRAINT [PK_Vehiculo] PRIMARY KEY CLUSTERED 
(
	[Registro_RegistroId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Visita](
	[Registro_RegistroId] [int] NOT NULL,
	[NumeroTorre] [int] NOT NULL,
	[NumeroApartamento] [int] NOT NULL,
	[TelefonoResidente] [varchar](20) NOT NULL,
	[Estado] [bit] NULL,
 CONSTRAINT [PK_Visita_1] PRIMARY KEY CLUSTERED 
(
	[Registro_RegistroId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[TipoIdentificacion] ADD  CONSTRAINT [DF_TiposIdentificacion_Estado]  DEFAULT ((1)) FOR [Estado]
GO

ALTER TABLE [dbo].[Persona] ADD  CONSTRAINT [DF_Persona_Estado]  DEFAULT ((1)) FOR [Estado]
GO

ALTER TABLE [dbo].[Registro] ADD  CONSTRAINT [DF_Registro_FechaRegistro]  DEFAULT (getdate()) FOR [FechaRegistro]
GO

ALTER TABLE [dbo].[Registro] ADD  CONSTRAINT [DF_Registro_Estado_1]  DEFAULT ((1)) FOR [Estado]
GO

ALTER TABLE [dbo].[TipoVehiculo] ADD  CONSTRAINT [DF_TiposVehiculo_Estado]  DEFAULT ((1)) FOR [Estado]
GO

ALTER TABLE [dbo].[Vehiculo] ADD  CONSTRAINT [DF_Vehiculo_Estado_1]  DEFAULT ((1)) FOR [Estado]
GO

ALTER TABLE [dbo].[Visita] ADD  CONSTRAINT [DF_Apartment_Status]  DEFAULT ((1)) FOR [Estado]
GO

ALTER TABLE [dbo].[Persona]  WITH CHECK ADD  CONSTRAINT [FK_Persona_TipoIdentificacion] FOREIGN KEY([TipoIdentificacion_TipoIdentificacionId])
REFERENCES [dbo].[TipoIdentificacion] ([TipoIdentificacionId])
GO

ALTER TABLE [dbo].[Persona] CHECK CONSTRAINT [FK_Persona_TipoIdentificacion]
GO

ALTER TABLE [dbo].[Registro]  WITH CHECK ADD  CONSTRAINT [FK_Registro_Operacion] FOREIGN KEY([Operacion_OperacionId])
REFERENCES [dbo].[Operacion] ([OperacionId])
GO

ALTER TABLE [dbo].[Registro] CHECK CONSTRAINT [FK_Registro_Operacion]
GO

ALTER TABLE [dbo].[Registro]  WITH CHECK ADD  CONSTRAINT [FK_Registro_Persona] FOREIGN KEY([Persona_PersonaId])
REFERENCES [dbo].[Persona] ([PersonaId])
GO

ALTER TABLE [dbo].[Registro] CHECK CONSTRAINT [FK_Registro_Persona]
GO

ALTER TABLE [dbo].[Registro]  WITH CHECK ADD  CONSTRAINT [FK_Registro_TipoPersona] FOREIGN KEY([TipoPersona_TipoPersonaId])
REFERENCES [dbo].[TipoPersona] ([TipoPersonaId])
GO

ALTER TABLE [dbo].[Registro] CHECK CONSTRAINT [FK_Registro_TipoPersona]
GO

ALTER TABLE [dbo].[Vehiculo]  WITH CHECK ADD  CONSTRAINT [FK_Vehiculo_Registro] FOREIGN KEY([Registro_RegistroId])
REFERENCES [dbo].[Registro] ([RegistroId])
GO

ALTER TABLE [dbo].[Vehiculo] CHECK CONSTRAINT [FK_Vehiculo_Registro]
GO

ALTER TABLE [dbo].[Vehiculo]  WITH CHECK ADD  CONSTRAINT [FK_Vehiculo_TipoVehiculo] FOREIGN KEY([TipoVehiculo_TipoVehiculoId])
REFERENCES [dbo].[TipoVehiculo] ([TipoVehiculoId])
GO

ALTER TABLE [dbo].[Vehiculo] CHECK CONSTRAINT [FK_Vehiculo_TipoVehiculo]
GO

ALTER TABLE [dbo].[Visita]  WITH CHECK ADD  CONSTRAINT [FK_Visita_Registro] FOREIGN KEY([Registro_RegistroId])
REFERENCES [dbo].[Registro] ([RegistroId])
GO

ALTER TABLE [dbo].[Visita] CHECK CONSTRAINT [FK_Visita_Registro]
GO

USE MASTER
GO

CREATE DATABASE [SafewareCompanyDb]
GO

USE [SafewareCompanyDb]
GO
/****** Object:  Table [dbo].[Color]    Script Date: 17/06/2021 21:19:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Color](
	[ColorId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](25) NOT NULL,
 CONSTRAINT [PK__Color__8DA7674DFFEFE41C] PRIMARY KEY CLUSTERED 
(
	[ColorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IdentificationType]    Script Date: 17/06/2021 21:19:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IdentificationType](
	[IdentificationTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](30) NOT NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK__TiposdeD__C774CA7419F29AC9] PRIMARY KEY CLUSTERED 
(
	[IdentificationTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Novelty]    Script Date: 17/06/2021 21:19:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Novelty](
	[NoveltyId] [int] IDENTITY(1,1) NOT NULL,
	[ResponsibleIdentification] [varchar](12) NOT NULL,
	[Description] [varchar](200) NOT NULL,
	[NoveltyDate] [datetime] NOT NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK__Novedade__727C9AF6EDC0B85C] PRIMARY KEY CLUSTERED 
(
	[NoveltyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Operation]    Script Date: 17/06/2021 21:19:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Operation](
	[OperationId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](15) NOT NULL,
 CONSTRAINT [PK__Operacio__8A668AD76171A605] PRIMARY KEY CLUSTERED 
(
	[OperationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OperationRegister]    Script Date: 17/06/2021 21:19:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OperationRegister](
	[OperationRegisterId] [int] IDENTITY(1,1) NOT NULL,
	[Operation_OperationId] [int] NOT NULL,
	[Register_RegisterId] [int] NOT NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_RegistroOperacion] PRIMARY KEY CLUSTERED 
(
	[OperationRegisterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Person]    Script Date: 17/06/2021 21:19:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Person](
	[PersonId] [int] IDENTITY(1,1) NOT NULL,
	[FirstNames] [varchar](60) NOT NULL,
	[LastNames] [varchar](60) NOT NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK__Persona__7C34D3035CC07D37] PRIMARY KEY CLUSTERED 
(
	[PersonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PersonRegister]    Script Date: 17/06/2021 21:19:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersonRegister](
	[PersonRegisterId] [int] IDENTITY(1,1) NOT NULL,
	[Register_RegisterId] [int] NOT NULL,
	[Person_PersonId] [int] NOT NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK__Persona___EA045A9A60D38425] PRIMARY KEY CLUSTERED 
(
	[PersonRegisterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PersonType]    Script Date: 17/06/2021 21:19:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersonType](
	[PersonTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](15) NOT NULL,
 CONSTRAINT [PK__TipoIndi__2D4459CB98F320E5] PRIMARY KEY CLUSTERED 
(
	[PersonTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Place]    Script Date: 17/06/2021 21:19:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Place](
	[PlaceId] [int] IDENTITY(1,1) NOT NULL,
	[TowerNumber] [int] NOT NULL,
	[ApartmentNumber] [int] NOT NULL,
	[ApartmentPersonIdentification] [varchar](15) NOT NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK__Lugar__D4D642BCD62EA0F3] PRIMARY KEY CLUSTERED 
(
	[PlaceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlaceRegister]    Script Date: 17/06/2021 21:19:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlaceRegister](
	[PlaceRegisterId] [int] IDENTITY(1,1) NOT NULL,
	[Register_RegisterId] [int] NOT NULL,
	[Place_PlaceId] [int] NOT NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_RegistroLugar] PRIMARY KEY CLUSTERED 
(
	[PlaceRegisterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Register]    Script Date: 17/06/2021 21:19:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Register](
	[RegisterId] [int] IDENTITY(1,1) NOT NULL,
	[PersonType_PersonTypeId] [int] NOT NULL,
	[Status] [bit] NULL,
	[RegisterDate] [datetime] NULL,
 CONSTRAINT [PK__Registro__FFA45A9963617345] PRIMARY KEY CLUSTERED 
(
	[RegisterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypePersonIdentification]    Script Date: 17/06/2021 21:19:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypePersonIdentification](
	[TypePersonIdentificationId] [int] IDENTITY(1,1) NOT NULL,
	[IdentificationType_IdentificationTypeId] [int] NOT NULL,
	[Person_PersonId] [int] NOT NULL,
	[IdentificationNumber] [nvarchar](15) NOT NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_PersonaTiposIdentificacion] PRIMARY KEY CLUSTERED 
(
	[TypePersonIdentificationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vehicle]    Script Date: 17/06/2021 21:19:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehicle](
	[VehicleId] [int] IDENTITY(1,1) NOT NULL,
	[VehicleType_VehicleTypeId] [int] NOT NULL,
	[LicencePlate] [varchar](6) NOT NULL,
	[Brand] [varchar](15) NOT NULL,
	[Color_ColorId] [int] NULL,
	[AdditionalDescription] [varchar](100) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK__Vehiculo__70861215BA964420] PRIMARY KEY CLUSTERED 
(
	[VehicleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VehicleNovelty]    Script Date: 17/06/2021 21:19:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VehicleNovelty](
	[VehicleNoveltyId] [int] IDENTITY(1,1) NOT NULL,
	[Novelty_NoveltyId] [int] NOT NULL,
	[Vehicle_VehicleId] [int] NOT NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_VehicleNovelty] PRIMARY KEY CLUSTERED 
(
	[VehicleNoveltyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VehicleRegister]    Script Date: 17/06/2021 21:19:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VehicleRegister](
	[VehicleRegisterId] [int] IDENTITY(1,1) NOT NULL,
	[Register_RegisterId] [int] NOT NULL,
	[Vehicle_VehicleId] [int] NOT NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_RegistroVehiculo] PRIMARY KEY CLUSTERED 
(
	[VehicleRegisterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VehicleType]    Script Date: 17/06/2021 21:19:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VehicleType](
	[VehicleTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](15) NOT NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_TiposVehiculo] PRIMARY KEY CLUSTERED 
(
	[VehicleTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[IdentificationType] ADD  CONSTRAINT [DF_TiposIdentificacion_Estado]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Novelty] ADD  CONSTRAINT [DF_Novedad_Estado]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[OperationRegister] ADD  CONSTRAINT [DF_RegistroOperacion_Estado]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Person] ADD  CONSTRAINT [DF_Persona_Estado]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[PersonRegister] ADD  CONSTRAINT [DF_PersonaRegistros_Estado]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Place] ADD  CONSTRAINT [DF_Lugar_Estado]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[PlaceRegister] ADD  CONSTRAINT [DF_RegistroLugar_Estado]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Register] ADD  CONSTRAINT [DF_Registro_Estado]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Register] ADD  CONSTRAINT [DF_Registro_FechaRegistro]  DEFAULT (getdate()) FOR [RegisterDate]
GO
ALTER TABLE [dbo].[TypePersonIdentification] ADD  CONSTRAINT [DF_PersonaTiposIdentificacion_Estado_1]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Vehicle] ADD  CONSTRAINT [DF_Vehiculo_Estado]  DEFAULT ((1)) FOR [AdditionalDescription]
GO
ALTER TABLE [dbo].[Vehicle] ADD  CONSTRAINT [DF_Vehiculo_Estado_1]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[VehicleNovelty] ADD  CONSTRAINT [DF_VehicleNovelty_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[VehicleRegister] ADD  CONSTRAINT [DF_RegistroVehiculo_Estado]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[VehicleType] ADD  CONSTRAINT [DF_TiposVehiculo_Estado]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[OperationRegister]  WITH CHECK ADD  CONSTRAINT [FK_OperationRegister_Operation] FOREIGN KEY([Operation_OperationId])
REFERENCES [dbo].[Operation] ([OperationId])
GO
ALTER TABLE [dbo].[OperationRegister] CHECK CONSTRAINT [FK_OperationRegister_Operation]
GO
ALTER TABLE [dbo].[OperationRegister]  WITH CHECK ADD  CONSTRAINT [FK_OperationRegister_Register] FOREIGN KEY([Register_RegisterId])
REFERENCES [dbo].[Register] ([RegisterId])
GO
ALTER TABLE [dbo].[OperationRegister] CHECK CONSTRAINT [FK_OperationRegister_Register]
GO
ALTER TABLE [dbo].[PersonRegister]  WITH CHECK ADD  CONSTRAINT [FK_PersonRegister_Person] FOREIGN KEY([Person_PersonId])
REFERENCES [dbo].[Person] ([PersonId])
GO
ALTER TABLE [dbo].[PersonRegister] CHECK CONSTRAINT [FK_PersonRegister_Person]
GO
ALTER TABLE [dbo].[PersonRegister]  WITH CHECK ADD  CONSTRAINT [FK_PersonRegister_Register] FOREIGN KEY([Register_RegisterId])
REFERENCES [dbo].[Register] ([RegisterId])
GO
ALTER TABLE [dbo].[PersonRegister] CHECK CONSTRAINT [FK_PersonRegister_Register]
GO
ALTER TABLE [dbo].[PlaceRegister]  WITH CHECK ADD  CONSTRAINT [FK_PlaceRegister_Place] FOREIGN KEY([Place_PlaceId])
REFERENCES [dbo].[Place] ([PlaceId])
GO
ALTER TABLE [dbo].[PlaceRegister] CHECK CONSTRAINT [FK_PlaceRegister_Place]
GO
ALTER TABLE [dbo].[PlaceRegister]  WITH CHECK ADD  CONSTRAINT [FK_PlaceRegister_Register] FOREIGN KEY([Register_RegisterId])
REFERENCES [dbo].[Register] ([RegisterId])
GO
ALTER TABLE [dbo].[PlaceRegister] CHECK CONSTRAINT [FK_PlaceRegister_Register]
GO
ALTER TABLE [dbo].[Register]  WITH CHECK ADD  CONSTRAINT [FK_Register_PersonType] FOREIGN KEY([PersonType_PersonTypeId])
REFERENCES [dbo].[PersonType] ([PersonTypeId])
GO
ALTER TABLE [dbo].[Register] CHECK CONSTRAINT [FK_Register_PersonType]
GO
ALTER TABLE [dbo].[TypePersonIdentification]  WITH CHECK ADD  CONSTRAINT [FK_TypePersonIdentification_IdentificationType] FOREIGN KEY([IdentificationType_IdentificationTypeId])
REFERENCES [dbo].[IdentificationType] ([IdentificationTypeId])
GO
ALTER TABLE [dbo].[TypePersonIdentification] CHECK CONSTRAINT [FK_TypePersonIdentification_IdentificationType]
GO
ALTER TABLE [dbo].[TypePersonIdentification]  WITH CHECK ADD  CONSTRAINT [FK_TypePersonIdentification_Person] FOREIGN KEY([Person_PersonId])
REFERENCES [dbo].[Person] ([PersonId])
GO
ALTER TABLE [dbo].[TypePersonIdentification] CHECK CONSTRAINT [FK_TypePersonIdentification_Person]
GO
ALTER TABLE [dbo].[Vehicle]  WITH CHECK ADD  CONSTRAINT [FK_Vehicle_Color] FOREIGN KEY([Color_ColorId])
REFERENCES [dbo].[Color] ([ColorId])
GO
ALTER TABLE [dbo].[Vehicle] CHECK CONSTRAINT [FK_Vehicle_Color]
GO
ALTER TABLE [dbo].[Vehicle]  WITH CHECK ADD  CONSTRAINT [FK_Vehicle_VehicleType] FOREIGN KEY([VehicleType_VehicleTypeId])
REFERENCES [dbo].[VehicleType] ([VehicleTypeId])
GO
ALTER TABLE [dbo].[Vehicle] CHECK CONSTRAINT [FK_Vehicle_VehicleType]
GO
ALTER TABLE [dbo].[VehicleNovelty]  WITH CHECK ADD  CONSTRAINT [FK_VehicleNovelty_Novelty] FOREIGN KEY([Novelty_NoveltyId])
REFERENCES [dbo].[Novelty] ([NoveltyId])
GO
ALTER TABLE [dbo].[VehicleNovelty] CHECK CONSTRAINT [FK_VehicleNovelty_Novelty]
GO
ALTER TABLE [dbo].[VehicleNovelty]  WITH CHECK ADD  CONSTRAINT [FK_VehicleNovelty_Vehicle] FOREIGN KEY([Vehicle_VehicleId])
REFERENCES [dbo].[Vehicle] ([VehicleId])
GO
ALTER TABLE [dbo].[VehicleNovelty] CHECK CONSTRAINT [FK_VehicleNovelty_Vehicle]
GO
ALTER TABLE [dbo].[VehicleRegister]  WITH CHECK ADD  CONSTRAINT [FK_VehicleRegister_Register] FOREIGN KEY([Register_RegisterId])
REFERENCES [dbo].[Register] ([RegisterId])
GO
ALTER TABLE [dbo].[VehicleRegister] CHECK CONSTRAINT [FK_VehicleRegister_Register]
GO
ALTER TABLE [dbo].[VehicleRegister]  WITH CHECK ADD  CONSTRAINT [FK_VehicleRegister_Vehicle] FOREIGN KEY([Vehicle_VehicleId])
REFERENCES [dbo].[Vehicle] ([VehicleId])
GO
ALTER TABLE [dbo].[VehicleRegister] CHECK CONSTRAINT [FK_VehicleRegister_Vehicle]
GO

USE MASTER
GO

CREATE DATABASE[SafewareCompanyDb]
GO

USE [SafewareCompanyDb]
GO
/****** Object:  Table [dbo].[Color]    Script Date: 17/06/2021 22:26:15 ******/
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
/****** Object:  Table [dbo].[IdentificationType]    Script Date: 17/06/2021 22:26:15 ******/
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
/****** Object:  Table [dbo].[Novelty]    Script Date: 17/06/2021 22:26:15 ******/
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
/****** Object:  Table [dbo].[Operation]    Script Date: 17/06/2021 22:26:15 ******/
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
/****** Object:  Table [dbo].[OperationRegister]    Script Date: 17/06/2021 22:26:15 ******/
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
/****** Object:  Table [dbo].[Person]    Script Date: 17/06/2021 22:26:15 ******/
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
/****** Object:  Table [dbo].[PersonRegister]    Script Date: 17/06/2021 22:26:15 ******/
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
/****** Object:  Table [dbo].[PersonType]    Script Date: 17/06/2021 22:26:15 ******/
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
/****** Object:  Table [dbo].[Place]    Script Date: 17/06/2021 22:26:15 ******/
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
/****** Object:  Table [dbo].[PlaceRegister]    Script Date: 17/06/2021 22:26:15 ******/
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
/****** Object:  Table [dbo].[Register]    Script Date: 17/06/2021 22:26:15 ******/
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
/****** Object:  Table [dbo].[TypePersonIdentification]    Script Date: 17/06/2021 22:26:15 ******/
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
/****** Object:  Table [dbo].[Vehicle]    Script Date: 17/06/2021 22:26:15 ******/
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
/****** Object:  Table [dbo].[VehicleNovelty]    Script Date: 17/06/2021 22:26:15 ******/
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
/****** Object:  Table [dbo].[VehicleRegister]    Script Date: 17/06/2021 22:26:15 ******/
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
/****** Object:  Table [dbo].[VehicleType]    Script Date: 17/06/2021 22:26:15 ******/
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
SET IDENTITY_INSERT [dbo].[Color] ON 
GO
INSERT [dbo].[Color] ([ColorId], [Description]) VALUES (1, N'Blanco')
GO
INSERT [dbo].[Color] ([ColorId], [Description]) VALUES (2, N'Negro')
GO
INSERT [dbo].[Color] ([ColorId], [Description]) VALUES (3, N'Gris')
GO
INSERT [dbo].[Color] ([ColorId], [Description]) VALUES (4, N'Plata')
GO
INSERT [dbo].[Color] ([ColorId], [Description]) VALUES (5, N'Rojo')
GO
INSERT [dbo].[Color] ([ColorId], [Description]) VALUES (6, N'Azul')
GO
INSERT [dbo].[Color] ([ColorId], [Description]) VALUES (7, N'Amarillo')
GO
INSERT [dbo].[Color] ([ColorId], [Description]) VALUES (8, N'Violeta')
GO
INSERT [dbo].[Color] ([ColorId], [Description]) VALUES (9, N'Verde')
GO
INSERT [dbo].[Color] ([ColorId], [Description]) VALUES (10, N'Beige')
GO
SET IDENTITY_INSERT [dbo].[Color] OFF
GO
SET IDENTITY_INSERT [dbo].[IdentificationType] ON 
GO
INSERT [dbo].[IdentificationType] ([IdentificationTypeId], [Description], [Status]) VALUES (1, N'Registro Civil', 1)
GO
INSERT [dbo].[IdentificationType] ([IdentificationTypeId], [Description], [Status]) VALUES (2, N'Tarjeta de Identidad', 1)
GO
INSERT [dbo].[IdentificationType] ([IdentificationTypeId], [Description], [Status]) VALUES (3, N'Cédula de Ciudadanía', 1)
GO
INSERT [dbo].[IdentificationType] ([IdentificationTypeId], [Description], [Status]) VALUES (4, N'Cédula de Extranjería', 1)
GO
INSERT [dbo].[IdentificationType] ([IdentificationTypeId], [Description], [Status]) VALUES (5, N'Menor sin Identificación', 0)
GO
INSERT [dbo].[IdentificationType] ([IdentificationTypeId], [Description], [Status]) VALUES (6, N'Adulto sin Identificación', 0)
GO
SET IDENTITY_INSERT [dbo].[IdentificationType] OFF
GO
SET IDENTITY_INSERT [dbo].[Novelty] ON 
GO
INSERT [dbo].[Novelty] ([NoveltyId], [ResponsibleIdentification], [Description], [NoveltyDate], [Status]) VALUES (1, N'1007749680', N'El espejo retrovisor izquierdo se encuentra roto', CAST(N'2021-03-09T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[Novelty] ([NoveltyId], [ResponsibleIdentification], [Description], [NoveltyDate], [Status]) VALUES (2, N'1005278745', N'Hay una abolladura en la parte trasera del automovil', CAST(N'2021-03-09T00:00:00.000' AS DateTime), 1)
GO
SET IDENTITY_INSERT [dbo].[Novelty] OFF
GO
SET IDENTITY_INSERT [dbo].[Operation] ON 
GO
INSERT [dbo].[Operation] ([OperationId], [Description]) VALUES (1, N'Entrada')
GO
INSERT [dbo].[Operation] ([OperationId], [Description]) VALUES (2, N'Salida')
GO
SET IDENTITY_INSERT [dbo].[Operation] OFF
GO
SET IDENTITY_INSERT [dbo].[OperationRegister] ON 
GO
INSERT [dbo].[OperationRegister] ([OperationRegisterId], [Operation_OperationId], [Register_RegisterId], [Status]) VALUES (1, 1, 1, 1)
GO
INSERT [dbo].[OperationRegister] ([OperationRegisterId], [Operation_OperationId], [Register_RegisterId], [Status]) VALUES (2, 2, 2, 1)
GO
INSERT [dbo].[OperationRegister] ([OperationRegisterId], [Operation_OperationId], [Register_RegisterId], [Status]) VALUES (3, 1, 3, 1)
GO
INSERT [dbo].[OperationRegister] ([OperationRegisterId], [Operation_OperationId], [Register_RegisterId], [Status]) VALUES (4, 1, 4, 1)
GO
INSERT [dbo].[OperationRegister] ([OperationRegisterId], [Operation_OperationId], [Register_RegisterId], [Status]) VALUES (5, 1, 5, 1)
GO
INSERT [dbo].[OperationRegister] ([OperationRegisterId], [Operation_OperationId], [Register_RegisterId], [Status]) VALUES (6, 1, 6, 1)
GO
INSERT [dbo].[OperationRegister] ([OperationRegisterId], [Operation_OperationId], [Register_RegisterId], [Status]) VALUES (7, 1, 7, 1)
GO
INSERT [dbo].[OperationRegister] ([OperationRegisterId], [Operation_OperationId], [Register_RegisterId], [Status]) VALUES (8, 2, 8, 1)
GO
INSERT [dbo].[OperationRegister] ([OperationRegisterId], [Operation_OperationId], [Register_RegisterId], [Status]) VALUES (9, 1, 9, 1)
GO
INSERT [dbo].[OperationRegister] ([OperationRegisterId], [Operation_OperationId], [Register_RegisterId], [Status]) VALUES (10, 2, 10, 1)
GO
INSERT [dbo].[OperationRegister] ([OperationRegisterId], [Operation_OperationId], [Register_RegisterId], [Status]) VALUES (11, 1, 11, 1)
GO
SET IDENTITY_INSERT [dbo].[OperationRegister] OFF
GO
SET IDENTITY_INSERT [dbo].[Person] ON 
GO
INSERT [dbo].[Person] ([PersonId], [FirstNames], [LastNames], [Status]) VALUES (1, N'Juliana Andrea', N'Pedrozo Perez', 1)
GO
INSERT [dbo].[Person] ([PersonId], [FirstNames], [LastNames], [Status]) VALUES (2, N'Kevin Adrian', N'Celis Vidal', 1)
GO
INSERT [dbo].[Person] ([PersonId], [FirstNames], [LastNames], [Status]) VALUES (3, N'Stiven Alejandro', N'Herrera Perez', 1)
GO
INSERT [dbo].[Person] ([PersonId], [FirstNames], [LastNames], [Status]) VALUES (4, N'Cristian David', N'Rincon Muñoz', 1)
GO
INSERT [dbo].[Person] ([PersonId], [FirstNames], [LastNames], [Status]) VALUES (5, N'David Eduardo', N'Carreño Mora', 1)
GO
INSERT [dbo].[Person] ([PersonId], [FirstNames], [LastNames], [Status]) VALUES (6, N'Camila Andrea', N'Cruz Saldaña', 1)
GO
INSERT [dbo].[Person] ([PersonId], [FirstNames], [LastNames], [Status]) VALUES (7, N'Juan Camilo', N'Jaramillo Carvajal', 1)
GO
INSERT [dbo].[Person] ([PersonId], [FirstNames], [LastNames], [Status]) VALUES (8, N'Adriana Carolina', N'Martinez Saenz', 1)
GO
INSERT [dbo].[Person] ([PersonId], [FirstNames], [LastNames], [Status]) VALUES (9, N'Kevin Alexander', N'Orjuela Ortiz', 1)
GO
INSERT [dbo].[Person] ([PersonId], [FirstNames], [LastNames], [Status]) VALUES (10, N'Johan Sebastian', N'Moreno Fajardo', 1)
GO
INSERT [dbo].[Person] ([PersonId], [FirstNames], [LastNames], [Status]) VALUES (11, N'Leidy Carolina', N'Rodriguez Franco', 1)
GO
SET IDENTITY_INSERT [dbo].[Person] OFF
GO
SET IDENTITY_INSERT [dbo].[PersonRegister] ON 
GO
INSERT [dbo].[PersonRegister] ([PersonRegisterId], [Register_RegisterId], [Person_PersonId], [Status]) VALUES (1, 1, 1, 1)
GO
INSERT [dbo].[PersonRegister] ([PersonRegisterId], [Register_RegisterId], [Person_PersonId], [Status]) VALUES (2, 2, 2, 1)
GO
INSERT [dbo].[PersonRegister] ([PersonRegisterId], [Register_RegisterId], [Person_PersonId], [Status]) VALUES (3, 3, 3, 1)
GO
INSERT [dbo].[PersonRegister] ([PersonRegisterId], [Register_RegisterId], [Person_PersonId], [Status]) VALUES (4, 4, 4, 1)
GO
INSERT [dbo].[PersonRegister] ([PersonRegisterId], [Register_RegisterId], [Person_PersonId], [Status]) VALUES (5, 5, 5, 1)
GO
INSERT [dbo].[PersonRegister] ([PersonRegisterId], [Register_RegisterId], [Person_PersonId], [Status]) VALUES (6, 6, 6, 1)
GO
INSERT [dbo].[PersonRegister] ([PersonRegisterId], [Register_RegisterId], [Person_PersonId], [Status]) VALUES (7, 7, 7, 1)
GO
INSERT [dbo].[PersonRegister] ([PersonRegisterId], [Register_RegisterId], [Person_PersonId], [Status]) VALUES (8, 8, 8, 1)
GO
INSERT [dbo].[PersonRegister] ([PersonRegisterId], [Register_RegisterId], [Person_PersonId], [Status]) VALUES (9, 9, 9, 1)
GO
INSERT [dbo].[PersonRegister] ([PersonRegisterId], [Register_RegisterId], [Person_PersonId], [Status]) VALUES (10, 10, 10, 1)
GO
INSERT [dbo].[PersonRegister] ([PersonRegisterId], [Register_RegisterId], [Person_PersonId], [Status]) VALUES (11, 11, 11, 1)
GO
SET IDENTITY_INSERT [dbo].[PersonRegister] OFF
GO
SET IDENTITY_INSERT [dbo].[PersonType] ON 
GO
INSERT [dbo].[PersonType] ([PersonTypeId], [Description]) VALUES (1, N'Residente')
GO
INSERT [dbo].[PersonType] ([PersonTypeId], [Description]) VALUES (2, N'Visitante')
GO
INSERT [dbo].[PersonType] ([PersonTypeId], [Description]) VALUES (3, N'Empleado')
GO
SET IDENTITY_INSERT [dbo].[PersonType] OFF
GO
SET IDENTITY_INSERT [dbo].[Place] ON 
GO
INSERT [dbo].[Place] ([PlaceId], [TowerNumber], [ApartmentNumber], [ApartmentPersonIdentification], [Status]) VALUES (1, 1, 1, N'1000727939', 1)
GO
INSERT [dbo].[Place] ([PlaceId], [TowerNumber], [ApartmentNumber], [ApartmentPersonIdentification], [Status]) VALUES (2, 1, 2, N'1000750575', 1)
GO
INSERT [dbo].[Place] ([PlaceId], [TowerNumber], [ApartmentNumber], [ApartmentPersonIdentification], [Status]) VALUES (3, 1, 3, N'1024464350', 1)
GO
SET IDENTITY_INSERT [dbo].[Place] OFF
GO
SET IDENTITY_INSERT [dbo].[PlaceRegister] ON 
GO
INSERT [dbo].[PlaceRegister] ([PlaceRegisterId], [Register_RegisterId], [Place_PlaceId], [Status]) VALUES (1, 4, 1, 1)
GO
INSERT [dbo].[PlaceRegister] ([PlaceRegisterId], [Register_RegisterId], [Place_PlaceId], [Status]) VALUES (2, 5, 2, 1)
GO
INSERT [dbo].[PlaceRegister] ([PlaceRegisterId], [Register_RegisterId], [Place_PlaceId], [Status]) VALUES (3, 6, 3, 1)
GO
SET IDENTITY_INSERT [dbo].[PlaceRegister] OFF
GO
SET IDENTITY_INSERT [dbo].[Register] ON 
GO
INSERT [dbo].[Register] ([RegisterId], [PersonType_PersonTypeId], [Status], [RegisterDate]) VALUES (1, 1, 1, CAST(N'2021-06-17T21:57:04.517' AS DateTime))
GO
INSERT [dbo].[Register] ([RegisterId], [PersonType_PersonTypeId], [Status], [RegisterDate]) VALUES (2, 1, 1, CAST(N'2021-06-17T21:57:04.543' AS DateTime))
GO
INSERT [dbo].[Register] ([RegisterId], [PersonType_PersonTypeId], [Status], [RegisterDate]) VALUES (3, 1, 1, CAST(N'2021-06-17T21:57:04.547' AS DateTime))
GO
INSERT [dbo].[Register] ([RegisterId], [PersonType_PersonTypeId], [Status], [RegisterDate]) VALUES (4, 2, 1, CAST(N'2021-06-17T21:57:04.550' AS DateTime))
GO
INSERT [dbo].[Register] ([RegisterId], [PersonType_PersonTypeId], [Status], [RegisterDate]) VALUES (5, 2, 1, CAST(N'2021-06-17T21:57:04.553' AS DateTime))
GO
INSERT [dbo].[Register] ([RegisterId], [PersonType_PersonTypeId], [Status], [RegisterDate]) VALUES (6, 2, 1, CAST(N'2021-06-17T21:57:04.557' AS DateTime))
GO
INSERT [dbo].[Register] ([RegisterId], [PersonType_PersonTypeId], [Status], [RegisterDate]) VALUES (7, 3, 1, CAST(N'2021-06-17T21:57:04.557' AS DateTime))
GO
INSERT [dbo].[Register] ([RegisterId], [PersonType_PersonTypeId], [Status], [RegisterDate]) VALUES (8, 3, 1, CAST(N'2021-06-17T21:57:04.560' AS DateTime))
GO
INSERT [dbo].[Register] ([RegisterId], [PersonType_PersonTypeId], [Status], [RegisterDate]) VALUES (9, 3, 1, CAST(N'2021-06-17T21:57:04.560' AS DateTime))
GO
INSERT [dbo].[Register] ([RegisterId], [PersonType_PersonTypeId], [Status], [RegisterDate]) VALUES (10, 1, 1, CAST(N'2021-06-17T21:57:04.570' AS DateTime))
GO
INSERT [dbo].[Register] ([RegisterId], [PersonType_PersonTypeId], [Status], [RegisterDate]) VALUES (11, 2, 1, CAST(N'2021-06-17T21:57:04.573' AS DateTime))
GO
INSERT [dbo].[Register] ([RegisterId], [PersonType_PersonTypeId], [Status], [RegisterDate]) VALUES (12, 2, 1, CAST(N'2021-06-17T21:57:04.577' AS DateTime))
GO
INSERT [dbo].[Register] ([RegisterId], [PersonType_PersonTypeId], [Status], [RegisterDate]) VALUES (13, 1, 1, CAST(N'2021-06-17T21:57:23.330' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Register] OFF
GO
SET IDENTITY_INSERT [dbo].[TypePersonIdentification] ON 
GO
INSERT [dbo].[TypePersonIdentification] ([TypePersonIdentificationId], [IdentificationType_IdentificationTypeId], [Person_PersonId], [IdentificationNumber], [Status]) VALUES (1, 3, 1, N'1000788654', 1)
GO
INSERT [dbo].[TypePersonIdentification] ([TypePersonIdentificationId], [IdentificationType_IdentificationTypeId], [Person_PersonId], [IdentificationNumber], [Status]) VALUES (2, 3, 2, N'1051559969', 1)
GO
INSERT [dbo].[TypePersonIdentification] ([TypePersonIdentificationId], [IdentificationType_IdentificationTypeId], [Person_PersonId], [IdentificationNumber], [Status]) VALUES (3, 3, 3, N'1078653245', 1)
GO
INSERT [dbo].[TypePersonIdentification] ([TypePersonIdentificationId], [IdentificationType_IdentificationTypeId], [Person_PersonId], [IdentificationNumber], [Status]) VALUES (4, 2, 4, N'1062588474', 1)
GO
INSERT [dbo].[TypePersonIdentification] ([TypePersonIdentificationId], [IdentificationType_IdentificationTypeId], [Person_PersonId], [IdentificationNumber], [Status]) VALUES (5, 2, 5, N'1000131237', 1)
GO
INSERT [dbo].[TypePersonIdentification] ([TypePersonIdentificationId], [IdentificationType_IdentificationTypeId], [Person_PersonId], [IdentificationNumber], [Status]) VALUES (6, 3, 6, N'1888599623', 1)
GO
INSERT [dbo].[TypePersonIdentification] ([TypePersonIdentificationId], [IdentificationType_IdentificationTypeId], [Person_PersonId], [IdentificationNumber], [Status]) VALUES (7, 3, 7, N'1000027340', 1)
GO
INSERT [dbo].[TypePersonIdentification] ([TypePersonIdentificationId], [IdentificationType_IdentificationTypeId], [Person_PersonId], [IdentificationNumber], [Status]) VALUES (8, 3, 8, N'1899542258', 1)
GO
INSERT [dbo].[TypePersonIdentification] ([TypePersonIdentificationId], [IdentificationType_IdentificationTypeId], [Person_PersonId], [IdentificationNumber], [Status]) VALUES (9, 3, 9, N'1000856739', 1)
GO
INSERT [dbo].[TypePersonIdentification] ([TypePersonIdentificationId], [IdentificationType_IdentificationTypeId], [Person_PersonId], [IdentificationNumber], [Status]) VALUES (10, 3, 10, N'1007333855', 1)
GO
INSERT [dbo].[TypePersonIdentification] ([TypePersonIdentificationId], [IdentificationType_IdentificationTypeId], [Person_PersonId], [IdentificationNumber], [Status]) VALUES (11, 3, 11, N'1007156534', 1)
GO
SET IDENTITY_INSERT [dbo].[TypePersonIdentification] OFF
GO
SET IDENTITY_INSERT [dbo].[Vehicle] ON 
GO
INSERT [dbo].[Vehicle] ([VehicleId], [VehicleType_VehicleTypeId], [LicencePlate], [Brand], [Color_ColorId], [AdditionalDescription], [Status]) VALUES (1, 2, N'CVY000', N'Hyundai', 1, N'hyundai grand i10', 1)
GO
INSERT [dbo].[Vehicle] ([VehicleId], [VehicleType_VehicleTypeId], [LicencePlate], [Brand], [Color_ColorId], [AdditionalDescription], [Status]) VALUES (2, 2, N'CDU760', N'kia', 2, N'Kia Rio Ub Ex 1.4 Cc', 1)
GO
INSERT [dbo].[Vehicle] ([VehicleId], [VehicleType_VehicleTypeId], [LicencePlate], [Brand], [Color_ColorId], [AdditionalDescription], [Status]) VALUES (3, 2, N'CZR263', N'Nissan', 3, N'Nissan March 1.6 Sense', 1)
GO
INSERT [dbo].[Vehicle] ([VehicleId], [VehicleType_VehicleTypeId], [LicencePlate], [Brand], [Color_ColorId], [AdditionalDescription], [Status]) VALUES (4, 1, N'DPZ72A', N'AKT', 4, N'AKT CR4 125 EuroIII', 1)
GO
INSERT [dbo].[Vehicle] ([VehicleId], [VehicleType_VehicleTypeId], [LicencePlate], [Brand], [Color_ColorId], [AdditionalDescription], [Status]) VALUES (5, 1, N'GTO07D', N'Honda', 5, N'Honda Cb 125', 1)
GO
INSERT [dbo].[Vehicle] ([VehicleId], [VehicleType_VehicleTypeId], [LicencePlate], [Brand], [Color_ColorId], [AdditionalDescription], [Status]) VALUES (6, 1, N'ORE29A', N'Yamaha', 6, N'Yamaha Fz25', 1)
GO
INSERT [dbo].[Vehicle] ([VehicleId], [VehicleType_VehicleTypeId], [LicencePlate], [Brand], [Color_ColorId], [AdditionalDescription], [Status]) VALUES (7, 2, N'MAK281', N'Toyota', 7, N'Toyota Corolla Apex', 1)
GO
INSERT [dbo].[Vehicle] ([VehicleId], [VehicleType_VehicleTypeId], [LicencePlate], [Brand], [Color_ColorId], [AdditionalDescription], [Status]) VALUES (8, 2, N'MCM864', N'Nissan', 8, N'Nissan Tiida', 1)
GO
SET IDENTITY_INSERT [dbo].[Vehicle] OFF
GO
SET IDENTITY_INSERT [dbo].[VehicleNovelty] ON 
GO
INSERT [dbo].[VehicleNovelty] ([VehicleNoveltyId], [Novelty_NoveltyId], [Vehicle_VehicleId], [Status]) VALUES (1, 1, 7, 1)
GO
INSERT [dbo].[VehicleNovelty] ([VehicleNoveltyId], [Novelty_NoveltyId], [Vehicle_VehicleId], [Status]) VALUES (2, 1, 8, 1)
GO
SET IDENTITY_INSERT [dbo].[VehicleNovelty] OFF
GO
SET IDENTITY_INSERT [dbo].[VehicleRegister] ON 
GO
INSERT [dbo].[VehicleRegister] ([VehicleRegisterId], [Register_RegisterId], [Vehicle_VehicleId], [Status]) VALUES (1, 1, 1, 1)
GO
INSERT [dbo].[VehicleRegister] ([VehicleRegisterId], [Register_RegisterId], [Vehicle_VehicleId], [Status]) VALUES (2, 2, 2, 1)
GO
INSERT [dbo].[VehicleRegister] ([VehicleRegisterId], [Register_RegisterId], [Vehicle_VehicleId], [Status]) VALUES (3, 3, 3, 1)
GO
INSERT [dbo].[VehicleRegister] ([VehicleRegisterId], [Register_RegisterId], [Vehicle_VehicleId], [Status]) VALUES (4, 7, 4, 1)
GO
INSERT [dbo].[VehicleRegister] ([VehicleRegisterId], [Register_RegisterId], [Vehicle_VehicleId], [Status]) VALUES (5, 8, 5, 1)
GO
INSERT [dbo].[VehicleRegister] ([VehicleRegisterId], [Register_RegisterId], [Vehicle_VehicleId], [Status]) VALUES (6, 9, 6, 1)
GO
INSERT [dbo].[VehicleRegister] ([VehicleRegisterId], [Register_RegisterId], [Vehicle_VehicleId], [Status]) VALUES (7, 10, 7, 1)
GO
INSERT [dbo].[VehicleRegister] ([VehicleRegisterId], [Register_RegisterId], [Vehicle_VehicleId], [Status]) VALUES (8, 11, 8, 1)
GO
SET IDENTITY_INSERT [dbo].[VehicleRegister] OFF
GO
SET IDENTITY_INSERT [dbo].[VehicleType] ON 
GO
INSERT [dbo].[VehicleType] ([VehicleTypeId], [Description], [Status]) VALUES (1, N'Motocicleta', 1)
GO
INSERT [dbo].[VehicleType] ([VehicleTypeId], [Description], [Status]) VALUES (2, N'Automovil', 1)
GO
SET IDENTITY_INSERT [dbo].[VehicleType] OFF
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

USE [PruebaTerceros]
GO
/****** Object:  Schema [Dto]    Script Date: 9/08/2024 11:19:09 a. m. ******/
CREATE SCHEMA [Dto]
GO
/****** Object:  Schema [Seguridad]    Script Date: 9/08/2024 11:19:09 a. m. ******/
CREATE SCHEMA [Seguridad]
GO
/****** Object:  Table [Dto].[Tbl_Departamento]    Script Date: 9/08/2024 11:19:09 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Dto].[Tbl_Departamento](
	[IdDepartamento] [int] IDENTITY(1,1) NOT NULL,
	[NombreDepartamento] [nchar](50) NULL,
 CONSTRAINT [PK_Departamento] PRIMARY KEY CLUSTERED 
(
	[IdDepartamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Dto].[Tbl_Municipio]    Script Date: 9/08/2024 11:19:09 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Dto].[Tbl_Municipio](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Municipio] [nchar](50) NULL,
	[IdDepartamento] [int] NULL,
 CONSTRAINT [PK_Tbl_Municipio] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Dto].[Tbl_Parametro]    Script Date: 9/08/2024 11:19:09 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Dto].[Tbl_Parametro](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Parametro] [varchar](50) NULL,
	[CodParametro] [nchar](10) NULL,
 CONSTRAINT [PK_Tbl_Parametro] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Dto].[Tbl_Tercero]    Script Date: 9/08/2024 11:19:09 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Dto].[Tbl_Tercero](
	[IdTercero] [int] IDENTITY(1,1) NOT NULL,
	[IdMunicipio] [int] NULL,
	[IdDepartamento] [int] NULL,
	[IdParametro] [int] NULL,
	[NombreTercero] [nchar](10) NULL,
	[ApellidoTercero] [nchar](10) NULL,
	[Edad] [nchar](10) NULL,
	[Activo] [int] NULL,
	[IdUsuario] [int] NULL,
 CONSTRAINT [PK_Tercero] PRIMARY KEY CLUSTERED 
(
	[IdTercero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Seguridad].[Tbl_Usuario]    Script Date: 9/08/2024 11:19:09 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Seguridad].[Tbl_Usuario](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NombreUsu] [nchar](20) NULL,
	[ContraUsu] [nchar](20) NULL,
	[Activo] [int] NULL,
 CONSTRAINT [PK_Tbl_Usuario] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [Dto].[Tbl_Departamento] ON 

INSERT [Dto].[Tbl_Departamento] ([IdDepartamento], [NombreDepartamento]) VALUES (1, N'Cundinamarca                                      ')
SET IDENTITY_INSERT [Dto].[Tbl_Departamento] OFF
GO
SET IDENTITY_INSERT [Dto].[Tbl_Municipio] ON 

INSERT [Dto].[Tbl_Municipio] ([Id], [Municipio], [IdDepartamento]) VALUES (1, N'BOGOTA                                            ', 1)
SET IDENTITY_INSERT [Dto].[Tbl_Municipio] OFF
GO
SET IDENTITY_INSERT [Dto].[Tbl_Parametro] ON 

INSERT [Dto].[Tbl_Parametro] ([Id], [Parametro], [CodParametro]) VALUES (1, N'CEDULA DE CIUDADANIA', N'CC        ')
INSERT [Dto].[Tbl_Parametro] ([Id], [Parametro], [CodParametro]) VALUES (2, N'PASAPORTE', N'PS        ')
INSERT [Dto].[Tbl_Parametro] ([Id], [Parametro], [CodParametro]) VALUES (3, N'NIT COMPAÑIA', N'NIT       ')
SET IDENTITY_INSERT [Dto].[Tbl_Parametro] OFF
GO
SET IDENTITY_INSERT [Dto].[Tbl_Tercero] ON 

INSERT [Dto].[Tbl_Tercero] ([IdTercero], [IdMunicipio], [IdDepartamento], [IdParametro], [NombreTercero], [ApellidoTercero], [Edad], [Activo], [IdUsuario]) VALUES (3, 1, 1, 1, N'JUAN      ', N'BERNAL    ', N'23        ', 1, 1)
INSERT [Dto].[Tbl_Tercero] ([IdTercero], [IdMunicipio], [IdDepartamento], [IdParametro], [NombreTercero], [ApellidoTercero], [Edad], [Activo], [IdUsuario]) VALUES (4, 1, 1, 1, N'jason     ', N'jason     ', N'25        ', 1, 1)
INSERT [Dto].[Tbl_Tercero] ([IdTercero], [IdMunicipio], [IdDepartamento], [IdParametro], [NombreTercero], [ApellidoTercero], [Edad], [Activo], [IdUsuario]) VALUES (5, 1, 1, 1, N'juan      ', N'juan      ', N'juan      ', 1, 1)
INSERT [Dto].[Tbl_Tercero] ([IdTercero], [IdMunicipio], [IdDepartamento], [IdParametro], [NombreTercero], [ApellidoTercero], [Edad], [Activo], [IdUsuario]) VALUES (6, 1, 1, 1, N'Jason     ', N'Jason     ', N'12        ', 1, 1)
INSERT [Dto].[Tbl_Tercero] ([IdTercero], [IdMunicipio], [IdDepartamento], [IdParametro], [NombreTercero], [ApellidoTercero], [Edad], [Activo], [IdUsuario]) VALUES (7, 1, 1, 1, N'Jason     ', N'Jason     ', N'12        ', 1, 1)
INSERT [Dto].[Tbl_Tercero] ([IdTercero], [IdMunicipio], [IdDepartamento], [IdParametro], [NombreTercero], [ApellidoTercero], [Edad], [Activo], [IdUsuario]) VALUES (8, 1, 1, 1, N'Jason     ', N'Jason     ', N'12        ', 1, 1)
INSERT [Dto].[Tbl_Tercero] ([IdTercero], [IdMunicipio], [IdDepartamento], [IdParametro], [NombreTercero], [ApellidoTercero], [Edad], [Activo], [IdUsuario]) VALUES (9, 1, 1, 1, N'Andres    ', N'Andres    ', N'14        ', 1, 1)
INSERT [Dto].[Tbl_Tercero] ([IdTercero], [IdMunicipio], [IdDepartamento], [IdParametro], [NombreTercero], [ApellidoTercero], [Edad], [Activo], [IdUsuario]) VALUES (10, 1, 1, 1, N'Andres    ', N'Andres    ', N'14        ', 1, 1)
INSERT [Dto].[Tbl_Tercero] ([IdTercero], [IdMunicipio], [IdDepartamento], [IdParametro], [NombreTercero], [ApellidoTercero], [Edad], [Activo], [IdUsuario]) VALUES (11, 1, 1, 1, N'Andres    ', N'Andres    ', N'14        ', 1, 1)
INSERT [Dto].[Tbl_Tercero] ([IdTercero], [IdMunicipio], [IdDepartamento], [IdParametro], [NombreTercero], [ApellidoTercero], [Edad], [Activo], [IdUsuario]) VALUES (12, 1, 1, 1, N'Andres    ', N'Andres    ', N'14        ', 1, 1)
INSERT [Dto].[Tbl_Tercero] ([IdTercero], [IdMunicipio], [IdDepartamento], [IdParametro], [NombreTercero], [ApellidoTercero], [Edad], [Activo], [IdUsuario]) VALUES (13, 1, 1, 1, N'Andres    ', N'Andres    ', N'14        ', 1, 1)
INSERT [Dto].[Tbl_Tercero] ([IdTercero], [IdMunicipio], [IdDepartamento], [IdParametro], [NombreTercero], [ApellidoTercero], [Edad], [Activo], [IdUsuario]) VALUES (14, 1, 1, 1, N'Andres    ', N'Andres    ', N'14        ', 1, 1)
INSERT [Dto].[Tbl_Tercero] ([IdTercero], [IdMunicipio], [IdDepartamento], [IdParametro], [NombreTercero], [ApellidoTercero], [Edad], [Activo], [IdUsuario]) VALUES (15, 1, 1, 1, N'string    ', N'string    ', N'string    ', 1, 1)
INSERT [Dto].[Tbl_Tercero] ([IdTercero], [IdMunicipio], [IdDepartamento], [IdParametro], [NombreTercero], [ApellidoTercero], [Edad], [Activo], [IdUsuario]) VALUES (16, 1, 1, 1, N'1         ', N'1         ', N'1         ', 0, 1)
SET IDENTITY_INSERT [Dto].[Tbl_Tercero] OFF
GO
SET IDENTITY_INSERT [Seguridad].[Tbl_Usuario] ON 

INSERT [Seguridad].[Tbl_Usuario] ([Id], [NombreUsu], [ContraUsu], [Activo]) VALUES (1, N'juan@gmail.com      ', N'1234                ', 1)
SET IDENTITY_INSERT [Seguridad].[Tbl_Usuario] OFF
GO
ALTER TABLE [Dto].[Tbl_Municipio]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Municipio_Tbl_Departamento] FOREIGN KEY([IdDepartamento])
REFERENCES [Dto].[Tbl_Departamento] ([IdDepartamento])
GO
ALTER TABLE [Dto].[Tbl_Municipio] CHECK CONSTRAINT [FK_Tbl_Municipio_Tbl_Departamento]
GO
ALTER TABLE [Dto].[Tbl_Tercero]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Tercero_Tbl_Departamento1] FOREIGN KEY([IdDepartamento])
REFERENCES [Dto].[Tbl_Departamento] ([IdDepartamento])
GO
ALTER TABLE [Dto].[Tbl_Tercero] CHECK CONSTRAINT [FK_Tbl_Tercero_Tbl_Departamento1]
GO
ALTER TABLE [Dto].[Tbl_Tercero]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Tercero_Tbl_Municipio1] FOREIGN KEY([IdMunicipio])
REFERENCES [Dto].[Tbl_Municipio] ([Id])
GO
ALTER TABLE [Dto].[Tbl_Tercero] CHECK CONSTRAINT [FK_Tbl_Tercero_Tbl_Municipio1]
GO
ALTER TABLE [Dto].[Tbl_Tercero]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Tercero_Tbl_Parametro1] FOREIGN KEY([IdParametro])
REFERENCES [Dto].[Tbl_Parametro] ([Id])
GO
ALTER TABLE [Dto].[Tbl_Tercero] CHECK CONSTRAINT [FK_Tbl_Tercero_Tbl_Parametro1]
GO
ALTER TABLE [Dto].[Tbl_Tercero]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Tercero_Tbl_Usuario1] FOREIGN KEY([IdUsuario])
REFERENCES [Seguridad].[Tbl_Usuario] ([Id])
GO
ALTER TABLE [Dto].[Tbl_Tercero] CHECK CONSTRAINT [FK_Tbl_Tercero_Tbl_Usuario1]
GO
/****** Object:  StoredProcedure [Dto].[ConsultarForaneas]    Script Date: 9/08/2024 11:19:09 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Dto].[ConsultarForaneas]
AS
BEGIN

	SELECT IdDepartamento, Trim(NombreDepartamento) AS NombreDepartamento FROM [Dto].[Tbl_Departamento]
	SELECT Id, Trim(Municipio) AS Municipio, IdDepartamento FROM [Dto].[Tbl_Municipio]
	SELECT Id, Trim(Parametro) AS Parametro, Trim(CodParametro) AS CodParametro FROM [Dto].[Tbl_Parametro]

END
GO
/****** Object:  StoredProcedure [Dto].[ConsultarTercero]    Script Date: 9/08/2024 11:19:09 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Dto].[ConsultarTercero]
AS
BEGIN
    SELECT 
        t.IdTercero AS IdTercero,
        m.Id AS IdMunicipio,
        TRIM(m.Municipio) AS Municipio,
        d.IdDepartamento AS IdDepartamento,
        TRIM(d.NombreDepartamento) AS Departamento,
        p.Id AS IdParametro,
        TRIM(p.Parametro) AS Parametro,
        TRIM(t.NombreTercero) AS NombreTercero,
        TRIM(t.ApellidoTercero) AS ApellidoTercero,
        TRIM(t.Edad) AS EdadTercero
    FROM [Dto].[Tbl_Tercero] t
    INNER JOIN [Dto].[Tbl_Municipio] m ON t.IdMunicipio = m.Id
    INNER JOIN [Dto].[Tbl_Departamento] d ON t.IdDepartamento = d.IdDepartamento
    INNER JOIN [Dto].[Tbl_Parametro] p ON t.IdParametro = p.Id
    WHERE t.Activo = 1
END
GO
/****** Object:  StoredProcedure [Dto].[EditarTercero]    Script Date: 9/08/2024 11:19:09 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Dto].[EditarTercero]
    @Id int,
    @IdMunicipio int,
    @IdDepartamento int,
    @IdParametro int,
    @NombreTercero nchar(10),
    @ApellidoTercero nchar(10),
    @Edad nchar(10),
    @IdUsuario int
AS
BEGIN
    DECLARE @RowsAffected int;

    UPDATE [Dto].[Tbl_Tercero]
    SET
        IdMunicipio = @IdMunicipio,
        IdDepartamento = @IdDepartamento,
        IdParametro = @IdParametro,
        NombreTercero = @NombreTercero,
        ApellidoTercero = @ApellidoTercero,
        Edad = @Edad,
        IdUsuario = @IdUsuario
    WHERE IdTercero = @Id;

    -- Obtiene el número de filas afectadas
    SET @RowsAffected = @@ROWCOUNT;

    -- Verifica si se actualizó al menos una fila
    IF @RowsAffected > 0
    BEGIN
        SELECT 'Edición exitosa' AS ResultMessage;
    END
    ELSE
    BEGIN
        SELECT 'No se encontró el registro con el Id especificado o no se realizaron cambios' AS ResultMessage;
    END
END
GO
/****** Object:  StoredProcedure [Dto].[EliminarTercero]    Script Date: 9/08/2024 11:19:09 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Dto].[EliminarTercero](
    @Id int
)
AS
BEGIN
    IF EXISTS (SELECT 1 FROM [Dto].[Tbl_Tercero] WHERE IdTercero = @Id)
    BEGIN
        UPDATE [Dto].[Tbl_Tercero]
        SET
            Activo = 0
        WHERE IdTercero = @Id;
        
        SELECT 'Eliminación exitosa' AS ResultMessage;
    END
    ELSE
    BEGIN
        SELECT 'No se encontró el registro con el Id especificado' AS ResultMessage;
    END
END
GO
/****** Object:  StoredProcedure [Dto].[RegistrarTercero]    Script Date: 9/08/2024 11:19:09 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Dto].[RegistrarTercero](
    @IdMunicipio int,
    @IdDepartamento int,
    @IdParametro int,
    @NombreTercero nchar(10),
    @ApellidoTercero nchar(10),
    @Edad nchar(10),
    @IdUsuario int
)
AS
BEGIN
    INSERT INTO [Dto].[Tbl_Tercero]
       (IdMunicipio
       ,IdDepartamento
       ,IdParametro
       ,NombreTercero
       ,ApellidoTercero
       ,Edad
       ,Activo
       ,IdUsuario)
     VALUES
       (@IdMunicipio
       ,@IdDepartamento
       ,@IdParametro
       ,@NombreTercero
       ,@ApellidoTercero
       ,@Edad
       ,1
       ,@IdUsuario)

END
GO

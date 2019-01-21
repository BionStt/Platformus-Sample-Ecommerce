USE [Platformus]
GO
/****** Object:  User [platformus]    Script Date: 21.01.2019 16:30:55 ******/
CREATE USER [platformus] FOR LOGIN [platformus] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [platformus]
GO
/****** Object:  Table [dbo].[Attributes]    Script Date: 21.01.2019 16:30:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attributes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FeatureId] [int] NOT NULL,
	[ValueId] [int] NOT NULL,
	[Position] [int] NULL,
 CONSTRAINT [PK_Attributes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Carts]    Script Date: 21.01.2019 16:30:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NULL,
	[ClientSideId] [nvarchar](64) NOT NULL,
	[Created] [datetime] NOT NULL,
 CONSTRAINT [PK_Carts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Catalogs]    Script Date: 21.01.2019 16:30:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Catalogs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CatalogId] [int] NULL,
	[Url] [nvarchar](128) NOT NULL,
	[NameId] [int] NOT NULL,
	[CSharpClassName] [nvarchar](128) NOT NULL,
	[Parameters] [nvarchar](1024) NULL,
	[Position] [int] NULL,
 CONSTRAINT [PK_Catalogs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Categories]    Script Date: 21.01.2019 16:30:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryId] [int] NULL,
	[NameId] [int] NOT NULL,
	[Position] [int] NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Classes]    Script Date: 21.01.2019 16:30:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Classes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClassId] [int] NULL,
	[Code] [nvarchar](32) NOT NULL,
	[Name] [nvarchar](64) NOT NULL,
	[PluralizedName] [nvarchar](64) NOT NULL,
	[IsAbstract] [bit] NOT NULL,
 CONSTRAINT [PK_Classes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CompletedFields]    Script Date: 21.01.2019 16:30:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompletedFields](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CompletedFormId] [int] NOT NULL,
	[FieldId] [int] NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_CompletedFields] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CompletedForms]    Script Date: 21.01.2019 16:30:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompletedForms](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FormId] [int] NOT NULL,
	[Created] [datetime] NOT NULL,
 CONSTRAINT [PK_CompletedForms] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Configurations]    Script Date: 21.01.2019 16:30:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Configurations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](32) NOT NULL,
	[Name] [nvarchar](64) NOT NULL,
 CONSTRAINT [PK_Configurations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Credentials]    Script Date: 21.01.2019 16:30:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Credentials](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[CredentialTypeId] [int] NOT NULL,
	[Identifier] [nvarchar](64) NOT NULL,
	[Secret] [nvarchar](1024) NULL,
	[Extra] [nvarchar](1024) NULL,
 CONSTRAINT [PK_Credentials] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CredentialTypes]    Script Date: 21.01.2019 16:30:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CredentialTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](32) NOT NULL,
	[Name] [nvarchar](64) NOT NULL,
	[Position] [int] NULL,
 CONSTRAINT [PK_CredentialTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cultures]    Script Date: 21.01.2019 16:30:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cultures](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](32) NOT NULL,
	[Name] [nvarchar](64) NOT NULL,
	[IsNeutral] [bit] NOT NULL,
	[IsFrontendDefault] [bit] NOT NULL,
	[IsBackendDefault] [bit] NOT NULL,
 CONSTRAINT [PK_Cultures] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DataSources]    Script Date: 21.01.2019 16:30:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DataSources](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EndpointId] [int] NOT NULL,
	[Code] [nvarchar](32) NOT NULL,
	[CSharpClassName] [nvarchar](128) NOT NULL,
	[Parameters] [nvarchar](1024) NULL,
 CONSTRAINT [PK_DataSources] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DataTypeParameters]    Script Date: 21.01.2019 16:30:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DataTypeParameters](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DataTypeId] [int] NOT NULL,
	[JavaScriptEditorClassName] [nvarchar](128) NOT NULL,
	[Code] [nvarchar](32) NOT NULL,
	[Name] [nvarchar](64) NOT NULL,
 CONSTRAINT [PK_DataTypeParameters] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DataTypeParameterValues]    Script Date: 21.01.2019 16:30:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DataTypeParameterValues](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DataTypeParameterId] [int] NOT NULL,
	[MemberId] [int] NOT NULL,
	[Value] [nvarchar](1024) NOT NULL,
 CONSTRAINT [PK_DataTypeParameterValues] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DataTypes]    Script Date: 21.01.2019 16:30:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DataTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StorageDataType] [nvarchar](32) NOT NULL,
	[JavaScriptEditorClassName] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](64) NOT NULL,
	[Position] [int] NULL,
 CONSTRAINT [PK_DataTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DeliveryMethods]    Script Date: 21.01.2019 16:30:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeliveryMethods](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](32) NOT NULL,
	[NameId] [int] NOT NULL,
	[Position] [int] NULL,
 CONSTRAINT [PK_DeliveryMethods] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Dictionaries]    Script Date: 21.01.2019 16:30:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dictionaries](
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Dictionaries] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EndpointPermissions]    Script Date: 21.01.2019 16:30:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EndpointPermissions](
	[EndpointId] [int] NOT NULL,
	[PermissionId] [int] NOT NULL,
 CONSTRAINT [PK_EndpointPermissions] PRIMARY KEY CLUSTERED 
(
	[EndpointId] ASC,
	[PermissionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Endpoints]    Script Date: 21.01.2019 16:30:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Endpoints](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](64) NOT NULL,
	[UrlTemplate] [nvarchar](128) NULL,
	[Position] [int] NULL,
	[DisallowAnonymous] [bit] NOT NULL,
	[SignInUrl] [nvarchar](128) NULL,
	[CSharpClassName] [nvarchar](128) NOT NULL,
	[Parameters] [nvarchar](1024) NULL,
 CONSTRAINT [PK_Endpoints] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Features]    Script Date: 21.01.2019 16:30:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Features](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](32) NOT NULL,
	[NameId] [int] NOT NULL,
	[Position] [int] NULL,
 CONSTRAINT [PK_Features] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FieldOptions]    Script Date: 21.01.2019 16:30:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FieldOptions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FieldId] [int] NOT NULL,
	[ValueId] [int] NOT NULL,
	[Position] [int] NULL,
 CONSTRAINT [PK_FieldOptions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Fields]    Script Date: 21.01.2019 16:30:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fields](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FormId] [int] NOT NULL,
	[FieldTypeId] [int] NOT NULL,
	[Code] [nvarchar](32) NOT NULL,
	[NameId] [int] NOT NULL,
	[IsRequired] [bit] NOT NULL,
	[MaxLength] [int] NULL,
	[Position] [int] NULL,
 CONSTRAINT [PK_Fields] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FieldTypes]    Script Date: 21.01.2019 16:30:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FieldTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](32) NOT NULL,
	[Name] [nvarchar](64) NOT NULL,
	[Position] [int] NULL,
 CONSTRAINT [PK_FieldTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Files]    Script Date: 21.01.2019 16:30:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Files](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](64) NOT NULL,
	[Size] [bigint] NOT NULL,
 CONSTRAINT [PK_Files] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Forms]    Script Date: 21.01.2019 16:30:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Forms](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](32) NOT NULL,
	[NameId] [int] NOT NULL,
	[SubmitButtonTitleId] [int] NOT NULL,
	[ProduceCompletedForms] [bit] NOT NULL,
	[CSharpClassName] [nvarchar](128) NOT NULL,
	[Parameters] [nvarchar](1024) NULL,
 CONSTRAINT [PK_Forms] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Localizations]    Script Date: 21.01.2019 16:30:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Localizations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DictionaryId] [int] NOT NULL,
	[CultureId] [int] NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_Localizations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Members]    Script Date: 21.01.2019 16:30:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Members](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClassId] [int] NOT NULL,
	[TabId] [int] NULL,
	[Code] [nvarchar](32) NOT NULL,
	[Name] [nvarchar](64) NOT NULL,
	[Position] [int] NULL,
	[PropertyDataTypeId] [int] NULL,
	[IsPropertyLocalizable] [bit] NULL,
	[IsPropertyVisibleInList] [bit] NULL,
	[RelationClassId] [int] NULL,
	[IsRelationSingleParent] [bit] NULL,
	[MinRelatedObjectsNumber] [int] NULL,
	[MaxRelatedObjectsNumber] [int] NULL,
 CONSTRAINT [PK_Members] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MenuItems]    Script Date: 21.01.2019 16:30:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuItems](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MenuId] [int] NULL,
	[MenuItemId] [int] NULL,
	[NameId] [int] NOT NULL,
	[Url] [nvarchar](128) NOT NULL,
	[Position] [int] NULL,
 CONSTRAINT [PK_MenuItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Menus]    Script Date: 21.01.2019 16:30:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](32) NOT NULL,
	[NameId] [int] NOT NULL,
 CONSTRAINT [PK_Menus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Objects]    Script Date: 21.01.2019 16:30:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Objects](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClassId] [int] NOT NULL,
 CONSTRAINT [PK_Objects] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orders]    Script Date: 21.01.2019 16:30:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderStateId] [int] NOT NULL,
	[PaymentMethodId] [int] NOT NULL,
	[DeliveryMethodId] [int] NOT NULL,
	[CustomerFirstName] [nvarchar](64) NOT NULL,
	[CustomerLastName] [nvarchar](64) NULL,
	[CustomerPhone] [nvarchar](32) NOT NULL,
	[CustomerEmail] [nvarchar](64) NULL,
	[CustomerAddress] [nvarchar](128) NULL,
	[Note] [nvarchar](1024) NULL,
	[Created] [datetime] NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderStates]    Script Date: 21.01.2019 16:30:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderStates](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](32) NOT NULL,
	[NameId] [int] NOT NULL,
	[Position] [int] NULL,
 CONSTRAINT [PK_OrderStates] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PaymentMethods]    Script Date: 21.01.2019 16:30:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentMethods](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](32) NOT NULL,
	[NameId] [int] NOT NULL,
	[Position] [int] NULL,
 CONSTRAINT [PK_PaymentMethods] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Permissions]    Script Date: 21.01.2019 16:30:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permissions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](32) NOT NULL,
	[Name] [nvarchar](64) NOT NULL,
	[Position] [int] NULL,
 CONSTRAINT [PK_Permissions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Photos]    Script Date: 21.01.2019 16:30:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Photos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[Filename] [nvarchar](128) NOT NULL,
	[IsCover] [bit] NOT NULL,
	[Position] [int] NULL,
 CONSTRAINT [PK_Photos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Positions]    Script Date: 21.01.2019 16:30:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Positions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CartId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
 CONSTRAINT [PK_Positions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductAttributes]    Script Date: 21.01.2019 16:30:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductAttributes](
	[ProductId] [int] NOT NULL,
	[AttributeId] [int] NOT NULL,
 CONSTRAINT [PK_ProductAttributes] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC,
	[AttributeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Products]    Script Date: 21.01.2019 16:30:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[Url] [nvarchar](128) NOT NULL,
	[Code] [nvarchar](32) NOT NULL,
	[NameId] [int] NOT NULL,
	[DescriptionId] [int] NOT NULL,
	[Price] [money] NOT NULL,
	[TitleId] [int] NOT NULL,
	[MetaDescriptionId] [int] NOT NULL,
	[MetaKeywordsId] [int] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Properties]    Script Date: 21.01.2019 16:30:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Properties](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ObjectId] [int] NOT NULL,
	[MemberId] [int] NOT NULL,
	[IntegerValue] [int] NULL,
	[DecimalValue] [money] NULL,
	[StringValueId] [int] NULL,
	[DateTimeValue] [datetime] NULL,
 CONSTRAINT [PK_Properties] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Relations]    Script Date: 21.01.2019 16:30:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Relations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MemberId] [int] NOT NULL,
	[PrimaryId] [int] NOT NULL,
	[ForeignId] [int] NOT NULL,
 CONSTRAINT [PK_Relations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RolePermissions]    Script Date: 21.01.2019 16:30:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RolePermissions](
	[RoleId] [int] NOT NULL,
	[PermissionId] [int] NOT NULL,
 CONSTRAINT [PK_RolePermissions] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC,
	[PermissionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Roles]    Script Date: 21.01.2019 16:30:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](32) NOT NULL,
	[Name] [nvarchar](64) NOT NULL,
	[Position] [int] NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SerializedForms]    Script Date: 21.01.2019 16:30:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SerializedForms](
	[CultureId] [int] NOT NULL,
	[FormId] [int] NOT NULL,
	[Code] [nvarchar](32) NOT NULL,
	[Name] [nvarchar](64) NOT NULL,
	[SubmitButtonTitle] [nvarchar](64) NOT NULL,
	[SerializedFields] [nvarchar](max) NULL,
 CONSTRAINT [PK_SerializedForms] PRIMARY KEY CLUSTERED 
(
	[CultureId] ASC,
	[FormId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SerializedMenus]    Script Date: 21.01.2019 16:30:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SerializedMenus](
	[CultureId] [int] NOT NULL,
	[MenuId] [int] NOT NULL,
	[Code] [nvarchar](32) NOT NULL,
	[SerializedMenuItems] [nvarchar](max) NULL,
 CONSTRAINT [PK_SerializedMenus] PRIMARY KEY CLUSTERED 
(
	[CultureId] ASC,
	[MenuId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SerializedObjects]    Script Date: 21.01.2019 16:30:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SerializedObjects](
	[CultureId] [int] NOT NULL,
	[ObjectId] [int] NOT NULL,
	[ClassId] [int] NOT NULL,
	[UrlPropertyStringValue] [nvarchar](128) NULL,
	[SerializedProperties] [nvarchar](max) NULL,
 CONSTRAINT [PK_SerializedObjects] PRIMARY KEY CLUSTERED 
(
	[CultureId] ASC,
	[ObjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SerializedProducts]    Script Date: 21.01.2019 16:30:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SerializedProducts](
	[CultureId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[CategoryId] [int] NOT NULL,
	[Url] [nvarchar](128) NOT NULL,
	[Code] [nvarchar](32) NOT NULL,
	[Name] [nvarchar](64) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Price] [money] NOT NULL,
	[Title] [nvarchar](128) NULL,
	[MetaDescription] [nvarchar](512) NULL,
	[MetaKeywords] [nvarchar](256) NULL,
	[SerializedAttributes] [nvarchar](max) NULL,
	[SerializedPhotos] [nvarchar](max) NULL,
 CONSTRAINT [PK_SerializedProducts] PRIMARY KEY CLUSTERED 
(
	[CultureId] ASC,
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tabs]    Script Date: 21.01.2019 16:30:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tabs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClassId] [int] NOT NULL,
	[Name] [nvarchar](64) NOT NULL,
	[Position] [int] NULL,
 CONSTRAINT [PK_Tabs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserRoles]    Script Date: 21.01.2019 16:30:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRoles](
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PK_UserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 21.01.2019 16:30:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](64) NOT NULL,
	[Created] [datetime] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Variables]    Script Date: 21.01.2019 16:30:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Variables](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ConfigurationId] [int] NOT NULL,
	[Code] [nvarchar](32) NOT NULL,
	[Name] [nvarchar](64) NOT NULL,
	[Value] [nvarchar](1024) NOT NULL,
	[Position] [int] NULL,
 CONSTRAINT [PK_Variables] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Catalogs] ON 

GO
INSERT [dbo].[Catalogs] ([Id], [CatalogId], [Url], [NameId], [CSharpClassName], [Parameters], [Position]) VALUES (1, NULL, N'/pizza', 14, N'Platformus.ECommerce.ProductProviders.CategoryProductProvider', N'CategoryId=1', 10)
GO
INSERT [dbo].[Catalogs] ([Id], [CatalogId], [Url], [NameId], [CSharpClassName], [Parameters], [Position]) VALUES (2, NULL, N'/panini', 15, N'Platformus.ECommerce.ProductProviders.CategoryProductProvider', N'CategoryId=2', 20)
GO
INSERT [dbo].[Catalogs] ([Id], [CatalogId], [Url], [NameId], [CSharpClassName], [Parameters], [Position]) VALUES (3, NULL, N'/drinks', 16, N'Platformus.ECommerce.ProductProviders.CategoryProductProvider', N'CategoryId=3', 30)
GO
SET IDENTITY_INSERT [dbo].[Catalogs] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

GO
INSERT [dbo].[Categories] ([Id], [CategoryId], [NameId], [Position]) VALUES (1, NULL, 11, 10)
GO
INSERT [dbo].[Categories] ([Id], [CategoryId], [NameId], [Position]) VALUES (2, NULL, 12, 20)
GO
INSERT [dbo].[Categories] ([Id], [CategoryId], [NameId], [Position]) VALUES (3, NULL, 13, 30)
GO
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Classes] ON 

GO
INSERT [dbo].[Classes] ([Id], [ClassId], [Code], [Name], [PluralizedName], [IsAbstract]) VALUES (1, NULL, N'Page', N'Page', N'Pages', 1)
GO
INSERT [dbo].[Classes] ([Id], [ClassId], [Code], [Name], [PluralizedName], [IsAbstract]) VALUES (2, 1, N'RegularPage', N'Regular Page', N'Regular Pages', 0)
GO
SET IDENTITY_INSERT [dbo].[Classes] OFF
GO
SET IDENTITY_INSERT [dbo].[Configurations] ON 

GO
INSERT [dbo].[Configurations] ([Id], [Code], [Name]) VALUES (1, N'Email', N'Email')
GO
INSERT [dbo].[Configurations] ([Id], [Code], [Name]) VALUES (2, N'Globalization', N'Globalization')
GO
SET IDENTITY_INSERT [dbo].[Configurations] OFF
GO
SET IDENTITY_INSERT [dbo].[Credentials] ON 

GO
INSERT [dbo].[Credentials] ([Id], [UserId], [CredentialTypeId], [Identifier], [Secret], [Extra]) VALUES (1, 1, 1, N'admin@platformus.net', N'8lE3xN2Ijiv/Y/aIGwaZLrbcqrt/1jDmzPTdudKbVD0=', N'0O/ZGwhScZRGbsmiUEckOg==')
GO
SET IDENTITY_INSERT [dbo].[Credentials] OFF
GO
SET IDENTITY_INSERT [dbo].[CredentialTypes] ON 

GO
INSERT [dbo].[CredentialTypes] ([Id], [Code], [Name], [Position]) VALUES (1, N'Email', N'Email', 1)
GO
SET IDENTITY_INSERT [dbo].[CredentialTypes] OFF
GO
SET IDENTITY_INSERT [dbo].[Cultures] ON 

GO
INSERT [dbo].[Cultures] ([Id], [Code], [Name], [IsNeutral], [IsFrontendDefault], [IsBackendDefault]) VALUES (1, N'__', N'Neutral', 1, 0, 0)
GO
INSERT [dbo].[Cultures] ([Id], [Code], [Name], [IsNeutral], [IsFrontendDefault], [IsBackendDefault]) VALUES (2, N'en', N'English', 0, 1, 1)
GO
INSERT [dbo].[Cultures] ([Id], [Code], [Name], [IsNeutral], [IsFrontendDefault], [IsBackendDefault]) VALUES (3, N'ru', N'Русский', 0, 0, 0)
GO
INSERT [dbo].[Cultures] ([Id], [Code], [Name], [IsNeutral], [IsFrontendDefault], [IsBackendDefault]) VALUES (4, N'uk', N'Українська', 0, 0, 0)
GO
SET IDENTITY_INSERT [dbo].[Cultures] OFF
GO
SET IDENTITY_INSERT [dbo].[DataSources] ON 

GO
INSERT [dbo].[DataSources] ([Id], [EndpointId], [Code], [CSharpClassName], [Parameters]) VALUES (1, 1, N'Page', N'Platformus.Domain.Frontend.DataSources.PageObjectDataSource', NULL)
GO
INSERT [dbo].[DataSources] ([Id], [EndpointId], [Code], [CSharpClassName], [Parameters]) VALUES (2, 2, N'Page', N'Platformus.Domain.Frontend.DataSources.PageObjectDataSource', NULL)
GO
INSERT [dbo].[DataSources] ([Id], [EndpointId], [Code], [CSharpClassName], [Parameters]) VALUES (3, 3, N'Page', N'Platformus.Domain.Frontend.DataSources.PageObjectDataSource', NULL)
GO
INSERT [dbo].[DataSources] ([Id], [EndpointId], [Code], [CSharpClassName], [Parameters]) VALUES (4, 4, N'Catalog', N'Platformus.ECommerce.Frontend.DataSources.CatalogDataSource', NULL)
GO
INSERT [dbo].[DataSources] ([Id], [EndpointId], [Code], [CSharpClassName], [Parameters]) VALUES (5, 5, N'Product', N'Platformus.ECommerce.Frontend.DataSources.ProductDataSource', NULL)
GO
SET IDENTITY_INSERT [dbo].[DataSources] OFF
GO
SET IDENTITY_INSERT [dbo].[DataTypeParameters] ON 

GO
INSERT [dbo].[DataTypeParameters] ([Id], [DataTypeId], [JavaScriptEditorClassName], [Code], [Name]) VALUES (1, 1, N'checkbox', N'IsRequired', N'Is required')
GO
INSERT [dbo].[DataTypeParameters] ([Id], [DataTypeId], [JavaScriptEditorClassName], [Code], [Name]) VALUES (2, 1, N'numericTextBox', N'MaxLength', N'Max length')
GO
INSERT [dbo].[DataTypeParameters] ([Id], [DataTypeId], [JavaScriptEditorClassName], [Code], [Name]) VALUES (3, 2, N'checkbox', N'IsRequired', N'Is required')
GO
INSERT [dbo].[DataTypeParameters] ([Id], [DataTypeId], [JavaScriptEditorClassName], [Code], [Name]) VALUES (4, 2, N'numericTextBox', N'MaxLength', N'Max length')
GO
INSERT [dbo].[DataTypeParameters] ([Id], [DataTypeId], [JavaScriptEditorClassName], [Code], [Name]) VALUES (5, 7, N'checkbox', N'IsRequired', N'Is required')
GO
INSERT [dbo].[DataTypeParameters] ([Id], [DataTypeId], [JavaScriptEditorClassName], [Code], [Name]) VALUES (6, 8, N'numericTextBox', N'Width', N'Width')
GO
INSERT [dbo].[DataTypeParameters] ([Id], [DataTypeId], [JavaScriptEditorClassName], [Code], [Name]) VALUES (7, 8, N'numericTextBox', N'Height', N'Height')
GO
INSERT [dbo].[DataTypeParameters] ([Id], [DataTypeId], [JavaScriptEditorClassName], [Code], [Name]) VALUES (8, 9, N'textBox', N'Mode', N'Mode')
GO
SET IDENTITY_INSERT [dbo].[DataTypeParameters] OFF
GO
SET IDENTITY_INSERT [dbo].[DataTypeParameterValues] ON 

GO
INSERT [dbo].[DataTypeParameterValues] ([Id], [DataTypeParameterId], [MemberId], [Value]) VALUES (1, 1, 1, N'true')
GO
INSERT [dbo].[DataTypeParameterValues] ([Id], [DataTypeParameterId], [MemberId], [Value]) VALUES (2, 2, 1, N'128')
GO
INSERT [dbo].[DataTypeParameterValues] ([Id], [DataTypeParameterId], [MemberId], [Value]) VALUES (3, 1, 3, N'false')
GO
INSERT [dbo].[DataTypeParameterValues] ([Id], [DataTypeParameterId], [MemberId], [Value]) VALUES (4, 2, 3, N'128')
GO
INSERT [dbo].[DataTypeParameterValues] ([Id], [DataTypeParameterId], [MemberId], [Value]) VALUES (5, 1, 4, N'false')
GO
INSERT [dbo].[DataTypeParameterValues] ([Id], [DataTypeParameterId], [MemberId], [Value]) VALUES (6, 2, 4, N'512')
GO
INSERT [dbo].[DataTypeParameterValues] ([Id], [DataTypeParameterId], [MemberId], [Value]) VALUES (7, 1, 5, N'false')
GO
INSERT [dbo].[DataTypeParameterValues] ([Id], [DataTypeParameterId], [MemberId], [Value]) VALUES (8, 2, 5, N'256')
GO
SET IDENTITY_INSERT [dbo].[DataTypeParameterValues] OFF
GO
SET IDENTITY_INSERT [dbo].[DataTypes] ON 

GO
INSERT [dbo].[DataTypes] ([Id], [StorageDataType], [JavaScriptEditorClassName], [Name], [Position]) VALUES (1, N'string', N'singleLinePlainText', N'Single line plain text', 1)
GO
INSERT [dbo].[DataTypes] ([Id], [StorageDataType], [JavaScriptEditorClassName], [Name], [Position]) VALUES (2, N'string', N'multilinePlainText', N'Multiline plain text', 2)
GO
INSERT [dbo].[DataTypes] ([Id], [StorageDataType], [JavaScriptEditorClassName], [Name], [Position]) VALUES (3, N'string', N'html', N'Html', 3)
GO
INSERT [dbo].[DataTypes] ([Id], [StorageDataType], [JavaScriptEditorClassName], [Name], [Position]) VALUES (4, N'integer', N'integerNumber', N'Integer number', 4)
GO
INSERT [dbo].[DataTypes] ([Id], [StorageDataType], [JavaScriptEditorClassName], [Name], [Position]) VALUES (5, N'decimal', N'decimalNumber', N'Decimal number', 5)
GO
INSERT [dbo].[DataTypes] ([Id], [StorageDataType], [JavaScriptEditorClassName], [Name], [Position]) VALUES (6, N'integer', N'booleanFlag', N'Boolean flag', 6)
GO
INSERT [dbo].[DataTypes] ([Id], [StorageDataType], [JavaScriptEditorClassName], [Name], [Position]) VALUES (7, N'datetime', N'date', N'Date', 7)
GO
INSERT [dbo].[DataTypes] ([Id], [StorageDataType], [JavaScriptEditorClassName], [Name], [Position]) VALUES (8, N'string', N'image', N'Image', 8)
GO
INSERT [dbo].[DataTypes] ([Id], [StorageDataType], [JavaScriptEditorClassName], [Name], [Position]) VALUES (9, N'string', N'sourceCode', N'Source code', 9)
GO
SET IDENTITY_INSERT [dbo].[DataTypes] OFF
GO
SET IDENTITY_INSERT [dbo].[DeliveryMethods] ON 

GO
INSERT [dbo].[DeliveryMethods] ([Id], [Code], [NameId], [Position]) VALUES (1, N'NotSet', 101, 10)
GO
INSERT [dbo].[DeliveryMethods] ([Id], [Code], [NameId], [Position]) VALUES (2, N'Pickup', 102, 20)
GO
INSERT [dbo].[DeliveryMethods] ([Id], [Code], [NameId], [Position]) VALUES (3, N'Courier', 103, 30)
GO
SET IDENTITY_INSERT [dbo].[DeliveryMethods] OFF
GO
SET IDENTITY_INSERT [dbo].[Dictionaries] ON 

GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (1)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (2)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (3)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (4)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (5)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (6)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (7)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (8)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (9)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (10)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (11)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (12)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (13)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (14)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (15)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (16)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (17)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (18)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (19)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (20)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (21)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (22)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (23)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (24)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (25)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (26)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (27)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (28)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (29)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (30)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (31)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (32)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (33)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (34)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (35)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (36)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (37)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (38)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (39)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (40)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (41)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (42)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (43)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (44)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (45)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (46)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (47)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (48)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (49)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (50)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (51)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (52)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (53)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (54)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (55)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (56)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (57)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (58)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (59)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (60)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (61)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (62)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (63)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (64)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (65)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (66)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (67)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (68)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (69)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (70)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (71)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (72)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (73)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (74)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (75)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (76)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (77)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (78)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (79)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (80)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (81)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (82)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (83)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (84)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (85)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (86)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (87)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (88)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (89)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (90)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (91)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (92)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (93)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (94)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (95)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (96)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (97)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (98)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (99)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (100)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (101)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (102)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (103)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (104)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (105)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (106)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (107)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (108)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (109)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (110)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (111)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (112)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (113)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (114)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (115)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (116)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (117)
GO
INSERT [dbo].[Dictionaries] ([Id]) VALUES (118)
GO
SET IDENTITY_INSERT [dbo].[Dictionaries] OFF
GO
SET IDENTITY_INSERT [dbo].[Endpoints] ON 

GO
INSERT [dbo].[Endpoints] ([Id], [Name], [UrlTemplate], [Position], [DisallowAnonymous], [SignInUrl], [CSharpClassName], [Parameters]) VALUES (1, N'Default', N'{*url}', 1000, 0, NULL, N'Platformus.Domain.Frontend.DefaultEndpoint', N'ViewName=RegularPage;UseCaching=true')
GO
INSERT [dbo].[Endpoints] ([Id], [Name], [UrlTemplate], [Position], [DisallowAnonymous], [SignInUrl], [CSharpClassName], [Parameters]) VALUES (2, N'Contacts', N'about-us', 10, 0, NULL, N'Platformus.Domain.Frontend.DefaultEndpoint', N'ViewName=RegularPage;UseCaching=true')
GO
INSERT [dbo].[Endpoints] ([Id], [Name], [UrlTemplate], [Position], [DisallowAnonymous], [SignInUrl], [CSharpClassName], [Parameters]) VALUES (3, N'Contacts', N'contacts', 20, 0, NULL, N'Platformus.Domain.Frontend.DefaultEndpoint', N'ViewName=ContactsPage;UseCaching=true')
GO
INSERT [dbo].[Endpoints] ([Id], [Name], [UrlTemplate], [Position], [DisallowAnonymous], [SignInUrl], [CSharpClassName], [Parameters]) VALUES (4, N'Catalog', N'{catalog}', 30, 0, NULL, N'Platformus.Domain.Frontend.DefaultEndpoint', N'ViewName=CatalogPage;UseCaching=false')
GO
INSERT [dbo].[Endpoints] ([Id], [Name], [UrlTemplate], [Position], [DisallowAnonymous], [SignInUrl], [CSharpClassName], [Parameters]) VALUES (5, N'Product', N'{catalog}/{product}', 40, 0, NULL, N'Platformus.Domain.Frontend.DefaultEndpoint', N'ViewName=ProductPage;UseCaching=false')
GO
SET IDENTITY_INSERT [dbo].[Endpoints] OFF
GO
SET IDENTITY_INSERT [dbo].[Fields] ON 

GO
INSERT [dbo].[Fields] ([Id], [FormId], [FieldTypeId], [Code], [NameId], [IsRequired], [MaxLength], [Position]) VALUES (1, 1, 1, N'Name', 8, 1, NULL, 10)
GO
INSERT [dbo].[Fields] ([Id], [FormId], [FieldTypeId], [Code], [NameId], [IsRequired], [MaxLength], [Position]) VALUES (2, 1, 1, N'Email', 9, 1, NULL, 20)
GO
INSERT [dbo].[Fields] ([Id], [FormId], [FieldTypeId], [Code], [NameId], [IsRequired], [MaxLength], [Position]) VALUES (3, 1, 2, N'Message', 10, 1, NULL, 30)
GO
SET IDENTITY_INSERT [dbo].[Fields] OFF
GO
SET IDENTITY_INSERT [dbo].[FieldTypes] ON 

GO
INSERT [dbo].[FieldTypes] ([Id], [Code], [Name], [Position]) VALUES (1, N'TextBox', N'Text box', 1)
GO
INSERT [dbo].[FieldTypes] ([Id], [Code], [Name], [Position]) VALUES (2, N'TextArea', N'Text area', 2)
GO
INSERT [dbo].[FieldTypes] ([Id], [Code], [Name], [Position]) VALUES (3, N'Checkbox', N'Checkbox', 3)
GO
INSERT [dbo].[FieldTypes] ([Id], [Code], [Name], [Position]) VALUES (4, N'RadioButtonList', N'Radio button list', 4)
GO
INSERT [dbo].[FieldTypes] ([Id], [Code], [Name], [Position]) VALUES (5, N'DropDownList', N'Drop down list', 5)
GO
INSERT [dbo].[FieldTypes] ([Id], [Code], [Name], [Position]) VALUES (6, N'FileUpload', N'File upload', 6)
GO
SET IDENTITY_INSERT [dbo].[FieldTypes] OFF
GO
SET IDENTITY_INSERT [dbo].[Forms] ON 

GO
INSERT [dbo].[Forms] ([Id], [Code], [NameId], [SubmitButtonTitleId], [ProduceCompletedForms], [CSharpClassName], [Parameters]) VALUES (1, N'Feedback', 6, 7, 1, N'Platformus.Forms.Frontend.FormHandlers.EmailFormHandler', N'RecipientEmails=test@test.com;RedirectUrl=/contacts')
GO
SET IDENTITY_INSERT [dbo].[Forms] OFF
GO
SET IDENTITY_INSERT [dbo].[Localizations] ON 

GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (1, 1, 2, N'Main')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (2, 1, 3, N'Главное')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (3, 1, 4, N'Головне')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (4, 2, 2, N'Home')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (5, 2, 3, N'Главная')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (6, 2, 4, N'Головна')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (7, 3, 2, N'About us')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (8, 3, 3, N'О нас')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (9, 3, 4, N'Про нас')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (10, 4, 2, N'Contacts')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (11, 4, 3, N'Контакты')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (12, 4, 4, N'Контакти')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (13, 5, 2, N'Cart')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (14, 5, 3, N'Корзина')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (15, 5, 4, N'Корзина')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (16, 6, 2, N'Feedback')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (17, 6, 3, N'Обратная связь')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (18, 6, 4, N'Зворотний зв’язок')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (19, 7, 2, N'Submit')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (20, 7, 3, N'Отправить')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (21, 7, 4, N'Надіслати')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (22, 8, 2, N'Your name')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (23, 8, 3, N'Ваше имя')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (24, 8, 4, N'Ваше ім’я')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (25, 9, 2, N'Your email')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (26, 9, 3, N'Ваша электронная почта')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (27, 9, 4, N'Ваша електронна пошта')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (28, 10, 2, N'Your message')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (29, 10, 3, N'Ваше сообщение')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (30, 10, 4, N'Ваше повідомлення')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (31, 11, 2, N'Pizza')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (32, 11, 3, N'Пицца')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (33, 11, 4, N'Піца')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (34, 12, 2, N'Panini')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (35, 12, 3, N'Панини')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (36, 12, 4, N'Паніні')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (37, 13, 2, N'Drinks')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (38, 13, 3, N'Напитки')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (39, 13, 4, N'Напої')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (40, 14, 2, N'Pizza')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (41, 14, 3, N'Пицца')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (42, 14, 4, N'Піца')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (43, 15, 2, N'Panini')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (44, 15, 3, N'Панини')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (45, 15, 4, N'Паніні')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (46, 16, 2, N'Drinks')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (47, 16, 3, N'Напитки')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (48, 16, 4, N'Напої')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (49, 17, 2, N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (50, 17, 3, N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (51, 17, 4, N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (52, 18, 2, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (53, 18, 3, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (54, 18, 4, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (55, 19, 2, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (56, 19, 3, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (57, 19, 4, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (58, 20, 2, N'Pizza 1')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (59, 20, 3, N'Пицца 1')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (60, 20, 4, N'Піца 1')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (61, 21, 2, N'Pizza 1')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (62, 21, 3, N'Пицца 1')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (63, 21, 4, N'Піца 1')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (64, 22, 2, N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (65, 22, 3, N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (66, 22, 4, N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (67, 23, 2, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (68, 23, 3, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (69, 23, 4, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (70, 24, 2, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (71, 24, 3, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (72, 24, 4, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (73, 25, 2, N'Pizza 2')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (74, 25, 3, N'Пицца 2')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (75, 25, 4, N'Піца 2')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (76, 26, 2, N'Pizza 2')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (77, 26, 3, N'Пицца 2')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (78, 26, 4, N'Піца 2')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (79, 27, 2, N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (80, 27, 3, N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (81, 27, 4, N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (82, 28, 2, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (83, 28, 3, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (84, 28, 4, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (85, 29, 2, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (86, 29, 3, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (87, 29, 4, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (88, 30, 2, N'Pizza 3')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (89, 30, 3, N'Пицца 3')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (90, 30, 4, N'Піца 3')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (91, 31, 2, N'Pizza 3')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (92, 31, 3, N'Пицца 3')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (93, 31, 4, N'Піца 3')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (94, 32, 2, N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (95, 32, 3, N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (96, 32, 4, N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (97, 33, 2, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (98, 33, 3, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (99, 33, 4, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (100, 34, 2, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (101, 34, 3, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (102, 34, 4, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (103, 35, 2, N'Pizza 4')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (104, 35, 3, N'Пицца 4')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (105, 35, 4, N'Піца 4')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (106, 36, 2, N'Pizza 4')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (107, 36, 3, N'Пицца 4')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (108, 36, 4, N'Піца 4')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (109, 37, 2, N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (110, 37, 3, N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (111, 37, 4, N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (112, 38, 2, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (113, 38, 3, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (114, 38, 4, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (115, 39, 2, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (116, 39, 3, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (117, 39, 4, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (118, 40, 2, N'Pizza 5')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (119, 40, 3, N'Пицца 5')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (120, 40, 4, N'Піца 5')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (121, 41, 2, N'Pizza 5')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (122, 41, 3, N'Пицца 5')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (123, 41, 4, N'Піца 5')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (124, 42, 2, N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (125, 42, 3, N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (126, 42, 4, N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (127, 43, 2, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (128, 43, 3, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (129, 43, 4, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (130, 44, 2, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (131, 44, 3, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (132, 44, 4, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (133, 45, 2, N'Pizza 6')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (134, 45, 3, N'Пицца 6')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (135, 45, 4, N'Піца 6')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (136, 46, 2, N'Pizza 6')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (137, 46, 3, N'Пицца 6')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (138, 46, 4, N'Піца 6')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (139, 47, 2, N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (140, 47, 3, N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (141, 47, 4, N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (142, 48, 2, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (143, 48, 3, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (144, 48, 4, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (145, 49, 2, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (146, 49, 3, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (147, 49, 4, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (148, 50, 2, N'Pizza 7')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (149, 50, 3, N'Пицца 7')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (150, 50, 4, N'Піца 7')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (151, 51, 2, N'Pizza 7')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (152, 51, 3, N'Пицца 7')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (153, 51, 4, N'Піца 7')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (154, 52, 2, N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (155, 52, 3, N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (156, 52, 4, N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (157, 53, 2, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (158, 53, 3, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (159, 53, 4, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (160, 54, 2, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (161, 54, 3, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (162, 54, 4, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (163, 55, 2, N'Pizza 8')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (164, 55, 3, N'Пицца 8')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (165, 55, 4, N'Піца 8')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (166, 56, 2, N'Pizza 8')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (167, 56, 3, N'Пицца 8')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (168, 56, 4, N'Піца 8')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (169, 57, 2, N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (170, 57, 3, N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (171, 57, 4, N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (172, 58, 2, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (173, 58, 3, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (174, 58, 4, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (175, 59, 2, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (176, 59, 3, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (177, 59, 4, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (178, 60, 2, N'Pizza 9')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (179, 60, 3, N'Пицца 9')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (180, 60, 4, N'Піца 9')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (181, 61, 2, N'Pizza 9')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (182, 61, 3, N'Пицца 9')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (183, 61, 4, N'Піца 9')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (184, 62, 2, N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (185, 62, 3, N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (186, 62, 4, N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (187, 63, 2, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (188, 63, 3, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (189, 63, 4, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (190, 64, 2, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (191, 64, 3, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (192, 64, 4, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (193, 65, 2, N'Panini 1')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (194, 65, 3, N'Панини 1')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (195, 65, 4, N'Паніні 1')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (196, 66, 2, N'Panini 1')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (197, 66, 3, N'Панини 1')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (198, 66, 4, N'Паніні 1')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (199, 67, 2, N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (200, 67, 3, N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (201, 67, 4, N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (202, 68, 2, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (203, 68, 3, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (204, 68, 4, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (205, 69, 2, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (206, 69, 3, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (207, 69, 4, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (208, 70, 2, N'Panini 2')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (209, 70, 3, N'Панини 2')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (210, 70, 4, N'Паніні 2')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (211, 71, 2, N'Panini 2')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (212, 71, 3, N'Панини 2')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (213, 71, 4, N'Паніні 2')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (214, 72, 2, N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (215, 72, 3, N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (216, 72, 4, N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (217, 73, 2, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (218, 73, 3, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (219, 73, 4, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (220, 74, 2, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (221, 74, 3, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (222, 74, 4, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (223, 75, 2, N'Panini 3')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (224, 75, 3, N'Панини 3')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (225, 75, 4, N'Паніні 3')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (226, 76, 2, N'Panini 3')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (227, 76, 3, N'Панини 3')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (228, 76, 4, N'Паніні 3')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (229, 77, 2, N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (230, 77, 3, N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (231, 77, 4, N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (232, 78, 2, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (233, 78, 3, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (234, 78, 4, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (235, 79, 2, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (236, 79, 3, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (237, 79, 4, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (238, 80, 2, N'Drinks 1')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (239, 80, 3, N'Напитки 1')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (240, 80, 4, N'Напої 1')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (241, 81, 2, N'Drinks 1')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (242, 81, 3, N'Напитки 1')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (243, 81, 4, N'Напої 1')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (244, 82, 2, N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (245, 82, 3, N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (246, 82, 4, N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (247, 83, 2, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (248, 83, 3, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (249, 83, 4, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (250, 84, 2, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (251, 84, 3, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (252, 84, 4, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (253, 85, 2, N'Drinks 2')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (254, 85, 3, N'Напитки 2')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (255, 85, 4, N'Напої 2')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (256, 86, 2, N'Drinks 2')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (257, 86, 3, N'Напитки 2')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (258, 86, 4, N'Напої 2')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (259, 87, 2, N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (260, 87, 3, N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (261, 87, 4, N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (262, 88, 2, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (263, 88, 3, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (264, 88, 4, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (265, 89, 2, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (266, 89, 3, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (267, 89, 4, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (268, 90, 2, N'Drinks 3')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (269, 90, 3, N'Напитки 3')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (270, 90, 4, N'Напої 3')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (271, 91, 2, N'Drinks 3')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (272, 91, 3, N'Напитки 3')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (273, 91, 4, N'Напої 3')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (274, 92, 2, N'New')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (275, 92, 3, N'Новый')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (276, 92, 4, N'Новий')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (277, 93, 2, N'Confirmed')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (278, 93, 3, N'Подтвержден')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (279, 93, 4, N'Підтверджений')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (280, 94, 2, N'Scheduled')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (281, 94, 3, N'Запланирован')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (282, 94, 4, N'Запланований')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (283, 95, 2, N'Being delivered')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (284, 95, 3, N'Доставляется')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (285, 95, 4, N'Доставляється')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (286, 96, 2, N'Delivered')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (287, 96, 3, N'Доставлен')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (288, 96, 4, N'Доставлений')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (289, 97, 2, N'Closed')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (290, 97, 3, N'Закрыт')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (291, 97, 4, N'Закритий')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (292, 98, 2, N'Canceled')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (293, 98, 3, N'Отменен')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (294, 98, 4, N'Скасований')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (295, 99, 2, N'Not set')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (296, 99, 3, N'Не указан')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (297, 99, 4, N'Не вказано')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (298, 100, 2, N'Cash')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (299, 100, 3, N'Наличные')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (300, 100, 4, N'Готівка')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (301, 101, 2, N'Not set')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (302, 101, 3, N'Не указан')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (303, 101, 4, N'Не вказано')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (304, 102, 2, N'Pickup')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (305, 102, 3, N'Самовывоз')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (306, 102, 4, N'Самовивіз')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (307, 103, 2, N'Courier')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (308, 103, 3, N'Курьер')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (309, 103, 4, N'Кур’єр')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (310, 104, 1, N'/')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (311, 105, 2, N'<h1>Your Ecommerce Website</h1><p>Hello! This is your ecommerce website, it is based on the <a href="http://platformus.net/" target="_blank" rel="noopener">Platformus</a> content management system. You can manage it (create pages, menu items, forms and so on) using the <a href="/backend">backend</a>. Please use the username and password specified during the installation to sign in (it is &ldquo;admin@platformus.net&rdquo; and &ldquo;admin&rdquo; by default).</p><p>Please use the <a href="http://docs.platformus.net/" target="_blank" rel="noopener">documentation</a> to learn more about Platformus and how to use it. There are several examples that could be useful for the beginners. Also, you can get help in our <a href="https://gitter.im/Platformus/Platformus" target="_blank" rel="noopener">chat</a>.</p><p>Have a nice work!</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (312, 105, 3, N'<h1>Ваш веб-сайт электронной коммерции</h1><p>Здравствуйте! Это ваш веб-сайт электронной коммерции, он работает на базе системы управления содержимым &laquo;<a href="http://platformus.net/" target="_blank" rel="noopener">Платформус</a>&raquo;. Вы можете управлять им (создавать страницы, элементы меню, формы и так далее) с помощью <a href="/backend">бекенда</a>. Для входа используйте, пожалуйста, имя пользователя и пароль, указанные при установке (по умолчанию это &laquo;admin@platformus.net&raquo; и &laquo;admin&raquo; соответственно).</p><p>Чтобы узнать больше о Платформусе и о том, как им пользоваться, пожалуйста, воспользуйтесь <a href="http://docs.platformus.net/" target="_blank" rel="noopener">документацией</a>, там есть несколько примеров, которые пригодятся начинающим. При возникновении сложностей или вопросов вы можете обратиться в наш <a href="https://gitter.im/Platformus/Platformus" target="_blank" rel="noopener">чат</a>, где вам обязательно помогут.</p><p>Приятной работы!</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (313, 105, 4, N'<h1>Ваш веб-сайт електронної комерції</h1><p>Вітаємо! Це ваш веб-сайт електронної комерції, він працює на базі системи керування вмістом &laquo;<a href="http://platformus.net/" target="_blank" rel="noopener">Платформус</a>&raquo;. Ви можете керувати ним (створювати сторінки, елементи меню, форми і так далі) за допомогою <a href="/backend">бекенду</a>. Для входу використовуйте, будь ласка, ім&rsquo;я користувача і пароль, вказані під час установки (за замовчуванням це &laquo;admin@platformus.net&raquo; і &laquo;admin&raquo; відповідно).</p><p>Щоб дізнатися більше про Платформус і про те, як ним користуватися, будь ласка, скористайтеся <a href="http://docs.platformus.net/" target="_blank" rel="noopener">документацією</a>, там є декілька прикладів, що стануть у нагоді початківцям. При виникненні труднощів або питань ви можете звернутися в наш <a href="https://gitter.im/Platformus/Platformus" target="_blank" rel="noopener">чат</a>, де вам обов&rsquo;язково допоможуть.</p><p>Приємної роботи!</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (314, 106, 2, N'Your Ecommerce Website')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (315, 106, 3, N'Ваш веб-сайт электронной коммерции')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (316, 106, 4, N'Ваш веб-сайт електронної комерції')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (317, 107, 2, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (318, 107, 3, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (319, 107, 4, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (320, 108, 2, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (321, 108, 3, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (322, 108, 4, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (323, 109, 1, N'/about-us')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (324, 110, 2, N'<h1>About Us</h1><p>Tell us about your ecommerce website. You can add photos or videos here.</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (325, 110, 3, N'<h1>О нас</h1><p>Расскажите о вашем веб-сайте электронной коммерции. Вы можете добавить сюда фотографии или видео.</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (326, 110, 4, N'<h1>Про нас</h1><p>Розкажіть про ваш веб-сайт електронної комерції. Ви можете додати сюди фотографії або відео.</p>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (327, 111, 2, N'About Us')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (328, 111, 3, N'О нас')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (329, 111, 4, N'Про нас')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (330, 112, 2, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (331, 112, 3, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (332, 112, 4, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (333, 113, 2, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (334, 113, 3, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (335, 113, 4, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (336, 114, 1, N'/contacts')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (337, 115, 2, N'<h1>Contacts</h1><p>Add your contacts on this page. Phone number, messengers, social links. The feedback form below (by the way, you can edit or move it to a different place) allows your visitors to write you directly from the website, just don&rsquo;t forget to specify the email address for the messages.</p><h2>Feedback from</h2>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (338, 115, 3, N'<h1>Контакты</h1><p>Добавьте свои контакты на этой странице. Телефонный номер, мессенджеры, ссылки на социальные сети. Форма обратной связи, расположенная ниже (кстати, вы можете ее изменить или перенести в другое место), поможет посетителям написать вам сообщение прямо с сайта, лишь укажите для этого адрес, на который нужно присылать сообщения.</p><h2>Форма обратной связи</h2>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (339, 115, 4, N'<h1>Контакти</h1><p>Додайте свої контакти на цій сторінці. Номер телефону, месенджери, посилання на соціальні мережі. Форма зворотного зв&rsquo;язку, розташована нижче (до речі, ви можете її змінити або перенести в інше місце), допоможе відвідувачам написати вам повідомлення прямо з сайту, лише вкажіть для цього адресу, на яку потрібно надсилати повідомлення.</p><h2>Форма зворотного зв&rsquo;язку</h2>')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (340, 116, 2, N'Contacts')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (341, 116, 3, N'Контакты')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (342, 116, 4, N'Контакти')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (343, 117, 2, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (344, 117, 3, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (345, 117, 4, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (346, 118, 2, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (347, 118, 3, N'')
GO
INSERT [dbo].[Localizations] ([Id], [DictionaryId], [CultureId], [Value]) VALUES (348, 118, 4, N'')
GO
SET IDENTITY_INSERT [dbo].[Localizations] OFF
GO
SET IDENTITY_INSERT [dbo].[Members] ON 

GO
INSERT [dbo].[Members] ([Id], [ClassId], [TabId], [Code], [Name], [Position], [PropertyDataTypeId], [IsPropertyLocalizable], [IsPropertyVisibleInList], [RelationClassId], [IsRelationSingleParent], [MinRelatedObjectsNumber], [MaxRelatedObjectsNumber]) VALUES (1, 1, NULL, N'Url', N'URL', 1, 1, 0, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Members] ([Id], [ClassId], [TabId], [Code], [Name], [Position], [PropertyDataTypeId], [IsPropertyLocalizable], [IsPropertyVisibleInList], [RelationClassId], [IsRelationSingleParent], [MinRelatedObjectsNumber], [MaxRelatedObjectsNumber]) VALUES (2, 1, NULL, N'Content', N'Content', 10, 3, 1, 0, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Members] ([Id], [ClassId], [TabId], [Code], [Name], [Position], [PropertyDataTypeId], [IsPropertyLocalizable], [IsPropertyVisibleInList], [RelationClassId], [IsRelationSingleParent], [MinRelatedObjectsNumber], [MaxRelatedObjectsNumber]) VALUES (3, 1, 1, N'Title', N'Title', 1000, 1, 1, 0, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Members] ([Id], [ClassId], [TabId], [Code], [Name], [Position], [PropertyDataTypeId], [IsPropertyLocalizable], [IsPropertyVisibleInList], [RelationClassId], [IsRelationSingleParent], [MinRelatedObjectsNumber], [MaxRelatedObjectsNumber]) VALUES (4, 1, 1, N'MetaDescription', N'META description', 1010, 1, 1, 0, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Members] ([Id], [ClassId], [TabId], [Code], [Name], [Position], [PropertyDataTypeId], [IsPropertyLocalizable], [IsPropertyVisibleInList], [RelationClassId], [IsRelationSingleParent], [MinRelatedObjectsNumber], [MaxRelatedObjectsNumber]) VALUES (5, 1, 1, N'MetaKeywords', N'META keywords', 1020, 1, 1, 0, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Members] OFF
GO
SET IDENTITY_INSERT [dbo].[MenuItems] ON 

GO
INSERT [dbo].[MenuItems] ([Id], [MenuId], [MenuItemId], [NameId], [Url], [Position]) VALUES (1, 1, NULL, 2, N'/', 10)
GO
INSERT [dbo].[MenuItems] ([Id], [MenuId], [MenuItemId], [NameId], [Url], [Position]) VALUES (2, 1, NULL, 3, N'/about-us', 20)
GO
INSERT [dbo].[MenuItems] ([Id], [MenuId], [MenuItemId], [NameId], [Url], [Position]) VALUES (3, 1, NULL, 4, N'/contacts', 30)
GO
INSERT [dbo].[MenuItems] ([Id], [MenuId], [MenuItemId], [NameId], [Url], [Position]) VALUES (4, 1, NULL, 5, N'/ecommerce/cart', 40)
GO
SET IDENTITY_INSERT [dbo].[MenuItems] OFF
GO
SET IDENTITY_INSERT [dbo].[Menus] ON 

GO
INSERT [dbo].[Menus] ([Id], [Code], [NameId]) VALUES (1, N'Main', 1)
GO
SET IDENTITY_INSERT [dbo].[Menus] OFF
GO
SET IDENTITY_INSERT [dbo].[Objects] ON 

GO
INSERT [dbo].[Objects] ([Id], [ClassId]) VALUES (1, 2)
GO
INSERT [dbo].[Objects] ([Id], [ClassId]) VALUES (2, 2)
GO
INSERT [dbo].[Objects] ([Id], [ClassId]) VALUES (3, 2)
GO
SET IDENTITY_INSERT [dbo].[Objects] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderStates] ON 

GO
INSERT [dbo].[OrderStates] ([Id], [Code], [NameId], [Position]) VALUES (1, N'New', 92, 10)
GO
INSERT [dbo].[OrderStates] ([Id], [Code], [NameId], [Position]) VALUES (2, N'Confirmed', 93, 20)
GO
INSERT [dbo].[OrderStates] ([Id], [Code], [NameId], [Position]) VALUES (3, N'Scheduled', 94, 30)
GO
INSERT [dbo].[OrderStates] ([Id], [Code], [NameId], [Position]) VALUES (4, N'BeingDelivered', 95, 40)
GO
INSERT [dbo].[OrderStates] ([Id], [Code], [NameId], [Position]) VALUES (5, N'Delivered', 96, 50)
GO
INSERT [dbo].[OrderStates] ([Id], [Code], [NameId], [Position]) VALUES (6, N'Closed', 97, 60)
GO
INSERT [dbo].[OrderStates] ([Id], [Code], [NameId], [Position]) VALUES (7, N'Canceled', 98, 70)
GO
SET IDENTITY_INSERT [dbo].[OrderStates] OFF
GO
SET IDENTITY_INSERT [dbo].[PaymentMethods] ON 

GO
INSERT [dbo].[PaymentMethods] ([Id], [Code], [NameId], [Position]) VALUES (1, N'NotSet', 99, 10)
GO
INSERT [dbo].[PaymentMethods] ([Id], [Code], [NameId], [Position]) VALUES (2, N'Cash', 100, 20)
GO
SET IDENTITY_INSERT [dbo].[PaymentMethods] OFF
GO
SET IDENTITY_INSERT [dbo].[Permissions] ON 

GO
INSERT [dbo].[Permissions] ([Id], [Code], [Name], [Position]) VALUES (1, N'BrowseBackend', N'Browse backend', 1)
GO
INSERT [dbo].[Permissions] ([Id], [Code], [Name], [Position]) VALUES (2, N'DoEverything', N'Do everything', 100)
GO
INSERT [dbo].[Permissions] ([Id], [Code], [Name], [Position]) VALUES (3, N'BrowsePermissions', N'Browse permissions', 200)
GO
INSERT [dbo].[Permissions] ([Id], [Code], [Name], [Position]) VALUES (4, N'BrowseRoles', N'Browse roles', 210)
GO
INSERT [dbo].[Permissions] ([Id], [Code], [Name], [Position]) VALUES (5, N'BrowseUsers', N'Browse users', 220)
GO
INSERT [dbo].[Permissions] ([Id], [Code], [Name], [Position]) VALUES (6, N'BrowseConfigurations', N'Browse configurations', 300)
GO
INSERT [dbo].[Permissions] ([Id], [Code], [Name], [Position]) VALUES (7, N'BrowseCultures', N'Browse cultures', 400)
GO
INSERT [dbo].[Permissions] ([Id], [Code], [Name], [Position]) VALUES (8, N'BrowseEndpoints', N'Browse endpoints', 500)
GO
INSERT [dbo].[Permissions] ([Id], [Code], [Name], [Position]) VALUES (9, N'BrowseObjects', N'Browse objects', 600)
GO
INSERT [dbo].[Permissions] ([Id], [Code], [Name], [Position]) VALUES (10, N'BrowseDataTypes', N'Browse data types', 610)
GO
INSERT [dbo].[Permissions] ([Id], [Code], [Name], [Position]) VALUES (11, N'BrowseClasses', N'Browse classes', 620)
GO
INSERT [dbo].[Permissions] ([Id], [Code], [Name], [Position]) VALUES (12, N'BrowseMenus', N'Browse menus', 700)
GO
INSERT [dbo].[Permissions] ([Id], [Code], [Name], [Position]) VALUES (13, N'BrowseForms', N'Browse forms', 800)
GO
INSERT [dbo].[Permissions] ([Id], [Code], [Name], [Position]) VALUES (14, N'BrowseFileManager', N'Browse file manager', 900)
GO
INSERT [dbo].[Permissions] ([Id], [Code], [Name], [Position]) VALUES (15, N'BrowseViews', N'Browse views', 1000)
GO
INSERT [dbo].[Permissions] ([Id], [Code], [Name], [Position]) VALUES (16, N'BrowseStyles', N'Browse styles', 1010)
GO
INSERT [dbo].[Permissions] ([Id], [Code], [Name], [Position]) VALUES (17, N'BrowseScripts', N'Browse scripts', 1020)
GO
INSERT [dbo].[Permissions] ([Id], [Code], [Name], [Position]) VALUES (18, N'BrowseBundles', N'Browse bundles', 1030)
GO
INSERT [dbo].[Permissions] ([Id], [Code], [Name], [Position]) VALUES (19, N'BrowseCatalogs', N'Browse catalogs', 1100)
GO
INSERT [dbo].[Permissions] ([Id], [Code], [Name], [Position]) VALUES (20, N'BrowseCategories', N'Browse categories', 1110)
GO
INSERT [dbo].[Permissions] ([Id], [Code], [Name], [Position]) VALUES (21, N'BrowseProducts', N'Browse products', 1120)
GO
INSERT [dbo].[Permissions] ([Id], [Code], [Name], [Position]) VALUES (22, N'BrowseCarts', N'Browse carts', 1130)
GO
INSERT [dbo].[Permissions] ([Id], [Code], [Name], [Position]) VALUES (23, N'BrowseOrderStates', N'Browse order states', 1140)
GO
INSERT [dbo].[Permissions] ([Id], [Code], [Name], [Position]) VALUES (24, N'BrowsePaymentMethods', N'Browse payment methods', 1150)
GO
INSERT [dbo].[Permissions] ([Id], [Code], [Name], [Position]) VALUES (25, N'BrowseDeliveryMethods', N'Browse delivery methods', 1160)
GO
INSERT [dbo].[Permissions] ([Id], [Code], [Name], [Position]) VALUES (26, N'BrowseOrders', N'Browse orders', 1170)
GO
SET IDENTITY_INSERT [dbo].[Permissions] OFF
GO
SET IDENTITY_INSERT [dbo].[Photos] ON 

GO
INSERT [dbo].[Photos] ([Id], [ProductId], [Filename], [IsCover], [Position]) VALUES (1, 1, N'pizza1.jpg', 1, 1)
GO
INSERT [dbo].[Photos] ([Id], [ProductId], [Filename], [IsCover], [Position]) VALUES (2, 2, N'pizza2.jpg', 1, 1)
GO
INSERT [dbo].[Photos] ([Id], [ProductId], [Filename], [IsCover], [Position]) VALUES (3, 3, N'pizza3.jpg', 1, 1)
GO
INSERT [dbo].[Photos] ([Id], [ProductId], [Filename], [IsCover], [Position]) VALUES (4, 4, N'pizza4.jpg', 1, 1)
GO
INSERT [dbo].[Photos] ([Id], [ProductId], [Filename], [IsCover], [Position]) VALUES (5, 5, N'pizza5.jpg', 1, 1)
GO
INSERT [dbo].[Photos] ([Id], [ProductId], [Filename], [IsCover], [Position]) VALUES (6, 6, N'pizza6.jpg', 1, 1)
GO
INSERT [dbo].[Photos] ([Id], [ProductId], [Filename], [IsCover], [Position]) VALUES (7, 7, N'pizza7.jpg', 1, 1)
GO
INSERT [dbo].[Photos] ([Id], [ProductId], [Filename], [IsCover], [Position]) VALUES (8, 8, N'pizza8.jpg', 1, 1)
GO
INSERT [dbo].[Photos] ([Id], [ProductId], [Filename], [IsCover], [Position]) VALUES (9, 9, N'pizza9.jpg', 1, 1)
GO
INSERT [dbo].[Photos] ([Id], [ProductId], [Filename], [IsCover], [Position]) VALUES (10, 10, N'panini1.jpg', 1, 1)
GO
INSERT [dbo].[Photos] ([Id], [ProductId], [Filename], [IsCover], [Position]) VALUES (11, 11, N'panini2.jpg', 1, 1)
GO
INSERT [dbo].[Photos] ([Id], [ProductId], [Filename], [IsCover], [Position]) VALUES (12, 12, N'panini3.jpg', 1, 1)
GO
INSERT [dbo].[Photos] ([Id], [ProductId], [Filename], [IsCover], [Position]) VALUES (13, 13, N'drinks1.jpg', 1, 1)
GO
INSERT [dbo].[Photos] ([Id], [ProductId], [Filename], [IsCover], [Position]) VALUES (14, 14, N'drinks2.jpg', 1, 1)
GO
INSERT [dbo].[Photos] ([Id], [ProductId], [Filename], [IsCover], [Position]) VALUES (15, 15, N'drinks3.jpg', 1, 1)
GO
SET IDENTITY_INSERT [dbo].[Photos] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

GO
INSERT [dbo].[Products] ([Id], [CategoryId], [Url], [Code], [NameId], [DescriptionId], [Price], [TitleId], [MetaDescriptionId], [MetaKeywordsId]) VALUES (1, 1, N'/pizza/pizza-1', N'pizza-1', 20, 17, 150.0000, 21, 18, 19)
GO
INSERT [dbo].[Products] ([Id], [CategoryId], [Url], [Code], [NameId], [DescriptionId], [Price], [TitleId], [MetaDescriptionId], [MetaKeywordsId]) VALUES (2, 1, N'/pizza/pizza-2', N'pizza-2', 25, 22, 140.0000, 26, 23, 24)
GO
INSERT [dbo].[Products] ([Id], [CategoryId], [Url], [Code], [NameId], [DescriptionId], [Price], [TitleId], [MetaDescriptionId], [MetaKeywordsId]) VALUES (3, 1, N'/pizza/pizza-3', N'pizza-3', 30, 27, 160.0000, 31, 28, 29)
GO
INSERT [dbo].[Products] ([Id], [CategoryId], [Url], [Code], [NameId], [DescriptionId], [Price], [TitleId], [MetaDescriptionId], [MetaKeywordsId]) VALUES (4, 1, N'/pizza/pizza-4', N'pizza-4', 35, 32, 150.0000, 36, 33, 34)
GO
INSERT [dbo].[Products] ([Id], [CategoryId], [Url], [Code], [NameId], [DescriptionId], [Price], [TitleId], [MetaDescriptionId], [MetaKeywordsId]) VALUES (5, 1, N'/pizza/pizza-5', N'pizza-5', 40, 37, 180.0000, 41, 38, 39)
GO
INSERT [dbo].[Products] ([Id], [CategoryId], [Url], [Code], [NameId], [DescriptionId], [Price], [TitleId], [MetaDescriptionId], [MetaKeywordsId]) VALUES (6, 1, N'/pizza/pizza-6', N'pizza-6', 45, 42, 140.0000, 46, 43, 44)
GO
INSERT [dbo].[Products] ([Id], [CategoryId], [Url], [Code], [NameId], [DescriptionId], [Price], [TitleId], [MetaDescriptionId], [MetaKeywordsId]) VALUES (7, 1, N'/pizza/pizza-7', N'pizza-7', 50, 47, 150.0000, 51, 48, 49)
GO
INSERT [dbo].[Products] ([Id], [CategoryId], [Url], [Code], [NameId], [DescriptionId], [Price], [TitleId], [MetaDescriptionId], [MetaKeywordsId]) VALUES (8, 1, N'/pizza/pizza-8', N'pizza-8', 55, 52, 170.0000, 56, 53, 54)
GO
INSERT [dbo].[Products] ([Id], [CategoryId], [Url], [Code], [NameId], [DescriptionId], [Price], [TitleId], [MetaDescriptionId], [MetaKeywordsId]) VALUES (9, 1, N'/pizza/pizza-9', N'pizza-9', 60, 57, 160.0000, 61, 58, 59)
GO
INSERT [dbo].[Products] ([Id], [CategoryId], [Url], [Code], [NameId], [DescriptionId], [Price], [TitleId], [MetaDescriptionId], [MetaKeywordsId]) VALUES (10, 2, N'/panini/panini-1', N'panini-1', 65, 62, 80.0000, 66, 63, 64)
GO
INSERT [dbo].[Products] ([Id], [CategoryId], [Url], [Code], [NameId], [DescriptionId], [Price], [TitleId], [MetaDescriptionId], [MetaKeywordsId]) VALUES (11, 2, N'/panini/panini-2', N'panini-2', 70, 67, 70.0000, 71, 68, 69)
GO
INSERT [dbo].[Products] ([Id], [CategoryId], [Url], [Code], [NameId], [DescriptionId], [Price], [TitleId], [MetaDescriptionId], [MetaKeywordsId]) VALUES (12, 2, N'/panini/panini-3', N'panini-3', 75, 72, 30.0000, 76, 73, 74)
GO
INSERT [dbo].[Products] ([Id], [CategoryId], [Url], [Code], [NameId], [DescriptionId], [Price], [TitleId], [MetaDescriptionId], [MetaKeywordsId]) VALUES (13, 3, N'/pizza/drinks-1', N'drinks-1', 80, 77, 30.0000, 81, 78, 79)
GO
INSERT [dbo].[Products] ([Id], [CategoryId], [Url], [Code], [NameId], [DescriptionId], [Price], [TitleId], [MetaDescriptionId], [MetaKeywordsId]) VALUES (14, 3, N'/pizza/drinks-2', N'drinks-2', 85, 82, 30.0000, 86, 83, 84)
GO
INSERT [dbo].[Products] ([Id], [CategoryId], [Url], [Code], [NameId], [DescriptionId], [Price], [TitleId], [MetaDescriptionId], [MetaKeywordsId]) VALUES (15, 3, N'/pizza/drinks-3', N'drinks-3', 90, 87, 30.0000, 91, 88, 89)
GO
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Properties] ON 

GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (1, 1, 1, NULL, NULL, 104, NULL)
GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (2, 1, 2, NULL, NULL, 105, NULL)
GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (3, 1, 3, NULL, NULL, 106, NULL)
GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (4, 1, 4, NULL, NULL, 107, NULL)
GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (5, 1, 5, NULL, NULL, 108, NULL)
GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (6, 2, 1, NULL, NULL, 109, NULL)
GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (7, 2, 2, NULL, NULL, 110, NULL)
GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (8, 2, 3, NULL, NULL, 111, NULL)
GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (9, 2, 4, NULL, NULL, 112, NULL)
GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (10, 2, 5, NULL, NULL, 113, NULL)
GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (11, 3, 1, NULL, NULL, 114, NULL)
GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (12, 3, 2, NULL, NULL, 115, NULL)
GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (13, 3, 3, NULL, NULL, 116, NULL)
GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (14, 3, 4, NULL, NULL, 117, NULL)
GO
INSERT [dbo].[Properties] ([Id], [ObjectId], [MemberId], [IntegerValue], [DecimalValue], [StringValueId], [DateTimeValue]) VALUES (15, 3, 5, NULL, NULL, 118, NULL)
GO
SET IDENTITY_INSERT [dbo].[Properties] OFF
GO
INSERT [dbo].[RolePermissions] ([RoleId], [PermissionId]) VALUES (1, 1)
GO
INSERT [dbo].[RolePermissions] ([RoleId], [PermissionId]) VALUES (2, 2)
GO
INSERT [dbo].[RolePermissions] ([RoleId], [PermissionId]) VALUES (3, 9)
GO
INSERT [dbo].[RolePermissions] ([RoleId], [PermissionId]) VALUES (3, 12)
GO
INSERT [dbo].[RolePermissions] ([RoleId], [PermissionId]) VALUES (3, 13)
GO
INSERT [dbo].[RolePermissions] ([RoleId], [PermissionId]) VALUES (3, 14)
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 

GO
INSERT [dbo].[Roles] ([Id], [Code], [Name], [Position]) VALUES (1, N'Administrator', N'Administrator', 100)
GO
INSERT [dbo].[Roles] ([Id], [Code], [Name], [Position]) VALUES (2, N'ApplicationOwner', N'Application owner', 200)
GO
INSERT [dbo].[Roles] ([Id], [Code], [Name], [Position]) VALUES (3, N'ContentManager', N'Content manager', 300)
GO
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
INSERT [dbo].[SerializedForms] ([CultureId], [FormId], [Code], [Name], [SubmitButtonTitle], [SerializedFields]) VALUES (2, 1, N'Feedback', N'Feedback', N'Submit', N'[{"FieldId":1,"FieldTypeCode":"TextBox","Code":"Name","Name":"Your name","IsRequired":true,"MaxLength":null,"Position":10,"SerializedFieldOptions":null},{"FieldId":2,"FieldTypeCode":"TextBox","Code":"Email","Name":"Your email","IsRequired":true,"MaxLength":null,"Position":20,"SerializedFieldOptions":null},{"FieldId":3,"FieldTypeCode":"TextArea","Code":"Message","Name":"Your message","IsRequired":true,"MaxLength":null,"Position":30,"SerializedFieldOptions":null}]')
GO
INSERT [dbo].[SerializedForms] ([CultureId], [FormId], [Code], [Name], [SubmitButtonTitle], [SerializedFields]) VALUES (3, 1, N'Feedback', N'Обратная связь', N'Отправить', N'[{"FieldId":1,"FieldTypeCode":"TextBox","Code":"Name","Name":"Ваше имя","IsRequired":true,"MaxLength":null,"Position":10,"SerializedFieldOptions":null},{"FieldId":2,"FieldTypeCode":"TextBox","Code":"Email","Name":"Ваша электронная почта","IsRequired":true,"MaxLength":null,"Position":20,"SerializedFieldOptions":null},{"FieldId":3,"FieldTypeCode":"TextArea","Code":"Message","Name":"Ваше сообщение","IsRequired":true,"MaxLength":null,"Position":30,"SerializedFieldOptions":null}]')
GO
INSERT [dbo].[SerializedForms] ([CultureId], [FormId], [Code], [Name], [SubmitButtonTitle], [SerializedFields]) VALUES (4, 1, N'Feedback', N'Зворотний зв’язок', N'Надіслати', N'[{"FieldId":1,"FieldTypeCode":"TextBox","Code":"Name","Name":"Ваше ім’я","IsRequired":true,"MaxLength":null,"Position":10,"SerializedFieldOptions":null},{"FieldId":2,"FieldTypeCode":"TextBox","Code":"Email","Name":"Ваша електронна пошта","IsRequired":true,"MaxLength":null,"Position":20,"SerializedFieldOptions":null},{"FieldId":3,"FieldTypeCode":"TextArea","Code":"Message","Name":"Ваше повідомлення","IsRequired":true,"MaxLength":null,"Position":30,"SerializedFieldOptions":null}]')
GO
INSERT [dbo].[SerializedMenus] ([CultureId], [MenuId], [Code], [SerializedMenuItems]) VALUES (2, 1, N'Main', N'[{"MenuItemId":1,"Name":"Home","Url":"/","Position":10,"SerializedMenuItems":null},{"MenuItemId":2,"Name":"About us","Url":"/about-us","Position":20,"SerializedMenuItems":null},{"MenuItemId":3,"Name":"Contacts","Url":"/contacts","Position":30,"SerializedMenuItems":null},{"MenuItemId":4,"Name":"Cart","Url":"/ecommerce/cart","Position":40,"SerializedMenuItems":null}]')
GO
INSERT [dbo].[SerializedMenus] ([CultureId], [MenuId], [Code], [SerializedMenuItems]) VALUES (3, 1, N'Main', N'[{"MenuItemId":1,"Name":"Главная","Url":"/","Position":10,"SerializedMenuItems":null},{"MenuItemId":2,"Name":"О нас","Url":"/about-us","Position":20,"SerializedMenuItems":null},{"MenuItemId":3,"Name":"Контакты","Url":"/contacts","Position":30,"SerializedMenuItems":null},{"MenuItemId":4,"Name":"Корзина","Url":"/ecommerce/cart","Position":40,"SerializedMenuItems":null}]')
GO
INSERT [dbo].[SerializedMenus] ([CultureId], [MenuId], [Code], [SerializedMenuItems]) VALUES (4, 1, N'Main', N'[{"MenuItemId":1,"Name":"Головна","Url":"/","Position":10,"SerializedMenuItems":null},{"MenuItemId":2,"Name":"Про нас","Url":"/about-us","Position":20,"SerializedMenuItems":null},{"MenuItemId":3,"Name":"Контакти","Url":"/contacts","Position":30,"SerializedMenuItems":null},{"MenuItemId":4,"Name":"Корзина","Url":"/ecommerce/cart","Position":40,"SerializedMenuItems":null}]')
GO
INSERT [dbo].[SerializedObjects] ([CultureId], [ObjectId], [ClassId], [UrlPropertyStringValue], [SerializedProperties]) VALUES (2, 1, 2, N'/', N'[{"Member":{"Code":"Url","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/","DateTimeValue":null},{"Member":{"Code":"Content","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<h1>Your Ecommerce Website</h1><p>Hello! This is your ecommerce website, it is based on the <a href=\"http://platformus.net/\" target=\"_blank\" rel=\"noopener\">Platformus</a> content management system. You can manage it (create pages, menu items, forms and so on) using the <a href=\"/backend\">backend</a>. Please use the username and password specified during the installation to sign in (it is &ldquo;admin@platformus.net&rdquo; and &ldquo;admin&rdquo; by default).</p><p>Please use the <a href=\"http://docs.platformus.net/\" target=\"_blank\" rel=\"noopener\">documentation</a> to learn more about Platformus and how to use it. There are several examples that could be useful for the beginners. Also, you can get help in our <a href=\"https://gitter.im/Platformus/Platformus\" target=\"_blank\" rel=\"noopener\">chat</a>.</p><p>Have a nice work!</p>","DateTimeValue":null},{"Member":{"Code":"Title","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Your Ecommerce Website","DateTimeValue":null},{"Member":{"Code":"MetaDescription","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null},{"Member":{"Code":"MetaKeywords","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null}]')
GO
INSERT [dbo].[SerializedObjects] ([CultureId], [ObjectId], [ClassId], [UrlPropertyStringValue], [SerializedProperties]) VALUES (2, 2, 2, N'/about-us', N'[{"Member":{"Code":"Url","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/about-us","DateTimeValue":null},{"Member":{"Code":"Content","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<h1>About Us</h1><p>Tell us about your ecommerce website. You can add photos or videos here.</p>","DateTimeValue":null},{"Member":{"Code":"Title","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"About Us","DateTimeValue":null},{"Member":{"Code":"MetaDescription","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null},{"Member":{"Code":"MetaKeywords","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null}]')
GO
INSERT [dbo].[SerializedObjects] ([CultureId], [ObjectId], [ClassId], [UrlPropertyStringValue], [SerializedProperties]) VALUES (2, 3, 2, N'/contacts', N'[{"Member":{"Code":"Url","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/contacts","DateTimeValue":null},{"Member":{"Code":"Content","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<h1>Contacts</h1><p>Add your contacts on this page. Phone number, messengers, social links. The feedback form below (by the way, you can edit or move it to a different place) allows your visitors to write you directly from the website, just don&rsquo;t forget to specify the email address for the messages.</p><h2>Feedback from</h2>","DateTimeValue":null},{"Member":{"Code":"Title","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Contacts","DateTimeValue":null},{"Member":{"Code":"MetaDescription","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null},{"Member":{"Code":"MetaKeywords","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null}]')
GO
INSERT [dbo].[SerializedObjects] ([CultureId], [ObjectId], [ClassId], [UrlPropertyStringValue], [SerializedProperties]) VALUES (3, 1, 2, N'/', N'[{"Member":{"Code":"Url","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/","DateTimeValue":null},{"Member":{"Code":"Content","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<h1>Ваш веб-сайт электронной коммерции</h1><p>Здравствуйте! Это ваш веб-сайт электронной коммерции, он работает на базе системы управления содержимым &laquo;<a href=\"http://platformus.net/\" target=\"_blank\" rel=\"noopener\">Платформус</a>&raquo;. Вы можете управлять им (создавать страницы, элементы меню, формы и так далее) с помощью <a href=\"/backend\">бекенда</a>. Для входа используйте, пожалуйста, имя пользователя и пароль, указанные при установке (по умолчанию это &laquo;admin@platformus.net&raquo; и &laquo;admin&raquo; соответственно).</p><p>Чтобы узнать больше о Платформусе и о том, как им пользоваться, пожалуйста, воспользуйтесь <a href=\"http://docs.platformus.net/\" target=\"_blank\" rel=\"noopener\">документацией</a>, там есть несколько примеров, которые пригодятся начинающим. При возникновении сложностей или вопросов вы можете обратиться в наш <a href=\"https://gitter.im/Platformus/Platformus\" target=\"_blank\" rel=\"noopener\">чат</a>, где вам обязательно помогут.</p><p>Приятной работы!</p>","DateTimeValue":null},{"Member":{"Code":"Title","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Ваш веб-сайт электронной коммерции","DateTimeValue":null},{"Member":{"Code":"MetaDescription","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null},{"Member":{"Code":"MetaKeywords","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null}]')
GO
INSERT [dbo].[SerializedObjects] ([CultureId], [ObjectId], [ClassId], [UrlPropertyStringValue], [SerializedProperties]) VALUES (3, 2, 2, N'/about-us', N'[{"Member":{"Code":"Url","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/about-us","DateTimeValue":null},{"Member":{"Code":"Content","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<h1>О нас</h1><p>Расскажите о вашем веб-сайте электронной коммерции. Вы можете добавить сюда фотографии или видео.</p>","DateTimeValue":null},{"Member":{"Code":"Title","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"О нас","DateTimeValue":null},{"Member":{"Code":"MetaDescription","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null},{"Member":{"Code":"MetaKeywords","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null}]')
GO
INSERT [dbo].[SerializedObjects] ([CultureId], [ObjectId], [ClassId], [UrlPropertyStringValue], [SerializedProperties]) VALUES (3, 3, 2, N'/contacts', N'[{"Member":{"Code":"Url","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/contacts","DateTimeValue":null},{"Member":{"Code":"Content","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<h1>Контакты</h1><p>Добавьте свои контакты на этой странице. Телефонный номер, мессенджеры, ссылки на социальные сети. Форма обратной связи, расположенная ниже (кстати, вы можете ее изменить или перенести в другое место), поможет посетителям написать вам сообщение прямо с сайта, лишь укажите для этого адрес, на который нужно присылать сообщения.</p><h2>Форма обратной связи</h2>","DateTimeValue":null},{"Member":{"Code":"Title","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Контакты","DateTimeValue":null},{"Member":{"Code":"MetaDescription","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null},{"Member":{"Code":"MetaKeywords","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null}]')
GO
INSERT [dbo].[SerializedObjects] ([CultureId], [ObjectId], [ClassId], [UrlPropertyStringValue], [SerializedProperties]) VALUES (4, 1, 2, N'/', N'[{"Member":{"Code":"Url","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/","DateTimeValue":null},{"Member":{"Code":"Content","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<h1>Ваш веб-сайт електронної комерції</h1><p>Вітаємо! Це ваш веб-сайт електронної комерції, він працює на базі системи керування вмістом &laquo;<a href=\"http://platformus.net/\" target=\"_blank\" rel=\"noopener\">Платформус</a>&raquo;. Ви можете керувати ним (створювати сторінки, елементи меню, форми і так далі) за допомогою <a href=\"/backend\">бекенду</a>. Для входу використовуйте, будь ласка, ім&rsquo;я користувача і пароль, вказані під час установки (за замовчуванням це &laquo;admin@platformus.net&raquo; і &laquo;admin&raquo; відповідно).</p><p>Щоб дізнатися більше про Платформус і про те, як ним користуватися, будь ласка, скористайтеся <a href=\"http://docs.platformus.net/\" target=\"_blank\" rel=\"noopener\">документацією</a>, там є декілька прикладів, що стануть у нагоді початківцям. При виникненні труднощів або питань ви можете звернутися в наш <a href=\"https://gitter.im/Platformus/Platformus\" target=\"_blank\" rel=\"noopener\">чат</a>, де вам обов&rsquo;язково допоможуть.</p><p>Приємної роботи!</p>","DateTimeValue":null},{"Member":{"Code":"Title","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Ваш веб-сайт електронної комерції","DateTimeValue":null},{"Member":{"Code":"MetaDescription","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null},{"Member":{"Code":"MetaKeywords","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null}]')
GO
INSERT [dbo].[SerializedObjects] ([CultureId], [ObjectId], [ClassId], [UrlPropertyStringValue], [SerializedProperties]) VALUES (4, 2, 2, N'/about-us', N'[{"Member":{"Code":"Url","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/about-us","DateTimeValue":null},{"Member":{"Code":"Content","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<h1>Про нас</h1><p>Розкажіть про ваш веб-сайт електронної комерції. Ви можете додати сюди фотографії або відео.</p>","DateTimeValue":null},{"Member":{"Code":"Title","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Про нас","DateTimeValue":null},{"Member":{"Code":"MetaDescription","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null},{"Member":{"Code":"MetaKeywords","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null}]')
GO
INSERT [dbo].[SerializedObjects] ([CultureId], [ObjectId], [ClassId], [UrlPropertyStringValue], [SerializedProperties]) VALUES (4, 3, 2, N'/contacts', N'[{"Member":{"Code":"Url","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"/contacts","DateTimeValue":null},{"Member":{"Code":"Content","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"<h1>Контакти</h1><p>Додайте свої контакти на цій сторінці. Номер телефону, месенджери, посилання на соціальні мережі. Форма зворотного зв&rsquo;язку, розташована нижче (до речі, ви можете її змінити або перенести в інше місце), допоможе відвідувачам написати вам повідомлення прямо з сайту, лише вкажіть для цього адресу, на яку потрібно надсилати повідомлення.</p><h2>Форма зворотного зв&rsquo;язку</h2>","DateTimeValue":null},{"Member":{"Code":"Title","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"Контакти","DateTimeValue":null},{"Member":{"Code":"MetaDescription","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null},{"Member":{"Code":"MetaKeywords","PropertyDataTypeStorageDataType":"string"},"IntegerValue":null,"DecimalValue":null,"StringValue":"","DateTimeValue":null}]')
GO
SET IDENTITY_INSERT [dbo].[Tabs] ON 

GO
INSERT [dbo].[Tabs] ([Id], [ClassId], [Name], [Position]) VALUES (1, 1, N'SEO', 100)
GO
SET IDENTITY_INSERT [dbo].[Tabs] OFF
GO
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (1, 1)
GO
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (1, 2)
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

GO
INSERT [dbo].[Users] ([Id], [Name], [Created]) VALUES (1, N'Administrator', CAST(N'2017-01-01T00:00:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET IDENTITY_INSERT [dbo].[Variables] ON 

GO
INSERT [dbo].[Variables] ([Id], [ConfigurationId], [Code], [Name], [Value], [Position]) VALUES (1, 1, N'SmtpServer', N'SMTP server', N'test', 1)
GO
INSERT [dbo].[Variables] ([Id], [ConfigurationId], [Code], [Name], [Value], [Position]) VALUES (2, 1, N'SmtpPort', N'SMTP port', N'25', 2)
GO
INSERT [dbo].[Variables] ([Id], [ConfigurationId], [Code], [Name], [Value], [Position]) VALUES (3, 1, N'SmtpUseSsl', N'SMTP use SSL', N'no', 3)
GO
INSERT [dbo].[Variables] ([Id], [ConfigurationId], [Code], [Name], [Value], [Position]) VALUES (4, 1, N'SmtpLogin', N'SMTP login', N'test', 4)
GO
INSERT [dbo].[Variables] ([Id], [ConfigurationId], [Code], [Name], [Value], [Position]) VALUES (5, 1, N'SmtpPassword', N'SMTP password', N'test', 5)
GO
INSERT [dbo].[Variables] ([Id], [ConfigurationId], [Code], [Name], [Value], [Position]) VALUES (6, 1, N'SmtpSenderEmail', N'SMTP sender email', N'test', 6)
GO
INSERT [dbo].[Variables] ([Id], [ConfigurationId], [Code], [Name], [Value], [Position]) VALUES (7, 1, N'SmtpSenderName', N'SMTP sender name', N'test', 7)
GO
INSERT [dbo].[Variables] ([Id], [ConfigurationId], [Code], [Name], [Value], [Position]) VALUES (8, 2, N'SpecifyCultureInUrl', N'Specify culture in URL', N'yes', 6)
GO
SET IDENTITY_INSERT [dbo].[Variables] OFF
GO
/****** Object:  Index [IX_Attributes_FeatureId]    Script Date: 21.01.2019 16:30:57 ******/
CREATE NONCLUSTERED INDEX [IX_Attributes_FeatureId] ON [dbo].[Attributes]
(
	[FeatureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Carts_OrderId]    Script Date: 21.01.2019 16:30:57 ******/
CREATE NONCLUSTERED INDEX [IX_Carts_OrderId] ON [dbo].[Carts]
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Catalogs_CatalogId]    Script Date: 21.01.2019 16:30:57 ******/
CREATE NONCLUSTERED INDEX [IX_Catalogs_CatalogId] ON [dbo].[Catalogs]
(
	[CatalogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Categories_CategoryId]    Script Date: 21.01.2019 16:30:57 ******/
CREATE NONCLUSTERED INDEX [IX_Categories_CategoryId] ON [dbo].[Categories]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Configurations_Code]    Script Date: 21.01.2019 16:30:57 ******/
CREATE NONCLUSTERED INDEX [IX_Configurations_Code] ON [dbo].[Configurations]
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Credentials_UserId]    Script Date: 21.01.2019 16:30:57 ******/
CREATE NONCLUSTERED INDEX [IX_Credentials_UserId] ON [dbo].[Credentials]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_CredentialTypes_Code]    Script Date: 21.01.2019 16:30:57 ******/
CREATE NONCLUSTERED INDEX [IX_CredentialTypes_Code] ON [dbo].[CredentialTypes]
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Cultures_Code]    Script Date: 21.01.2019 16:30:57 ******/
CREATE NONCLUSTERED INDEX [IX_Cultures_Code] ON [dbo].[Cultures]
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_DataSources_EndpointId]    Script Date: 21.01.2019 16:30:57 ******/
CREATE NONCLUSTERED INDEX [IX_DataSources_EndpointId] ON [dbo].[DataSources]
(
	[EndpointId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_DataTypeParameters_DataTypeId]    Script Date: 21.01.2019 16:30:57 ******/
CREATE NONCLUSTERED INDEX [IX_DataTypeParameters_DataTypeId] ON [dbo].[DataTypeParameters]
(
	[DataTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_DataTypeParameterValues_DataTypeParameterId]    Script Date: 21.01.2019 16:30:57 ******/
CREATE NONCLUSTERED INDEX [IX_DataTypeParameterValues_DataTypeParameterId] ON [dbo].[DataTypeParameterValues]
(
	[DataTypeParameterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FieldOptions_FieldId]    Script Date: 21.01.2019 16:30:57 ******/
CREATE NONCLUSTERED INDEX [IX_FieldOptions_FieldId] ON [dbo].[FieldOptions]
(
	[FieldId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Fields_FieldId]    Script Date: 21.01.2019 16:30:57 ******/
CREATE NONCLUSTERED INDEX [IX_Fields_FieldId] ON [dbo].[Fields]
(
	[FormId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_FieldTypes_Code]    Script Date: 21.01.2019 16:30:57 ******/
CREATE NONCLUSTERED INDEX [IX_FieldTypes_Code] ON [dbo].[FieldTypes]
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Forms_Code]    Script Date: 21.01.2019 16:30:57 ******/
CREATE NONCLUSTERED INDEX [IX_Forms_Code] ON [dbo].[Forms]
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Localizations_DictionaryId]    Script Date: 21.01.2019 16:30:57 ******/
CREATE NONCLUSTERED INDEX [IX_Localizations_DictionaryId] ON [dbo].[Localizations]
(
	[DictionaryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Localizations_DictionaryId_CultureId]    Script Date: 21.01.2019 16:30:57 ******/
CREATE NONCLUSTERED INDEX [IX_Localizations_DictionaryId_CultureId] ON [dbo].[Localizations]
(
	[CultureId] ASC,
	[DictionaryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Members_ClassId]    Script Date: 21.01.2019 16:30:57 ******/
CREATE NONCLUSTERED INDEX [IX_Members_ClassId] ON [dbo].[Members]
(
	[ClassId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MenuItems_MenuId]    Script Date: 21.01.2019 16:30:57 ******/
CREATE NONCLUSTERED INDEX [IX_MenuItems_MenuId] ON [dbo].[MenuItems]
(
	[MenuId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MenuItems_MenuItemId]    Script Date: 21.01.2019 16:30:57 ******/
CREATE NONCLUSTERED INDEX [IX_MenuItems_MenuItemId] ON [dbo].[MenuItems]
(
	[MenuItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Menus_Code]    Script Date: 21.01.2019 16:30:57 ******/
CREATE NONCLUSTERED INDEX [IX_Menus_Code] ON [dbo].[Menus]
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Objects_ClassId]    Script Date: 21.01.2019 16:30:57 ******/
CREATE NONCLUSTERED INDEX [IX_Objects_ClassId] ON [dbo].[Objects]
(
	[ClassId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Orders_DeliveryMethodId]    Script Date: 21.01.2019 16:30:57 ******/
CREATE NONCLUSTERED INDEX [IX_Orders_DeliveryMethodId] ON [dbo].[Orders]
(
	[DeliveryMethodId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Orders_OrderStateId]    Script Date: 21.01.2019 16:30:57 ******/
CREATE NONCLUSTERED INDEX [IX_Orders_OrderStateId] ON [dbo].[Orders]
(
	[OrderStateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Orders_PaymentMethodId]    Script Date: 21.01.2019 16:30:57 ******/
CREATE NONCLUSTERED INDEX [IX_Orders_PaymentMethodId] ON [dbo].[Orders]
(
	[PaymentMethodId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Permissions_Code]    Script Date: 21.01.2019 16:30:57 ******/
CREATE NONCLUSTERED INDEX [IX_Permissions_Code] ON [dbo].[Permissions]
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Photos_ProductId]    Script Date: 21.01.2019 16:30:57 ******/
CREATE NONCLUSTERED INDEX [IX_Photos_ProductId] ON [dbo].[Photos]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Positions_CartId]    Script Date: 21.01.2019 16:30:57 ******/
CREATE NONCLUSTERED INDEX [IX_Positions_CartId] ON [dbo].[Positions]
(
	[CartId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Positions_ProductId]    Script Date: 21.01.2019 16:30:57 ******/
CREATE NONCLUSTERED INDEX [IX_Positions_ProductId] ON [dbo].[Positions]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_CategoryId]    Script Date: 21.01.2019 16:30:57 ******/
CREATE NONCLUSTERED INDEX [IX_Products_CategoryId] ON [dbo].[Products]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Properties_ObjectId]    Script Date: 21.01.2019 16:30:57 ******/
CREATE NONCLUSTERED INDEX [IX_Properties_ObjectId] ON [dbo].[Properties]
(
	[ObjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Properties_ObjectId_MemberId]    Script Date: 21.01.2019 16:30:57 ******/
CREATE NONCLUSTERED INDEX [IX_Properties_ObjectId_MemberId] ON [dbo].[Properties]
(
	[ObjectId] ASC,
	[MemberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Relations_ForeignId]    Script Date: 21.01.2019 16:30:57 ******/
CREATE NONCLUSTERED INDEX [IX_Relations_ForeignId] ON [dbo].[Relations]
(
	[ForeignId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Relations_MemberId_ForeignId]    Script Date: 21.01.2019 16:30:57 ******/
CREATE NONCLUSTERED INDEX [IX_Relations_MemberId_ForeignId] ON [dbo].[Relations]
(
	[MemberId] ASC,
	[ForeignId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Relations_MemberId_PrimaryId]    Script Date: 21.01.2019 16:30:57 ******/
CREATE NONCLUSTERED INDEX [IX_Relations_MemberId_PrimaryId] ON [dbo].[Relations]
(
	[PrimaryId] ASC,
	[MemberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Relations_PrimaryId]    Script Date: 21.01.2019 16:30:57 ******/
CREATE NONCLUSTERED INDEX [IX_Relations_PrimaryId] ON [dbo].[Relations]
(
	[PrimaryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Roles_Code]    Script Date: 21.01.2019 16:30:57 ******/
CREATE NONCLUSTERED INDEX [IX_Roles_Code] ON [dbo].[Roles]
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_SerializedForms_Code]    Script Date: 21.01.2019 16:30:57 ******/
CREATE NONCLUSTERED INDEX [IX_SerializedForms_Code] ON [dbo].[SerializedForms]
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_SerializedMenus_Code]    Script Date: 21.01.2019 16:30:57 ******/
CREATE NONCLUSTERED INDEX [IX_SerializedMenus_Code] ON [dbo].[SerializedMenus]
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_SerializedObjects_UrlPropertyStringValue]    Script Date: 21.01.2019 16:30:57 ******/
CREATE NONCLUSTERED INDEX [IX_SerializedObjects_UrlPropertyStringValue] ON [dbo].[SerializedObjects]
(
	[UrlPropertyStringValue] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_SerializedProducts_Url]    Script Date: 21.01.2019 16:30:57 ******/
CREATE NONCLUSTERED INDEX [IX_SerializedProducts_Url] ON [dbo].[SerializedProducts]
(
	[Url] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Tabs_ClassId]    Script Date: 21.01.2019 16:30:57 ******/
CREATE NONCLUSTERED INDEX [IX_Tabs_ClassId] ON [dbo].[Tabs]
(
	[ClassId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Users_Name]    Script Date: 21.01.2019 16:30:57 ******/
CREATE NONCLUSTERED INDEX [IX_Users_Name] ON [dbo].[Users]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Variables_ConfigurationId]    Script Date: 21.01.2019 16:30:57 ******/
CREATE NONCLUSTERED INDEX [IX_Variables_ConfigurationId] ON [dbo].[Variables]
(
	[ConfigurationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Variables_ConfigurationId_Code]    Script Date: 21.01.2019 16:30:57 ******/
CREATE NONCLUSTERED INDEX [IX_Variables_ConfigurationId_Code] ON [dbo].[Variables]
(
	[ConfigurationId] ASC,
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Attributes]  WITH CHECK ADD  CONSTRAINT [FK_Attributes_Dictionaries] FOREIGN KEY([ValueId])
REFERENCES [dbo].[Dictionaries] ([Id])
GO
ALTER TABLE [dbo].[Attributes] CHECK CONSTRAINT [FK_Attributes_Dictionaries]
GO
ALTER TABLE [dbo].[Attributes]  WITH CHECK ADD  CONSTRAINT [FK_Attributes_Features] FOREIGN KEY([FeatureId])
REFERENCES [dbo].[Features] ([Id])
GO
ALTER TABLE [dbo].[Attributes] CHECK CONSTRAINT [FK_Attributes_Features]
GO
ALTER TABLE [dbo].[Carts]  WITH CHECK ADD  CONSTRAINT [FK_Carts_Orders] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
GO
ALTER TABLE [dbo].[Carts] CHECK CONSTRAINT [FK_Carts_Orders]
GO
ALTER TABLE [dbo].[Catalogs]  WITH CHECK ADD  CONSTRAINT [FK_Catalogs_Catalogs] FOREIGN KEY([CatalogId])
REFERENCES [dbo].[Catalogs] ([Id])
GO
ALTER TABLE [dbo].[Catalogs] CHECK CONSTRAINT [FK_Catalogs_Catalogs]
GO
ALTER TABLE [dbo].[Catalogs]  WITH CHECK ADD  CONSTRAINT [FK_Catalogs_Dictionaries] FOREIGN KEY([NameId])
REFERENCES [dbo].[Dictionaries] ([Id])
GO
ALTER TABLE [dbo].[Catalogs] CHECK CONSTRAINT [FK_Catalogs_Dictionaries]
GO
ALTER TABLE [dbo].[Categories]  WITH CHECK ADD  CONSTRAINT [FK_Categories_Categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Categories] CHECK CONSTRAINT [FK_Categories_Categories]
GO
ALTER TABLE [dbo].[Categories]  WITH CHECK ADD  CONSTRAINT [FK_Categories_Dictionaries] FOREIGN KEY([NameId])
REFERENCES [dbo].[Dictionaries] ([Id])
GO
ALTER TABLE [dbo].[Categories] CHECK CONSTRAINT [FK_Categories_Dictionaries]
GO
ALTER TABLE [dbo].[Classes]  WITH CHECK ADD  CONSTRAINT [FK_Classes_Classes] FOREIGN KEY([ClassId])
REFERENCES [dbo].[Classes] ([Id])
GO
ALTER TABLE [dbo].[Classes] CHECK CONSTRAINT [FK_Classes_Classes]
GO
ALTER TABLE [dbo].[CompletedFields]  WITH CHECK ADD  CONSTRAINT [FK_CompletedFields_CompletedForms] FOREIGN KEY([CompletedFormId])
REFERENCES [dbo].[CompletedForms] ([Id])
GO
ALTER TABLE [dbo].[CompletedFields] CHECK CONSTRAINT [FK_CompletedFields_CompletedForms]
GO
ALTER TABLE [dbo].[CompletedFields]  WITH CHECK ADD  CONSTRAINT [FK_CompletedFields_Fields] FOREIGN KEY([FieldId])
REFERENCES [dbo].[Fields] ([Id])
GO
ALTER TABLE [dbo].[CompletedFields] CHECK CONSTRAINT [FK_CompletedFields_Fields]
GO
ALTER TABLE [dbo].[CompletedForms]  WITH CHECK ADD  CONSTRAINT [FK_CompletedForms_Forms] FOREIGN KEY([FormId])
REFERENCES [dbo].[Forms] ([Id])
GO
ALTER TABLE [dbo].[CompletedForms] CHECK CONSTRAINT [FK_CompletedForms_Forms]
GO
ALTER TABLE [dbo].[Credentials]  WITH CHECK ADD  CONSTRAINT [FK_Credentials_CredentialTypes] FOREIGN KEY([CredentialTypeId])
REFERENCES [dbo].[CredentialTypes] ([Id])
GO
ALTER TABLE [dbo].[Credentials] CHECK CONSTRAINT [FK_Credentials_CredentialTypes]
GO
ALTER TABLE [dbo].[Credentials]  WITH CHECK ADD  CONSTRAINT [FK_Credentials_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Credentials] CHECK CONSTRAINT [FK_Credentials_Users]
GO
ALTER TABLE [dbo].[DataSources]  WITH CHECK ADD  CONSTRAINT [FK_DataSources_Endpoints] FOREIGN KEY([EndpointId])
REFERENCES [dbo].[Endpoints] ([Id])
GO
ALTER TABLE [dbo].[DataSources] CHECK CONSTRAINT [FK_DataSources_Endpoints]
GO
ALTER TABLE [dbo].[DataTypeParameters]  WITH CHECK ADD  CONSTRAINT [FK_DataTypeParameters_DataTypes_DataTypeId] FOREIGN KEY([DataTypeId])
REFERENCES [dbo].[DataTypes] ([Id])
GO
ALTER TABLE [dbo].[DataTypeParameters] CHECK CONSTRAINT [FK_DataTypeParameters_DataTypes_DataTypeId]
GO
ALTER TABLE [dbo].[DataTypeParameterValues]  WITH CHECK ADD  CONSTRAINT [FK_DataTypeParameterValues_DataTypeParameters_DataTypeParameterId] FOREIGN KEY([DataTypeParameterId])
REFERENCES [dbo].[DataTypeParameters] ([Id])
GO
ALTER TABLE [dbo].[DataTypeParameterValues] CHECK CONSTRAINT [FK_DataTypeParameterValues_DataTypeParameters_DataTypeParameterId]
GO
ALTER TABLE [dbo].[DataTypeParameterValues]  WITH CHECK ADD  CONSTRAINT [FK_DataTypeParameterValues_Members_MemberId] FOREIGN KEY([MemberId])
REFERENCES [dbo].[Members] ([Id])
GO
ALTER TABLE [dbo].[DataTypeParameterValues] CHECK CONSTRAINT [FK_DataTypeParameterValues_Members_MemberId]
GO
ALTER TABLE [dbo].[DeliveryMethods]  WITH CHECK ADD  CONSTRAINT [FK_DeliveryMethods_Dictionaries] FOREIGN KEY([NameId])
REFERENCES [dbo].[Dictionaries] ([Id])
GO
ALTER TABLE [dbo].[DeliveryMethods] CHECK CONSTRAINT [FK_DeliveryMethods_Dictionaries]
GO
ALTER TABLE [dbo].[EndpointPermissions]  WITH CHECK ADD  CONSTRAINT [FK_EndpointPermissions_Permissions] FOREIGN KEY([PermissionId])
REFERENCES [dbo].[Permissions] ([Id])
GO
ALTER TABLE [dbo].[EndpointPermissions] CHECK CONSTRAINT [FK_EndpointPermissions_Permissions]
GO
ALTER TABLE [dbo].[EndpointPermissions]  WITH CHECK ADD  CONSTRAINT [FK_EndpointPermissions_Roles] FOREIGN KEY([EndpointId])
REFERENCES [dbo].[Endpoints] ([Id])
GO
ALTER TABLE [dbo].[EndpointPermissions] CHECK CONSTRAINT [FK_EndpointPermissions_Roles]
GO
ALTER TABLE [dbo].[Features]  WITH CHECK ADD  CONSTRAINT [FK_Features_Dictionaries] FOREIGN KEY([NameId])
REFERENCES [dbo].[Dictionaries] ([Id])
GO
ALTER TABLE [dbo].[Features] CHECK CONSTRAINT [FK_Features_Dictionaries]
GO
ALTER TABLE [dbo].[FieldOptions]  WITH CHECK ADD  CONSTRAINT [FK_FieldOptions_Dictionaries] FOREIGN KEY([ValueId])
REFERENCES [dbo].[Dictionaries] ([Id])
GO
ALTER TABLE [dbo].[FieldOptions] CHECK CONSTRAINT [FK_FieldOptions_Dictionaries]
GO
ALTER TABLE [dbo].[FieldOptions]  WITH CHECK ADD  CONSTRAINT [FK_FieldOptions_Fields] FOREIGN KEY([FieldId])
REFERENCES [dbo].[Fields] ([Id])
GO
ALTER TABLE [dbo].[FieldOptions] CHECK CONSTRAINT [FK_FieldOptions_Fields]
GO
ALTER TABLE [dbo].[Fields]  WITH CHECK ADD  CONSTRAINT [FK_Fields_Dictionaries] FOREIGN KEY([NameId])
REFERENCES [dbo].[Dictionaries] ([Id])
GO
ALTER TABLE [dbo].[Fields] CHECK CONSTRAINT [FK_Fields_Dictionaries]
GO
ALTER TABLE [dbo].[Fields]  WITH CHECK ADD  CONSTRAINT [FK_Fields_FieldTypes] FOREIGN KEY([FieldTypeId])
REFERENCES [dbo].[FieldTypes] ([Id])
GO
ALTER TABLE [dbo].[Fields] CHECK CONSTRAINT [FK_Fields_FieldTypes]
GO
ALTER TABLE [dbo].[Fields]  WITH CHECK ADD  CONSTRAINT [FK_Fields_Forms] FOREIGN KEY([FormId])
REFERENCES [dbo].[Forms] ([Id])
GO
ALTER TABLE [dbo].[Fields] CHECK CONSTRAINT [FK_Fields_Forms]
GO
ALTER TABLE [dbo].[Forms]  WITH CHECK ADD  CONSTRAINT [FK_Forms_Dictionaries_NameId] FOREIGN KEY([NameId])
REFERENCES [dbo].[Dictionaries] ([Id])
GO
ALTER TABLE [dbo].[Forms] CHECK CONSTRAINT [FK_Forms_Dictionaries_NameId]
GO
ALTER TABLE [dbo].[Forms]  WITH CHECK ADD  CONSTRAINT [FK_Forms_Dictionaries_SubmitButtonTitleId] FOREIGN KEY([SubmitButtonTitleId])
REFERENCES [dbo].[Dictionaries] ([Id])
GO
ALTER TABLE [dbo].[Forms] CHECK CONSTRAINT [FK_Forms_Dictionaries_SubmitButtonTitleId]
GO
ALTER TABLE [dbo].[Localizations]  WITH CHECK ADD  CONSTRAINT [FK_Localizations_Cultures] FOREIGN KEY([CultureId])
REFERENCES [dbo].[Cultures] ([Id])
GO
ALTER TABLE [dbo].[Localizations] CHECK CONSTRAINT [FK_Localizations_Cultures]
GO
ALTER TABLE [dbo].[Localizations]  WITH CHECK ADD  CONSTRAINT [FK_Localizations_Dictionaries] FOREIGN KEY([DictionaryId])
REFERENCES [dbo].[Dictionaries] ([Id])
GO
ALTER TABLE [dbo].[Localizations] CHECK CONSTRAINT [FK_Localizations_Dictionaries]
GO
ALTER TABLE [dbo].[Members]  WITH CHECK ADD  CONSTRAINT [FK_Members_Classes_ClassId] FOREIGN KEY([ClassId])
REFERENCES [dbo].[Classes] ([Id])
GO
ALTER TABLE [dbo].[Members] CHECK CONSTRAINT [FK_Members_Classes_ClassId]
GO
ALTER TABLE [dbo].[Members]  WITH CHECK ADD  CONSTRAINT [FK_Members_Classes_RelationClassId] FOREIGN KEY([RelationClassId])
REFERENCES [dbo].[Classes] ([Id])
GO
ALTER TABLE [dbo].[Members] CHECK CONSTRAINT [FK_Members_Classes_RelationClassId]
GO
ALTER TABLE [dbo].[Members]  WITH CHECK ADD  CONSTRAINT [FK_Members_DataTypes] FOREIGN KEY([PropertyDataTypeId])
REFERENCES [dbo].[DataTypes] ([Id])
GO
ALTER TABLE [dbo].[Members] CHECK CONSTRAINT [FK_Members_DataTypes]
GO
ALTER TABLE [dbo].[Members]  WITH CHECK ADD  CONSTRAINT [FK_Members_Tabs] FOREIGN KEY([TabId])
REFERENCES [dbo].[Tabs] ([Id])
GO
ALTER TABLE [dbo].[Members] CHECK CONSTRAINT [FK_Members_Tabs]
GO
ALTER TABLE [dbo].[MenuItems]  WITH CHECK ADD  CONSTRAINT [FK_MenuItems_Dictionaries] FOREIGN KEY([NameId])
REFERENCES [dbo].[Dictionaries] ([Id])
GO
ALTER TABLE [dbo].[MenuItems] CHECK CONSTRAINT [FK_MenuItems_Dictionaries]
GO
ALTER TABLE [dbo].[MenuItems]  WITH CHECK ADD  CONSTRAINT [FK_MenuItems_MenuItems] FOREIGN KEY([MenuItemId])
REFERENCES [dbo].[MenuItems] ([Id])
GO
ALTER TABLE [dbo].[MenuItems] CHECK CONSTRAINT [FK_MenuItems_MenuItems]
GO
ALTER TABLE [dbo].[MenuItems]  WITH CHECK ADD  CONSTRAINT [FK_MenuItems_Menus] FOREIGN KEY([MenuId])
REFERENCES [dbo].[Menus] ([Id])
GO
ALTER TABLE [dbo].[MenuItems] CHECK CONSTRAINT [FK_MenuItems_Menus]
GO
ALTER TABLE [dbo].[Menus]  WITH CHECK ADD  CONSTRAINT [FK_Menus_Dictionaries] FOREIGN KEY([NameId])
REFERENCES [dbo].[Dictionaries] ([Id])
GO
ALTER TABLE [dbo].[Menus] CHECK CONSTRAINT [FK_Menus_Dictionaries]
GO
ALTER TABLE [dbo].[Objects]  WITH CHECK ADD  CONSTRAINT [FK_Objects_Classes] FOREIGN KEY([ClassId])
REFERENCES [dbo].[Classes] ([Id])
GO
ALTER TABLE [dbo].[Objects] CHECK CONSTRAINT [FK_Objects_Classes]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_DeliveryMethods] FOREIGN KEY([DeliveryMethodId])
REFERENCES [dbo].[DeliveryMethods] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_DeliveryMethods]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_OrderStates] FOREIGN KEY([OrderStateId])
REFERENCES [dbo].[OrderStates] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_OrderStates]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_PaymentMethods] FOREIGN KEY([PaymentMethodId])
REFERENCES [dbo].[PaymentMethods] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_PaymentMethods]
GO
ALTER TABLE [dbo].[OrderStates]  WITH CHECK ADD  CONSTRAINT [FK_OrderStates_Dictionaries] FOREIGN KEY([NameId])
REFERENCES [dbo].[Dictionaries] ([Id])
GO
ALTER TABLE [dbo].[OrderStates] CHECK CONSTRAINT [FK_OrderStates_Dictionaries]
GO
ALTER TABLE [dbo].[PaymentMethods]  WITH CHECK ADD  CONSTRAINT [FK_PaymentMethods_Dictionaries] FOREIGN KEY([NameId])
REFERENCES [dbo].[Dictionaries] ([Id])
GO
ALTER TABLE [dbo].[PaymentMethods] CHECK CONSTRAINT [FK_PaymentMethods_Dictionaries]
GO
ALTER TABLE [dbo].[Photos]  WITH CHECK ADD  CONSTRAINT [FK_Photos_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[Photos] CHECK CONSTRAINT [FK_Photos_Products]
GO
ALTER TABLE [dbo].[Positions]  WITH CHECK ADD  CONSTRAINT [FK_Positions_Carts] FOREIGN KEY([CartId])
REFERENCES [dbo].[Carts] ([Id])
GO
ALTER TABLE [dbo].[Positions] CHECK CONSTRAINT [FK_Positions_Carts]
GO
ALTER TABLE [dbo].[Positions]  WITH CHECK ADD  CONSTRAINT [FK_Positions_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[Positions] CHECK CONSTRAINT [FK_Positions_Products]
GO
ALTER TABLE [dbo].[ProductAttributes]  WITH CHECK ADD  CONSTRAINT [FK_ProductAttributes_Attributes] FOREIGN KEY([AttributeId])
REFERENCES [dbo].[Attributes] ([Id])
GO
ALTER TABLE [dbo].[ProductAttributes] CHECK CONSTRAINT [FK_ProductAttributes_Attributes]
GO
ALTER TABLE [dbo].[ProductAttributes]  WITH CHECK ADD  CONSTRAINT [FK_ProductAttributes_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[ProductAttributes] CHECK CONSTRAINT [FK_ProductAttributes_Products]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Dictionaries_DescriptionId] FOREIGN KEY([DescriptionId])
REFERENCES [dbo].[Dictionaries] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Dictionaries_DescriptionId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Dictionaries_MetaDescriptionId] FOREIGN KEY([MetaDescriptionId])
REFERENCES [dbo].[Dictionaries] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Dictionaries_MetaDescriptionId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Dictionaries_MetaKeywordsId] FOREIGN KEY([MetaKeywordsId])
REFERENCES [dbo].[Dictionaries] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Dictionaries_MetaKeywordsId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Dictionaries_NameId] FOREIGN KEY([NameId])
REFERENCES [dbo].[Dictionaries] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Dictionaries_NameId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Dictionaries_TitleId] FOREIGN KEY([TitleId])
REFERENCES [dbo].[Dictionaries] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Dictionaries_TitleId]
GO
ALTER TABLE [dbo].[Properties]  WITH CHECK ADD  CONSTRAINT [FK_Properties_Dictionaries] FOREIGN KEY([StringValueId])
REFERENCES [dbo].[Dictionaries] ([Id])
GO
ALTER TABLE [dbo].[Properties] CHECK CONSTRAINT [FK_Properties_Dictionaries]
GO
ALTER TABLE [dbo].[Properties]  WITH CHECK ADD  CONSTRAINT [FK_Properties_Members] FOREIGN KEY([MemberId])
REFERENCES [dbo].[Members] ([Id])
GO
ALTER TABLE [dbo].[Properties] CHECK CONSTRAINT [FK_Properties_Members]
GO
ALTER TABLE [dbo].[Properties]  WITH CHECK ADD  CONSTRAINT [FK_Properties_Objects] FOREIGN KEY([ObjectId])
REFERENCES [dbo].[Objects] ([Id])
GO
ALTER TABLE [dbo].[Properties] CHECK CONSTRAINT [FK_Properties_Objects]
GO
ALTER TABLE [dbo].[Relations]  WITH CHECK ADD  CONSTRAINT [FK_Relations_Members] FOREIGN KEY([MemberId])
REFERENCES [dbo].[Members] ([Id])
GO
ALTER TABLE [dbo].[Relations] CHECK CONSTRAINT [FK_Relations_Members]
GO
ALTER TABLE [dbo].[Relations]  WITH CHECK ADD  CONSTRAINT [FK_Relations_Objects_ForeignId] FOREIGN KEY([ForeignId])
REFERENCES [dbo].[Objects] ([Id])
GO
ALTER TABLE [dbo].[Relations] CHECK CONSTRAINT [FK_Relations_Objects_ForeignId]
GO
ALTER TABLE [dbo].[Relations]  WITH CHECK ADD  CONSTRAINT [FK_Relations_Objects_PrimaryId] FOREIGN KEY([PrimaryId])
REFERENCES [dbo].[Objects] ([Id])
GO
ALTER TABLE [dbo].[Relations] CHECK CONSTRAINT [FK_Relations_Objects_PrimaryId]
GO
ALTER TABLE [dbo].[RolePermissions]  WITH CHECK ADD  CONSTRAINT [FK_RolePermissions_Permissions] FOREIGN KEY([PermissionId])
REFERENCES [dbo].[Permissions] ([Id])
GO
ALTER TABLE [dbo].[RolePermissions] CHECK CONSTRAINT [FK_RolePermissions_Permissions]
GO
ALTER TABLE [dbo].[RolePermissions]  WITH CHECK ADD  CONSTRAINT [FK_RolePermissions_Roles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
GO
ALTER TABLE [dbo].[RolePermissions] CHECK CONSTRAINT [FK_RolePermissions_Roles]
GO
ALTER TABLE [dbo].[SerializedForms]  WITH CHECK ADD  CONSTRAINT [FK_SerializedForms_Cultures] FOREIGN KEY([CultureId])
REFERENCES [dbo].[Cultures] ([Id])
GO
ALTER TABLE [dbo].[SerializedForms] CHECK CONSTRAINT [FK_SerializedForms_Cultures]
GO
ALTER TABLE [dbo].[SerializedForms]  WITH CHECK ADD  CONSTRAINT [FK_SerializedForms_Forms] FOREIGN KEY([FormId])
REFERENCES [dbo].[Forms] ([Id])
GO
ALTER TABLE [dbo].[SerializedForms] CHECK CONSTRAINT [FK_SerializedForms_Forms]
GO
ALTER TABLE [dbo].[SerializedMenus]  WITH CHECK ADD  CONSTRAINT [FK_SerializedMenus_Cultures] FOREIGN KEY([CultureId])
REFERENCES [dbo].[Cultures] ([Id])
GO
ALTER TABLE [dbo].[SerializedMenus] CHECK CONSTRAINT [FK_SerializedMenus_Cultures]
GO
ALTER TABLE [dbo].[SerializedMenus]  WITH CHECK ADD  CONSTRAINT [FK_SerializedMenus_Menus] FOREIGN KEY([MenuId])
REFERENCES [dbo].[Menus] ([Id])
GO
ALTER TABLE [dbo].[SerializedMenus] CHECK CONSTRAINT [FK_SerializedMenus_Menus]
GO
ALTER TABLE [dbo].[SerializedObjects]  WITH CHECK ADD  CONSTRAINT [FK_SerializedObjects_Classes] FOREIGN KEY([ClassId])
REFERENCES [dbo].[Classes] ([Id])
GO
ALTER TABLE [dbo].[SerializedObjects] CHECK CONSTRAINT [FK_SerializedObjects_Classes]
GO
ALTER TABLE [dbo].[SerializedObjects]  WITH CHECK ADD  CONSTRAINT [FK_SerializedObjects_Cultures] FOREIGN KEY([CultureId])
REFERENCES [dbo].[Cultures] ([Id])
GO
ALTER TABLE [dbo].[SerializedObjects] CHECK CONSTRAINT [FK_SerializedObjects_Cultures]
GO
ALTER TABLE [dbo].[SerializedObjects]  WITH CHECK ADD  CONSTRAINT [FK_SerializedObjects_Objects] FOREIGN KEY([ObjectId])
REFERENCES [dbo].[Objects] ([Id])
GO
ALTER TABLE [dbo].[SerializedObjects] CHECK CONSTRAINT [FK_SerializedObjects_Objects]
GO
ALTER TABLE [dbo].[SerializedProducts]  WITH CHECK ADD  CONSTRAINT [FK_SerializedProducts_Categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[SerializedProducts] CHECK CONSTRAINT [FK_SerializedProducts_Categories]
GO
ALTER TABLE [dbo].[SerializedProducts]  WITH CHECK ADD  CONSTRAINT [FK_SerializedProducts_Cultures] FOREIGN KEY([CultureId])
REFERENCES [dbo].[Cultures] ([Id])
GO
ALTER TABLE [dbo].[SerializedProducts] CHECK CONSTRAINT [FK_SerializedProducts_Cultures]
GO
ALTER TABLE [dbo].[SerializedProducts]  WITH CHECK ADD  CONSTRAINT [FK_SerializedProducts_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[SerializedProducts] CHECK CONSTRAINT [FK_SerializedProducts_Products]
GO
ALTER TABLE [dbo].[Tabs]  WITH CHECK ADD  CONSTRAINT [FK_Tabs_Classes] FOREIGN KEY([ClassId])
REFERENCES [dbo].[Classes] ([Id])
GO
ALTER TABLE [dbo].[Tabs] CHECK CONSTRAINT [FK_Tabs_Classes]
GO
ALTER TABLE [dbo].[UserRoles]  WITH CHECK ADD  CONSTRAINT [FK_UserRoles_Roles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
GO
ALTER TABLE [dbo].[UserRoles] CHECK CONSTRAINT [FK_UserRoles_Roles]
GO
ALTER TABLE [dbo].[UserRoles]  WITH CHECK ADD  CONSTRAINT [FK_UserRoles_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[UserRoles] CHECK CONSTRAINT [FK_UserRoles_Users]
GO
ALTER TABLE [dbo].[Variables]  WITH CHECK ADD  CONSTRAINT [FK_Variables_Configurations] FOREIGN KEY([ConfigurationId])
REFERENCES [dbo].[Configurations] ([Id])
GO
ALTER TABLE [dbo].[Variables] CHECK CONSTRAINT [FK_Variables_Configurations]
GO
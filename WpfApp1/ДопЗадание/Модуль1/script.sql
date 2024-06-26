USE [user09]
GO
/****** Object:  Table [dbo].[ProblemDescription]    Script Date: 25.05.2024 21:42:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProblemDescription](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_ProblemDescription] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RepairComment]    Script Date: 25.05.2024 21:42:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RepairComment](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Message] [nvarchar](max) NOT NULL,
	[MasterID] [int] NOT NULL,
	[RepairRequestID] [int] NOT NULL,
 CONSTRAINT [PK_RepairComment] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RepairPart]    Script Date: 25.05.2024 21:42:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RepairPart](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_RepairPart] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RepairRequest]    Script Date: 25.05.2024 21:42:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RepairRequest](
	[ID] [int] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[CompletionDate] [datetime] NULL,
	[MasterID] [int] NULL,
	[ClientID] [int] NOT NULL,
	[TechModelID] [int] NOT NULL,
	[ProblemDescriptionID] [int] NOT NULL,
	[RequestStatusID] [int] NOT NULL,
	[RepairPartID] [int] NULL,
 CONSTRAINT [PK_RepairRequest] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RequestStatus]    Script Date: 25.05.2024 21:42:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RequestStatus](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_RequestStatus] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 25.05.2024 21:42:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TechModel]    Script Date: 25.05.2024 21:42:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TechModel](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[TechTypeID] [int] NOT NULL,
 CONSTRAINT [PK_TechModel] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TechType]    Script Date: 25.05.2024 21:42:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TechType](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_TechType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 25.05.2024 21:42:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FIO] [nvarchar](max) NOT NULL,
	[Phone] [nvarchar](15) NOT NULL,
	[Login] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[RoleID] [int] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[ProblemDescription] ([ID], [Name]) VALUES (1, N'Перестал работать')
INSERT [dbo].[ProblemDescription] ([ID], [Name]) VALUES (2, N'Не морозит одна из камер холодильника')
INSERT [dbo].[ProblemDescription] ([ID], [Name]) VALUES (3, N'Перестали работать многие режимы стирки')
INSERT [dbo].[ProblemDescription] ([ID], [Name]) VALUES (4, N'Перестала включаться')
INSERT [dbo].[ProblemDescription] ([ID], [Name]) VALUES (5, N'Гудит, но не замораживает')
GO
SET IDENTITY_INSERT [dbo].[RepairComment] ON 

INSERT [dbo].[RepairComment] ([ID], [Message], [MasterID], [RepairRequestID]) VALUES (1, N'Интересная поломка', 2, 1)
INSERT [dbo].[RepairComment] ([ID], [Message], [MasterID], [RepairRequestID]) VALUES (2, N'Очень странно, будем разбираться!', 3, 2)
INSERT [dbo].[RepairComment] ([ID], [Message], [MasterID], [RepairRequestID]) VALUES (3, N'Скорее всего потребуется мотор обдува!', 2, 7)
INSERT [dbo].[RepairComment] ([ID], [Message], [MasterID], [RepairRequestID]) VALUES (4, N'Интересная поломка', 2, 1)
INSERT [dbo].[RepairComment] ([ID], [Message], [MasterID], [RepairRequestID]) VALUES (5, N'Очень странно, будем разбираться!', 3, 6)
SET IDENTITY_INSERT [dbo].[RepairComment] OFF
GO
SET IDENTITY_INSERT [dbo].[RepairPart] ON 

INSERT [dbo].[RepairPart] ([ID], [Name]) VALUES (1, N'Мотор обдува морозильной камеры холодильника')
SET IDENTITY_INSERT [dbo].[RepairPart] OFF
GO
INSERT [dbo].[RepairRequest] ([ID], [StartDate], [CompletionDate], [MasterID], [ClientID], [TechModelID], [ProblemDescriptionID], [RequestStatusID], [RepairPartID]) VALUES (1, CAST(N'2023-06-06T00:00:00.000' AS DateTime), NULL, 2, 7, 1, 1, 1, NULL)
INSERT [dbo].[RepairRequest] ([ID], [StartDate], [CompletionDate], [MasterID], [ClientID], [TechModelID], [ProblemDescriptionID], [RequestStatusID], [RepairPartID]) VALUES (2, CAST(N'2023-05-05T00:00:00.000' AS DateTime), NULL, 3, 7, 2, 1, 1, NULL)
INSERT [dbo].[RepairRequest] ([ID], [StartDate], [CompletionDate], [MasterID], [ClientID], [TechModelID], [ProblemDescriptionID], [RequestStatusID], [RepairPartID]) VALUES (3, CAST(N'2022-07-07T00:00:00.000' AS DateTime), CAST(N'2023-01-01T00:00:00.000' AS DateTime), 2, 8, 3, 2, 2, NULL)
INSERT [dbo].[RepairRequest] ([ID], [StartDate], [CompletionDate], [MasterID], [ClientID], [TechModelID], [ProblemDescriptionID], [RequestStatusID], [RepairPartID]) VALUES (4, CAST(N'2023-08-02T00:00:00.000' AS DateTime), NULL, NULL, 8, 4, 3, 3, NULL)
INSERT [dbo].[RepairRequest] ([ID], [StartDate], [CompletionDate], [MasterID], [ClientID], [TechModelID], [ProblemDescriptionID], [RequestStatusID], [RepairPartID]) VALUES (5, CAST(N'2023-08-02T00:00:00.000' AS DateTime), NULL, NULL, 9, 5, 4, 3, NULL)
INSERT [dbo].[RepairRequest] ([ID], [StartDate], [CompletionDate], [MasterID], [ClientID], [TechModelID], [ProblemDescriptionID], [RequestStatusID], [RepairPartID]) VALUES (6, CAST(N'2023-08-02T00:00:00.000' AS DateTime), CAST(N'2023-08-03T00:00:00.000' AS DateTime), 2, 7, 6, 1, 4, NULL)
INSERT [dbo].[RepairRequest] ([ID], [StartDate], [CompletionDate], [MasterID], [ClientID], [TechModelID], [ProblemDescriptionID], [RequestStatusID], [RepairPartID]) VALUES (7, CAST(N'2023-07-09T00:00:00.000' AS DateTime), CAST(N'2023-08-03T00:00:00.000' AS DateTime), 2, 8, 7, 5, 4, 1)
GO
SET IDENTITY_INSERT [dbo].[RequestStatus] ON 

INSERT [dbo].[RequestStatus] ([ID], [Name]) VALUES (1, N'В процессе ремонта')
INSERT [dbo].[RequestStatus] ([ID], [Name]) VALUES (2, N'Готова к выдаче')
INSERT [dbo].[RequestStatus] ([ID], [Name]) VALUES (3, N'Новая заявка')
INSERT [dbo].[RequestStatus] ([ID], [Name]) VALUES (4, N'Готова к выдаче')
SET IDENTITY_INSERT [dbo].[RequestStatus] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([ID], [Name]) VALUES (1, N'Менеджер')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (2, N'Мастер')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (3, N'Оператор')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (4, N'Заказчик')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
INSERT [dbo].[TechModel] ([ID], [Name], [TechTypeID]) VALUES (1, N'Ладомир ТА112 белый', 1)
INSERT [dbo].[TechModel] ([ID], [Name], [TechTypeID]) VALUES (2, N'Redmond RT-437 черный', 2)
INSERT [dbo].[TechModel] ([ID], [Name], [TechTypeID]) VALUES (3, N'Indesit DS 316 W белый', 3)
INSERT [dbo].[TechModel] ([ID], [Name], [TechTypeID]) VALUES (4, N'DEXP WM-F610NTMA/WW белый', 4)
INSERT [dbo].[TechModel] ([ID], [Name], [TechTypeID]) VALUES (5, N'Redmond RMC-M95 черный', 5)
INSERT [dbo].[TechModel] ([ID], [Name], [TechTypeID]) VALUES (6, N'Ладомир ТА113 чёрный', 1)
INSERT [dbo].[TechModel] ([ID], [Name], [TechTypeID]) VALUES (7, N'Indesit DS 314 W серый', 3)
GO
INSERT [dbo].[TechType] ([ID], [Name]) VALUES (1, N'Фен')
INSERT [dbo].[TechType] ([ID], [Name]) VALUES (2, N'Тостер')
INSERT [dbo].[TechType] ([ID], [Name]) VALUES (3, N'Холодильник')
INSERT [dbo].[TechType] ([ID], [Name]) VALUES (4, N'Стиральная машина')
INSERT [dbo].[TechType] ([ID], [Name]) VALUES (5, N'Мультиварка')
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([ID], [FIO], [Phone], [Login], [Password], [RoleID]) VALUES (1, N'Трубин Никита Юрьевич', N'89210563128', N'kasoo', N'root', 1)
INSERT [dbo].[User] ([ID], [FIO], [Phone], [Login], [Password], [RoleID]) VALUES (2, N'Мурашов Андрей Юрьевич', N'89535078985', N'murashov123', N'qwerty', 2)
INSERT [dbo].[User] ([ID], [FIO], [Phone], [Login], [Password], [RoleID]) VALUES (3, N'Степанов Андрей Викторович', N'89210673849', N'test1', N'test1', 2)
INSERT [dbo].[User] ([ID], [FIO], [Phone], [Login], [Password], [RoleID]) VALUES (4, N'Перина Анастасия Денисовна', N'89990563748', N'perinaAD', N'250519', 3)
INSERT [dbo].[User] ([ID], [FIO], [Phone], [Login], [Password], [RoleID]) VALUES (5, N'Мажитова Ксения Сергеевна', N'89994563847', N'krutiha1234567', N'1234567890', 3)
INSERT [dbo].[User] ([ID], [FIO], [Phone], [Login], [Password], [RoleID]) VALUES (6, N'Семенова Ясмина Марковна', N'89994563847', N'login1', N'pass1', 2)
INSERT [dbo].[User] ([ID], [FIO], [Phone], [Login], [Password], [RoleID]) VALUES (7, N'Баранова Эмилия Марковна', N'89994563841', N'login2', N'pass2', 4)
INSERT [dbo].[User] ([ID], [FIO], [Phone], [Login], [Password], [RoleID]) VALUES (8, N'Егорова Алиса Платоновна', N'89994563842', N'login3', N'pass3', 4)
INSERT [dbo].[User] ([ID], [FIO], [Phone], [Login], [Password], [RoleID]) VALUES (9, N'Титов Максим Иванович', N'89994563843', N'login4', N'pass4', 4)
INSERT [dbo].[User] ([ID], [FIO], [Phone], [Login], [Password], [RoleID]) VALUES (10, N'Иванов Марк Максимович', N'89994563844', N'login5', N'pass5', 2)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[RepairComment]  WITH CHECK ADD  CONSTRAINT [FK_RepairComment_RepairRequest] FOREIGN KEY([RepairRequestID])
REFERENCES [dbo].[RepairRequest] ([ID])
GO
ALTER TABLE [dbo].[RepairComment] CHECK CONSTRAINT [FK_RepairComment_RepairRequest]
GO
ALTER TABLE [dbo].[RepairComment]  WITH CHECK ADD  CONSTRAINT [FK_RepairComment_User] FOREIGN KEY([MasterID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[RepairComment] CHECK CONSTRAINT [FK_RepairComment_User]
GO
ALTER TABLE [dbo].[RepairRequest]  WITH CHECK ADD  CONSTRAINT [FK_RepairRequest_Client] FOREIGN KEY([ClientID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[RepairRequest] CHECK CONSTRAINT [FK_RepairRequest_Client]
GO
ALTER TABLE [dbo].[RepairRequest]  WITH CHECK ADD  CONSTRAINT [FK_RepairRequest_Master] FOREIGN KEY([MasterID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[RepairRequest] CHECK CONSTRAINT [FK_RepairRequest_Master]
GO
ALTER TABLE [dbo].[RepairRequest]  WITH CHECK ADD  CONSTRAINT [FK_RepairRequest_ProblemDescription] FOREIGN KEY([ProblemDescriptionID])
REFERENCES [dbo].[ProblemDescription] ([ID])
GO
ALTER TABLE [dbo].[RepairRequest] CHECK CONSTRAINT [FK_RepairRequest_ProblemDescription]
GO
ALTER TABLE [dbo].[RepairRequest]  WITH CHECK ADD  CONSTRAINT [FK_RepairRequest_RepairPart] FOREIGN KEY([RepairPartID])
REFERENCES [dbo].[RepairPart] ([ID])
GO
ALTER TABLE [dbo].[RepairRequest] CHECK CONSTRAINT [FK_RepairRequest_RepairPart]
GO
ALTER TABLE [dbo].[RepairRequest]  WITH CHECK ADD  CONSTRAINT [FK_RepairRequest_RequestStatus] FOREIGN KEY([RequestStatusID])
REFERENCES [dbo].[RequestStatus] ([ID])
GO
ALTER TABLE [dbo].[RepairRequest] CHECK CONSTRAINT [FK_RepairRequest_RequestStatus]
GO
ALTER TABLE [dbo].[RepairRequest]  WITH CHECK ADD  CONSTRAINT [FK_RepairRequest_TechModel] FOREIGN KEY([TechModelID])
REFERENCES [dbo].[TechModel] ([ID])
GO
ALTER TABLE [dbo].[RepairRequest] CHECK CONSTRAINT [FK_RepairRequest_TechModel]
GO
ALTER TABLE [dbo].[TechModel]  WITH CHECK ADD  CONSTRAINT [FK_TechModel_TechType] FOREIGN KEY([TechTypeID])
REFERENCES [dbo].[TechType] ([ID])
GO
ALTER TABLE [dbo].[TechModel] CHECK CONSTRAINT [FK_TechModel_TechType]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([ID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO

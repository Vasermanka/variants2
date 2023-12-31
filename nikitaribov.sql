USE [master]
GO
/****** Object:  Database [user22]    Script Date: 11.09.2023 16:23:57 ******/
CREATE DATABASE [user49]
GO
USE [user49]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 11.09.2023 16:23:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[ClientId] [int] IDENTITY(1,1) NOT NULL,
	[Familiya] [nvarchar](100) NULL,
	[Name] [nvarchar](100) NULL,
	[Otchestvo] [nvarchar](100) NULL,
	[Pol] [nvarchar](15) NULL,
	[Phone] [nvarchar](255) NULL,
	[BirthDate] [date] NULL,
	[Email] [nvarchar](155) NULL,
	[DataRegistracii] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[ClientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Uslugi]    Script Date: 11.09.2023 16:23:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Uslugi](
	[UslugiId] [int] IDENTITY(1,1) NOT NULL,
	[Uslugi] [nvarchar](255) NULL,
	[Kartinka] [nvarchar](100) NULL,
	[Dlitelnost] [nvarchar](55) NULL,
	[Cena] [money] NULL,
	[Skidki] [float] NULL,
PRIMARY KEY CLUSTERED
(
	[UslugiId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UslugiClient]    Script Date: 11.09.2023 16:23:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UslugiClient](
	[UslugiClientId] [int] IDENTITY(1,1) NOT NULL,
	[Uslugi] [nvarchar](255) NULL,
	[UslugiId] [int] NULL,
	[NachaloProvedeniyaUslugi] [datetime] NULL,
	[Client] [nvarchar](100) NULL,
	[ClientId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[UslugiClientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Client] ON 

INSERT [dbo].[Client] ([ClientId], [Familiya], [Name], [Otchestvo], [Pol], [Phone], [BirthDate], [Email], [DataRegistracii]) VALUES (1, N'Васильев', N'Оскар', N'Богданович', N' м', N'7(585)801-94-29', CAST(N'1971-01-30' AS Date), N'miturria@verizon.net', CAST(N'2017-05-28' AS Date))
INSERT [dbo].[Client] ([ClientId], [Familiya], [Name], [Otchestvo], [Pol], [Phone], [BirthDate], [Email], [DataRegistracii]) VALUES (2, N'Лазарев', N'Алексей', N'Богданович', N' м', N'7(0055)737-37-48', CAST(N'1977-03-10' AS Date), N'claesjac@me.com', CAST(N'2017-01-02' AS Date))
INSERT [dbo].[Client] ([ClientId], [Familiya], [Name], [Otchestvo], [Pol], [Phone], [BirthDate], [Email], [DataRegistracii]) VALUES (3, N'Казаков', N'Дмитрий', N'Русланович', N' м', N'7(51)682-19-40', CAST(N'1978-12-15' AS Date), N'ozawa@verizon.net', CAST(N'2016-05-21' AS Date))
INSERT [dbo].[Client] ([ClientId], [Familiya], [Name], [Otchestvo], [Pol], [Phone], [BirthDate], [Email], [DataRegistracii]) VALUES (4, N'Попова', N'Харита', N'Якуновна', N' ж', N'7(335)386-81-06', CAST(N'1997-12-16' AS Date), N'firstpr@verizon.net', CAST(N'2016-07-05' AS Date))
INSERT [dbo].[Client] ([ClientId], [Familiya], [Name], [Otchestvo], [Pol], [Phone], [BirthDate], [Email], [DataRegistracii]) VALUES (5, N'Турова', N'Георгина', N'Семёновна', N' ж', N'7(555)321-42-99', CAST(N'1974-05-28' AS Date), N'yruan@optonline.net', CAST(N'2018-02-22' AS Date))
INSERT [dbo].[Client] ([ClientId], [Familiya], [Name], [Otchestvo], [Pol], [Phone], [BirthDate], [Email], [DataRegistracii]) VALUES (6, N'Андреев', N'Станислав', N'Максович', N' м', N'7(02)993-91-28', CAST(N'1975-10-10' AS Date), N'budinger@mac.com', CAST(N'2017-12-26' AS Date))
INSERT [dbo].[Client] ([ClientId], [Familiya], [Name], [Otchestvo], [Pol], [Phone], [BirthDate], [Email], [DataRegistracii]) VALUES (7, N'Орлова', N'Влада', N'Мартыновна', N' ж', N'7(2506)433-38-35', CAST(N'1990-06-26' AS Date), N'rnelson@yahoo.ca', CAST(N'2016-03-21' AS Date))
INSERT [dbo].[Client] ([ClientId], [Familiya], [Name], [Otchestvo], [Pol], [Phone], [BirthDate], [Email], [DataRegistracii]) VALUES (8, N'Костина', N'Любава', N'Авксентьевна', N' ж', N'7(6419)959-21-87', CAST(N'1972-07-13' AS Date), N'gordonjcp@hotmail.com', CAST(N'2016-02-26' AS Date))
INSERT [dbo].[Client] ([ClientId], [Familiya], [Name], [Otchestvo], [Pol], [Phone], [BirthDate], [Email], [DataRegistracii]) VALUES (9, N'Александров', N'Станислав', N'Эдуардович', N' м', N'7(18)164-05-12', CAST(N'1981-07-04' AS Date), N'bigmauler@aol.com', CAST(N'2018-11-08' AS Date))
INSERT [dbo].[Client] ([ClientId], [Familiya], [Name], [Otchestvo], [Pol], [Phone], [BirthDate], [Email], [DataRegistracii]) VALUES (10, N'Корнилова', N'Анэля', N'Михайловна', N' ж', N'7(20)980-01-60', CAST(N'1973-04-02' AS Date), N'jonathan@aol.com', CAST(N'2016-05-22' AS Date))
INSERT [dbo].[Client] ([ClientId], [Familiya], [Name], [Otchestvo], [Pol], [Phone], [BirthDate], [Email], [DataRegistracii]) VALUES (11, N'Морозов', N'Наум', N'Валерьянович', N' м', N'7(636)050-96-13', CAST(N'1985-07-04' AS Date), N'salesgeek@mac.com', CAST(N'2016-05-02' AS Date))
INSERT [dbo].[Client] ([ClientId], [Familiya], [Name], [Otchestvo], [Pol], [Phone], [BirthDate], [Email], [DataRegistracii]) VALUES (12, N'Баранова', N'Эльмира', N'Дмитриевна', N' ж', N'7(9240)643-15-50', CAST(N'1977-01-15' AS Date), N'jgmyers@comcast.net', CAST(N'2016-07-08' AS Date))
INSERT [dbo].[Client] ([ClientId], [Familiya], [Name], [Otchestvo], [Pol], [Phone], [BirthDate], [Email], [DataRegistracii]) VALUES (13, N'Степанова', N'Амелия', N'Робертовна', N' ж', N'7(1217)441-28-42', CAST(N'1970-06-06' AS Date), N'rasca@hotmail.com', CAST(N'2017-09-27' AS Date))
INSERT [dbo].[Client] ([ClientId], [Familiya], [Name], [Otchestvo], [Pol], [Phone], [BirthDate], [Email], [DataRegistracii]) VALUES (14, N'Горбачёв', N'Давид', N'Тимурович', N' м', N'7(53)602-85-41', CAST(N'1983-05-22' AS Date), N'hedwig@att.net', CAST(N'2018-12-17' AS Date))
INSERT [dbo].[Client] ([ClientId], [Familiya], [Name], [Otchestvo], [Pol], [Phone], [BirthDate], [Email], [DataRegistracii]) VALUES (15, N'Волков', N'Людвиг', N'Витальевич', N' м', N'7(8459)592-05-58', CAST(N'1977-12-27' AS Date), N'jrkorson@msn.com', CAST(N'2016-04-27' AS Date))
INSERT [dbo].[Client] ([ClientId], [Familiya], [Name], [Otchestvo], [Pol], [Phone], [BirthDate], [Email], [DataRegistracii]) VALUES (16, N'Комиссарова', N'Амалия', N'Робертовна', N' ж', N'7(22)647-46-32', CAST(N'1971-08-18' AS Date), N'jorgb@msn.com', CAST(N'2017-08-04' AS Date))
INSERT [dbo].[Client] ([ClientId], [Familiya], [Name], [Otchestvo], [Pol], [Phone], [BirthDate], [Email], [DataRegistracii]) VALUES (17, N'Большаков', N'Вадим', N'Данилович', N' м', N'7(386)641-13-37', CAST(N'1970-05-15' AS Date), N'uncle@gmail.com', CAST(N'2018-08-04' AS Date))
INSERT [dbo].[Client] ([ClientId], [Familiya], [Name], [Otchestvo], [Pol], [Phone], [BirthDate], [Email], [DataRegistracii]) VALUES (18, N'Абрамов', N'Станислав', N'Филатович', N' м', N'7(6545)478-87-79', CAST(N'1989-05-18' AS Date), N'solomon@att.net', CAST(N'2016-12-08' AS Date))
INSERT [dbo].[Client] ([ClientId], [Familiya], [Name], [Otchestvo], [Pol], [Phone], [BirthDate], [Email], [DataRegistracii]) VALUES (19, N'Журавлёв', N'Леонтий', N'Яковлевич', N' м', N'7(4403)308-56-96', CAST(N'2000-03-02' AS Date), N'cmdrgravy@me.com', CAST(N'2018-01-15' AS Date))
INSERT [dbo].[Client] ([ClientId], [Familiya], [Name], [Otchestvo], [Pol], [Phone], [BirthDate], [Email], [DataRegistracii]) VALUES (20, N'Селиверстов', N'Глеб', N'Максимович', N' м', N'7(20)554-28-68', CAST(N'1999-06-20' AS Date), N'jigsaw@sbcglobal.net', CAST(N'2016-01-07' AS Date))
INSERT [dbo].[Client] ([ClientId], [Familiya], [Name], [Otchestvo], [Pol], [Phone], [BirthDate], [Email], [DataRegistracii]) VALUES (21, N'Киселёв', N'Устин', N'Яковлевич', N' м', N'7(83)334-52-76', CAST(N'1985-01-08' AS Date), N'dalamb@verizon.net', CAST(N'2018-06-21' AS Date))
INSERT [dbo].[Client] ([ClientId], [Familiya], [Name], [Otchestvo], [Pol], [Phone], [BirthDate], [Email], [DataRegistracii]) VALUES (22, N'Зуев', N'Матвей', N'Иванович', N' м', N'7(5383)893-04-66', CAST(N'1981-03-28' AS Date), N'brickbat@verizon.net', CAST(N'2018-12-18' AS Date))
INSERT [dbo].[Client] ([ClientId], [Familiya], [Name], [Otchestvo], [Pol], [Phone], [BirthDate], [Email], [DataRegistracii]) VALUES (23, N'Ершов', N'Глеб', N'Федорович', N' м', N'7(2608)298-40-82', CAST(N'1970-06-14' AS Date), N'sjava@aol.com', CAST(N'2016-09-14' AS Date))
INSERT [dbo].[Client] ([ClientId], [Familiya], [Name], [Otchestvo], [Pol], [Phone], [BirthDate], [Email], [DataRegistracii]) VALUES (24, N'Бобылёв', N'Георгий', N'Витальевич', N' м', N'7(88)685-13-51', CAST(N'1983-12-19' AS Date), N'csilvers@mac.com', CAST(N'2018-04-06' AS Date))
INSERT [dbo].[Client] ([ClientId], [Familiya], [Name], [Otchestvo], [Pol], [Phone], [BirthDate], [Email], [DataRegistracii]) VALUES (25, N'Ефремов', N'Витольд', N'Авксентьевич', N' м', N'7(93)922-14-03', CAST(N'1975-12-02' AS Date), N'kwilliams@yahoo.ca', CAST(N'2018-04-09' AS Date))
INSERT [dbo].[Client] ([ClientId], [Familiya], [Name], [Otchestvo], [Pol], [Phone], [BirthDate], [Email], [DataRegistracii]) VALUES (26, N'Андреева', N'Патрисия', N'Валерьевна', N' ж', N'7(9648)953-81-26', CAST(N'1993-11-18' AS Date), N'jigsaw@aol.com', CAST(N'2016-07-17' AS Date))
INSERT [dbo].[Client] ([ClientId], [Familiya], [Name], [Otchestvo], [Pol], [Phone], [BirthDate], [Email], [DataRegistracii]) VALUES (27, N'Ефимова', N'Магда', N'Платоновна', N' ж', N'7(9261)386-15-92', CAST(N'1995-08-16' AS Date), N'rbarreira@me.com', CAST(N'2017-08-01' AS Date))
INSERT [dbo].[Client] ([ClientId], [Familiya], [Name], [Otchestvo], [Pol], [Phone], [BirthDate], [Email], [DataRegistracii]) VALUES (28, N'Голубев', N'Иосиф', N'Тимофеевич', N' м', N'7(78)972-73-11', CAST(N'1982-05-06' AS Date), N'smcnabb@att.net', CAST(N'2018-08-18' AS Date))
INSERT [dbo].[Client] ([ClientId], [Familiya], [Name], [Otchestvo], [Pol], [Phone], [BirthDate], [Email], [DataRegistracii]) VALUES (29, N'Евсеев', N'Макар', N'Васильевич', N' м', N'7(2141)077-85-70', CAST(N'1977-09-13' AS Date), N'parsimony@sbcglobal.net', CAST(N'2018-12-05' AS Date))
INSERT [dbo].[Client] ([ClientId], [Familiya], [Name], [Otchestvo], [Pol], [Phone], [BirthDate], [Email], [DataRegistracii]) VALUES (30, N'Бобров', N'Агафон', N'Лаврентьевич', N' м', N'7(2159)507-39-57', CAST(N'1995-07-29' AS Date), N'petersen@comcast.net', CAST(N'2017-05-09' AS Date))
INSERT [dbo].[Client] ([ClientId], [Familiya], [Name], [Otchestvo], [Pol], [Phone], [BirthDate], [Email], [DataRegistracii]) VALUES (31, N'Игнатов', N'Захар', N'Павлович', N' м', N'7(578)574-73-36', CAST(N'1998-10-07' AS Date), N'dieman@icloud.com', CAST(N'2017-11-10' AS Date))
INSERT [dbo].[Client] ([ClientId], [Familiya], [Name], [Otchestvo], [Pol], [Phone], [BirthDate], [Email], [DataRegistracii]) VALUES (32, N'Гущина', N'Янита', N'Федоровна', N' ж', N'7(4544)716-68-96', CAST(N'1999-03-02' AS Date), N'lishoy@att.net', CAST(N'2018-02-01' AS Date))
INSERT [dbo].[Client] ([ClientId], [Familiya], [Name], [Otchestvo], [Pol], [Phone], [BirthDate], [Email], [DataRegistracii]) VALUES (33, N'Калашников', N'Артур', N'Юрьевич', N' м', N'7(147)947-47-21', CAST(N'1972-12-13' AS Date), N'oevans@aol.com', CAST(N'2017-08-20' AS Date))
INSERT [dbo].[Client] ([ClientId], [Familiya], [Name], [Otchestvo], [Pol], [Phone], [BirthDate], [Email], [DataRegistracii]) VALUES (34, N'Дмитриева', N'Элина', N'Даниловна', N' ж', N'7(787)140-48-84', CAST(N'1988-12-10' AS Date), N'vmalik@live.com', CAST(N'2017-02-11' AS Date))
INSERT [dbo].[Client] ([ClientId], [Familiya], [Name], [Otchestvo], [Pol], [Phone], [BirthDate], [Email], [DataRegistracii]) VALUES (35, N'Федотова', N'Сандра', N'Владленовна', N' ж', N'7(126)195-25-86', CAST(N'1985-03-29' AS Date), N'penna@verizon.net', CAST(N'2016-11-08' AS Date))
INSERT [dbo].[Client] ([ClientId], [Familiya], [Name], [Otchestvo], [Pol], [Phone], [BirthDate], [Email], [DataRegistracii]) VALUES (36, N'Кузьмина', N'Дэнна', N'Витальевна', N' ж', N'7(9940)977-45-73', CAST(N'1993-08-24' AS Date), N'nichoj@mac.com', CAST(N'2016-03-27' AS Date))
INSERT [dbo].[Client] ([ClientId], [Familiya], [Name], [Otchestvo], [Pol], [Phone], [BirthDate], [Email], [DataRegistracii]) VALUES (37, N'Колобова', N'Злата', N'Романовна', N' ж', N'7(50)884-07-35', CAST(N'1994-08-25' AS Date), N'sinkou@aol.com', CAST(N'2016-12-03' AS Date))
INSERT [dbo].[Client] ([ClientId], [Familiya], [Name], [Otchestvo], [Pol], [Phone], [BirthDate], [Email], [DataRegistracii]) VALUES (38, N'Некрасов', N'Варлам', N'Михайлович', N' м', N'7(019)258-06-35', CAST(N'2000-11-12' AS Date), N'dogdude@verizon.net', CAST(N'2017-12-03' AS Date))
INSERT [dbo].[Client] ([ClientId], [Familiya], [Name], [Otchestvo], [Pol], [Phone], [BirthDate], [Email], [DataRegistracii]) VALUES (39, N'Колобов', N'Орест', N'Юлианович', N' м', N'7(1680)508-58-26', CAST(N'2001-07-14' AS Date), N'parkes@verizon.net', CAST(N'2017-01-01' AS Date))
INSERT [dbo].[Client] ([ClientId], [Familiya], [Name], [Otchestvo], [Pol], [Phone], [BirthDate], [Email], [DataRegistracii]) VALUES (40, N'Блохин', N'Пантелеймон', N'Феликсович', N' м', N'7(9524)556-48-98', CAST(N'1978-03-06' AS Date), N'balchen@comcast.net', CAST(N'2018-02-14' AS Date))
INSERT [dbo].[Client] ([ClientId], [Familiya], [Name], [Otchestvo], [Pol], [Phone], [BirthDate], [Email], [DataRegistracii]) VALUES (41, N'Калинин', N'Петр', N'Иванович', N' м', N'7(90)316-07-17', CAST(N'1993-09-08' AS Date), N'aschmitz@hotmail.com', CAST(N'2016-05-26' AS Date))
INSERT [dbo].[Client] ([ClientId], [Familiya], [Name], [Otchestvo], [Pol], [Phone], [BirthDate], [Email], [DataRegistracii]) VALUES (42, N'Беляева', N'Сабрина', N'Федосеевна', N' ж', N'7(6580)534-32-58', CAST(N'1972-07-26' AS Date), N'agapow@gmail.com', CAST(N'2017-06-14' AS Date))
INSERT [dbo].[Client] ([ClientId], [Familiya], [Name], [Otchestvo], [Pol], [Phone], [BirthDate], [Email], [DataRegistracii]) VALUES (43, N'Агафонов', N'Юстиниан', N'Олегович', N' м', N'7(303)810-28-78', CAST(N'1997-02-02' AS Date), N'staffelb@sbcglobal.net', CAST(N'2016-06-08' AS Date))
INSERT [dbo].[Client] ([ClientId], [Familiya], [Name], [Otchestvo], [Pol], [Phone], [BirthDate], [Email], [DataRegistracii]) VALUES (44, N'Мамонтова', N'Марфа', N'Мироновна', N' ж', N'7(38)095-64-18', CAST(N'1984-10-19' AS Date), N'rfoley@verizon.net', CAST(N'2018-02-27' AS Date))
INSERT [dbo].[Client] ([ClientId], [Familiya], [Name], [Otchestvo], [Pol], [Phone], [BirthDate], [Email], [DataRegistracii]) VALUES (45, N'Блинов', N'Евгений', N'Мэлсович', N' м', N'7(0852)321-82-64', CAST(N'1994-01-05' AS Date), N'moxfulder@outlook.com', CAST(N'2017-05-07' AS Date))
INSERT [dbo].[Client] ([ClientId], [Familiya], [Name], [Otchestvo], [Pol], [Phone], [BirthDate], [Email], [DataRegistracii]) VALUES (46, N'Воронова', N'Изабелла', N'Вячеславовна', N' ж', N'7(17)433-44-98', CAST(N'1999-09-24' AS Date), N'kildjean@sbcglobal.net', CAST(N'2017-12-21' AS Date))
INSERT [dbo].[Client] ([ClientId], [Familiya], [Name], [Otchestvo], [Pol], [Phone], [BirthDate], [Email], [DataRegistracii]) VALUES (47, N'Медведев', N'Святослав', N'Юлианович', N' м', N'7(3520)435-21-20', CAST(N'1972-10-04' AS Date), N'hllam@comcast.net', CAST(N'2018-10-13' AS Date))
INSERT [dbo].[Client] ([ClientId], [Familiya], [Name], [Otchestvo], [Pol], [Phone], [BirthDate], [Email], [DataRegistracii]) VALUES (48, N'Куликова', N'Эвелина', N'Вячеславовна', N' ж', N'7(0236)682-42-78', CAST(N'1997-11-14' AS Date), N'ilikered@hotmail.com', CAST(N'2018-02-01' AS Date))
INSERT [dbo].[Client] ([ClientId], [Familiya], [Name], [Otchestvo], [Pol], [Phone], [BirthDate], [Email], [DataRegistracii]) VALUES (49, N'Суворова', N'Божена', N'Анатольевна', N' ж', N'7(347)895-86-57', CAST(N'1981-03-09' AS Date), N'attwood@aol.com', CAST(N'2016-01-28' AS Date))
INSERT [dbo].[Client] ([ClientId], [Familiya], [Name], [Otchestvo], [Pol], [Phone], [BirthDate], [Email], [DataRegistracii]) VALUES (50, N'Егорова', N'Амалия', N'Дамировна', N' ж', N'7(7486)408-12-26', CAST(N'1999-09-28' AS Date), N'drezet@yahoo.com', CAST(N'2016-06-30' AS Date))
SET IDENTITY_INSERT [dbo].[Client] OFF
GO
SET IDENTITY_INSERT [dbo].[Uslugi] ON 

INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (1, N'Занятие с репетитором-носителем китайского языка', N'Китайский язык.jpg', N' 120 мин.', 1950.0000, 0)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (2, N'Индивидуальный урок немецкого языка с преподавателем-носителем языка', N'Немецкий язык.png', N' 110 мин.', 1340.0000, 0)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (3, N'Киноклуб китайского языка для студентов', N'киноклуб.jpg', N' 100 мин.', 1990.0000, 0)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (4, N'Индивидуальный онлайн-урок японского языка по Skype', N'online lessons.jpg', N' 4800 сек.', 1000.0000, 0.2)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (5, N'Киноклуб испанского языка для студентов', N'киноклуб.jpg', N' 40 мин.', 1050.0000, 0.1)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (6, N'Занятие с русскоязычным репетитором испанского языка', N'Испанский язык.jpg', N' 50 мин.', 1450.0000, 0.15)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (7, N'Урок в группе итальянского языка для взрослых', N'Итальянский язык.jpg', N' 40 мин.', 1290.0000, 0)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (8, N'Интенсивный онлайн-курс французского языка для компаний по Skype', N'online lessons.jpg', N' 2400 сек.', 1180.0000, 0.1)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (9, N'Индивидуальный урок французского языка с преподавателем-носителем языка', N'Французский язык.jpg', N' 2400 сек.', 1410.0000, 0.2)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (10, N'Урок в группе французского языка для школьников', N'Французский язык.jpg', N' 6000 сек.', 1970.0000, 0)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (11, N'Занятие с репетитором-носителем английского языка', N'Английский язык.jpg', N' 6600 сек.', 910.0000, 0)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (12, N'Киноклуб французского языка для взрослых', N'киноклуб.jpg', N' 5400 сек.', 1770.0000, 0.1)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (13, N'Киноклуб немецкого языка для взрослых', N'киноклуб.jpg', N' 100 мин.', 1560.0000, 0.1)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (14, N'Урок в группе японского языка для школьников', N'Японский язык.jpg', N' 80 мин.', 1300.0000, 0.05)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (15, N'Индивидуальный урок испанского языка с русскоязычным преподавателем', N'Испанский язык.jpg', N' 60 мин.', 1790.0000, 0.15)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (16, N'Интенсивный онлайн-курс итальянского языка для компаний по Skype', N'online lessons.jpg', N' 4200 сек.', 1230.0000, 0.1)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (17, N'Урок в группе японского языка для студентов', N'Японский язык.jpg', N' 3000 сек.', 1860.0000, 0)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (18, N'Интенсивный курс с преподавателем-носителем английского языка для компаний', N'for company.jpg', N' 110 мин.', 1670.0000, 0.1)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (19, N'Киноклуб итальянского языка для студентов', N'киноклуб.jpg', N' 30 мин.', 1760.0000, 0)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (20, N'Урок в группе испанского языка для взрослых', N'Испанский язык.jpg', N' 1800 сек.', 1730.0000, 0.05)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (21, N'Урок в группе испанского языка для студентов', N'Испанский язык.jpg', N' 100 мин.', 1310.0000, 0.2)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (22, N'Интенсивный онлайн-курс испанского языка для компаний по Skype', N'online lessons.jpg', N' 120 мин.', 1510.0000, 0)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (23, N'Урок в группе английского языка для школьников', N'Английский язык.jpg', N' 6600 сек.', 900.0000, 0)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (24, N'Занятие с репетитором-носителем испанского языка', N'Испанский язык.jpg', N' 3000 сек.', 1090.0000, 0.05)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (25, N'Интенсивный курс с преподавателем-носителем итальянского языка для компаний', N'for company.jpg', N' 2400 сек.', 1190.0000, 0.2)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (26, N'Урок в группе китайского языка для студентов', N'Китайский язык.jpg', N' 2400 сек.', 2000.0000, 0.2)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (27, N'Индивидуальный урок испанского языка с преподавателем-носителем языка', N'Испанский язык.jpg', N' 90 мин.', 1200.0000, 0.1)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (28, N'Интенсивный онлайн-курс португальского языка для компаний по Skype', N'online lessons.jpg', N' 70 мин.', 1610.0000, 0.05)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (29, N'Подготовка к экзамену ACT', N'Подготовка к экзамену ACT.png', N' 50 мин.', 1440.0000, 0)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (30, N'Урок в группе китайского языка для взрослых', N'Китайский язык.jpg', N' 4200 сек.', 1730.0000, 0.25)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (31, N'Интенсивный онлайн-курс английского языка для компаний по Skype', N'online lessons.jpg', N' 3000 сек.', 1160.0000, 0)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (32, N'Подготовка к экзамену TOEFL', N'Подготовка к экзамену TOEFL.jpg', N' 6000 сек.', 1070.0000, 0.05)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (33, N'Занятие с репетитором-носителем итальянского языка', N'Итальянский язык.jpg', N' 7200 сек.', 1370.0000, 0.05)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (34, N'Урок в группе английского языка для взрослых', N'Английский язык.jpg', N' 3000 сек.', 1010.0000, 0.25)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (35, N'Киноклуб английского языка для взрослых', N'киноклуб.jpg', N' 70 мин.', 1250.0000, 0.05)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (36, N'Интенсивный курс с преподавателем-носителем французского языка для компаний', N'for company.jpg', N' 70 мин.', 1630.0000, 0.15)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (37, N'Урок в группе испанского языка для школьников', N'Испанский язык.jpg', N' 7200 сек.', 1910.0000, 0)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (38, N'Подготовка к экзамену GRE', N'Подготовка к экзамену GRE.jpeg', N' 80 мин.', 1300.0000, 0.2)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (39, N'Урок в группе английского языка для студентов', N'Английский язык.jpg', N' 4800 сек.', 960.0000, 0.25)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (40, N'Занятие с русскоязычным репетитором японского языка', N'Японский язык.jpg', N' 2400 сек.', 1260.0000, 0.1)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (41, N'Индивидуальный онлайн-урок немецкого языка по Skype', N'online lessons.jpg', N' 90 мин.', 970.0000, 0)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (42, N'Интенсивный курс японского языка с русскоязычным преподавателем для компаний', N'for company.jpg', N' 80 мин.', 1500.0000, 0)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (43, N'Киноклуб китайского языка для взрослых', N'киноклуб.jpg', N' 70 мин.', 1800.0000, 0.25)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (44, N'Индивидуальный урок китайского языка с русскоязычным преподавателем', N'Китайский язык.jpg', N' 120 мин.', 1860.0000, 0.1)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (45, N'Подготовка к экзамену GMAT', N'Подготовка к экзамену GMAT.png', N' 70 мин.', 1150.0000, 0.05)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (46, N'Подготовка к экзамену IELTS', N'Подготовка к экзамену IELTS.jpg', N' 7200 сек.', 1730.0000, 0)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (47, N'Подготовка к экзамену SAT', N'Подготовка к экзамену SAT.png', N' 40 мин.', 1560.0000, 0)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (48, N'Урок в группе китайского языка для школьников', N'Китайский язык.jpg', N' 3000 сек.', 1180.0000, 0.15)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (49, N'Киноклуб английского языка для студентов', N'киноклуб.jpg', N' 4800 сек.', 980.0000, 0)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (50, N'Киноклуб португальского языка для студентов', N'киноклуб.jpg', N' 1800 сек.', 1170.0000, 0.15)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (51, N'Киноклуб китайского языка для детей', N'киноклуб.jpg', N' 100 мин.', 1120.0000, 0.1)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (52, N'Урок в группе немецкого языка для школьников', N'Немецкий язык.png', N' 1800 сек.', 1570.0000, 0.15)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (53, N'Индивидуальный онлайн-урок испанского языка по Skype', N'online lessons.jpg', N' 4200 сек.', 1780.0000, 0.05)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (54, N'Урок в группе немецкого языка для взрослых', N'Немецкий язык.png', N' 60 мин.', 930.0000, 0.05)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (55, N'Индивидуальный урок китайского языка с преподавателем-носителем языка', N'Китайский язык.jpg', N' 90 мин.', 1480.0000, 0.2)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (56, N'Занятие с русскоязычным репетитором португальского языка', N'Португальский язык.jpg', N' 3000 сек.', 1970.0000, 0.1)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (57, N'Интенсивный курс китайского языка с русскоязычным преподавателем для компаний', N'for company.jpg', N' 6600 сек.', 1470.0000, 0)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (58, N'Занятие с русскоязычным репетитором немецкого языка', N'Немецкий язык.png', N' 1800 сек.', 1420.0000, 0)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (59, N'Киноклуб английского языка для детей', N'киноклуб.jpg', N' 2400 сек.', 1280.0000, 0.05)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (60, N'Занятие с репетитором-носителем немецкого языка', N'Немецкий язык.png', N' 7200 сек.', 1120.0000, 0)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (61, N'Индивидуальный онлайн-урок китайского языка по Skype', N'online lessons.jpg', N' 4200 сек.', 1410.0000, 0)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (62, N'Индивидуальный урок английского языка с преподавателем-носителем языка', N'Английский язык.jpg', N' 7200 сек.', 1300.0000, 0)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (63, N'Интенсивный курс с преподавателем-носителем немецкого языка для компаний', N'for company.jpg', N' 120 мин.', 1180.0000, 0.2)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (64, N'Интенсивный онлайн-курс немецкого языка для компаний по Skype', N'online lessons.jpg', N' 4200 сек.', 1840.0000, 0.1)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (65, N'Урок в группе итальянского языка для школьников', N'Итальянский язык.jpg', N' 6000 сек.', 1410.0000, 0.15)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (66, N'Индивидуальный урок итальянского языка с русскоязычным преподавателем', N'Итальянский язык.jpg', N' 30 мин.', 1330.0000, 0.2)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (67, N'Интенсивный онлайн-курс китайского языка для компаний по Skype', N'online lessons.jpg', N' 120 мин.', 1760.0000, 0.15)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (68, N'Занятие с русскоязычным репетитором французского языка', N'Французский язык.jpg', N' 6000 сек.', 1870.0000, 0.2)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (69, N'Индивидуальный урок немецкого языка с русскоязычным преподавателем', N'Немецкий язык.png', N' 1800 сек.', 990.0000, 0.05)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (70, N'Индивидуальный онлайн-урок английского языка по Skype', N'online lessons.jpg', N' 6000 сек.', 1880.0000, 0)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (71, N'Индивидуальный урок французского языка с русскоязычным преподавателем', N'Французский язык.jpg', N' 4200 сек.', 1390.0000, 0)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (72, N'Интенсивный курс португальского языка с русскоязычным преподавателем для компаний', N'for company.jpg', N' 60 мин.', 2010.0000, 0.25)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (73, N'Индивидуальный онлайн-урок французского языка по Skype', N'online lessons.jpg', N' 7200 сек.', 2010.0000, 0)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (74, N'Интенсивный курс английского языка с русскоязычным преподавателем для компаний', N'for company.jpg', N' 4800 сек.', 1210.0000, 0)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (75, N'Урок в группе французского языка для взрослых', N'Французский язык.jpg', N' 120 мин.', 960.0000, 0.15)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (76, N'Подготовка к экзамену IELTS Speaking Club', N'Подготовка к экзамену IELTS.jpg', N' 90 мин.', 1430.0000, 0.2)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (77, N'Киноклуб итальянского языка для детей', N'киноклуб.jpg', N' 70 мин.', 1480.0000, 0)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (78, N'Урок в группе итальянского языка для студентов', N'Итальянский язык.jpg', N' 110 мин.', 1020.0000, 0)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (79, N'Индивидуальный урок итальянского языка с преподавателем-носителем языка', N'Итальянский язык.jpg', N' 80 мин.', 1690.0000, 0)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (80, N'Киноклуб немецкого языка для детей', N'киноклуб.jpg', N' 120 мин.', 1670.0000, 0.05)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (81, N'Киноклуб итальянского языка для взрослых', N'киноклуб.jpg', N' 110 мин.', 1760.0000, 0)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (82, N'Киноклуб португальского языка для взрослых', N'киноклуб.jpg', N' 1800 сек.', 950.0000, 0.05)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (83, N'Киноклуб португальского языка для детей', N'киноклуб.jpg', N' 90 мин.', 1710.0000, 0.15)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (84, N'Киноклуб французского языка для детей', N'киноклуб.jpg', N' 90 мин.', 1600.0000, 0.1)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (85, N'Урок в группе японского языка для взрослых', N'Японский язык.jpg', N' 80 мин.', 1420.0000, 0.05)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (86, N'Интенсивный курс французского языка с русскоязычным преподавателем для компаний', N'for company.jpg', N' 40 мин.', 1940.0000, 0)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (87, N'Занятие с русскоязычным репетитором итальянского языка', N'Итальянский язык.jpg', N' 4200 сек.', 1620.0000, 0.2)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (88, N'Индивидуальный урок английского языка с русскоязычным преподавателем', N'Английский язык.jpg', N' 30 мин.', 1910.0000, 0.1)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (89, N'Интенсивный курс с преподавателем-носителем португальского языка для компаний', N'for company.jpg', N' 30 мин.', 1580.0000, 0)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (90, N'Интенсивный курс испанского языка с русскоязычным преподавателем для компаний', N'for company.jpg', N' 5400 сек.', 1000.0000, 0.25)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (91, N'Киноклуб немецкого языка для студентов', N'киноклуб.jpg', N' 50 мин.', 1140.0000, 0.15)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (92, N'Занятие с репетитором-носителем французского языка', N'Французский язык.jpg', N' 50 мин.', 2040.0000, 0)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (93, N'Урок в группе немецкого языка для студентов', N'Немецкий язык.png', N' 4200 сек.', 1240.0000, 0)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (94, N'Занятие с русскоязычным репетитором китайского языка', N'Китайский язык.jpg', N' 6600 сек.', 940.0000, 0.15)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (95, N'Занятие с репетитором-носителем японского языка', N'Японский язык.jpg', N' 3000 сек.', 1100.0000, 0.25)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (96, N'Урок в группе французского языка для студентов', N'Французский язык.jpg', N' 1800 сек.', 1910.0000, 0)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (97, N'Интенсивный курс итальянского языка с русскоязычным преподавателем для компаний', N'for company.jpg', N' 110 мин.', 900.0000, 0)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (98, N'Занятие с русскоязычным репетитором английского языка', N'Английский язык.jpg', N' 90 мин.', 1950.0000, 0.15)
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (99, N'Интенсивный курс с преподавателем-носителем испанского языка для компаний', N'for company.jpg', N' 90 мин.', 1660.0000, 0)
GO
INSERT [dbo].[Uslugi] ([UslugiId], [Uslugi], [Kartinka], [Dlitelnost], [Cena], [Skidki]) VALUES (100, N'Интенсивный курс с преподавателем-носителем японского языка для компаний', N'for company.jpg', N' 4200 сек.', 1380.0000, 0.2)
SET IDENTITY_INSERT [dbo].[Uslugi] OFF
GO
SET IDENTITY_INSERT [dbo].[UslugiClient] ON 

INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (1, N'Урок в группе французского языка для школьников', 10, CAST(N'2019-11-16T11:20:00.000' AS DateTime), N'Суворова', 49)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (2, N'Индивидуальный онлайн-урок немецкого языка по Skype', 41, CAST(N'2019-01-11T18:10:00.000' AS DateTime), N'Колобова', 37)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (3, N'Киноклуб итальянского языка для студентов', 19, CAST(N'2019-12-01T14:40:00.000' AS DateTime), N'Колобова', 37)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (4, N'Интенсивный онлайн-курс португальского языка для компаний по Skype', 28, CAST(N'2019-02-11T13:30:00.000' AS DateTime), N'Колобова', 37)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (5, N'Урок в группе китайского языка для взрослых', 30, CAST(N'2019-09-10T18:20:00.000' AS DateTime), N'Селиверстов', 20)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (6, N'Урок в группе китайского языка для студентов', 26, CAST(N'2019-02-12T19:40:00.000' AS DateTime), N'Куликова', 48)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (7, N'Занятие с репетитором-носителем французского языка', 92, CAST(N'2019-04-04T09:10:00.000' AS DateTime), N'Бобылёв', 24)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (8, N'Урок в группе испанского языка для взрослых', 20, CAST(N'2019-05-15T09:20:00.000' AS DateTime), N'Киселёв', 21)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (9, N'Урок в группе немецкого языка для школьников', 52, CAST(N'2019-01-16T14:20:00.000' AS DateTime), N'Комиссарова', 16)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (10, N'Урок в группе английского языка для взрослых', 34, CAST(N'2019-01-16T09:00:00.000' AS DateTime), N'Бобров', 30)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (11, N'Урок в группе немецкого языка для школьников', 52, CAST(N'2019-03-15T10:50:00.000' AS DateTime), N'Казаков', 3)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (12, N'Индивидуальный онлайн-урок немецкого языка по Skype', 41, CAST(N'2019-01-31T12:00:00.000' AS DateTime), N'Андреева', 26)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (13, N'Интенсивный онлайн-курс немецкого языка для компаний по Skype', 64, CAST(N'2019-11-19T15:50:00.000' AS DateTime), N'Андреев', 6)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (14, N'Подготовка к экзамену TOEFL', 32, CAST(N'2019-01-10T08:30:00.000' AS DateTime), N'Калашников', 33)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (15, N'Урок в группе немецкого языка для школьников', 52, CAST(N'2019-04-29T15:00:00.000' AS DateTime), N'Федотова', 35)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (16, N'Киноклуб немецкого языка для детей', 80, CAST(N'2019-10-12T08:50:00.000' AS DateTime), N'Агафонов', 43)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (17, N'Урок в группе китайского языка для школьников', 48, CAST(N'2019-02-13T18:00:00.000' AS DateTime), N'Куликова', 48)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (18, N'Интенсивный онлайн-курс немецкого языка для компаний по Skype', 64, CAST(N'2019-02-01T18:00:00.000' AS DateTime), N'Калашников', 33)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (19, N'Интенсивный курс с преподавателем-носителем немецкого языка для компаний', 63, CAST(N'2019-11-12T18:50:00.000' AS DateTime), N'Бобров', 30)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (20, N'Киноклуб португальского языка для детей', 83, CAST(N'2019-01-11T12:50:00.000' AS DateTime), N'Большаков', 17)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (21, N'Киноклуб португальского языка для студентов', 50, CAST(N'2019-03-23T19:50:00.000' AS DateTime), N'Александров', 9)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (22, N'Киноклуб французского языка для взрослых', 12, CAST(N'2019-06-23T08:00:00.000' AS DateTime), N'Агафонов', 43)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (23, N'Интенсивный курс с преподавателем-носителем английского языка для компаний', 18, CAST(N'2019-05-25T17:10:00.000' AS DateTime), N'Некрасов', 38)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (24, N'Интенсивный онлайн-курс китайского языка для компаний по Skype', 67, CAST(N'2019-02-18T18:20:00.000' AS DateTime), N'Большаков', 17)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (25, N'Киноклуб немецкого языка для взрослых', 13, CAST(N'2019-07-17T08:20:00.000' AS DateTime), N'Федотова', 35)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (26, N'Занятие с репетитором-носителем французского языка', 92, CAST(N'2019-08-06T16:50:00.000' AS DateTime), N'Федотова', 35)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (27, N'Киноклуб итальянского языка для детей', 77, CAST(N'2019-12-14T08:40:00.000' AS DateTime), N'Васильев', 1)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (28, N'Подготовка к экзамену IELTS Speaking Club', 76, CAST(N'2019-06-28T14:20:00.000' AS DateTime), N'Зуев', 22)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (29, N'Интенсивный курс итальянского языка с русскоязычным преподавателем для компаний', 97, CAST(N'2019-06-06T19:20:00.000' AS DateTime), N'Куликова', 48)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (30, N'Киноклуб португальского языка для студентов', 50, CAST(N'2019-06-07T17:20:00.000' AS DateTime), N'Бобылёв', 24)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (31, N'Урок в группе английского языка для школьников', 23, CAST(N'2019-04-30T18:10:00.000' AS DateTime), N'Воронова', 46)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (32, N'Киноклуб португальского языка для детей', 83, CAST(N'2019-08-30T11:40:00.000' AS DateTime), N'Андреев', 6)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (33, N'Урок в группе испанского языка для взрослых', 20, CAST(N'2019-05-08T14:10:00.000' AS DateTime), N'Ефремов', 25)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (34, N'Индивидуальный урок итальянского языка с русскоязычным преподавателем', 66, CAST(N'2019-10-27T16:20:00.000' AS DateTime), N'Беляева', 42)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (35, N'Киноклуб немецкого языка для взрослых', 13, CAST(N'2019-01-05T08:40:00.000' AS DateTime), N'Бобров', 30)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (36, N'Индивидуальный урок испанского языка с преподавателем-носителем языка', 27, CAST(N'2019-03-04T17:20:00.000' AS DateTime), N'Зуев', 22)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (37, N'Индивидуальный урок немецкого языка с русскоязычным преподавателем', 69, CAST(N'2019-09-29T13:40:00.000' AS DateTime), N'Егорова', 50)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (38, N'Киноклуб китайского языка для студентов', 3, CAST(N'2019-01-22T10:50:00.000' AS DateTime), N'Ефимова', 27)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (39, N'Интенсивный онлайн-курс немецкого языка для компаний по Skype', 64, CAST(N'2019-12-19T19:30:00.000' AS DateTime), N'Бобров', 30)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (40, N'Подготовка к экзамену ACT', 29, CAST(N'2019-11-15T17:50:00.000' AS DateTime), N'Гущина', 32)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (41, N'Индивидуальный урок французского языка с преподавателем-носителем языка', 9, CAST(N'2019-07-04T17:10:00.000' AS DateTime), N'Баранова', 12)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (42, N'Индивидуальный онлайн-урок немецкого языка по Skype', 41, CAST(N'2019-08-06T11:50:00.000' AS DateTime), N'Киселёв', 21)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (43, N'Киноклуб немецкого языка для детей', 80, CAST(N'2019-11-09T13:00:00.000' AS DateTime), N'Федотова', 35)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (44, N'Индивидуальный урок английского языка с преподавателем-носителем языка', 62, CAST(N'2019-02-16T18:50:00.000' AS DateTime), N'Бобылёв', 24)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (45, N'Индивидуальный урок немецкого языка с русскоязычным преподавателем', 69, CAST(N'2019-03-03T17:20:00.000' AS DateTime), N'Ершов', 23)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (46, N'Урок в группе английского языка для школьников', 23, CAST(N'2019-05-22T16:10:00.000' AS DateTime), N'Степанова', 13)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (47, N'Урок в группе французского языка для школьников', 10, CAST(N'2019-07-31T18:10:00.000' AS DateTime), N'Кузьмина', 36)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (48, N'Индивидуальный урок испанского языка с преподавателем-носителем языка', 27, CAST(N'2019-08-29T19:00:00.000' AS DateTime), N'Комиссарова', 16)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (49, N'Киноклуб немецкого языка для взрослых', 13, CAST(N'2019-10-02T10:10:00.000' AS DateTime), N'Киселёв', 21)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (50, N'Индивидуальный онлайн-урок немецкого языка по Skype', 41, CAST(N'2019-03-16T11:30:00.000' AS DateTime), N'Костина', 8)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (51, N'Подготовка к экзамену ACT', 29, CAST(N'2019-08-27T11:40:00.000' AS DateTime), N'Агафонов', 43)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (52, N'Индивидуальный урок итальянского языка с русскоязычным преподавателем', 66, CAST(N'2019-06-13T11:30:00.000' AS DateTime), N'Абрамов', 18)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (53, N'Киноклуб немецкого языка для детей', 80, CAST(N'2019-08-18T16:00:00.000' AS DateTime), N'Попова', 4)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (54, N'Урок в группе английского языка для взрослых', 34, CAST(N'2019-12-26T16:30:00.000' AS DateTime), N'Горбачёв', 14)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (55, N'Урок в группе итальянского языка для взрослых', 7, CAST(N'2019-11-27T18:50:00.000' AS DateTime), N'Морозов', 11)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (56, N'Киноклуб немецкого языка для взрослых', 13, CAST(N'2019-09-06T19:20:00.000' AS DateTime), N'Медведев', 47)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (57, N'Занятие с русскоязычным репетитором английского языка', 98, CAST(N'2019-09-24T13:40:00.000' AS DateTime), N'Воронова', 46)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (58, N'Интенсивный курс с преподавателем-носителем португальского языка для компаний', 89, CAST(N'2019-03-01T11:50:00.000' AS DateTime), N'Гущина', 32)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (59, N'Урок в группе итальянского языка для взрослых', 7, CAST(N'2019-09-28T10:00:00.000' AS DateTime), N'Турова', 5)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (60, N'Занятие с репетитором-носителем французского языка', 92, CAST(N'2019-03-20T10:40:00.000' AS DateTime), N'Волков', 15)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (61, N'Киноклуб немецкого языка для детей', 80, CAST(N'2019-11-27T11:30:00.000' AS DateTime), N'Корнилова', 10)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (62, N'Занятие с репетитором-носителем немецкого языка', 60, CAST(N'2019-01-23T18:30:00.000' AS DateTime), N'Казаков', 3)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (63, N'Индивидуальный урок испанского языка с преподавателем-носителем языка', 27, CAST(N'2019-10-21T10:20:00.000' AS DateTime), N'Ефимова', 27)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (64, N'Занятие с репетитором-носителем французского языка', 92, CAST(N'2019-08-11T12:50:00.000' AS DateTime), N'Голубев', 28)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (65, N'Киноклуб немецкого языка для взрослых', 13, CAST(N'2019-01-03T14:40:00.000' AS DateTime), N'Орлова', 7)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (66, N'Интенсивный онлайн-курс немецкого языка для компаний по Skype', 64, CAST(N'2019-12-31T08:30:00.000' AS DateTime), N'Калашников', 33)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (67, N'Урок в группе испанского языка для взрослых', 20, CAST(N'2019-08-29T10:10:00.000' AS DateTime), N'Калинин', 41)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (68, N'Киноклуб итальянского языка для студентов', 19, CAST(N'2019-01-03T18:50:00.000' AS DateTime), N'Степанова', 13)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (69, N'Урок в группе китайского языка для взрослых', 30, CAST(N'2019-04-09T11:10:00.000' AS DateTime), N'Горбачёв', 14)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (70, N'Киноклуб французского языка для взрослых', 12, CAST(N'2019-12-31T19:10:00.000' AS DateTime), N'Ефимова', 27)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (71, N'Киноклуб итальянского языка для студентов', 19, CAST(N'2019-10-17T13:30:00.000' AS DateTime), N'Лазарев', 2)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (72, N'Индивидуальный урок немецкого языка с русскоязычным преподавателем', 69, CAST(N'2019-05-17T13:30:00.000' AS DateTime), N'Воронова', 46)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (73, N'Урок в группе японского языка для школьников', 14, CAST(N'2019-11-23T18:40:00.000' AS DateTime), N'Морозов', 11)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (74, N'Киноклуб португальского языка для детей', 83, CAST(N'2019-07-10T15:30:00.000' AS DateTime), N'Корнилова', 10)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (75, N'Занятие с русскоязычным репетитором японского языка', 40, CAST(N'2019-06-09T13:40:00.000' AS DateTime), N'Колобова', 37)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (76, N'Индивидуальный урок немецкого языка с русскоязычным преподавателем', 69, CAST(N'2019-01-09T10:20:00.000' AS DateTime), N'Ершов', 23)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (77, N'Занятие с репетитором-носителем немецкого языка', 60, CAST(N'2019-08-15T18:30:00.000' AS DateTime), N'Лазарев', 2)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (78, N'Киноклуб португальского языка для детей', 83, CAST(N'2019-07-15T14:10:00.000' AS DateTime), N'Евсеев', 29)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (79, N'Урок в группе японского языка для школьников', 14, CAST(N'2019-12-31T18:00:00.000' AS DateTime), N'Киселёв', 21)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (80, N'Урок в группе итальянского языка для взрослых', 7, CAST(N'2019-12-22T09:20:00.000' AS DateTime), N'Гущина', 32)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (81, N'Киноклуб китайского языка для детей', 51, CAST(N'2019-12-28T16:00:00.000' AS DateTime), N'Горбачёв', 14)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (82, N'Индивидуальный урок немецкого языка с русскоязычным преподавателем', 69, CAST(N'2019-06-26T10:10:00.000' AS DateTime), N'Калашников', 33)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (83, N'Урок в группе французского языка для школьников', 10, CAST(N'2019-04-29T12:40:00.000' AS DateTime), N'Корнилова', 10)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (84, N'Урок в группе французского языка для школьников', 10, CAST(N'2019-04-13T09:00:00.000' AS DateTime), N'Куликова', 48)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (85, N'Урок в группе китайского языка для школьников', 48, CAST(N'2019-01-05T16:00:00.000' AS DateTime), N'Ершов', 23)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (86, N'Занятие с русскоязычным репетитором японского языка', 40, CAST(N'2019-03-25T18:20:00.000' AS DateTime), N'Турова', 5)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (87, N'Интенсивный курс с преподавателем-носителем английского языка для компаний', 18, CAST(N'2019-11-09T18:50:00.000' AS DateTime), N'Евсеев', 29)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (88, N'Индивидуальный онлайн-урок немецкого языка по Skype', 41, CAST(N'2019-04-07T10:40:00.000' AS DateTime), N'Игнатов', 31)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (89, N'Интенсивный онлайн-курс китайского языка для компаний по Skype', 67, CAST(N'2019-11-11T18:50:00.000' AS DateTime), N'Суворова', 49)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (90, N'Киноклуб немецкого языка для взрослых', 13, CAST(N'2019-01-06T15:00:00.000' AS DateTime), N'Дмитриева', 34)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (91, N'Урок в группе китайского языка для школьников', 48, CAST(N'2019-08-20T19:10:00.000' AS DateTime), N'Попова', 4)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (92, N'Урок в группе китайского языка для школьников', 48, CAST(N'2019-04-16T13:20:00.000' AS DateTime), N'Блинов', 45)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (93, N'Урок в группе немецкого языка для школьников', 52, CAST(N'2019-12-22T15:10:00.000' AS DateTime), N'Ефимова', 27)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (94, N'Киноклуб португальского языка для детей', 83, CAST(N'2019-01-22T16:50:00.000' AS DateTime), N'Блохин', 40)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (95, N'Интенсивный курс с преподавателем-носителем английского языка для компаний', 18, CAST(N'2019-09-04T08:10:00.000' AS DateTime), N'Костина', 8)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (96, N'Киноклуб итальянского языка для детей', 77, CAST(N'2019-01-01T14:50:00.000' AS DateTime), N'Калинин', 41)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (97, N'Урок в группе японского языка для школьников', 14, CAST(N'2019-01-29T16:30:00.000' AS DateTime), N'Федотова', 35)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (98, N'Киноклуб английского языка для студентов', 49, CAST(N'2019-07-06T11:30:00.000' AS DateTime), N'Блохин', 40)
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (99, N'Занятие с русскоязычным репетитором английского языка', 98, CAST(N'2019-12-05T10:20:00.000' AS DateTime), N'Голубев', 28)
GO
INSERT [dbo].[UslugiClient] ([UslugiClientId], [Uslugi], [UslugiId], [NachaloProvedeniyaUslugi], [Client], [ClientId]) VALUES (100, N'Урок в группе китайского языка для школьников', 48, CAST(N'2019-04-05T13:20:00.000' AS DateTime), N'Селиверстов', 20)
SET IDENTITY_INSERT [dbo].[UslugiClient] OFF
GO
ALTER TABLE [dbo].[UslugiClient]  WITH CHECK ADD FOREIGN KEY([ClientId])
REFERENCES [dbo].[Client] ([ClientId])
GO
ALTER TABLE [dbo].[UslugiClient]  WITH CHECK ADD FOREIGN KEY([UslugiId])
REFERENCES [dbo].[Uslugi] ([UslugiId])
GO
USE [master]
GO
ALTER DATABASE [user49] SET  READ_WRITE 
GO

USE [master]
GO 
if exists (select * from sysdatabases where name='Northwind')
		drop database Northwind
go
CREATE DATABASE [dbFUTASv2]
USE [dbFUTASv2]
GO
/****** Object:  Table [dbo].[tblShift]    Script Date: 02/27/2013 15:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblShift](
	[ShiftID] [int] IDENTITY(1,1) NOT NULL,
	[ShiftName] [nvarchar](255) NOT NULL,
	[StartTime] [time](7) NULL,
	[EndTime] [time](7) NULL,
	[ShiftType] [nvarchar](255) NULL,
	[ShiftDescription] [nvarchar](255) NULL,
	[Rate] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[ShiftID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblShift] DISABLE CHANGE_TRACKING
GO
SET IDENTITY_INSERT [dbo].[tblShift] ON
INSERT [dbo].[tblShift] ([ShiftID], [ShiftName], [StartTime], [EndTime], [ShiftType], [ShiftDescription], [Rate]) VALUES (1, N'Ca chính', CAST(0x070040230E430000 AS Time), CAST(0x0700E80A7E8E0000 AS Time), N'Base', N'Ca làm việc chính', 1)
INSERT [dbo].[tblShift] ([ShiftID], [ShiftName], [StartTime], [EndTime], [ShiftType], [ShiftDescription], [Rate]) VALUES (2, N'Ca sáng', CAST(0x070040230E430000 AS Time), CAST(0x0700E03495640000 AS Time), N'Base', N'Ca sáng', 1)
INSERT [dbo].[tblShift] ([ShiftID], [ShiftName], [StartTime], [EndTime], [ShiftType], [ShiftDescription], [Rate]) VALUES (3, N'Ca chiều', CAST(0x070048F9F66C0000 AS Time), CAST(0x0700E80A7E8E0000 AS Time), N'Base', N'Ca chiều', 1)
INSERT [dbo].[tblShift] ([ShiftID], [ShiftName], [StartTime], [EndTime], [ShiftType], [ShiftDescription], [Rate]) VALUES (4, N'Ca tối', CAST(0x070050CFDF960000 AS Time), CAST(0x0700F0E066B80000 AS Time), N'OT1', N'Ca tối ', 1.5)
SET IDENTITY_INSERT [dbo].[tblShift] OFF
/****** Object:  Table [dbo].[tblReader]    Script Date: 02/27/2013 15:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblReader](
	[ReaderID] [int] IDENTITY(1,1) NOT NULL,
	[ReaderIP] [nvarchar](255) NOT NULL,
	[ReaderUser] [nvarchar](255) NULL,
	[ReaderPass] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ReaderID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[ReaderIP] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblReader] DISABLE CHANGE_TRACKING
GO
SET IDENTITY_INSERT [dbo].[tblReader] ON
INSERT [dbo].[tblReader] ([ReaderID], [ReaderIP], [ReaderUser], [ReaderPass]) VALUES (1, N'192.168.1', N'reader01', N'n123456789')
INSERT [dbo].[tblReader] ([ReaderID], [ReaderIP], [ReaderUser], [ReaderPass]) VALUES (2, N'192.168.2', N'reader02', N'n123456789')
INSERT [dbo].[tblReader] ([ReaderID], [ReaderIP], [ReaderUser], [ReaderPass]) VALUES (3, N'192.168.3', N'reader03', N'n123456789')
INSERT [dbo].[tblReader] ([ReaderID], [ReaderIP], [ReaderUser], [ReaderPass]) VALUES (4, N'192.168.4', N'reader04', N'n123456789')
INSERT [dbo].[tblReader] ([ReaderID], [ReaderIP], [ReaderUser], [ReaderPass]) VALUES (5, N'192.168.5', N'reader05', N'n123456789')
INSERT [dbo].[tblReader] ([ReaderID], [ReaderIP], [ReaderUser], [ReaderPass]) VALUES (6, N'192.168.6', N'reader06', N'n123456789')
INSERT [dbo].[tblReader] ([ReaderID], [ReaderIP], [ReaderUser], [ReaderPass]) VALUES (7, N'192.168.7', N'reader07', N'n123456789')
INSERT [dbo].[tblReader] ([ReaderID], [ReaderIP], [ReaderUser], [ReaderPass]) VALUES (8, N'192.168.8', N'reader08', N'n123456789')
INSERT [dbo].[tblReader] ([ReaderID], [ReaderIP], [ReaderUser], [ReaderPass]) VALUES (9, N'192.168.9', N'reader09', N'n123456789')
SET IDENTITY_INSERT [dbo].[tblReader] OFF
/****** Object:  Table [dbo].[tblGroup]    Script Date: 02/27/2013 15:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblGroup](
	[GroupID] [int] IDENTITY(1,1) NOT NULL,
	[GroupName] [nvarchar](255) NOT NULL,
	[Department] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[GroupID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblGroup] DISABLE CHANGE_TRACKING
GO
SET IDENTITY_INSERT [dbo].[tblGroup] ON
INSERT [dbo].[tblGroup] ([GroupID], [GroupName], [Department]) VALUES (1, N'Bảo vệ 1', N'Bảo Vệ')
INSERT [dbo].[tblGroup] ([GroupID], [GroupName], [Department]) VALUES (2, N'Bảo vệ 2', N'Bảo Vệ')
INSERT [dbo].[tblGroup] ([GroupID], [GroupName], [Department]) VALUES (3, N'Hành chính 1', N'Hành Chính')
INSERT [dbo].[tblGroup] ([GroupID], [GroupName], [Department]) VALUES (4, N'Hành chính 2', N'Hành Chính')
INSERT [dbo].[tblGroup] ([GroupID], [GroupName], [Department]) VALUES (5, N'Lễ tân 1', N'Lễ Tân')
INSERT [dbo].[tblGroup] ([GroupID], [GroupName], [Department]) VALUES (6, N'Lễ tân 2', N'Lễ Tân')
INSERT [dbo].[tblGroup] ([GroupID], [GroupName], [Department]) VALUES (7, N'Lễ tân 3', N'Lễ Tân')
SET IDENTITY_INSERT [dbo].[tblGroup] OFF
/****** Object:  Table [dbo].[tblEmployee]    Script Date: 02/27/2013 15:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEmployee](
	[EmpID] [int] IDENTITY(1,1) NOT NULL,
	[EmpName] [nvarchar](255) NOT NULL,
	[DOB] [date] NULL,
	[Gender] [bit] NULL,
	[CardID] [nvarchar](255) NULL,
	[GroupID] [int] NULL,
	[JoinDate] [date] NULL,
	[BaseSalary] [float] NULL,
	[DayOnLeave] [int] NULL,
	[TotalDayOnLeave] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[EmpID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[CardID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblEmployee] DISABLE CHANGE_TRACKING
GO
SET IDENTITY_INSERT [dbo].[tblEmployee] ON
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (1, N'Nguyễn Văn A', CAST(0xE7150B00 AS Date), 0, N'TAS0001', 1, CAST(0x8A320B00 AS Date), 370000, 6, 12)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (2, N'Nguyễn Văn B', CAST(0xE9150B00 AS Date), 1, N'TAS0002', 2, CAST(0x8B320B00 AS Date), 245000, 7, 13)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (3, N'Nguyễn Văn C', CAST(0xEB150B00 AS Date), 0, N'TAS0003', 3, CAST(0x8C320B00 AS Date), 800000, 10, 14)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (4, N'Nguyễn Văn D', CAST(0xED150B00 AS Date), 1, N'TAS0004', 4, CAST(0x8D320B00 AS Date), 1000000, 11, 10)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (5, N'Nguyễn Văn E', CAST(0x87070B00 AS Date), 0, N'TAS0005', 5, CAST(0x8E320B00 AS Date), 600000, 6, 12)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (6, N'Nguyễn Văn F', CAST(0xA6070B00 AS Date), 1, N'TAS0006', 6, CAST(0x8F320B00 AS Date), 245000, 3, 13)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (7, N'Nguyễn Văn G', CAST(0xC3070B00 AS Date), 0, N'TAS0007', 7, CAST(0x90320B00 AS Date), 290000, 5, 14)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (8, N'Nguyễn Văn H', CAST(0xE2070B00 AS Date), 1, N'TAS0008', 1, CAST(0x91320B00 AS Date), 370000, 7, 10)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (9, N'Nguyễn Văn I', CAST(0x00080B00 AS Date), 0, N'TAS0009', 2, CAST(0x92320B00 AS Date), 245000, 8, 12)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (10, N'Nguyễn Văn K', CAST(0x1F080B00 AS Date), 1, N'TAS0010', 3, NULL, 800000, 3, 13)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (11, N'Nguyễn Văn L', CAST(0x3D080B00 AS Date), 0, N'TAS0011', 4, NULL, 1000000, 2, 14)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (12, N'Nguyễn Văn M', CAST(0x5C080B00 AS Date), 1, N'TAS0012', 5, NULL, 600000, 3, 10)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (13, N'Nguyễn Văn N', CAST(0x7B080B00 AS Date), 0, N'TAS0013', 6, NULL, 245000, 5, 12)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (14, N'Nguyễn Văn O', CAST(0x99080B00 AS Date), 1, N'TAS0014', 7, CAST(0x3A2A0B00 AS Date), 290000, 11, 13)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (15, N'Nguyễn Văn P', CAST(0xB8080B00 AS Date), 0, N'TAS0015', 1, CAST(0x7A2C0B00 AS Date), 370000, 2, 14)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (16, N'Nguyễn Văn Q', CAST(0xD6080B00 AS Date), 1, N'TAS0016', 2, CAST(0xDF300B00 AS Date), 245000, 0, 10)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (17, N'Nguyễn Văn W', CAST(0xF5080B00 AS Date), 0, N'TAS0017', 3, CAST(0x2E300B00 AS Date), 800000, 3, 12)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (18, N'Nguyễn Văn Y', CAST(0x14090B00 AS Date), 1, N'TAS0018', 4, CAST(0x8A320B00 AS Date), 1000000, 10, 13)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (19, N'Nguyễn Văn U', CAST(0x30090B00 AS Date), 0, N'TAS0019', 5, CAST(0x8B320B00 AS Date), 600000, 6, 14)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (20, N'Nguyễn Văn V', CAST(0x4F090B00 AS Date), 1, N'TAS0020', 6, CAST(0x8C320B00 AS Date), 245000, 7, 10)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (21, N'Nguyễn Văn S', CAST(0x6D090B00 AS Date), 0, N'TAS0021', 7, CAST(0x8D320B00 AS Date), 290000, 10, 12)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (22, N'Nguyễn Văn X', CAST(0x8C090B00 AS Date), 1, N'TAS0022', 1, CAST(0x8E320B00 AS Date), 370000, 11, 13)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (23, N'Trần Văn A', CAST(0xAA090B00 AS Date), 0, N'TAS0023', 2, CAST(0x8F320B00 AS Date), 245000, 6, 14)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (24, N'Trần Văn B', CAST(0xC9090B00 AS Date), 1, N'TAS0024', 3, CAST(0x90320B00 AS Date), 800000, 3, 10)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (25, N'Trần Văn C', CAST(0xE8090B00 AS Date), 0, N'TAS0025', 4, CAST(0x91320B00 AS Date), 1000000, 5, 12)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (26, N'Trần Văn D', CAST(0x060A0B00 AS Date), 1, N'TAS0026', 5, CAST(0x92320B00 AS Date), 600000, 7, 13)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (27, N'Trần Văn E', CAST(0x250A0B00 AS Date), 0, N'TAS0027', 6, NULL, 245000, 8, 14)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (28, N'Trần Văn F', CAST(0x430A0B00 AS Date), 1, N'TAS0028', 7, NULL, 290000, 3, 10)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (29, N'Trần Văn G', CAST(0x620A0B00 AS Date), 0, N'TAS0029', 1, NULL, 370000, 2, 12)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (30, N'Trần Văn H', CAST(0x810A0B00 AS Date), 1, N'TAS0030', 2, NULL, 245000, 3, 13)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (31, N'Trần Văn I', CAST(0x9D0A0B00 AS Date), 0, N'TAS0031', 3, CAST(0x3A2A0B00 AS Date), 800000, 5, 14)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (32, N'Trần Văn K', CAST(0xBC0A0B00 AS Date), 1, N'TAS0032', 4, CAST(0x7A2C0B00 AS Date), 1000000, 11, 10)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (33, N'Trần Văn L', CAST(0xDA0A0B00 AS Date), 0, N'TAS0033', 5, CAST(0xDF300B00 AS Date), 600000, 2, 12)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (34, N'Trần Văn M', CAST(0xF90A0B00 AS Date), 1, N'TAS0034', 6, CAST(0x2E300B00 AS Date), 245000, 0, 13)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (35, N'Trần Văn N', CAST(0x170B0B00 AS Date), 0, N'TAS0035', 7, CAST(0x8A320B00 AS Date), 290000, 3, 14)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (36, N'Trần Văn O', CAST(0x360B0B00 AS Date), 1, N'TAS0036', 1, CAST(0x8B320B00 AS Date), 370000, 10, 10)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (37, N'Trần Văn P', CAST(0x550B0B00 AS Date), 0, N'TAS0037', 2, CAST(0x8C320B00 AS Date), 245000, 6, 12)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (38, N'Trần Văn Q', CAST(0x730B0B00 AS Date), 1, N'TAS0038', 3, CAST(0x8D320B00 AS Date), 800000, 7, 13)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (39, N'Trần Văn W', CAST(0x920B0B00 AS Date), 0, N'TAS0039', 4, CAST(0x8E320B00 AS Date), 1000000, 10, 14)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (40, N'Trần Văn Y', CAST(0xB00B0B00 AS Date), 1, N'TAS0040', 5, CAST(0x8F320B00 AS Date), 600000, 11, 10)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (41, N'Trần Văn U', CAST(0xCF0B0B00 AS Date), 0, N'TAS0041', 6, CAST(0x90320B00 AS Date), 245000, 6, 12)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (42, N'Trần Văn V', CAST(0xEE0B0B00 AS Date), 1, N'TAS0042', 7, CAST(0x91320B00 AS Date), 290000, 3, 13)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (43, N'Trần Văn S', CAST(0x0A0C0B00 AS Date), 0, N'TAS0043', 1, CAST(0x92320B00 AS Date), 370000, 5, 14)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (44, N'Trần Văn X', CAST(0x290C0B00 AS Date), 1, N'TAS0044', 2, NULL, 245000, 7, 10)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (45, N'Nguyễn Quang A', CAST(0x470C0B00 AS Date), 0, N'TAS0045', 3, NULL, 800000, 8, 12)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (46, N'Nguyễn Quang B', CAST(0x660C0B00 AS Date), 1, N'TAS0046', 4, NULL, 1000000, 3, 13)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (47, N'Nguyễn Quang C', CAST(0x840C0B00 AS Date), 0, N'TAS0047', 5, NULL, 600000, 2, 14)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (48, N'Nguyễn Quang D', CAST(0xA30C0B00 AS Date), 1, N'TAS0048', 6, CAST(0x3A2A0B00 AS Date), 245000, 3, 10)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (49, N'Nguyễn Quang E', CAST(0xC20C0B00 AS Date), 0, N'TAS0049', 7, CAST(0x7A2C0B00 AS Date), 290000, 5, 12)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (50, N'Nguyễn Quang F', CAST(0xE00C0B00 AS Date), 1, N'TAS0050', 1, CAST(0xDF300B00 AS Date), 370000, 11, 13)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (51, N'Nguyễn Quang G', CAST(0xFF0C0B00 AS Date), 0, N'TAS0051', 2, CAST(0x2E300B00 AS Date), 245000, 2, 14)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (52, N'Nguyễn Quang H', CAST(0x1D0D0B00 AS Date), 1, N'TAS0052', 3, CAST(0x8A320B00 AS Date), 800000, 0, 10)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (53, N'Nguyễn Quang I', CAST(0x3C0D0B00 AS Date), 0, N'TAS0053', 4, CAST(0x8B320B00 AS Date), 1000000, 3, 12)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (54, N'Nguyễn Quang K', CAST(0x5B0D0B00 AS Date), 1, N'TAS0054', 5, CAST(0x8C320B00 AS Date), 600000, 10, 13)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (55, N'Nguyễn Quang L', CAST(0x780D0B00 AS Date), 0, N'TAS0055', 6, CAST(0x8D320B00 AS Date), 245000, 6, 14)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (56, N'Nguyễn Quang M', CAST(0x970D0B00 AS Date), 1, N'TAS0056', 7, CAST(0x8E320B00 AS Date), 290000, 7, 10)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (57, N'Nguyễn Quang N', CAST(0xB50D0B00 AS Date), 0, N'TAS0057', 1, CAST(0x8F320B00 AS Date), 370000, 10, 12)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (58, N'Nguyễn Quang O', CAST(0xD40D0B00 AS Date), 1, N'TAS0058', 2, CAST(0x90320B00 AS Date), 245000, 11, 13)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (59, N'Nguyễn Quang P', CAST(0xF20D0B00 AS Date), 0, N'TAS0059', 3, CAST(0x91320B00 AS Date), 800000, 6, 14)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (60, N'Nguyễn Quang Q', CAST(0x110E0B00 AS Date), 1, N'TAS0060', 4, CAST(0x92320B00 AS Date), 1000000, 3, 10)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (61, N'Nguyễn Quang W', CAST(0x300E0B00 AS Date), 0, N'TAS0061', 5, NULL, 600000, 5, 12)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (62, N'Nguyễn Quang Y', CAST(0x4E0E0B00 AS Date), 1, N'TAS0062', 6, NULL, 245000, 7, 13)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (63, N'Nguyễn Quang U', CAST(0x6D0E0B00 AS Date), 0, N'TAS0063', 7, NULL, 290000, 8, 14)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (64, N'Nguyễn Quang V', CAST(0x8B0E0B00 AS Date), 1, N'TAS0064', 1, NULL, 370000, 3, 10)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (65, N'Nguyễn Quang S', CAST(0xAA0E0B00 AS Date), 0, N'TAS0065', 2, CAST(0x3A2A0B00 AS Date), 245000, 2, 12)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (66, N'Nguyễn Quang X', CAST(0xC90E0B00 AS Date), 1, N'TAS0066', 3, CAST(0x7A2C0B00 AS Date), 800000, 3, 13)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (67, N'Nguyễn Thị A', CAST(0xE50E0B00 AS Date), 0, N'TAS0067', 4, CAST(0xDF300B00 AS Date), 1000000, 5, 14)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (68, N'Nguyễn Thị B', CAST(0x040F0B00 AS Date), 1, N'TAS0068', 5, CAST(0x2E300B00 AS Date), 600000, 11, 10)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (69, N'Nguyễn Thị C', CAST(0x220F0B00 AS Date), 0, N'TAS0069', 6, CAST(0x8A320B00 AS Date), 245000, 2, 12)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (70, N'Nguyễn Thị D', CAST(0x410F0B00 AS Date), 1, N'TAS0070', 7, CAST(0x8B320B00 AS Date), 290000, 0, 13)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (71, N'Nguyễn Thị E', CAST(0x5F0F0B00 AS Date), 0, N'TAS0071', 1, CAST(0x8C320B00 AS Date), 420000, 3, 14)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (72, N'Nguyễn Thị F', CAST(0x7E0F0B00 AS Date), 1, N'TAS0072', 2, CAST(0x8D320B00 AS Date), 370000, 10, 10)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (73, N'Nguyễn Thị G', CAST(0x9D0F0B00 AS Date), 0, N'TAS0073', 3, CAST(0x8E320B00 AS Date), 245000, 6, 12)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (74, N'Nguyễn Thị H', CAST(0xBB0F0B00 AS Date), 1, N'TAS0074', 4, CAST(0x8F320B00 AS Date), 800000, 7, 13)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (75, N'Nguyễn Thị I', CAST(0xDA0F0B00 AS Date), 0, N'TAS0075', 5, CAST(0x90320B00 AS Date), 1000000, 10, 14)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (76, N'Nguyễn Thị K', CAST(0xF80F0B00 AS Date), 1, N'TAS0076', 6, CAST(0x91320B00 AS Date), 600000, 11, 10)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (77, N'Nguyễn Thị L', CAST(0x17100B00 AS Date), 0, N'TAS0077', 7, CAST(0x92320B00 AS Date), 245000, 6, 12)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (78, N'Nguyễn Thị M', CAST(0x36100B00 AS Date), 1, N'TAS0078', 1, NULL, 290000, 3, 13)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (79, N'Nguyễn Thị N', CAST(0x52100B00 AS Date), 0, N'TAS0079', 2, NULL, 420000, 5, 14)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (80, N'Nguyễn Thị O', CAST(0x71100B00 AS Date), 1, N'TAS0080', 3, NULL, 370000, 7, 10)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (81, N'Nguyễn Thị P', CAST(0x8F100B00 AS Date), 0, N'TAS0081', 4, NULL, 245000, 8, 12)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (82, N'Nguyễn Thị Q', CAST(0xAE100B00 AS Date), 1, N'TAS0082', 5, CAST(0x3A2A0B00 AS Date), 800000, 3, 13)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (83, N'Nguyễn Thị W', CAST(0xCC100B00 AS Date), 0, N'TAS0083', 6, CAST(0x7A2C0B00 AS Date), 1000000, 2, 14)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (84, N'Nguyễn Thị Y', CAST(0xEB100B00 AS Date), 1, N'TAS0084', 7, CAST(0xDF300B00 AS Date), 600000, 3, 10)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (85, N'Nguyễn Thị U', CAST(0x0A110B00 AS Date), 0, N'TAS0085', 1, CAST(0x2E300B00 AS Date), 245000, 5, 12)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (86, N'Nguyễn Thị V', CAST(0x28110B00 AS Date), 1, N'TAS0086', 2, CAST(0x8A320B00 AS Date), 290000, 11, 13)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (87, N'Nguyễn Thị S', CAST(0x47110B00 AS Date), 0, N'TAS0087', 3, CAST(0x8B320B00 AS Date), 420000, 2, 14)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (88, N'Nguyễn Thị X', CAST(0x65110B00 AS Date), 1, N'TAS0088', 4, CAST(0x8C320B00 AS Date), 370000, 0, 10)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (89, N'Nguyễn Xuân A', CAST(0x84110B00 AS Date), 0, N'TAS0089', 5, CAST(0x8D320B00 AS Date), 245000, 3, 12)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (90, N'Nguyễn Xuân B', CAST(0xA3110B00 AS Date), 1, N'TAS0090', 6, CAST(0x8E320B00 AS Date), 800000, 10, 13)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (91, N'Nguyễn Xuân C', CAST(0xBF110B00 AS Date), 0, N'TAS0091', 7, CAST(0x8F320B00 AS Date), 1000000, 6, 14)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (92, N'Nguyễn Xuân D', CAST(0xDE110B00 AS Date), 1, N'TAS0092', 1, CAST(0x90320B00 AS Date), 600000, 7, 10)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (93, N'Nguyễn Xuân E', CAST(0xFC110B00 AS Date), 0, N'TAS0093', 2, CAST(0x91320B00 AS Date), 245000, 10, 12)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (94, N'Nguyễn Xuân F', CAST(0x1B120B00 AS Date), 1, N'TAS0094', 3, CAST(0x92320B00 AS Date), 290000, 11, 13)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (95, N'Nguyễn Xuânị G', CAST(0x39120B00 AS Date), 0, N'TAS0095', 4, NULL, 420000, 6, 14)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (96, N'Nguyễn Xuân H', CAST(0x58120B00 AS Date), 1, N'TAS0096', 5, NULL, 370000, 3, 10)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (97, N'Nguyễn Xuân I', CAST(0x77120B00 AS Date), 0, N'TAS0097', 6, NULL, 245000, 5, 12)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (98, N'Nguyễn Xuânị K', CAST(0x95120B00 AS Date), 1, N'TAS0098', 7, NULL, 800000, 7, 13)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (99, N'Nguyễn Xuân L', CAST(0xB4120B00 AS Date), 0, N'TAS0099', 1, CAST(0x3A2A0B00 AS Date), 1000000, 8, 14)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (100, N'Nguyễn XuânM', CAST(0xD2120B00 AS Date), 1, N'TAS0100', 2, CAST(0x7A2C0B00 AS Date), 600000, 3, 10)
GO
print 'Processed 100 total records'
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (101, N'Nguyễn Xuân N', CAST(0xF1120B00 AS Date), 0, N'TAS0101', 3, CAST(0xDF300B00 AS Date), 245000, 2, 12)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (102, N'Nguyễn XuânO', CAST(0x10130B00 AS Date), 1, N'TAS0102', 4, CAST(0x2E300B00 AS Date), 290000, 3, 13)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (103, N'Nguyễn Xuânị P', CAST(0x2D130B00 AS Date), 1, N'TAS0103', 5, CAST(0x0A350B00 AS Date), 420000, 5, 14)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (104, N'Nguyễn Xuân Q', CAST(0x4C130B00 AS Date), 0, N'TAS0104', 6, CAST(0x3A2A0B00 AS Date), 370000, 11, 10)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (105, N'Nguyễn Xuân W', CAST(0x6A130B00 AS Date), 1, N'TAS0105', 7, CAST(0x7A2C0B00 AS Date), 245000, 2, 12)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (106, N'Nguyễn Xuân Y', CAST(0x89130B00 AS Date), 0, N'TAS0106', 1, CAST(0xDF300B00 AS Date), 800000, 0, 13)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (107, N'Nguyễn Xuân U', CAST(0xA7130B00 AS Date), 1, N'TAS0107', 2, CAST(0x2E300B00 AS Date), 1000000, 3, 14)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (108, N'Nguyễn Xuânị V', CAST(0xC6130B00 AS Date), 0, N'TAS0108', 3, CAST(0x3A2A0B00 AS Date), 600000, 10, 10)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (109, N'Nguyễn Xuân S', CAST(0xE5130B00 AS Date), 1, N'TAS0109', 4, CAST(0x7A2C0B00 AS Date), 245000, 4, 12)
INSERT [dbo].[tblEmployee] ([EmpID], [EmpName], [DOB], [Gender], [CardID], [GroupID], [JoinDate], [BaseSalary], [DayOnLeave], [TotalDayOnLeave]) VALUES (110, N'Nguyễn Xuân X', CAST(0x03140B00 AS Date), 1, N'TAS0110', 5, CAST(0xDF300B00 AS Date), 290000, 5, 13)
SET IDENTITY_INSERT [dbo].[tblEmployee] OFF
/****** Object:  Table [dbo].[tblGroupRecord]    Script Date: 02/27/2013 15:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblGroupRecord](
	[GRID] [int] IDENTITY(1,1) NOT NULL,
	[GroupID] [int] NULL,
	[ShiftID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[GRID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblGroupRecord] DISABLE CHANGE_TRACKING
GO
/****** Object:  Table [dbo].[tblRecord]    Script Date: 02/27/2013 15:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRecord](
	[RecordID] [int] IDENTITY(1,1) NOT NULL,
	[EmpID] [int] NULL,
	[CardID] [nvarchar](255) NULL,
	[ReaderID] [int] NULL,
	[RecordTime] [datetime] NULL,
	[RecordStatus] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[RecordID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[CardID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblRecord] DISABLE CHANGE_TRACKING
GO
/****** Object:  ForeignKey [FK_Group]    Script Date: 02/27/2013 15:36:31 ******/
ALTER TABLE [dbo].[tblEmployee]  WITH CHECK ADD  CONSTRAINT [FK_Group] FOREIGN KEY([GroupID])
REFERENCES [dbo].[tblGroup] ([GroupID])
GO
ALTER TABLE [dbo].[tblEmployee] CHECK CONSTRAINT [FK_Group]
GO
/****** Object:  ForeignKey [FK_Group2]    Script Date: 02/27/2013 15:36:31 ******/
ALTER TABLE [dbo].[tblGroupRecord]  WITH CHECK ADD  CONSTRAINT [FK_Group2] FOREIGN KEY([GroupID])
REFERENCES [dbo].[tblGroup] ([GroupID])
GO
ALTER TABLE [dbo].[tblGroupRecord] CHECK CONSTRAINT [FK_Group2]
GO
/****** Object:  ForeignKey [FK_Shift]    Script Date: 02/27/2013 15:36:31 ******/
ALTER TABLE [dbo].[tblGroupRecord]  WITH CHECK ADD  CONSTRAINT [FK_Shift] FOREIGN KEY([ShiftID])
REFERENCES [dbo].[tblShift] ([ShiftID])
GO
ALTER TABLE [dbo].[tblGroupRecord] CHECK CONSTRAINT [FK_Shift]
GO
/****** Object:  ForeignKey [FK_Employee]    Script Date: 02/27/2013 15:36:31 ******/
ALTER TABLE [dbo].[tblRecord]  WITH CHECK ADD  CONSTRAINT [FK_Employee] FOREIGN KEY([EmpID])
REFERENCES [dbo].[tblEmployee] ([EmpID])
GO
ALTER TABLE [dbo].[tblRecord] CHECK CONSTRAINT [FK_Employee]
GO
/****** Object:  ForeignKey [FK_Reader]    Script Date: 02/27/2013 15:36:31 ******/
ALTER TABLE [dbo].[tblRecord]  WITH CHECK ADD  CONSTRAINT [FK_Reader] FOREIGN KEY([ReaderID])
REFERENCES [dbo].[tblReader] ([ReaderID])
GO
ALTER TABLE [dbo].[tblRecord] CHECK CONSTRAINT [FK_Reader]
GO

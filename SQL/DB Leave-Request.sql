USE [master]
GO
/****** Object:  Database [DB_LeaveRequest5]    Script Date: 25/10/2021 10.38.44 ******/
CREATE DATABASE [DB_LeaveRequest5]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DB_LeaveRequest5', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER01\MSSQL\DATA\DB_LeaveRequest5.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DB_LeaveRequest5_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER01\MSSQL\DATA\DB_LeaveRequest5_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DB_LeaveRequest5] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DB_LeaveRequest5].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DB_LeaveRequest5] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DB_LeaveRequest5] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DB_LeaveRequest5] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DB_LeaveRequest5] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DB_LeaveRequest5] SET ARITHABORT OFF 
GO
ALTER DATABASE [DB_LeaveRequest5] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DB_LeaveRequest5] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DB_LeaveRequest5] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DB_LeaveRequest5] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DB_LeaveRequest5] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DB_LeaveRequest5] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DB_LeaveRequest5] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DB_LeaveRequest5] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DB_LeaveRequest5] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DB_LeaveRequest5] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DB_LeaveRequest5] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DB_LeaveRequest5] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DB_LeaveRequest5] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DB_LeaveRequest5] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DB_LeaveRequest5] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DB_LeaveRequest5] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [DB_LeaveRequest5] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DB_LeaveRequest5] SET RECOVERY FULL 
GO
ALTER DATABASE [DB_LeaveRequest5] SET  MULTI_USER 
GO
ALTER DATABASE [DB_LeaveRequest5] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DB_LeaveRequest5] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DB_LeaveRequest5] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DB_LeaveRequest5] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DB_LeaveRequest5] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DB_LeaveRequest5] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'DB_LeaveRequest5', N'ON'
GO
ALTER DATABASE [DB_LeaveRequest5] SET QUERY_STORE = OFF
GO
USE [DB_LeaveRequest5]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 25/10/2021 10.38.45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_m_accounts]    Script Date: 25/10/2021 10.38.45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_m_accounts](
	[Id] [int] NOT NULL,
	[Email] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[Token] [nvarchar](max) NULL,
 CONSTRAINT [PK_tb_m_accounts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_m_employees]    Script Date: 25/10/2021 10.38.45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_m_employees](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[gender] [int] NOT NULL,
	[Phone] [nvarchar](max) NULL,
	[BirthDate] [datetime2](7) NOT NULL,
	[Salary] [int] NOT NULL,
	[JoinDate] [datetime2](7) NOT NULL,
	[TotalLeave] [int] NOT NULL,
	[StatusEmplo] [nvarchar](max) NULL,
	[ReligionId] [int] NOT NULL,
	[JobId] [int] NOT NULL,
 CONSTRAINT [PK_tb_m_employees] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_m_jobs]    Script Date: 25/10/2021 10.38.45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_m_jobs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
 CONSTRAINT [PK_tb_m_jobs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_m_leave_requests]    Script Date: 25/10/2021 10.38.45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_m_leave_requests](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RequestDate] [datetime2](7) NOT NULL,
	[StartDate] [datetime2](7) NOT NULL,
	[EndDate] [datetime2](7) NOT NULL,
	[LeaveDuration] [int] NOT NULL,
	[EmployeeId] [int] NOT NULL,
	[LeaveTypeId] [int] NOT NULL,
	[ApproverId] [int] NOT NULL,
 CONSTRAINT [PK_tb_m_leave_requests] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_m_leave_types]    Script Date: 25/10/2021 10.38.45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_m_leave_types](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Duration] [int] NOT NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_tb_m_leave_types] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_m_manager_fills]    Script Date: 25/10/2021 10.38.45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_m_manager_fills](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Note] [nvarchar](max) NULL,
	[DateApproved] [datetime2](7) NOT NULL,
	[LeaveRequestId] [int] NOT NULL,
	[StatusId] [int] NOT NULL,
 CONSTRAINT [PK_tb_m_manager_fills] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_m_religions]    Script Date: 25/10/2021 10.38.45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_m_religions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_tb_m_religions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_m_roles]    Script Date: 25/10/2021 10.38.45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_m_roles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_tb_m_roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_m_statuses]    Script Date: 25/10/2021 10.38.45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_m_statuses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_tb_m_statuses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_tr_accounts_roles]    Script Date: 25/10/2021 10.38.45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_tr_accounts_roles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AccountId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PK_tb_tr_accounts_roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211018035443_adding-db', N'5.0.10')
GO
INSERT [dbo].[tb_m_accounts] ([Id], [Email], [Password], [Token]) VALUES (1, N'deni.test@gmail.com', N'$2a$12$X6Ph76j41kg55dodgwNFF.MrBhaOJgmOrmIQjQgPqNKDSBML7D4Ym', NULL)
INSERT [dbo].[tb_m_accounts] ([Id], [Email], [Password], [Token]) VALUES (2, N'wawan.test@gmail.com', N'$2a$12$dUn60I46xp2/3XPrUoc4dO0zMBf.VZ3KmJoAVQ9OzeMdYW.wd/THy', NULL)
INSERT [dbo].[tb_m_accounts] ([Id], [Email], [Password], [Token]) VALUES (3, N'febyaniwaranti@gmail.com', N'$2a$12$W09lSLZqaPOC.Co28caYte2iROK.OgLFnBXZemstId5iDdsYUD5XC', NULL)
INSERT [dbo].[tb_m_accounts] ([Id], [Email], [Password], [Token]) VALUES (4, N'wiwi.test@gmail.com', N'$2a$12$TPV4wQeZ8crMy0yikJrWneC3ImhvFBa7Ue0XibmAH.B4eftmF0tvi', NULL)
INSERT [dbo].[tb_m_accounts] ([Id], [Email], [Password], [Token]) VALUES (5, N'dede.test@gmail.com', N'$2a$12$YWnoplMzd.dU6rWm.zFFB.R2AI7jnxAdw2BT6cg8O3/TFvhpD2VTK', NULL)
INSERT [dbo].[tb_m_accounts] ([Id], [Email], [Password], [Token]) VALUES (6, N'vivi.test@gmail.com', N'$2a$12$Fb.eKsqwa5KPOwBBoM7oHerSWZMj5qTzTfNbtUMAuEtXROKIFPcZi', NULL)
INSERT [dbo].[tb_m_accounts] ([Id], [Email], [Password], [Token]) VALUES (7, N'wian.test@gmail.com', N'$2a$12$jiRRRBJIecn1AZAz.cw1ZunbHJpRxU3lAmp0kePvwvQjDNSdlXsyS', NULL)
INSERT [dbo].[tb_m_accounts] ([Id], [Email], [Password], [Token]) VALUES (8, N'siti.test@gmail.com', N'$2a$12$OaQE4LSpiJbiPazZ3Zn9B.9pnEnruPEQcVHDeno6Y6Los5yi1IPtW', NULL)
INSERT [dbo].[tb_m_accounts] ([Id], [Email], [Password], [Token]) VALUES (9, N'asep.test@gmail.com', N'$2a$12$0h4rIpm5Kx.R6w24u7hSxOwoYLfprefBzQ3q9g7SSB5a3zXx4BXq.', NULL)
INSERT [dbo].[tb_m_accounts] ([Id], [Email], [Password], [Token]) VALUES (10, N'laila.test@gmail.com', N'$2a$12$acMNaxrTtszRZRzhgPlIgO3gdhSeueW8nXVO2IHzMtSZGUXQ5VkUS', NULL)
INSERT [dbo].[tb_m_accounts] ([Id], [Email], [Password], [Token]) VALUES (11, N'titi.test@gmail.com', N'$2a$12$gB1fknDfOKnCkMENqRuVeekWVbaT2EXolIoRKa9wg4npXYD3F.nRu', NULL)
INSERT [dbo].[tb_m_accounts] ([Id], [Email], [Password], [Token]) VALUES (12, N'egi.test@gmail.com', N'$2a$12$Le3gF4l5dWqvR38HTjL5TOI64XOxgIISUgTvm3seXK8u.dDJ1tiZW', NULL)
GO
INSERT [dbo].[tb_m_employees] ([Id], [Name], [Address], [gender], [Phone], [BirthDate], [Salary], [JoinDate], [TotalLeave], [StatusEmplo], [ReligionId], [JobId]) VALUES (1, N'Deni', N'Bekasi, Indonesia', 0, N'82113675501', CAST(N'1994-09-12T00:00:00.0000000' AS DateTime2), 2000000, CAST(N'2017-11-02T00:00:00.0000000' AS DateTime2), 8, N'Leave', 2, 2)
INSERT [dbo].[tb_m_employees] ([Id], [Name], [Address], [gender], [Phone], [BirthDate], [Salary], [JoinDate], [TotalLeave], [StatusEmplo], [ReligionId], [JobId]) VALUES (2, N'Wawan', N'Lampung, Indonesia', 0, N'82113675502', CAST(N'1994-09-12T00:00:00.0000000' AS DateTime2), 2000000, CAST(N'2019-12-02T00:00:00.0000000' AS DateTime2), 12, N'Active', 2, 3)
INSERT [dbo].[tb_m_employees] ([Id], [Name], [Address], [gender], [Phone], [BirthDate], [Salary], [JoinDate], [TotalLeave], [StatusEmplo], [ReligionId], [JobId]) VALUES (3, N'Febryani', N'Bandung, Indonesia', 1, N'82113675503', CAST(N'1996-02-22T00:00:00.0000000' AS DateTime2), 2000000, CAST(N'2018-11-02T00:00:00.0000000' AS DateTime2), 12, N'Active', 1, 6)
INSERT [dbo].[tb_m_employees] ([Id], [Name], [Address], [gender], [Phone], [BirthDate], [Salary], [JoinDate], [TotalLeave], [StatusEmplo], [ReligionId], [JobId]) VALUES (4, N'Wiwi', N'Jakarta, Indonesia', 1, N'82113675504', CAST(N'1994-09-01T00:00:00.0000000' AS DateTime2), 2000000, CAST(N'2020-10-02T00:00:00.0000000' AS DateTime2), 12, N'Active', 2, 1)
INSERT [dbo].[tb_m_employees] ([Id], [Name], [Address], [gender], [Phone], [BirthDate], [Salary], [JoinDate], [TotalLeave], [StatusEmplo], [ReligionId], [JobId]) VALUES (5, N'Dede', N'Jakarta, Indonesia', 0, N'82113675505', CAST(N'1993-09-01T00:00:00.0000000' AS DateTime2), 2000000, CAST(N'2017-10-02T00:00:00.0000000' AS DateTime2), 12, N'Active', 1, 7)
INSERT [dbo].[tb_m_employees] ([Id], [Name], [Address], [gender], [Phone], [BirthDate], [Salary], [JoinDate], [TotalLeave], [StatusEmplo], [ReligionId], [JobId]) VALUES (6, N'Vivi', N'Riau, Indonesia', 1, N'82113675506', CAST(N'1995-09-01T00:00:00.0000000' AS DateTime2), 2000000, CAST(N'2021-10-02T00:00:00.0000000' AS DateTime2), 0, N'Active', 1, 3)
INSERT [dbo].[tb_m_employees] ([Id], [Name], [Address], [gender], [Phone], [BirthDate], [Salary], [JoinDate], [TotalLeave], [StatusEmplo], [ReligionId], [JobId]) VALUES (7, N'Wian', N'Lampung, Indonesia', 0, N'82113675507', CAST(N'1995-11-11T00:00:00.0000000' AS DateTime2), 2000000, CAST(N'2020-01-02T00:00:00.0000000' AS DateTime2), 12, N'Active', 1, 1)
INSERT [dbo].[tb_m_employees] ([Id], [Name], [Address], [gender], [Phone], [BirthDate], [Salary], [JoinDate], [TotalLeave], [StatusEmplo], [ReligionId], [JobId]) VALUES (8, N'Siti', N'Cianjur, Indonesia', 1, N'82113675508', CAST(N'1996-12-01T00:00:00.0000000' AS DateTime2), 2000000, CAST(N'2019-01-02T00:00:00.0000000' AS DateTime2), 12, N'Active', 1, 5)
INSERT [dbo].[tb_m_employees] ([Id], [Name], [Address], [gender], [Phone], [BirthDate], [Salary], [JoinDate], [TotalLeave], [StatusEmplo], [ReligionId], [JobId]) VALUES (9, N'Asep', N'Garut, Indonesia', 0, N'82113675509', CAST(N'1997-11-01T00:00:00.0000000' AS DateTime2), 2000000, CAST(N'2020-01-02T00:00:00.0000000' AS DateTime2), 12, N'Active', 1, 5)
INSERT [dbo].[tb_m_employees] ([Id], [Name], [Address], [gender], [Phone], [BirthDate], [Salary], [JoinDate], [TotalLeave], [StatusEmplo], [ReligionId], [JobId]) VALUES (10, N'Laila', N'Bali, Indonesia', 1, N'82113675510', CAST(N'1994-11-01T00:00:00.0000000' AS DateTime2), 2000000, CAST(N'2020-01-02T00:00:00.0000000' AS DateTime2), 12, N'Active', 1, 4)
INSERT [dbo].[tb_m_employees] ([Id], [Name], [Address], [gender], [Phone], [BirthDate], [Salary], [JoinDate], [TotalLeave], [StatusEmplo], [ReligionId], [JobId]) VALUES (11, N'Titi', N'Sukabumi, Indonesia', 1, N'82113675511', CAST(N'1995-10-20T00:00:00.0000000' AS DateTime2), 1600000, CAST(N'2021-01-18T00:00:00.0000000' AS DateTime2), 0, N'Active', 1, 1)
INSERT [dbo].[tb_m_employees] ([Id], [Name], [Address], [gender], [Phone], [BirthDate], [Salary], [JoinDate], [TotalLeave], [StatusEmplo], [ReligionId], [JobId]) VALUES (12, N'Egi', N'Tangerang, Indonesia', 0, N'82113675512', CAST(N'1994-01-21T00:00:00.0000000' AS DateTime2), 1800000, CAST(N'2019-12-12T00:00:00.0000000' AS DateTime2), 12, N'Active', 1, 4)
GO
SET IDENTITY_INSERT [dbo].[tb_m_jobs] ON 

INSERT [dbo].[tb_m_jobs] ([Id], [Title]) VALUES (1, N'Accounting Staf')
INSERT [dbo].[tb_m_jobs] ([Id], [Title]) VALUES (2, N'Administration Staf')
INSERT [dbo].[tb_m_jobs] ([Id], [Title]) VALUES (3, N'Logistic Staf')
INSERT [dbo].[tb_m_jobs] ([Id], [Title]) VALUES (4, N'IT Staf')
INSERT [dbo].[tb_m_jobs] ([Id], [Title]) VALUES (5, N'Human Resource')
INSERT [dbo].[tb_m_jobs] ([Id], [Title]) VALUES (6, N'Project Manager')
INSERT [dbo].[tb_m_jobs] ([Id], [Title]) VALUES (7, N'Functional Manager')
SET IDENTITY_INSERT [dbo].[tb_m_jobs] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_m_leave_requests] ON 

INSERT [dbo].[tb_m_leave_requests] ([Id], [RequestDate], [StartDate], [EndDate], [LeaveDuration], [EmployeeId], [LeaveTypeId], [ApproverId]) VALUES (1, CAST(N'2021-10-18T12:55:00.0000000' AS DateTime2), CAST(N'2021-10-18T00:00:00.0000000' AS DateTime2), CAST(N'2021-10-22T00:00:00.0000000' AS DateTime2), 4, 1, 1, 5)
INSERT [dbo].[tb_m_leave_requests] ([Id], [RequestDate], [StartDate], [EndDate], [LeaveDuration], [EmployeeId], [LeaveTypeId], [ApproverId]) VALUES (2, CAST(N'2021-10-19T09:49:00.0000000' AS DateTime2), CAST(N'2021-10-25T00:00:00.0000000' AS DateTime2), CAST(N'2021-12-03T00:00:00.0000000' AS DateTime2), 30, 1, 3, 5)
INSERT [dbo].[tb_m_leave_requests] ([Id], [RequestDate], [StartDate], [EndDate], [LeaveDuration], [EmployeeId], [LeaveTypeId], [ApproverId]) VALUES (3, CAST(N'2021-10-19T09:53:00.0000000' AS DateTime2), CAST(N'2021-10-29T00:00:00.0000000' AS DateTime2), CAST(N'2021-10-30T00:00:00.0000000' AS DateTime2), 1, 1, 5, 5)
INSERT [dbo].[tb_m_leave_requests] ([Id], [RequestDate], [StartDate], [EndDate], [LeaveDuration], [EmployeeId], [LeaveTypeId], [ApproverId]) VALUES (4, CAST(N'2021-10-19T09:53:00.0000000' AS DateTime2), CAST(N'2021-10-25T00:00:00.0000000' AS DateTime2), CAST(N'2021-11-24T00:00:00.0000000' AS DateTime2), 0, 1, 1, 5)
INSERT [dbo].[tb_m_leave_requests] ([Id], [RequestDate], [StartDate], [EndDate], [LeaveDuration], [EmployeeId], [LeaveTypeId], [ApproverId]) VALUES (5, CAST(N'2021-10-19T09:59:00.0000000' AS DateTime2), CAST(N'2021-10-25T00:00:00.0000000' AS DateTime2), CAST(N'2021-10-29T00:00:00.0000000' AS DateTime2), 0, 1, 1, 5)
INSERT [dbo].[tb_m_leave_requests] ([Id], [RequestDate], [StartDate], [EndDate], [LeaveDuration], [EmployeeId], [LeaveTypeId], [ApproverId]) VALUES (6, CAST(N'2021-10-19T10:01:00.0000000' AS DateTime2), CAST(N'2021-10-19T00:00:00.0000000' AS DateTime2), CAST(N'2021-10-18T00:00:00.0000000' AS DateTime2), 0, 1, 4, 5)
SET IDENTITY_INSERT [dbo].[tb_m_leave_requests] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_m_leave_types] ON 

INSERT [dbo].[tb_m_leave_types] ([Id], [Name], [Duration], [Description]) VALUES (1, N'Annual Leave', 0, N'12 days/year')
INSERT [dbo].[tb_m_leave_types] ([Id], [Name], [Duration], [Description]) VALUES (2, N'Marriage Leave', 3, N'3 days')
INSERT [dbo].[tb_m_leave_types] ([Id], [Name], [Duration], [Description]) VALUES (3, N'Maternity Leave', 40, N'40 days')
INSERT [dbo].[tb_m_leave_types] ([Id], [Name], [Duration], [Description]) VALUES (4, N'Medical Leave', 0, NULL)
INSERT [dbo].[tb_m_leave_types] ([Id], [Name], [Duration], [Description]) VALUES (5, N'Sudden-Death Leave', 1, N'1 days')
SET IDENTITY_INSERT [dbo].[tb_m_leave_types] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_m_manager_fills] ON 

INSERT [dbo].[tb_m_manager_fills] ([Id], [Note], [DateApproved], [LeaveRequestId], [StatusId]) VALUES (1, N'Enjoy your leave!', CAST(N'2021-10-18T12:56:32.2433333' AS DateTime2), 1, 2)
INSERT [dbo].[tb_m_manager_fills] ([Id], [Note], [DateApproved], [LeaveRequestId], [StatusId]) VALUES (2, N'Women only', CAST(N'2021-10-19T09:49:47.2700000' AS DateTime2), 2, 3)
INSERT [dbo].[tb_m_manager_fills] ([Id], [Note], [DateApproved], [LeaveRequestId], [StatusId]) VALUES (3, N'Enjoy your leave!', CAST(N'2021-10-19T10:18:29.2633333' AS DateTime2), 3, 2)
INSERT [dbo].[tb_m_manager_fills] ([Id], [Note], [DateApproved], [LeaveRequestId], [StatusId]) VALUES (4, N'Sorry for rejecting', CAST(N'2021-10-19T10:17:30.9000000' AS DateTime2), 4, 3)
INSERT [dbo].[tb_m_manager_fills] ([Id], [Note], [DateApproved], [LeaveRequestId], [StatusId]) VALUES (5, N'Sorry for rejecting', CAST(N'2021-10-19T10:18:34.3466667' AS DateTime2), 5, 3)
INSERT [dbo].[tb_m_manager_fills] ([Id], [Note], [DateApproved], [LeaveRequestId], [StatusId]) VALUES (6, N'Enjoy your leave!', CAST(N'2021-10-19T10:18:40.8200000' AS DateTime2), 6, 2)
SET IDENTITY_INSERT [dbo].[tb_m_manager_fills] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_m_religions] ON 

INSERT [dbo].[tb_m_religions] ([Id], [Name]) VALUES (1, N'Islam')
INSERT [dbo].[tb_m_religions] ([Id], [Name]) VALUES (2, N'Catholic')
INSERT [dbo].[tb_m_religions] ([Id], [Name]) VALUES (3, N'Protestant')
INSERT [dbo].[tb_m_religions] ([Id], [Name]) VALUES (4, N'Hindu')
INSERT [dbo].[tb_m_religions] ([Id], [Name]) VALUES (5, N'Budha')
INSERT [dbo].[tb_m_religions] ([Id], [Name]) VALUES (6, N'Confucianism')
SET IDENTITY_INSERT [dbo].[tb_m_religions] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_m_roles] ON 

INSERT [dbo].[tb_m_roles] ([Id], [Name]) VALUES (1, N'Requester')
INSERT [dbo].[tb_m_roles] ([Id], [Name]) VALUES (2, N'Approver')
INSERT [dbo].[tb_m_roles] ([Id], [Name]) VALUES (3, N'Administrator')
SET IDENTITY_INSERT [dbo].[tb_m_roles] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_m_statuses] ON 

INSERT [dbo].[tb_m_statuses] ([Id], [Name]) VALUES (1, N'Pending')
INSERT [dbo].[tb_m_statuses] ([Id], [Name]) VALUES (2, N'Accepted')
INSERT [dbo].[tb_m_statuses] ([Id], [Name]) VALUES (3, N'Rejected')
SET IDENTITY_INSERT [dbo].[tb_m_statuses] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_tr_accounts_roles] ON 

INSERT [dbo].[tb_tr_accounts_roles] ([Id], [AccountId], [RoleId]) VALUES (1, 3, 1)
INSERT [dbo].[tb_tr_accounts_roles] ([Id], [AccountId], [RoleId]) VALUES (2, 3, 2)
INSERT [dbo].[tb_tr_accounts_roles] ([Id], [AccountId], [RoleId]) VALUES (3, 1, 1)
INSERT [dbo].[tb_tr_accounts_roles] ([Id], [AccountId], [RoleId]) VALUES (4, 1, 3)
INSERT [dbo].[tb_tr_accounts_roles] ([Id], [AccountId], [RoleId]) VALUES (5, 2, 1)
INSERT [dbo].[tb_tr_accounts_roles] ([Id], [AccountId], [RoleId]) VALUES (6, 4, 1)
INSERT [dbo].[tb_tr_accounts_roles] ([Id], [AccountId], [RoleId]) VALUES (7, 5, 1)
INSERT [dbo].[tb_tr_accounts_roles] ([Id], [AccountId], [RoleId]) VALUES (8, 5, 2)
INSERT [dbo].[tb_tr_accounts_roles] ([Id], [AccountId], [RoleId]) VALUES (9, 6, 1)
INSERT [dbo].[tb_tr_accounts_roles] ([Id], [AccountId], [RoleId]) VALUES (10, 7, 1)
INSERT [dbo].[tb_tr_accounts_roles] ([Id], [AccountId], [RoleId]) VALUES (11, 8, 1)
INSERT [dbo].[tb_tr_accounts_roles] ([Id], [AccountId], [RoleId]) VALUES (12, 8, 3)
INSERT [dbo].[tb_tr_accounts_roles] ([Id], [AccountId], [RoleId]) VALUES (13, 9, 1)
INSERT [dbo].[tb_tr_accounts_roles] ([Id], [AccountId], [RoleId]) VALUES (14, 9, 3)
INSERT [dbo].[tb_tr_accounts_roles] ([Id], [AccountId], [RoleId]) VALUES (15, 10, 1)
INSERT [dbo].[tb_tr_accounts_roles] ([Id], [AccountId], [RoleId]) VALUES (16, 11, 1)
INSERT [dbo].[tb_tr_accounts_roles] ([Id], [AccountId], [RoleId]) VALUES (17, 12, 1)
SET IDENTITY_INSERT [dbo].[tb_tr_accounts_roles] OFF
GO
/****** Object:  Index [IX_tb_m_employees_JobId]    Script Date: 25/10/2021 10.38.45 ******/
CREATE NONCLUSTERED INDEX [IX_tb_m_employees_JobId] ON [dbo].[tb_m_employees]
(
	[JobId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_tb_m_employees_ReligionId]    Script Date: 25/10/2021 10.38.45 ******/
CREATE NONCLUSTERED INDEX [IX_tb_m_employees_ReligionId] ON [dbo].[tb_m_employees]
(
	[ReligionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_tb_m_leave_requests_EmployeeId]    Script Date: 25/10/2021 10.38.45 ******/
CREATE NONCLUSTERED INDEX [IX_tb_m_leave_requests_EmployeeId] ON [dbo].[tb_m_leave_requests]
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_tb_m_leave_requests_LeaveTypeId]    Script Date: 25/10/2021 10.38.45 ******/
CREATE NONCLUSTERED INDEX [IX_tb_m_leave_requests_LeaveTypeId] ON [dbo].[tb_m_leave_requests]
(
	[LeaveTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_tb_m_manager_fills_LeaveRequestId]    Script Date: 25/10/2021 10.38.45 ******/
CREATE NONCLUSTERED INDEX [IX_tb_m_manager_fills_LeaveRequestId] ON [dbo].[tb_m_manager_fills]
(
	[LeaveRequestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_tb_m_manager_fills_StatusId]    Script Date: 25/10/2021 10.38.45 ******/
CREATE NONCLUSTERED INDEX [IX_tb_m_manager_fills_StatusId] ON [dbo].[tb_m_manager_fills]
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_tb_tr_accounts_roles_AccountId]    Script Date: 25/10/2021 10.38.45 ******/
CREATE NONCLUSTERED INDEX [IX_tb_tr_accounts_roles_AccountId] ON [dbo].[tb_tr_accounts_roles]
(
	[AccountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_tb_tr_accounts_roles_RoleId]    Script Date: 25/10/2021 10.38.45 ******/
CREATE NONCLUSTERED INDEX [IX_tb_tr_accounts_roles_RoleId] ON [dbo].[tb_tr_accounts_roles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tb_m_accounts]  WITH CHECK ADD  CONSTRAINT [FK_tb_m_accounts_tb_m_employees_Id] FOREIGN KEY([Id])
REFERENCES [dbo].[tb_m_employees] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_m_accounts] CHECK CONSTRAINT [FK_tb_m_accounts_tb_m_employees_Id]
GO
ALTER TABLE [dbo].[tb_m_employees]  WITH CHECK ADD  CONSTRAINT [FK_tb_m_employees_tb_m_jobs_JobId] FOREIGN KEY([JobId])
REFERENCES [dbo].[tb_m_jobs] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_m_employees] CHECK CONSTRAINT [FK_tb_m_employees_tb_m_jobs_JobId]
GO
ALTER TABLE [dbo].[tb_m_employees]  WITH CHECK ADD  CONSTRAINT [FK_tb_m_employees_tb_m_religions_ReligionId] FOREIGN KEY([ReligionId])
REFERENCES [dbo].[tb_m_religions] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_m_employees] CHECK CONSTRAINT [FK_tb_m_employees_tb_m_religions_ReligionId]
GO
ALTER TABLE [dbo].[tb_m_leave_requests]  WITH CHECK ADD  CONSTRAINT [FK_tb_m_leave_requests_tb_m_employees_EmployeeId] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[tb_m_employees] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_m_leave_requests] CHECK CONSTRAINT [FK_tb_m_leave_requests_tb_m_employees_EmployeeId]
GO
ALTER TABLE [dbo].[tb_m_leave_requests]  WITH CHECK ADD  CONSTRAINT [FK_tb_m_leave_requests_tb_m_leave_types_LeaveTypeId] FOREIGN KEY([LeaveTypeId])
REFERENCES [dbo].[tb_m_leave_types] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_m_leave_requests] CHECK CONSTRAINT [FK_tb_m_leave_requests_tb_m_leave_types_LeaveTypeId]
GO
ALTER TABLE [dbo].[tb_m_manager_fills]  WITH CHECK ADD  CONSTRAINT [FK_tb_m_manager_fills_tb_m_leave_requests_LeaveRequestId] FOREIGN KEY([LeaveRequestId])
REFERENCES [dbo].[tb_m_leave_requests] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_m_manager_fills] CHECK CONSTRAINT [FK_tb_m_manager_fills_tb_m_leave_requests_LeaveRequestId]
GO
ALTER TABLE [dbo].[tb_m_manager_fills]  WITH CHECK ADD  CONSTRAINT [FK_tb_m_manager_fills_tb_m_statuses_StatusId] FOREIGN KEY([StatusId])
REFERENCES [dbo].[tb_m_statuses] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_m_manager_fills] CHECK CONSTRAINT [FK_tb_m_manager_fills_tb_m_statuses_StatusId]
GO
ALTER TABLE [dbo].[tb_tr_accounts_roles]  WITH CHECK ADD  CONSTRAINT [FK_tb_tr_accounts_roles_tb_m_accounts_AccountId] FOREIGN KEY([AccountId])
REFERENCES [dbo].[tb_m_accounts] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_tr_accounts_roles] CHECK CONSTRAINT [FK_tb_tr_accounts_roles_tb_m_accounts_AccountId]
GO
ALTER TABLE [dbo].[tb_tr_accounts_roles]  WITH CHECK ADD  CONSTRAINT [FK_tb_tr_accounts_roles_tb_m_roles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[tb_m_roles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_tr_accounts_roles] CHECK CONSTRAINT [FK_tb_tr_accounts_roles_tb_m_roles_RoleId]
GO
/****** Object:  Trigger [dbo].[tg_insert_man_fills]    Script Date: 25/10/2021 10.38.45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tg_insert_man_fills]
ON [dbo].[tb_m_leave_requests]
AFTER INSERT
AS
BEGIN
    DECLARE @leave_req_id int;
    DECLARE @leave_duration int;
    DECLARE @employee_id int;
    DECLARE @old_total_leave int;
    DECLARE @new_total_leave int;
    DECLARE @leave_type int;
    DECLARE @gender int;


    SELECT 
        @leave_req_id = Id,
        @employee_id = EmployeeId,
        @leave_duration = LeaveDuration,
        @leave_type = LeaveTypeId
    FROM inserted;

	IF(@leave_type = 2 or @leave_type = 4 or @leave_type = 5)
	BEGIN
		INSERT INTO tb_m_manager_fills (LeaveRequestId, StatusId, Note, DateApproved)
		VALUES (@leave_req_id, 1, 'On process', GETDATE());
	END

	IF(@leave_type = 1)
	BEGIN
		SET @old_total_leave = (SELECT TotalLeave FROM tb_m_employees where Id = @employee_id);
		IF(@old_total_leave < @leave_duration)
		BEGIN
			INSERT INTO tb_m_manager_fills (LeaveRequestId, StatusId, Note, DateApproved)
			VALUES (@leave_req_id, 3, 'The rest of the leave is not enough', GETDATE());
		END
		ELSE
		BEGIN
			SET @new_total_leave = @old_total_leave - @leave_duration;
			INSERT INTO tb_m_manager_fills (LeaveRequestId, StatusId, Note, DateApproved)
			VALUES (@leave_req_id, 1, 'On process', GETDATE());
			UPDATE tb_m_employees
			SET TotalLeave = @new_total_leave
			WHERE Id = @employee_id;
		END
	END

	IF(@leave_type = 3)
	BEGIN
		SET @gender = (SELECT gender FROM tb_m_employees where Id = @employee_id);
		IF(@gender = 0)
		BEGIN
			INSERT INTO tb_m_manager_fills (LeaveRequestId, StatusId, Note, DateApproved)
			VALUES (@leave_req_id, 3, 'Women only', GETDATE());
		END
		IF (@gender = 1)
		BEGIN
			INSERT INTO tb_m_manager_fills (LeaveRequestId, StatusId, Note, DateApproved)
			VALUES (@leave_req_id, 1, 'On process', GETDATE());
		END
	END
END
GO
ALTER TABLE [dbo].[tb_m_leave_requests] ENABLE TRIGGER [tg_insert_man_fills]
GO
/****** Object:  Trigger [dbo].[tg_update_man_fills]    Script Date: 25/10/2021 10.38.45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[tg_update_man_fills]
ON [dbo].[tb_m_manager_fills]
AFTER UPDATE
AS
BEGIN
    DECLARE @leave_req_id int;
	DECLARE @old_leave_req_id int;
    DECLARE @leave_duration int;
    DECLARE @employee_id int;
    DECLARE @old_total_leave int;
    DECLARE @new_total_leave int;
    DECLARE @leave_type int;
	DECLARE @man_fills_status int;
	DECLARE @old_man_fills_status int;


    SELECT 
        @leave_req_id = LeaveRequestId,
		@man_fills_status = StatusId
    FROM inserted;

	SELECT
		@leave_duration = LeaveDuration,
		@leave_type = LeaveTypeId,
		@employee_id = EmployeeId
	FROM tb_m_leave_requests
	WHERE Id = @leave_req_id

	IF (@leave_type = 1)
	BEGIN
		IF(@man_fills_status = 2)
		BEGIN
			UPDATE tb_m_manager_fills
			SET DateApproved = GETDATE(),Note = 'Enjoy your leave!'
			WHERE LeaveRequestId = @leave_req_id
		END
		IF(@man_fills_status = 3)
		BEGIN
			UPDATE tb_m_manager_fills
			SET DateApproved = GETDATE(),Note = 'Sorry for rejecting'
			WHERE LeaveRequestId = @leave_req_id;
			SET @old_total_leave = (SELECT TotalLeave FROM tb_m_employees where Id = @employee_id);
			SET @new_total_leave = @old_total_leave + @leave_duration;
			UPDATE tb_m_employees
			SET TotalLeave = @new_total_leave
			WHERE Id = @employee_id;
		END
	END

	IF (@leave_type <> 1)
	BEGIN
		IF(@man_fills_status = 2)
		BEGIN
			UPDATE tb_m_manager_fills
			SET DateApproved = GETDATE(),Note = 'Enjoy your leave!'
			WHERE LeaveRequestId = @leave_req_id
		END
		IF(@man_fills_status = 3)
		BEGIN
			UPDATE tb_m_manager_fills
			SET DateApproved = GETDATE(),Note = 'Sorry for rejecting'
			WHERE LeaveRequestId = @leave_req_id;
		END
	END
END
GO
ALTER TABLE [dbo].[tb_m_manager_fills] ENABLE TRIGGER [tg_update_man_fills]
GO
USE [master]
GO
ALTER DATABASE [DB_LeaveRequest5] SET  READ_WRITE 
GO

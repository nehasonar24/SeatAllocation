USE [SeatAppDB]
GO
/****** Object:  Table [dbo].[TBl_Booking]    Script Date: 18-01-2022 18:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBl_Booking](
	[SeatID] [numeric](18, 0) NULL,
	[EmpID] [numeric](18, 0) NULL,
	[WeekNo] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Employee]    Script Date: 18-01-2022 18:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Employee](
	[EmpID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[UserName] [varchar](10) NULL,
	[TeamID] [numeric](2, 0) NULL,
	[ManagerID] [numeric](2, 0) NULL,
	[IsManager] [bit] NULL,
	[Password] [nvarchar](50) NULL,
 CONSTRAINT [PK_Tbl_Employee] PRIMARY KEY CLUSTERED 
(
	[EmpID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_SeatMaster]    Script Date: 18-01-2022 18:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_SeatMaster](
	[SeatID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Floor] [numeric](2, 0) NULL,
	[SeatNo] [numeric](4, 0) NULL,
	[ManagerID] [numeric](18, 0) NULL,
 CONSTRAINT [PK_Tbl_SeatMaster] PRIMARY KEY CLUSTERED 
(
	[SeatID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Team]    Script Date: 18-01-2022 18:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Team](
	[TeamID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[TeamName] [varchar](50) NULL,
	[TeamManagerID] [numeric](18, 0) NULL,
 CONSTRAINT [PK_Tbl_Team] PRIMARY KEY CLUSTERED 
(
	[TeamID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Tbl_SeatMaster]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_SeatMaster_Tbl_SeatMaster] FOREIGN KEY([ManagerID])
REFERENCES [dbo].[Tbl_Employee] ([EmpID])
GO
ALTER TABLE [dbo].[Tbl_SeatMaster] CHECK CONSTRAINT [FK_Tbl_SeatMaster_Tbl_SeatMaster]
GO
ALTER TABLE [dbo].[Tbl_Team]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Team_Tbl_Employee] FOREIGN KEY([TeamManagerID])
REFERENCES [dbo].[Tbl_Employee] ([EmpID])
GO
ALTER TABLE [dbo].[Tbl_Team] CHECK CONSTRAINT [FK_Tbl_Team_Tbl_Employee]
GO
ALTER TABLE [dbo].[Tbl_Team]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Team_Tbl_Team] FOREIGN KEY([TeamID])
REFERENCES [dbo].[Tbl_Team] ([TeamID])
GO
ALTER TABLE [dbo].[Tbl_Team] CHECK CONSTRAINT [FK_Tbl_Team_Tbl_Team]
GO

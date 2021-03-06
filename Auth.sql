USE [master]
GO
/****** Object:  Database [Auth]    Script Date: 10/15/2020 1:41:05 PM ******/
CREATE DATABASE [Auth]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Auth', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Auth.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Auth_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Auth_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Auth] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Auth].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Auth] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Auth] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Auth] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Auth] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Auth] SET ARITHABORT OFF 
GO
ALTER DATABASE [Auth] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Auth] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Auth] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Auth] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Auth] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Auth] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Auth] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Auth] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Auth] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Auth] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Auth] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Auth] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Auth] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Auth] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Auth] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Auth] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Auth] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Auth] SET RECOVERY FULL 
GO
ALTER DATABASE [Auth] SET  MULTI_USER 
GO
ALTER DATABASE [Auth] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Auth] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Auth] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Auth] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Auth] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Auth', N'ON'
GO
ALTER DATABASE [Auth] SET QUERY_STORE = OFF
GO
USE [Auth]
GO
/****** Object:  Table [dbo].[UserInfo]    Script Date: 10/15/2020 1:41:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserInfo](
	[Email] [nchar](20) NULL,
	[Password] [nchar](100) NULL,
	[Role] [nchar](20) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[UserInfo] ([Email], [Password], [Role]) VALUES (N'cbro@me.com         ', N'1000:3+JRddoiaDsniMpRQakVnQfgvyITSr4T:9jZ9VWWxZLAB4b6DxjeOLnDJ0p4=                                  ', N'Volunteer           ')
INSERT [dbo].[UserInfo] ([Email], [Password], [Role]) VALUES (N'ckau@edu.com        ', N'1000:xcHsatrB300GkqluDdhEhC4fMo+s4jTr:CrXpfp/yqEShIJ95moRpy2QYGek=                                  ', N'Teacher             ')
INSERT [dbo].[UserInfo] ([Email], [Password], [Role]) VALUES (N'cmal@me.com         ', N'1000:OQHAKAflMdcDm1mKALFcXHH2boTriYGU:G/Hx3OEoD/faPO22NSOdL+dRtGs=                                  ', N'Volunteer           ')
INSERT [dbo].[UserInfo] ([Email], [Password], [Role]) VALUES (N'daisha@edu.com      ', N'1000:MMtojgHC6X4FQT2EsdZCCrZwl8HKMJ7W:Kk7/aAK+ALc2lZY8Ia1K+qtDfls=                                  ', N'Teacher             ')
INSERT [dbo].[UserInfo] ([Email], [Password], [Role]) VALUES (N'ecoe@edu.com        ', N'1000:w4ExXK/FT6a/9CkrmTucrlpRsiYjXv33:Mw/ET+lcnkr2OgH7cdGU8Sw5+Eo=                                  ', N'Teacher             ')
INSERT [dbo].[UserInfo] ([Email], [Password], [Role]) VALUES (N'eklo@me.com         ', N'1000:GuHLNAmgeZK0SOU10pctmwPwYsQE4Q+q:0Ai5hcO/82R62dYuwH6LSkLJisM=                                  ', N'Coordinator         ')
INSERT [dbo].[UserInfo] ([Email], [Password], [Role]) VALUES (N'esim@me.com         ', N'1000:eqTVaPm7zqgfJQSvqpe/32dWahKTKLO/:cHjm3K/WCJXfIGZn3PCr5TtZx1Y=                                  ', N'Volunteer           ')
INSERT [dbo].[UserInfo] ([Email], [Password], [Role]) VALUES (N'fcop@edu.com        ', N'1000:U+mQVasFG8o5v3TlrgXGZv07lNcTKUQh:jaEEYupulHJEByV4EzAYXraSJ+o=                                  ', N'Teacher             ')
INSERT [dbo].[UserInfo] ([Email], [Password], [Role]) VALUES (N'fsin@me.com         ', N'1000:QlpFbYlqFvK8Yl9E0n2GmKkJtYXB8Qm8:VyTMmdU/Bvx/k3J0fgnb+qLwwzM=                                  ', N'Volunteer           ')
INSERT [dbo].[UserInfo] ([Email], [Password], [Role]) VALUES (N'ggre@me.com         ', N'1000:9t+FxK4F/HQiyTn53ZYuLaB1oIyCuyBi:pV268qK0OxQ4d9wpqdx713WtF8I=                                  ', N'Coordinator         ')
INSERT [dbo].[UserInfo] ([Email], [Password], [Role]) VALUES (N'hman@me.com         ', N'1000:L4eR7jJf48lEsoXOyK46ofwLsukfxxmH:tIaGggs1eGxOr/ScYpes8PBveV4=                                  ', N'Volunteer           ')
INSERT [dbo].[UserInfo] ([Email], [Password], [Role]) VALUES (N'iduc@me.com         ', N'1000:QrqVG4loF7doZ37YEx5if47rgxHV2qcV:L3GQc6Pg7VyYD4Z5BSrNiJ2b+6k=                                  ', N'Coordinator         ')
INSERT [dbo].[UserInfo] ([Email], [Password], [Role]) VALUES (N'jcoe@edu.com        ', N'1000:wu7MoinoteDCGoFlbNK8aObV8nHCgGys:PMsio+WW4+Hz39CTMm0RURuiyKI=                                  ', N'Teacher             ')
INSERT [dbo].[UserInfo] ([Email], [Password], [Role]) VALUES (N'jmal@me.com         ', N'1000:NDrFb4jA7V2pGt8zXu6Ar5xWVe2ZSKNC:5Bo014rd54VVPG+6g4vUHjWYp8Q=                                  ', N'Volunteer           ')
INSERT [dbo].[UserInfo] ([Email], [Password], [Role]) VALUES (N'msco@edu.com        ', N'1000:kCl9rK3B4dhQsFBPviVclGN8OEsHb3iZ:vNfRGUCbezEqPiI5lwdwxXn0l9c=                                  ', N'Teacher             ')
INSERT [dbo].[UserInfo] ([Email], [Password], [Role]) VALUES (N'pta@edu.com         ', N'1000:v7I73TmnGuP6C8cXufZKdmF4ZOd8pn+/:YFYrqCy8tr9E3ns2wOWyHFpK0Jk=                                  ', N'Teacher             ')
INSERT [dbo].[UserInfo] ([Email], [Password], [Role]) VALUES (N'rlin@edu.com        ', N'1000:+sIokBK7tEl0Y/ljZqu2Zytvo+IF3QcU:UZjr39PqanmqBmFB9ou0WJUUKMc=                                  ', N'Teacher             ')
INSERT [dbo].[UserInfo] ([Email], [Password], [Role]) VALUES (N'rrei@edu.com        ', N'1000:sLga4P6c7sksXlbm3fZ2pcLfvkp7Hhv6:/4FLn+3wFeJOatm10H6urUYk0l4=                                  ', N'Teacher             ')
INSERT [dbo].[UserInfo] ([Email], [Password], [Role]) VALUES (N'skub@edu.com        ', N'1000:y155af1Wf0Zx2bLgpvl98iDRFK6It6Am:pGJoYEKCT1ocMoZGmUpwf5wrl8Y=                                  ', N'Teacher             ')
INSERT [dbo].[UserInfo] ([Email], [Password], [Role]) VALUES (N'tmal@edu.com        ', N'1000:HwVl62J2OGuViJ8Cc60wEMdR41wlcJT0:HB+/2NvEXpuSdZV/tiByyzj7Vek=                                  ', N'Teacher             ')
INSERT [dbo].[UserInfo] ([Email], [Password], [Role]) VALUES (N'wand@edu.com        ', N'1000:XP8LWrqiBQCGXSDH2yaFUnmG5d0NtRtp:Q+6LwPyq5khS5hK9fzjrHG0Ovc0=                                  ', N'Teacher             ')
INSERT [dbo].[UserInfo] ([Email], [Password], [Role]) VALUES (N'wher@edu.com        ', N'1000:gS5yn+WPx+lFWhnTKyERB4y/PA99J/Zu:46rxu9h+QyeysdZMStgefNpBKhE=                                  ', N'Teacher             ')
INSERT [dbo].[UserInfo] ([Email], [Password], [Role]) VALUES (N'CortezG@edu.com     ', N'1000:ZUd7btfQsIOniZctjCea6159Lh80knD3:NMJ4bkddkzfDE/iq8iSN4X1fOZc=                                  ', N'Teacher             ')
INSERT [dbo].[UserInfo] ([Email], [Password], [Role]) VALUES (N'OraB@edu.com        ', N'1000:R7NZZO/G2dy+pcXZyzLckojQGgLZ9dkA:6JBPH+dsuFvwbKcyK5owrRlxuoI=                                  ', N'Teacher             ')
INSERT [dbo].[UserInfo] ([Email], [Password], [Role]) VALUES (N'WileyK@edu.com      ', N'1000:BJ00ZTEVjd/Q7hK798/sTH2AQtfjndkW:FyIEiZgb029olMxBCYuFu9imDjg=                                  ', N'Teacher             ')
GO
/****** Object:  StoredProcedure [dbo].[Auth]    Script Date: 10/15/2020 1:41:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE[dbo].[Auth]
	@Email AS NCHAR(50),
	@Password AS NCHAR(50)
AS
BEGIN
	SET NOCOUNT ON;

	SELECT TOP (1) * 
	FROM UserInfo
	Where Email = @Email
	AND Password = @Password;

	End
GO
USE [master]
GO
ALTER DATABASE [Auth] SET  READ_WRITE 
GO

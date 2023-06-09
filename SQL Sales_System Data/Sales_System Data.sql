USE [master]
GO
/****** Object:  Database [Sales_System]    Script Date: 26.05.2023 22:26:21 ******/
CREATE DATABASE [Sales_System]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Sales_System', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Sales_System.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Sales_System_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Sales_System_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Sales_System] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Sales_System].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Sales_System] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Sales_System] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Sales_System] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Sales_System] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Sales_System] SET ARITHABORT OFF 
GO
ALTER DATABASE [Sales_System] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Sales_System] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Sales_System] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Sales_System] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Sales_System] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Sales_System] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Sales_System] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Sales_System] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Sales_System] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Sales_System] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Sales_System] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Sales_System] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Sales_System] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Sales_System] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Sales_System] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Sales_System] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Sales_System] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Sales_System] SET RECOVERY FULL 
GO
ALTER DATABASE [Sales_System] SET  MULTI_USER 
GO
ALTER DATABASE [Sales_System] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Sales_System] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Sales_System] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Sales_System] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Sales_System] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Sales_System] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Sales_System', N'ON'
GO
ALTER DATABASE [Sales_System] SET QUERY_STORE = OFF
GO
USE [Sales_System]
GO
/****** Object:  Table [dbo].[Buy]    Script Date: 26.05.2023 22:26:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Buy](
	[Order_ID] [int] NOT NULL,
	[Date] [nvarchar](50) NULL,
	[Sup_ID] [int] NULL,
 CONSTRAINT [PK_Buy] PRIMARY KEY CLUSTERED 
(
	[Order_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Buy_Details]    Script Date: 26.05.2023 22:26:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Buy_Details](
	[Order_ID] [int] NULL,
	[Sup_ID] [int] NULL,
	[Pro_ID] [int] NULL,
	[Date] [nvarchar](50) NULL,
	[Qty] [real] NULL,
	[User_Name] [nvarchar](50) NULL,
	[Price] [real] NULL,
	[Discount] [real] NULL,
	[Total] [real] NULL,
	[TotalOrder] [real] NULL,
	[Madou3] [real] NULL,
	[Bakey] [real] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 26.05.2023 22:26:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[Cust_ID] [nvarchar](50) NOT NULL,
	[Cust_Name] [nvarchar](50) NULL,
	[Cust_Address] [nvarchar](250) NULL,
	[Cust_Phone] [nvarchar](50) NULL,
	[Notes] [nvarchar](250) NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[Cust_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deserved]    Script Date: 26.05.2023 22:26:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deserved](
	[Des_ID] [int] NOT NULL,
	[Price] [real] NULL,
	[Date] [nvarchar](50) NULL,
	[Notes] [nvarchar](250) NULL,
	[Type_ID] [int] NULL,
 CONSTRAINT [PK_Deserved] PRIMARY KEY CLUSTERED 
(
	[Des_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deserved_Type]    Script Date: 26.05.2023 22:26:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deserved_Type](
	[Des_ID] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Deserved_Type] PRIMARY KEY CLUSTERED 
(
	[Des_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Emplyyes]    Script Date: 26.05.2023 22:26:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Emplyyes](
	[Emp_ID] [int] NOT NULL,
	[Emp_Name] [nvarchar](50) NULL,
	[Emp_Address] [nvarchar](250) NULL,
	[Emp_Phone] [nvarchar](50) NULL,
	[Salary] [real] NULL,
 CONSTRAINT [PK_Emplyyes] PRIMARY KEY CLUSTERED 
(
	[Emp_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 26.05.2023 22:26:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Pro_ID] [int] NOT NULL,
	[Pro_Name] [nvarchar](50) NULL,
	[Qty] [real] NULL,
	[Buy_Price] [real] NULL,
	[Sale_Price] [real] NULL,
	[Barcode] [nvarchar](50) NULL,
	[MinQty] [real] NULL,
	[MaxDiscount] [real] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Pro_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Returns]    Script Date: 26.05.2023 22:26:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Returns](
	[Order_ID] [int] NOT NULL,
	[Order_Date] [nvarchar](50) NULL,
 CONSTRAINT [PK_Returns] PRIMARY KEY CLUSTERED 
(
	[Order_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Returns_Details]    Script Date: 26.05.2023 22:26:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Returns_Details](
	[Order_ID] [int] NULL,
	[Cust_ID] [int] NULL,
	[Sup_ID] [int] NULL,
	[Pro_ID] [int] NULL,
	[Date] [nvarchar](50) NULL,
	[Qty] [real] NULL,
	[User_Name] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sales]    Script Date: 26.05.2023 22:26:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sales](
	[Order_ID] [int] NOT NULL,
	[Date] [nvarchar](50) NULL,
	[Cust_Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Sales] PRIMARY KEY CLUSTERED 
(
	[Order_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sales_Details]    Script Date: 26.05.2023 22:26:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sales_Details](
	[Order_ID] [int] NULL,
	[Cust_Name] [nvarchar](50) NULL,
	[Pro_ID] [int] NULL,
	[Date] [nvarchar](50) NULL,
	[Qty] [real] NULL,
	[User_Name] [nvarchar](50) NULL,
	[Price] [real] NULL,
	[Discount] [real] NULL,
	[Total] [real] NULL,
	[TotalOrder] [real] NULL,
	[Madfou3] [real] NULL,
	[Baky] [real] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier_Money]    Script Date: 26.05.2023 22:26:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier_Money](
	[Order_ID] [int] NULL,
	[Sup_ID] [int] NULL,
	[Price] [real] NULL,
	[Order_Date] [nvarchar](50) NULL,
	[Reminder_Date] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier_Report]    Script Date: 26.05.2023 22:26:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier_Report](
	[Order_ID] [int] NULL,
	[Price] [real] NULL,
	[Date] [nvarchar](50) NULL,
	[Sup_ID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 26.05.2023 22:26:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suppliers](
	[Sup_ID] [int] NOT NULL,
	[Sup_Name] [nvarchar](50) NULL,
	[Sup_Address] [nvarchar](250) NULL,
	[Sup_Phone] [nvarchar](50) NULL,
	[Notes] [nvarchar](250) NULL,
 CONSTRAINT [PK_Suppliers] PRIMARY KEY CLUSTERED 
(
	[Sup_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 26.05.2023 22:26:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [int] NOT NULL,
	[User_Name] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Buy_Details]  WITH CHECK ADD  CONSTRAINT [FK_Buy_Details_Buy] FOREIGN KEY([Order_ID])
REFERENCES [dbo].[Buy] ([Order_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Buy_Details] CHECK CONSTRAINT [FK_Buy_Details_Buy]
GO
ALTER TABLE [dbo].[Buy_Details]  WITH CHECK ADD  CONSTRAINT [FK_Buy_Details_Products] FOREIGN KEY([Pro_ID])
REFERENCES [dbo].[Products] ([Pro_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Buy_Details] CHECK CONSTRAINT [FK_Buy_Details_Products]
GO
ALTER TABLE [dbo].[Buy_Details]  WITH CHECK ADD  CONSTRAINT [FK_Buy_Details_Suppliers] FOREIGN KEY([Sup_ID])
REFERENCES [dbo].[Suppliers] ([Sup_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Buy_Details] CHECK CONSTRAINT [FK_Buy_Details_Suppliers]
GO
ALTER TABLE [dbo].[Deserved]  WITH CHECK ADD  CONSTRAINT [FK_Deserved_Deserved_Type] FOREIGN KEY([Type_ID])
REFERENCES [dbo].[Deserved_Type] ([Des_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Deserved] CHECK CONSTRAINT [FK_Deserved_Deserved_Type]
GO
ALTER TABLE [dbo].[Returns_Details]  WITH CHECK ADD  CONSTRAINT [FK_Returns_Details_Products] FOREIGN KEY([Pro_ID])
REFERENCES [dbo].[Products] ([Pro_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Returns_Details] CHECK CONSTRAINT [FK_Returns_Details_Products]
GO
ALTER TABLE [dbo].[Returns_Details]  WITH CHECK ADD  CONSTRAINT [FK_Returns_Details_Returns] FOREIGN KEY([Order_ID])
REFERENCES [dbo].[Returns] ([Order_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Returns_Details] CHECK CONSTRAINT [FK_Returns_Details_Returns]
GO
ALTER TABLE [dbo].[Sales_Details]  WITH CHECK ADD  CONSTRAINT [FK_Sales_Details_Products] FOREIGN KEY([Pro_ID])
REFERENCES [dbo].[Products] ([Pro_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Sales_Details] CHECK CONSTRAINT [FK_Sales_Details_Products]
GO
ALTER TABLE [dbo].[Sales_Details]  WITH CHECK ADD  CONSTRAINT [FK_Sales_Details_Sales] FOREIGN KEY([Order_ID])
REFERENCES [dbo].[Sales] ([Order_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Sales_Details] CHECK CONSTRAINT [FK_Sales_Details_Sales]
GO
/****** Object:  StoredProcedure [dbo].[BuyReport]    Script Date: 26.05.2023 22:26:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  StoredProcedure [dbo].[OrderBuy]    Script Date: 2.04.2023 00:04:12 ******/
--SET ANSI_NULLS ON
--GO
--SET QUOTED_IDENTIFIER ON
--GO

create PROCEDURE [dbo].[BuyReport]
AS

SELECT [Order_ID] as'رقم الفاتورة',Suppliers.Sup_Name as'اسم المورد',Products.Pro_Name as'اسم المنتج',[Date] as'تاريخ الفاتورة',[Buy_Details].[Qty] as'الكمية'  ,[Price] as'السعر',[Discount] as'الخصم',[Total] as'اجمالي ',[TotalOrder] as'الاجمالي الفاتورة',[Madou3] as'المدفوع',[Bakey] as'المبلغ الباقي',[User_Name] as'اسم المستخدم'FROM [dbo].[Buy_Details],Suppliers,Products where [Buy_Details].Sup_ID = Suppliers.Sup_ID and [Buy_Details].Pro_ID =  Products.Pro_ID ORDER BY Order_ID ASC
GO
/****** Object:  StoredProcedure [dbo].[OrderBuy]    Script Date: 26.05.2023 22:26:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[OrderBuy]
AS

SELECT [Order_ID] as'رقم الفاتورة'
      ,Suppliers.Sup_Name as'اسم المورد'
      ,Products.Pro_Name as'اسم المنتج'
      ,[Date] as'تاريخ الفاتورة'
      ,[Buy_Details].[Qty] as'الكمية'
      ,[User_Name] as'اسم المستخدم'
      ,[Price] as'السعر'
      ,[Discount] as'الخصم'
      ,[Total] as'اجمالي الصنف'
      ,[TotalOrder] as'الاجمالي العام'
      ,[Madou3] as'المدفوع'
      ,[Bakey] as'المبلغ الباقي'
  FROM [dbo].[Buy_Details],Suppliers,Products where Suppliers.Sup_ID = [Buy_Details].Sup_ID and Products.Pro_ID = [Buy_Details].Pro_ID

GO
/****** Object:  StoredProcedure [dbo].[SupplierMoneyReport]    Script Date: 26.05.2023 22:26:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SupplierMoneyReport]
AS

SELECT [Order_ID] as 'رقم الفاتورة', Suppliers.Sup_ID as'رقم المورد' ,Suppliers.Sup_Name as 'اسم المورد',[Price] as 'السعر',[Order_Date] as 'تاريخ الفاتورة',[Reminder_Date] as 'تاريخ الاستحقاق'FROM [dbo].[Supplier_Money],Suppliers where Suppliers.Sup_ID = [Supplier_Money].Sup_ID
GO
USE [master]
GO
ALTER DATABASE [Sales_System] SET  READ_WRITE 
GO

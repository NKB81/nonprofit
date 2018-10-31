
Create Database NonProfit
GO


Use [NonProfit]
GO

CREATE TABLE DonationType(
	[Id] [int] IDENTITY(1,1) Primary Key NOT NULL,
	[DonationType] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](max) NULL
)

GO


CREATE TABLE Donations
(
	Id INT IDENTITY(1,1) Primary Key NOT NULL,
	DonorName VARCHAR(100) NOT NULL,
	DonorEmail VARCHAR(100) NULL,
	DonorPhone VARCHAR(20) NOT NULL,
	DonationType VARCHAR(20) NOT NULL,
	DonationAmount INT NOT NULL,
	PickUpAddress VARCHAR(MAX) NOT NULL,
	PickUpDate DATE NOT NULL,
	PickUpTime VARCHAR(20) NOT NULL,
	[Status] VARCHAR(20) NOT NULL,
	TrackingId VARCHAR(200) NOT NULL
)

GO

--INSERTS for generating data
SET IDENTITY_INSERT [dbo].[DonationType] ON 

GO
INSERT [dbo].[DonationType] ([Id], [DonationType], [Description]) VALUES (1, N'Clothes', NULL)
GO
INSERT [dbo].[DonationType] ([Id], [DonationType], [Description]) VALUES (2, N'Food Items', NULL)
GO
INSERT [dbo].[DonationType] ([Id], [DonationType], [Description]) VALUES (3, N'Money', NULL)
GO
INSERT [dbo].[DonationType] ([Id], [DonationType], [Description]) VALUES (4, N'Others', NULL)
GO
INSERT [dbo].[DonationType] ([Id], [DonationType], [Description]) VALUES (5, N'Books', NULL)
GO
INSERT [dbo].[DonationType] ([Id], [DonationType], [Description]) VALUES (6, N'Toys', NULL)
GO
SET IDENTITY_INSERT [dbo].[DonationType] OFF
GO

SET IDENTITY_INSERT [dbo].[Donations] ON 
GO
INSERT [dbo].[Donations] ([Id], [DonorName], [DonorEmail], [DonorPhone], [DonationType], [DonationAmount], [PickUpAddress], [PickUpDate], [PickUpTime], [Status], [TrackingId]) VALUES (2, N'Nitin', N'nkb@nitin.com', N'9012145421', N'Clothes', 20, N'123, xyz, 8787, AC', CAST(N'2018-10-31' AS Date), N'12:30', N'PENDING', N'22ec8fb3-2918-4701-8857-cc292b35e354')
GO
SET IDENTITY_INSERT [dbo].[Donations] OFF
GO
USE [master]
GO
DROP DATABASE [Photographer]
GO
CREATE DATABASE [Photographer]
GO
USE [Photographer]
GO

CREATE TABLE [dbo].[Gallery](
	[id] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[title] [nvarchar](255) NOT NULL,
	[description] [nvarchar](255) NOT NULL,
)

CREATE TABLE [dbo].[Image](
	[id] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[image_url] [nvarchar](255) NOT NULL,
	[gallery_id] [int] NOT NULL FOREIGN KEY REFERENCES [Gallery](id),
)

CREATE TABLE [dbo].[Count](
	[visit] int NOT NULL DEFAULT 0,
)

CREATE TABLE [dbo].[Contact](
	[telephone] [nvarchar](25) NULL,
	[email] [nvarchar](max) NULL,
	[face_url] [nvarchar](max) NULL,
	[twitter_url] [nvarchar](max) NULL,
	[google_url] [nvarchar](max) NULL,
	[address] [nvarchar](max) NULL,
	[city] [nvarchar](max) NULL,
	[country] [nvarchar](max) NULL,
	[map_url] [nvarchar](max) NULL,
	[image_main] [nvarchar](max) NULL,
)

INSERT [dbo].[Count] ([visit]) VALUES (0)

INSERT [dbo].[Contact] ([telephone], [email], [face_url], [twitter_url], [google_url], [address], [city], [country], [map_url], [image_main])
	VALUES (N'0123456789', N'demo@mail.com', N'https://www.facebook.com/#', N'https://twitter.com/#', N'https://www.google.com/#', N'Khu công nghệ cao Hòa Lạc – Km29, ĐCT08, Thạch Hoà', N'Hà Nội 10000', N'Vietnam', N'<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d4429.210761626763!2d105.52715039154663!3d21.012372229332538!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31345b465a4e65fb%3A0xaae6040cfabe8fe!2sFPT%20University!5e0!3m2!1sen!2s!4v1629021880276!5m2!1sen!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>', N'main.jpg')


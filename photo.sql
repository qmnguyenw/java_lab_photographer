DROP DATABASE [photo]

CREATE DATABASE [photo]

USE [photo]
GO
/****** Object:  Table [dbo].[contact]    Script Date: 28/05/2021 09:01:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contact](
	[telephone] nvarchar(max) NULL,
	[email] nvarchar(max) NULL,
	[face_url] nvarchar(max) NULL,
	[twitter_url] nvarchar(max) NULL,
	[google_url] nvarchar(max) NULL,
	[about] nvarchar(max) NULL,
	[address] nvarchar(max) NULL,
	[city] nvarchar(max) NULL,
	[country] nvarchar(max) NULL,
	[map_url] nvarchar(max) NULL,
	[image_main] nvarchar(max) NULL,
	[icon_face] nvarchar(max) NULL,
	[icon_twitter] nvarchar(max) NULL,
	[icon_google] nvarchar(max) NULL
)
GO
/****** Object:  Table [dbo].[gallery]    Script Date: 28/05/2021 09:01:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gallery](
	[ID] int NOT NULL primary key,
	[title] nvarchar(max) NULL,
	[description] nvarchar(max) NULL,
	[name] nvarchar(max) NULL
)
GO
/****** Object:  Table [dbo].[image]    Script Date: 28/05/2021 09:01:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[image](
	[id] int IDENTITY(1,1) NOT NULL primary key,
	[gallery_id] int NULL,
	[image_url] nvarchar(max) NULL
)
GO
CREATE TABLE [dbo].[counting](
	[visit] int NOT NULL default 0
)
GO
INSERT [dbo].[counting] ([visit]) VALUES (0)
GO
INSERT [dbo].[contact] ([telephone], [email], [face_url], [twitter_url], [google_url], [about], [address], [city], [country], [map_url], [image_main], [icon_face], [icon_twitter], [icon_google]) VALUES (N'0376786823423', N'abc123@jhkj.com', N'https://www.facebook.com/', N'https://twitter.com/?lang=vi', N'https://www.google.com/', N'About me
Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim', N'Thach Hoa, Thach That', N'Ha Noi', N'Viet Nam', N'https://maps.google.com/maps?width=100%&amp;height=600&amp;hl=en&amp;q=9%20Ng%C3%B5%20116%20Ph%E1%BB%91%20Mi%E1%BA%BFu%20%C4%90%E1%BA%A7m%2C%20T%E1%BB%AB%20Li%C3%AAm%2C%20H%C3%A0%20N%E1%BB%99i+()&amp;ie=UTF8&amp;t=&amp;z=14&amp;iwloc=B&amp;output=embed', N'homeImage.jpg', N'face.png', N'twitter.png', N'google.png')
INSERT [dbo].[gallery] ([ID], [title], [description], [name]) VALUES (1, N'View Gallery Game', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation1', N'Gallery Game')
INSERT [dbo].[gallery] ([ID], [title], [description], [name]) VALUES (2, N'View Gallery Tech', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation2', N'Gallery Cake')
INSERT [dbo].[gallery] ([ID], [title], [description], [name]) VALUES (3, N'View Gallery Cake', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation3', N'Gallery Tech')
INSERT [dbo].[gallery] ([ID], [title], [description], [name]) VALUES (4, N'View Gallery DataStructure', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation4', N'Gallery DataStructure')
INSERT [dbo].[gallery] ([ID], [title], [description], [name]) VALUES (5, N'View Gallery People1', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation5', N'Gallery People1')
INSERT [dbo].[gallery] ([ID], [title], [description], [name]) VALUES (6, N'View Gallery People2', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation6', N'Gallery People2')

INSERT [dbo].[Image] ([image_url], [gallery_id]) VALUES ('cake1.jpg', 3)
INSERT [dbo].[Image] ([image_url], [gallery_id]) VALUES ('cake2.jpg', 3)
INSERT [dbo].[Image] ([image_url], [gallery_id]) VALUES ('cake3.jpg', 3)
INSERT [dbo].[Image] ([image_url], [gallery_id]) VALUES ('cake4.jpg', 3)
INSERT [dbo].[Image] ([image_url], [gallery_id]) VALUES ('cake5.jpg', 3)
INSERT [dbo].[Image] ([image_url], [gallery_id]) VALUES ('cake6.jpg', 3)
INSERT [dbo].[Image] ([image_url], [gallery_id]) VALUES ('cake7.jpg', 3)
INSERT [dbo].[Image] ([image_url], [gallery_id]) VALUES ('csgo.jpg', 1)
INSERT [dbo].[Image] ([image_url], [gallery_id]) VALUES ('pubg.jpg', 1)
INSERT [dbo].[Image] ([image_url], [gallery_id]) VALUES ('docker.jpg', 2)
INSERT [dbo].[Image] ([image_url], [gallery_id]) VALUES ('nodejs.jpg', 2)
INSERT [dbo].[Image] ([image_url], [gallery_id]) VALUES ('spring.jpg', 2)
INSERT [dbo].[Image] ([image_url], [gallery_id]) VALUES ('angular.jpg', 2)
INSERT [dbo].[Image] ([image_url], [gallery_id]) VALUES ('binarytree.jpg', 4)
INSERT [dbo].[Image] ([image_url], [gallery_id]) VALUES ('graph.jpg', 4)
INSERT [dbo].[Image] ([image_url], [gallery_id]) VALUES ('heap.jpg', 4)
INSERT [dbo].[Image] ([image_url], [gallery_id]) VALUES ('linkedlist.jpg', 4)
INSERT [dbo].[Image] ([image_url], [gallery_id]) VALUES ('queue.jpg', 4)
INSERT [dbo].[Image] ([image_url], [gallery_id]) VALUES ('stack.jpg', 4)
INSERT [dbo].[Image] ([image_url], [gallery_id]) VALUES ('i1.jpg', 5)
INSERT [dbo].[Image] ([image_url], [gallery_id]) VALUES ('i2.jpg', 5)
INSERT [dbo].[Image] ([image_url], [gallery_id]) VALUES ('i3.jpg', 5)
INSERT [dbo].[Image] ([image_url], [gallery_id]) VALUES ('i4.jpg', 5)
INSERT [dbo].[Image] ([image_url], [gallery_id]) VALUES ('i5.jpg', 5)
INSERT [dbo].[Image] ([image_url], [gallery_id]) VALUES ('i6.jpg', 5)
INSERT [dbo].[Image] ([image_url], [gallery_id]) VALUES ('i7.jpg', 5)
INSERT [dbo].[Image] ([image_url], [gallery_id]) VALUES ('i8.jpg', 5)
INSERT [dbo].[Image] ([image_url], [gallery_id]) VALUES ('p1.jpg', 6)
INSERT [dbo].[Image] ([image_url], [gallery_id]) VALUES ('p2.jpg', 6)
INSERT [dbo].[Image] ([image_url], [gallery_id]) VALUES ('p3.jpg', 6)
INSERT [dbo].[Image] ([image_url], [gallery_id]) VALUES ('p4.jpg', 6)
INSERT [dbo].[Image] ([image_url], [gallery_id]) VALUES ('p5.jpg', 6)
INSERT [dbo].[Image] ([image_url], [gallery_id]) VALUES ('p6.jpg', 6)
INSERT [dbo].[Image] ([image_url], [gallery_id]) VALUES ('p7.jpg', 6)
INSERT [dbo].[Image] ([image_url], [gallery_id]) VALUES ('p8.jpg', 6)
INSERT [dbo].[Image] ([image_url], [gallery_id]) VALUES ('p9.jpg', 6)
INSERT [dbo].[Image] ([image_url], [gallery_id]) VALUES ('p10.jpg', 6)

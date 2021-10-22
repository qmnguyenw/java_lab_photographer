USE [master]

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
INSERT [dbo].[gallery] ([ID], [title], [description], [name]) VALUES (1, N'View Gallery 1', N"Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", N'Gallery 1')
INSERT [dbo].[gallery] ([ID], [title], [description], [name]) VALUES (2, N'View Gallery 2', N"Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet dictum quam. Etiam tincidunt nibh iaculis aliquam gravida. Curabitur purus enim, pulvinar vel magna sit amet, lobortis faucibus turpis. Mauris arcu lorem, varius vitae purus tempus, efficitur vulputate nisi. Fusce commodo orci sed dolor finibus, hendrerit faucibus tortor tincidunt. In hac habitasse platea dictumst. Donec in scelerisque elit, vitae hendrerit sem. Cras ut felis feugiat elit lacinia aliquet non id purus. Nullam vitae sagittis dui, vel bibendum mi. Duis tincidunt ultrices scelerisque.", N'Gallery 2')
INSERT [dbo].[gallery] ([ID], [title], [description], [name]) VALUES (3, N'View Gallery 3', N"Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation. ", N'Gallery 3')
INSERT [dbo].[gallery] ([ID], [title], [description], [name]) VALUES (4, N'View Gallery 4', N"Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation. Fusce ut lorem consequat, finibus justo tempus, aliquam urna. Donec tincidunt ullamcorper odio, sit amet faucibus risus vulputate in. Suspendisse aliquet, nunc a scelerisque lobortis, sapien turpis lobortis odio, commodo efficitur turpis dolor sed erat. Proin bibendum neque ut fringilla pellentesque. Vivamus vitae faucibus urna. Sed fermentum luctus mauris, sed laoreet turpis congue in. Proin consectetur orci in tincidunt tristique. Nam volutpat dictum orci. Mauris pulvinar semper quam nec suscipit. Aenean est odio, efficitur a massa consectetur, posuere hendrerit ligula.", N'Gallery 4')
INSERT [dbo].[gallery] ([ID], [title], [description], [name]) VALUES (5, N'View Gallery 5', N"Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation. ", N'Gallery 5')
INSERT [dbo].[gallery] ([ID], [title], [description], [name]) VALUES (6, N'View Gallery 6', N"Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation. ", N'Gallery 6')


INSERT [dbo].[Image] ([image_url], [gallery_id]) VALUES ('i1.jpg', 1)
INSERT [dbo].[Image] ([image_url], [gallery_id]) VALUES ('i2.jpg', 1)
INSERT [dbo].[Image] ([image_url], [gallery_id]) VALUES ('i3.jpg', 1)
INSERT [dbo].[Image] ([image_url], [gallery_id]) VALUES ('i4.jpg', 1)
INSERT [dbo].[Image] ([image_url], [gallery_id]) VALUES ('i5.jpg', 1)
INSERT [dbo].[Image] ([image_url], [gallery_id]) VALUES ('i6.jpg', 1)
INSERT [dbo].[Image] ([image_url], [gallery_id]) VALUES ('i7.jpg', 1)
INSERT [dbo].[Image] ([image_url], [gallery_id]) VALUES ('i8.jpg', 1)
INSERT [dbo].[Image] ([image_url], [gallery_id]) VALUES ('c1.jpg', 2)
INSERT [dbo].[Image] ([image_url], [gallery_id]) VALUES ('c2.jpg', 2)
INSERT [dbo].[Image] ([image_url], [gallery_id]) VALUES ('c3.jpg', 2)
INSERT [dbo].[Image] ([image_url], [gallery_id]) VALUES ('c4.jpg', 2)
INSERT [dbo].[Image] ([image_url], [gallery_id]) VALUES ('c5.jpg', 2)
INSERT [dbo].[Image] ([image_url], [gallery_id]) VALUES ('c6.jpg', 2)
INSERT [dbo].[Image] ([image_url], [gallery_id]) VALUES ('c7.jpg', 2)
INSERT [dbo].[Image] ([image_url], [gallery_id]) VALUES ('c8.jpg', 2)
INSERT [dbo].[Image] ([image_url], [gallery_id]) VALUES ('c9.jpg', 2)
INSERT [dbo].[Image] ([image_url], [gallery_id]) VALUES ('c10.jpg', 2)
INSERT [dbo].[Image] ([image_url], [gallery_id]) VALUES ('c11.jpg', 2)
INSERT [dbo].[Image] ([image_url], [gallery_id]) VALUES ('c12.jpg', 2)
INSERT [dbo].[Image] ([image_url], [gallery_id]) VALUES ('c13.jpg', 2)
INSERT [dbo].[Image] ([image_url], [gallery_id]) VALUES ('c14.jpg', 2)
INSERT [dbo].[Image] ([image_url], [gallery_id]) VALUES ('c15.jpg', 2)
INSERT [dbo].[Image] ([image_url], [gallery_id]) VALUES ('c16.jpg', 2)
INSERT [dbo].[Image] ([image_url], [gallery_id]) VALUES ('img1.jpg', 3)
INSERT [dbo].[Image] ([image_url], [gallery_id]) VALUES ('img2.jpg', 3)
INSERT [dbo].[Image] ([image_url], [gallery_id]) VALUES ('img3.jpg', 3)
INSERT [dbo].[Image] ([image_url], [gallery_id]) VALUES ('img4.jpg', 3)
INSERT [dbo].[Image] ([image_url], [gallery_id]) VALUES ('img5.jpg', 3)
INSERT [dbo].[Image] ([image_url], [gallery_id]) VALUES ('img6.jpg', 3)
INSERT [dbo].[Image] ([image_url], [gallery_id]) VALUES ('img7.jpg', 3)
INSERT [dbo].[Image] ([image_url], [gallery_id]) VALUES ('img8.jpg', 3)
INSERT [dbo].[Image] ([image_url], [gallery_id]) VALUES ('i1.jpg', 4)
INSERT [dbo].[Image] ([image_url], [gallery_id]) VALUES ('i2.jpg', 4)
INSERT [dbo].[Image] ([image_url], [gallery_id]) VALUES ('i3.jpg', 4)
INSERT [dbo].[Image] ([image_url], [gallery_id]) VALUES ('p1.jpg', 5)
INSERT [dbo].[Image] ([image_url], [gallery_id]) VALUES ('p2.jpg', 5)
INSERT [dbo].[Image] ([image_url], [gallery_id]) VALUES ('p3.jpg', 5)
INSERT [dbo].[Image] ([image_url], [gallery_id]) VALUES ('p1.jpg', 6)
INSERT [dbo].[Image] ([image_url], [gallery_id]) VALUES ('p2.jpg', 6)
INSERT [dbo].[Image] ([image_url], [gallery_id]) VALUES ('p3.jpg', 6)
INSERT [dbo].[Image] ([image_url], [gallery_id]) VALUES ('i4.jpg', 6)
INSERT [dbo].[Image] ([image_url], [gallery_id]) VALUES ('i5.jpg', 6)
INSERT [dbo].[Image] ([image_url], [gallery_id]) VALUES ('i6.jpg', 6)
INSERT [dbo].[Image] ([image_url], [gallery_id]) VALUES ('i7.jpg', 6)


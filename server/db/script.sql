USE [MarketPlace]
GO
/****** Object:  Schema [OnlineMarketPlace]    Script Date: 4/15/2025 6:12:14 PM ******/
CREATE SCHEMA [OnlineMarketPlace]
GO
/****** Object:  Table [OnlineMarketPlace].[ITEMS]    Script Date: 4/15/2025 6:12:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [OnlineMarketPlace].[ITEMS](
	[item_id] [int] NOT NULL,
	[user_id_seller] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[description] [varchar](70) NULL,
	[price] [int] NOT NULL,
	[status_available_A_sold_S] [char](1) NOT NULL,
	[created_at] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[item_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [OnlineMarketPlace].[Users]    Script Date: 4/15/2025 6:12:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [OnlineMarketPlace].[Users](
	[user_id] [int] NOT NULL,
	[username] [varchar](50) NOT NULL,
	[password_hash] [varchar](15) NOT NULL,
	[email] [varchar](30) NOT NULL,
	[phone] [varchar](20) NOT NULL,
	[created_at] [date] NOT NULL,
	[balance] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [OnlineMarketPlace].[ITEMS]  WITH CHECK ADD FOREIGN KEY([user_id_seller])
REFERENCES [OnlineMarketPlace].[Users] ([user_id])
GO

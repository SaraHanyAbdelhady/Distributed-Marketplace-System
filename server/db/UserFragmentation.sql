/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [user_id]
      ,[username]
      ,[password_hash]
      ,[email]
      ,[phone]
      ,[created_at]
      ,[balance]
  FROM [MarketPlace].[OnlineMarketPlace].[Users]
  

SELECT [username]
      ,[password_hash]
      ,[email]
  FROM [OnlineMarketPlace].[Users]


GO

/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [username]
      ,[password_hash]
      ,[email]
  FROM [MarketPlace].[OnlineMarketPlace].[Users]
  WHERE balance > 1000

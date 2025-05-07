/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [name]
      ,[description]
      ,[price]
  FROM [MarketPlace].[OnlineMarketPlace].[ITEMS]


SELECT [item_id]
      ,[user_id_seller]
      ,[name]
      ,[description]
      ,[price]
      ,[status_available_A_sold_S]
      ,[created_at]
  FROM [MarketPlace].[OnlineMarketPlace].[ITEMS]
  WHERE [status_available_A_sold_S]='A'

SELECT [name]
      ,[description]
      ,[price]
  FROM [MarketPlace].[OnlineMarketPlace].[ITEMS]
  WHERE [status_available_A_sold_S]='A'

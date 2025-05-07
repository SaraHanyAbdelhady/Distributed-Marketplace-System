SELECT [user_id]
      ,[item_id]
      ,[updated_at]
  FROM [MarketPlace].[OnlineMarketPlace].[Inventory]
  WHERE updated_at between '2023-06-01' AND '2023-07-31' 
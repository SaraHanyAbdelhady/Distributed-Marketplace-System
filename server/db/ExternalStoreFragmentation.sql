SELECT [store_id]
      ,[api_key]
      ,[store_name]
      ,[last_sync]
  FROM [MarketPlace].[OnlineMarketPlace].[ExternalStores]
  WHERE last_sync between '2023-06-01' and '2023-07-31';

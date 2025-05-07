SELECT TOP (1000) [transaction_id]
      ,[items_id]
      ,[amount]
  FROM [MarketPlace].[OnlineMarketPlace].[items_transaction]



--CREATE TABLE items_transaction_low AS
SELECT * FROM OnlineMarketPlace.items_transaction
WHERE transaction_id BETWEEN 1001 AND 1007;


--CREATE TABLE items_transaction_relationships AS
SELECT transaction_id, items_id FROM OnlineMarketPlace.items_transaction;



--CREATE TABLE items_transaction_single AS
SELECT transaction_id, items_id FROM OnlineMarketPlace.items_transaction
WHERE amount = 1;
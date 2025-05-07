SELECT TOP (1000) [transaction_id]
      ,[buyer_id]
      ,[seller_id]
      ,[timestamp]
  FROM [MarketPlace].[OnlineMarketPlace].[Transactions]



--CREATE TABLE Transactions_Q1 AS
SELECT * FROM [MarketPlace].[OnlineMarketPlace].[Transactions]
WHERE timestamp BETWEEN '2023-01-01' AND '2023-03-31';


--CREATE TABLE Transactions_TimeInfo AS
SELECT transaction_id, timestamp 
FROM OnlineMarketPlace.Transactions;


--CREATE TABLE Transactions_Q2Q4_Participants AS
SELECT transaction_id, buyer_id, seller_id FROM OnlineMarketPlace.Transactions
WHERE timestamp BETWEEN '2023-04-01' AND '2023-12-31';
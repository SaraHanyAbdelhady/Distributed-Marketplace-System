SELECT TOP (1000) [reports_id]
      ,[generated_for]
      ,[data]
      ,[created_at]
  FROM [MarketPlace].[OnlineMarketPlace].[Reports]



--CREATE TABLE Reports_2024 AS
SELECT * FROM OnlineMarketPlace.Reports
WHERE created_at >= '2024-01-01';


--CREATE TABLE Reports_Metadata AS
SELECT reports_id, generated_for, created_at 
FROM OnlineMarketPlace.Reports;



--CREATE TABLE Reports_2023_Metadata AS
SELECT reports_id, generated_for, created_at 
FROM OnlineMarketPlace.Reports
WHERE created_at BETWEEN '2023-01-01' AND '2023-12-31';

CREATE SCHEMA OnlineMarketPlace
go

CREATE TABLE Users (
user_id 	INTEGER	 	NOT NULL, 
username	VARCHAR(50)	 NOT NULL, 
password_hash	 VARCHAR(15) 	NOT NULL, 
email 		VARCHAR(30)	NOT NULL, 
phone		VARCHAR(20)	NOT NULL, 
created_at	DATE		NOT NULL,
balance		INTEGER		NOT NULL

PRIMARY KEY (user_id),
)
go



CREATE TABLE ITEMS (
item_id 		INTEGER					NOT NULL, 
user_id_seller  INTEGER 				NOT NULL, 
name 	VARCHAR(50) 					NOT NULL, 
description	 VARCHAR(70)						, 
price		INTEGER 					NOT NULL, 
status_available_A_sold_S	CHAR(1)		NOT NULL, 
created_at 	DATE						NOT NULL

PRIMARY KEY (item_id),
FOREIGN KEY (user_id_seller) REFERENCES Users(user_id)
)
go

ALTER SCHEMA OnlineMarketPlace TRANSFER dbo.Users
go

ALTER SCHEMA OnlineMarketPlace TRANSFER dbo.ITEMS
go


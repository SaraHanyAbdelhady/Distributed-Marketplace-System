-- First create the schema if it doesn't exist
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'OnlineMarketPlace')
BEGIN
    EXEC('CREATE SCHEMA OnlineMarketPlace')
END
GO

-- Create Tables first in dbo schema
 CREATE TABLE dbo.Transactions (
    transaction_id INTEGER NOT NULL, 
    buyer_id INTEGER NOT NULL, 
    seller_id INTEGER NOT NULL, 
    timestamp datetime NOT NULL,
    PRIMARY KEY (transaction_id)
);

CREATE TABLE dbo.items_transaction (
    transaction_id INTEGER NOT NULL,
    items_id INTEGER NOT NULL,
    amount INTEGER NOT NULL CHECK (amount>0),
    PRIMARY KEY (transaction_id, items_id));

CREATE TABLE dbo.Reports (
    reports_id INTEGER NOT NULL, 
    generated_for INTEGER NOT NULL, 
    data NVARCHAR(100) NOT NULL, 
    created_at DATE NOT NULL,
    PRIMARY KEY (reports_id));

-- Transfer tables to OnlineMarketPlace schema
ALTER SCHEMA OnlineMarketPlace TRANSFER dbo.Transactions
GO
ALTER SCHEMA OnlineMarketPlace TRANSFER dbo.items_transaction
GO
ALTER SCHEMA OnlineMarketPlace TRANSFER dbo.Reports
GO

-- Add foreign key constraints with correct syntax
ALTER TABLE OnlineMarketPlace.Transactions
ADD CONSTRAINT FK_Transactions_Buyer
FOREIGN KEY (buyer_id) REFERENCES OnlineMarketPlace.Users(user_id);

ALTER TABLE OnlineMarketPlace.Transactions
ADD CONSTRAINT FK_Transactions_Seller
FOREIGN KEY (seller_id) REFERENCES OnlineMarketPlace.Users(user_id);

ALTER TABLE OnlineMarketPlace.items_transaction
ADD CONSTRAINT FK_ItemsTransaction_Transaction
FOREIGN KEY (transaction_id) REFERENCES OnlineMarketPlace.Transactions(transaction_id);

ALTER TABLE OnlineMarketPlace.items_transaction
ADD CONSTRAINT FK_ItemsTransaction_Item
FOREIGN KEY (items_id) REFERENCES OnlineMarketPlace.ITEMS(item_id);

ALTER TABLE OnlineMarketPlace.Reports 
ADD CONSTRAINT FK_Reports_User
FOREIGN KEY (generated_for) REFERENCES OnlineMarketPlace.Users(user_id);
USE [MarketPlace]
GO

-- First ensure the schema exists (correcting the typo in schema name)
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'OnlineMarketPlace')
BEGIN
    EXEC('CREATE SCHEMA OnlineMarketPlace')
END
GO

-- Create the table in dbo schema first
CREATE TABLE dbo.Inventory (
    user_id INTEGER NOT NULL, 
    item_id INTEGER NOT NULL, 
    status VARCHAR(10) NOT NULL, 
    quantity INTEGER NOT NULL CHECK(quantity > 0), 
    updated_at DATE NOT NULL,
    PRIMARY KEY (user_id, item_id)
)
GO

-- Transfer to correct schema (fixing typo in schema name)
ALTER SCHEMA OnlineMarketPlace TRANSFER dbo.Inventory
GO

-- Add foreign keys with proper syntax
ALTER TABLE OnlineMarketPlace.Inventory
ADD CONSTRAINT FK_Inventory_User
FOREIGN KEY (user_id) REFERENCES OnlineMarketPlace.Users(user_id);

ALTER TABLE OnlineMarketPlace.Inventory
ADD CONSTRAINT FK_Inventory_Item
FOREIGN KEY (item_id) REFERENCES OnlineMarketPlace.ITEMS(item_id);


CREATE TABLE ExternalStores (
    store_id INT PRIMARY KEY,
    api_key VARCHAR(255) NOT NULL,
    store_name VARCHAR(100) NOT NULL,
    endpoint_url VARCHAR(255) NOT NULL,
    auth_token VARCHAR(255),
    last_sync DATETIME
);


ALTER SCHEMA OnlineMarketPlace TRANSFER dbo.ExternalStores
GO
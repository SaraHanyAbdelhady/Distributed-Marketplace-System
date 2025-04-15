

CREATE TABLE Transactions (
transactions_id 	INTEGER	 	NOT NULL, 
buyer_id 			INTEGER	 	NOT NULL, 
seller_id 			INTEGER	   	NOT NULL, 
timestamp			datetime	 NOT NULL,

PRIMARY KEY (transactions_id),
)
go

ALTER SCHEMA OnineMarketPlace TRANSFER dbo.Transactions
go

ALTER TABLE Transactions
    FOREIGN KEY buyer_id
        REFERENCES Users(user_id);

ALTER TABLE Transactions
    FOREIGN KEY seller_id
        REFERENCES Users(user_id);

////////////////////////////////////////////////////////////////////////////////

CREATE TABLE items_transaction(
transaction_id	INTEGER		 NOT NULL,
items_id		INTEGER		  NOT NULL,
amount			INTEGER		NOT NULL CHECK (amount>0),

PRIMARY KEY (transaction_id,items_id),
)
go

ALTER SCHEMA OnineMarketPlace TRANSFER dbo.items_transaction
go

ALTER TABLE items_transaction
    FOREIGN KEY transaction_id
        REFERENCES Transactions(transaction_id);

ALTER TABLE items_transaction
    FOREIGN KEY items_id
        REFERENCES ITEMS(item_id);



////////////////////////////////////////////////////////////////////////////

CREATE TABLE Reports (
reports_id 		INTEGER				NOT NULL, 
genrated_for 	INTEGER				NOT NULL, 
data 			NVARCHAR(100)	 	NOT NULL, 
created_at		DATE				NOT NULL,

PRIMARY KEY (reports_id),
)
go

ALTER SCHEMA OnineMarketPlace TRANSFER dbo.Reports
go

ALTER TABLE Reports 
    FOREIGN KEY generated_for
        REFERENCES Users(user_id);

		




INSERT INTO OnlineMarketPlace.Users (user_id, username, password_hash, email, phone, created_at, balance)
VALUES
(1, 'john_doe', 'abc123', 'john@example.com', '555-1234', '2023-01-15', 1000),
(2, 'jane_smith', 'def456', 'jane@example.com', '555-5678', '2023-02-20', 750),
(3, 'mike_jones', 'ghi789', 'mike@example.com', '555-9012', '2023-03-10', 1500),
(4, 'sarah_wilson', 'jkl012', 'sarah@example.com', '555-3456', '2023-04-05', 500),
(5, 'david_brown', 'mno345', 'david@example.com', '555-7890', '2023-05-12', 2000);



INSERT INTO OnlineMarketPlace.ITEMS (item_id, user_id_seller, name, description, price, status_available_A_sold_S, created_at)
VALUES
(101, 1, 'Smartphone', 'Latest model smartphone with 128GB storage', 800, 'A', '2023-01-20'),
(102, 2, 'Laptop', 'Gaming laptop with RTX 3080', 1500, 'A', '2023-02-25'),
(103, 3, 'Headphones', 'Wireless noise-cancelling headphones', 250, 'S', '2023-03-15'),
(104, 4, 'Smart Watch', 'Fitness tracker with heart rate monitor', 200, 'A', '2023-04-10'),
(105, 5, 'Camera', 'DSLR camera with 24MP sensor', 600, 'A', '2023-05-18');


INSERT INTO OnlineMarketPlace.Transactions (transaction_id, buyer_id, seller_id, timestamp)
VALUES
(1001, 2, 1, '2023-03-01 10:15:00'),
(1002, 3, 2, '2023-03-05 14:30:00'),
(1003, 1, 3, '2023-03-10 09:45:00'),
(1004, 4, 5, '2023-04-15 16:20:00'),
(1005, 5, 4, '2023-05-20 11:10:00');



INSERT INTO OnlineMarketPlace.items_transaction (transaction_id, items_id, amount)
VALUES
(1001, 101, 1),
(1002, 102, 1),
(1003, 103, 1),
(1004, 105, 1),
(1005, 104, 1);

USE [MarketPlace]
GO

INSERT INTO OnlineMarketPlace.Users (user_id, username, password_hash, email, phone, created_at, balance)
VALUES
(1, 'john_doe', 'abc123', 'john@example.com', '555-1234', '2023-01-15', 1000),
(2, 'jane_smith', 'def456', 'jane@example.com', '555-5678', '2023-02-20', 750),
(3, 'mike_jones', 'ghi789', 'mike@example.com', '555-9012', '2023-03-10', 1500),
(4, 'sarah_wilson', 'jkl012', 'sarah@example.com', '555-3456', '2023-04-05', 500),
(5, 'david_brown', 'mno345', 'david@example.com', '555-7890', '2023-05-12', 2000),
(6, 'emma_clark', 'pqr678', 'emma@example.com', '555-2345', '2023-06-01', 1200),
(7, 'liam_wright', 'stu901', 'liam@example.com', '555-6789', '2023-06-15', 900),
(8, 'olivia_hall', 'vwx234', 'olivia@example.com', '555-0123', '2023-07-01', 1800),
(9, 'noah_martin', 'yz0123', 'noah@example.com', '555-4567', '2023-07-15', 600),
(10, 'ava_thomas', 'abc456', 'ava@example.com', '555-8901', '2023-08-01', 1500),
(11, 'william_jack', 'def789', 'william@example.com', '555-2346', '2023-08-15', 1100),
(12, 'sophia_lee', 'ghi012', 'sophia@example.com', '555-6780', '2023-09-01', 1300),
(13, 'james_king', 'jkl345', 'james@example.com', '555-9013', '2023-09-15', 800),
(14, 'isabella_scott', 'mno678', 'isabella@example.com', '555-3457', '2023-10-01', 1700),
(15, 'benjamin_hill', 'pqr901', 'benjamin@example.com', '555-7891', '2023-10-15', 2000);



INSERT INTO OnlineMarketPlace.ITEMS (item_id, user_id_seller, name, description, price, status_available_A_sold_S, created_at)
VALUES
(101, 1, 'Smartphone', 'Latest model smartphone with 128GB storage', 800, 'A', '2023-01-20'),
(102, 2, 'Laptop', 'Gaming laptop with RTX 3080', 1500, 'A', '2023-02-25'),
(103, 3, 'Headphones', 'Wireless noise-cancelling headphones', 250, 'S', '2023-03-15'),
(104, 4, 'Smart Watch', 'Fitness tracker with heart rate monitor', 200, 'A', '2023-04-10'),
(105, 5, 'Camera', 'DSLR camera with 24MP sensor', 600, 'A', '2023-05-18'),
(106, 6, 'Tablet', '10-inch tablet with 64GB storage', 400, 'A', '2023-06-10'),
(107, 7, 'Monitor', '27-inch 4K monitor', 300, 'A', '2023-06-20'),
(108, 8, 'Keyboard', 'Mechanical RGB keyboard', 100, 'A', '2023-07-05'),
(109, 9, 'Mouse', 'Wireless gaming mouse', 50, 'S', '2023-07-20'),
(110, 10, 'Speaker', 'Bluetooth portable speaker', 120, 'A', '2023-08-10'),
(111, 11, 'Printer', 'All-in-one inkjet printer', 150, 'A', '2023-08-20'),
(112, 12, 'Router', 'Wi-Fi 6 mesh router', 200, 'A', '2023-09-05'),
(113, 13, 'Webcam', '1080p webcam with microphone', 80, 'S', '2023-09-20'),
(114, 14, 'External Drive', '1TB portable SSD', 130, 'A', '2023-10-05'),
(115, 15, 'Smart Bulb', 'Wi-Fi enabled smart LED bulb', 25, 'A', '2023-10-15');


INSERT INTO OnlineMarketPlace.Transactions (transaction_id, buyer_id, seller_id, timestamp)
VALUES
(1001, 2, 1, '2023-03-01 10:15:00'),
(1002, 3, 2, '2023-03-05 14:30:00'),
(1003, 1, 3, '2023-03-10 09:45:00'),
(1004, 4, 5, '2023-04-15 16:20:00'),
(1005, 5, 4, '2023-05-20 11:10:00'),
(1006, 6, 7, '2023-06-25 12:00:00'),
(1007, 7, 8, '2023-07-10 15:30:00'),
(1008, 8, 9, '2023-07-25 10:45:00'),
(1009, 9, 10, '2023-08-15 14:20:00'),
(1010, 10, 11, '2023-08-25 09:10:00'),
(1011, 11, 12, '2023-09-10 16:00:00'),
(1012, 12, 13, '2023-09-25 11:30:00'),
(1013, 13, 14, '2023-10-05 13:15:00'),
(1014, 14, 15, '2023-10-15 17:40:00'),
(1015, 15, 6, '2023-10-25 08:50:00');




INSERT INTO OnlineMarketPlace.items_transaction (transaction_id, items_id, amount)
VALUES
(1001, 101, 1),
(1002, 102, 1),
(1003, 103, 1),
(1004, 105, 1),
(1005, 104, 1),
(1006, 106, 1),
(1007, 107, 1),
(1008, 108, 2),
(1009, 109, 1),
(1010, 110, 3),
(1011, 111, 1),
(1012, 112, 1),
(1013, 113, 1),
(1014, 114, 2),
(1015, 115, 4);

INSERT INTO OnlineMarketPlace.Reports (reports_id, generated_for, data, created_at)
VALUES
(501, 1, 'Monthly sales report for January 2023', '2023-02-01'),
(502, 2, 'Monthly sales report for February 2023', '2023-03-01'),
(503, 3, 'Monthly sales report for March 2023', '2023-04-01'),
(504, 4, 'Monthly sales report for April 2023', '2023-05-01'),
(505, 5, 'Monthly sales report for May 2023', '2023-06-01'),
(506, 6, 'Monthly sales report for June 2023', '2023-07-01'),
(507, 7, 'Monthly sales report for July 2023', '2023-08-01'),
(508, 8, 'Monthly sales report for August 2023', '2023-09-01'),
(509, 9, 'Monthly sales report for September 2023', '2023-10-01'),
(510, 10, 'Monthly sales report for October 2023', '2023-11-01'),
(511, 11, 'Monthly sales report for November 2023', '2023-12-01'),
(512, 12, 'Monthly sales report for December 2023', '2024-01-01'),
(513, 13, 'Monthly sales report for January 2024', '2024-02-01'),
(514, 14, 'Monthly sales report for February 2024', '2024-03-01'),
(515, 15, 'Monthly sales report for March 2024', '2024-04-01');

INSERT INTO OnlineMarketPlace.Inventory (user_id, item_id, status, quantity, updated_at)
VALUES
(1, 101, 'Active', 5, '2023-06-01'),
(2, 102, 'Active', 3, '2023-06-02'),
(3, 103, 'Inactive', 11, '2023-06-03'),
(4, 104, 'Active', 10, '2023-06-04'),
(5, 105, 'Active', 2, '2023-06-05'),
(6, 106, 'Active', 8, '2023-07-01'),
(7, 107, 'Active', 4, '2023-07-15'),
(8, 108, 'Active', 15, '2023-08-01'),
(9, 109, 'Inactive', 2, '2023-08-15'),
(10, 110, 'Active', 20, '2023-09-01'),
(11, 111, 'Active', 3, '2023-09-15'),
(12, 112, 'Active', 6, '2023-10-01'),
(13, 113, 'Inactive', 1, '2023-10-15'),
(14, 114, 'Active', 10, '2023-11-01'),
(15, 115, 'Active', 50, '2023-11-15');


INSERT INTO OnlineMarketPlace.ExternalStores (store_id, api_key, store_name, endpoint_url, auth_token, last_sync)
VALUES
(1, 'ak_123456789', 'TechGadgets', 'https://api.techgadgets.com/v1', 'tok_987654321', '2023-06-10 09:15:00'),
(2, 'ak_987654321', 'ElectroWorld', 'https://api.electroworld.net/v2', 'tok_123456789', '2023-06-11 14:30:00'),
(3, 'ak_555555555', 'GizmoHub', 'https://api.gizmohub.io/v3', 'tok_444444444', '2023-06-12 11:45:00'),
(4, 'ak_111222333', 'DigitalBazaar', 'https://api.digitalbazaar.com/v1', 'tok_333222111', '2023-06-13 16:20:00'),
(5, 'ak_999888777', 'FutureTech', 'https://api.futuretech.store/v2', 'tok_777888999', '2023-06-14 10:00:00'),
(6, 'ak_444555666', 'TechTrend', 'https://api.techtrend.com/v1', 'tok_666555444', '2023-07-01 10:00:00'),
(7, 'ak_777888999', 'GadgetZone', 'https://api.gadgetzone.net/v2', 'tok_999888777', '2023-07-15 12:30:00'),
(8, 'ak_123123123', 'ElectroMart', 'https://api.electromart.io/v1', 'tok_321321321', '2023-08-01 14:45:00'),
(9, 'ak_456456456', 'SmartShop', 'https://api.smartshop.com/v3', 'tok_654654654', '2023-08-15 16:00:00'),
(10, 'ak_789789789', 'TechTrove', 'https://api.techtrove.store/v1', 'tok_987987987', '2023-09-01 09:15:00'),
(11, 'ak_101112131', 'DigitalDen', 'https://api.digitalden.net/v2', 'tok_131211101', '2023-09-15 11:20:00'),
(12, 'ak_141516171', 'FutureGadgets', 'https://api.futuregadgets.com/v1', 'tok_171615141', '2023-10-01 13:40:00'),
(13, 'ak_181920212', 'TechBazaar', 'https://api.techbazaar.io/v3', 'tok_212019181', '2023-10-15 15:50:00'),
(14, 'ak_222324252', 'ElectroHub', 'https://api.electrohub.com/v1', 'tok_252423222', '2023-11-01 08:30:00'),
(15, 'ak_262728293', 'GizmoGalaxy', 'https://api.gizmogalaxy.net/v2', 'tok_293827262', '2023-11-15 10:10:00');
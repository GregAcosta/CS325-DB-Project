-- Databoiz
-- Greg Acosta, Justin Crittenden, Emad Syed, Locke Topping, Evan Blem, Miguel Lopez

-- CS 325 - Fall 2023
-- Last Modified: 12/4/2023


-- Deleting from customer/admin/user_info

DELETE FROM admins;

DELETE FROM customer;

DELETE FROM user_info;

DELETE FROM subscription;

DELETE FROM subscription_order;

DELETE FROM shipping_address;

DELETE FROM billing_address;

DELETE FROM orders;

DELETE FROM line_item;

DELETE FROM catalog;

DELETE FROM customer_order_history;

DELETE FROM payment_info;

DELETE FROM shipment;


-- Inserting into user_info Table

INSERT INTO user_info (user_id, f_Name, l_Name, passw, email, phone_num, is_admin, is_customer)
VALUES ('USR001', 'John', 'Doe', 'password123', 'johndoe@example.com', '1234567890', 'Y', 'N');

INSERT INTO user_info (user_id, f_Name, l_Name, passw, email, phone_num, is_admin, is_customer)
VALUES ('USR002', 'Jane', 'Smith', 'password456', 'janesmith@example.com', '9876543210', 'N', 'Y');

INSERT INTO user_info (user_id, f_Name, l_Name, passw, email, phone_num, is_admin, is_customer)
VALUES ('USR003', 'Peter', 'Jones', 'password789', 'peterjones@example.com', '1234567891', 'N', 'Y');

INSERT INTO user_info (user_id, f_Name, l_Name, passw, email, phone_num, is_admin, is_customer)
VALUES ('USR004', 'Mary', 'Brown', 'password1011', 'marybrown@example.com', '9876543211', 'N', 'Y');

INSERT INTO user_info (user_id, f_Name, l_Name, passw, email, phone_num, is_admin, is_customer)
VALUES ('USR005', 'David', 'Williams', 'password1213', 'davidwilliams@example.com', '1234567892', 'N', 'Y');

INSERT INTO user_info (user_id, f_Name, l_Name, passw, email, phone_num, is_admin, is_customer)
VALUES ('USR006', 'Elizabeth', 'Miller', 'password1415', 'elizabethmiller@example.com', '9876543212', 'Y', 'Y');

INSERT INTO user_info (user_id, f_Name, l_Name, passw, email, phone_num, is_admin, is_customer)
VALUES ('USR007', 'James', 'Anderson', 'password1617', 'jamesanderson@example.com', '1234567893', 'N', 'Y');

INSERT INTO user_info (user_id, f_Name, l_Name, passw, email, phone_num, is_admin, is_customer)
VALUES ('USR008', 'Barbara', 'Thompson', 'password1819', 'barbarathompson@example.com', '9876543213', 'N', 'Y');

INSERT INTO user_info (user_id, f_Name, l_Name, passw, email, phone_num, is_admin, is_customer)
VALUES ('USR009', 'Michael', 'Taylor', 'password2021', 'michaeltaylor@example.com', '1234567894', 'N', 'Y');

INSERT INTO user_info (user_id, f_Name, l_Name, passw, email, phone_num, is_admin, is_customer)
VALUES ('USR010', 'Susan', 'Martinez', 'password2223', 'susanmartinez@example.com', '9876543214', 'N', 'Y');

-- Inserting into admin Table;

INSERT INTO admins (user_id)
VALUES ('USR001');

INSERT INTO admins (user_id)
VALUES ('USR006');

-- Inserting into customer Table;

INSERT INTO customer (user_id)
VALUES ('USR002');

INSERT INTO customer (user_id)
VALUES ('USR003');

INSERT INTO customer (user_id)
VALUES ('USR004');

INSERT INTO customer (user_id)
VALUES ('USR005');

INSERT INTO customer (user_id)
VALUES ('USR006');

INSERT INTO customer (user_id)
VALUES ('USR007');

INSERT INTO customer (user_id)
VALUES ('USR008');

INSERT INTO customer (user_id)
VALUES ('USR009');

INSERT INTO customer (user_id)
VALUES ('USR010');

-- Inserting into subscription table

INSERT INTO subscription
VALUES ('SUB001', 'USR001', 'M', '01-DEC-2023', '01-JUN-2024', 'Active', 'PAY001', 'Processed');

INSERT INTO subscription
VALUES ('SUB002', 'USR002', 'M', '15-NOV-2023', '15-MAY-2024', 'Active', 'PAY002', 'Processed');

INSERT INTO subscription
VALUES ('SUB003', 'USR003', 'Q', '04-DEC-2023', '04-JAN-2024', 'Active', 'PAY003', 'Processed');

INSERT INTO subscription
VALUES ('SUB004', 'USR004', 'M', '22-SEP-2023', '22-MAR-2024', 'Active', 'PAY004', 'Processed');

INSERT INTO subscription
VALUES ('SUB005', 'USR005', 'Y', '10-AUG-2023', '10-AUG-2024', 'Active', 'PAY005', 'Processed');

INSERT INTO subscription
VALUES ('SUB006', 'USR006', 'Q', '28-JUL-2023', '28-APR-2024', 'Active', 'PAY006', 'Processed');

INSERT INTO subscription
VALUES ('SUB007', 'USR007', 'M', '16-JUN-2023', '16-FEB-2024', 'Active', 'PAY007', 'Processed');

INSERT INTO subscription
VALUES ('SUB008', 'USR008', 'Y', '04-MAY-2023', '04-MAY-2024', 'Active', 'PAY008', 'Processed');

INSERT INTO subscription
VALUES ('SUB009', 'USR009', 'Q', '20-APR-2023', '20-JAN-2024', 'Active', 'PAY009', 'Processed');

INSERT INTO subscription
VALUES ('SUB010', 'USR010', 'M', '08-MAR-2023', '08-SEP-2024', 'Active', 'PAY010', 'Processed');

-- Inserting into Shipping Address Table

INSERT INTO shipping_address
VALUES ('SADD001', 123, 456, 'Main Street', 'Arcata', 'California', 95521, 'USR001');

INSERT INTO shipping_address
VALUES ('SADD002', 456, 789, 'Elm Street', 'Arcata', 'California', 95521, 'USR002');

INSERT INTO shipping_address
VALUES ('SADD003', 789, 1011, 'Oak Street', 'Arcata', 'California', 95521, 'USR003');

INSERT INTO shipping_address
VALUES ('SADD004', 1011, 1213, 'Pine Street', 'Arcata', 'California', 95521, 'USR004');

INSERT INTO shipping_address
VALUES ('SADD005', 1213, 1415, 'Birch Street', 'Arcata', 'California', 95521, 'USR005');

INSERT INTO shipping_address
VALUES ('SADD006', 1415, 1617, 'Maple Street', 'Arcata', 'California', 95521, 'USR006');

INSERT INTO shipping_address
VALUES ('SADD007', 1617, 1819, 'Spruce Street', 'Arcata', 'California', 95521, 'USR007');

INSERT INTO shipping_address
VALUES ('SADD008', 1819, 2021, 'Willow Street', 'Arcata', 'California', 95521, 'USR008');

INSERT INTO shipping_address
VALUES ('SADD009', 2021, 2223, 'Cedar Street', 'Arcata', 'California', 95521, 'USR009');

INSERT INTO shipping_address
VALUES ('SADD010', 2223, 2425, 'Walnut Street', 'Arcata', 'California', 95521, 'USR010');


-- Insert into Billing Address Table

INSERT INTO billing_address
VALUES ('BADD011', 321, 654, 'Main Street', 'Arcata', 'California', 95521, 'USR001');

INSERT INTO billing_address
VALUES ('BADD012', 654, 987, 'Elm Street', 'Arcata', 'California', 95521, 'USR002');

INSERT INTO billing_address
VALUES ('BADD013', 987, 1112, 'Oak Street', 'Arcata', 'California', 95521, 'USR003');

INSERT INTO billing_address
VALUES ('BADD014', 1112, 1314, 'Pine Street', 'Arcata', 'California', 95521, 'USR004');

INSERT INTO billing_address
VALUES ('BADD015', 1314, 1516, 'Birch Street', 'Arcata', 'California', 95521, 'USR005');

INSERT INTO billing_address
VALUES ('BADD016', 1516, 1718, 'Maple Street', 'Arcata', 'California', 95521, 'USR006');

INSERT INTO billing_address
VALUES ('BADD017', 1718, 1920, 'Spruce Street', 'Arcata', 'California', 95521, 'USR007');

INSERT INTO billing_address
VALUES ('BADD018', 1920, 2122, 'Willow Street', 'Arcata', 'California', 95521, 'USR008');

INSERT INTO billing_address
VALUES ('BADD019', 2122, 2324, 'Cedar Street', 'Arcata', 'California', 95521, 'USR009');

INSERT INTO billing_address
VALUES ('BADD020', 2324, 2526, 'Walnut Street', 'Arcata', 'California', 95521, 'USR010');


-- Insert into line_item

INSERT INTO line_item (line_Item_id, order_id, product_id, quantity, unit_price, total_price, discounts, tax, shipping_costs)
VALUES ('LIN001', 'ORD001', 'PRD001', 1, 39.99, 39.99, 0.00, 3.19, 0.00);

INSERT INTO line_item (line_Item_id, order_id, product_id, quantity, unit_price, total_price, discounts, tax, shipping_costs)
VALUES ('LIN002', 'ORD002', 'PRD003', 1, 39.99, 39.99, 0.00, 3.19, 0.00);

INSERT INTO line_item (line_Item_id, order_id, product_id, quantity, unit_price, total_price, discounts, tax, shipping_costs)
VALUES ('LIN003', 'ORD003', 'PRD005', 1, 59.99, 59.99, 0.00, 4.79, 0.00);

INSERT INTO line_item (line_Item_id, order_id, product_id, quantity, unit_price, total_price, discounts, tax, shipping_costs)
VALUES ('LIN004', 'ORD004', 'PRD007', 2, 39.99, 79.98, 0.00, 6.39, 0.00);

INSERT INTO line_item (line_Item_id, order_id, product_id, quantity, unit_price, total_price, discounts, tax, shipping_costs)
VALUES ('LIN005', 'ORD005', 'PRD009', 3, 39.99, 119.97, 0.00, 9.59, 0.00);

INSERT INTO line_item (line_Item_id, order_id, product_id, quantity, unit_price, total_price, discounts, tax, shipping_costs)
VALUES ('LIN006', 'ORD006', 'PRD010', 1, 49.99, 49.99, 0.00, 3.99, 0.00);

INSERT INTO line_item (line_Item_id, order_id, product_id, quantity, unit_price, total_price, discounts, tax, shipping_costs)
VALUES ('LIN007', 'ORD007', 'PRD004', 2, 39.99, 79.98, 0.00, 6.39, 0.00);

INSERT INTO line_item (line_Item_id, order_id, product_id, quantity, unit_price, total_price, discounts, tax, shipping_costs)
VALUES ('LIN008', 'ORD008', 'PRD006', 1, 39.99, 39.99, 0.00, 3.19, 0.00);

INSERT INTO line_item (line_Item_id, order_id, product_id, quantity, unit_price, total_price, discounts, tax, shipping_costs)
VALUES ('LIN009', 'ORD009', 'PRD008', 1, 59.99, 59.99, 0.00, 4.79, 0.00);

INSERT INTO line_item (line_Item_id, order_id, product_id, quantity, unit_price, total_price, discounts, tax, shipping_costs)
VALUES ('LIN010', 'ORD010', 'PRD002', 2, 39.99, 79.98, 0.00, 6.39, 0.00);



--Inserting into catalog Table

INSERT INTO catalog
VALUES ('PRD001', 'Super Mario Bros.', 'Jump and stomp your way through the Mushroom Kingdom in this classic platformer!', 'Platformer', 'New', '13-SEP-1985', 39.99, '100', 'Nintendo', 'Nintendo Entertainment System (NES)');

INSERT INTO catalog
VALUES ('PRD002', 'The Legend of Zelda', 'Explore the land of Hyrule and battle evil forces in this timeless adventure game!', 'Action-Adventure', 'New', '21-FEB-1986', 39.99, '75', 'Nintendo', 'NES');

INSERT INTO catalog
VALUES ('PRD003', 'Mega Man X', 'Battle your way through challenging levels and defeat bosses in this action-packed platformer!', 'Platformer', 'New', '31-JAN-1993', 39.99, '50', 'Capcom', 'Super Nintendo Entertainment System (SNES)');

INSERT INTO catalog
VALUES ('PRD004', 'Final Fantasy VII', 'Embark on an epic journey with Cloud Strife and his friends in this classic RPG!', 'Role-Playing', 'New', '31-JAN-1997', 49.99, '40', 'Square Enix', 'Playstation');

INSERT INTO catalog
VALUES ('PRD005', 'Sonic the Hedgehog 2', 'Run, jump, and spin through stages as Sonic the Hedgehog in this fast-paced platformer!', 'Platformer', 'New', '24-NOV-1992', 39.99, '60', 'Sega', 'Sega Genesis');

INSERT INTO catalog
VALUES ('PRD006', 'The Legend of Zelda: Link to the Past', 'Travel through time and save Hyrule in this epic prequel to The Legend of Zelda!', 'Action-Adventure', 'New', '21-NOV-1991', 39.99, '30', 'Nintendo', 'SNES');

INSERT INTO catalog
VALUES ('PRD007', 'Super Metroid', 'Explore the alien world of Zebes and battle hostile creatures in this Metroidvania game!', 'Action-Adventure', 'New', '19-MAR-1994', 39.99, '80', 'Nintendo', 'SNES');

INSERT INTO catalog
VALUES ('PRD008', 'Donkey Kong Country', 'Swing and jump through stages as Diddy Kong and Donkey Kong to rescue Donkey Kong from King K. Rool!', 'Platformer', 'New', '21-NOV-1994', 39.99, '20', 'Rare', 'SNES');

INSERT INTO catalog
VALUES ('PRD009', 'Contra III: The Alien Wars', 'Run and gun your way through hordes of enemies in this classic action game!', 'Run-and-Gun', 'New', '24-OCT-1992', 39.99, '15', 'Konami', 'SNES');

INSERT INTO catalog
VALUES ('PRD010', 'Castlevania: Symphony of the Night', 'Explore a gothic castle and defeat Dracula in this Metroidvania game with RPG elements!', 'Action-Adventure', 'New', '24-OCT-1997', 49.99, '90', 'Konami', 'PlayStation');

-- Pokemon Red Version
INSERT INTO Catalog
VALUES ('PRD011', 'Pokemon Red Version', 'Catch and train Pokemon in the Kanto region!', 'Game', 'Used - Good', '28-SEP-1998', 39.99, '10', 'Nintendo', 'Game Boy');

-- Pokemon Blue Version
INSERT INTO Catalog
VALUES ('PRD012', 'Pokemon Blue Version', 'Embark on your Pokemon adventure in Kanto!', 'Game', 'Used - Good', '28-SEP-1998', 39.99, '8', 'Nintendo', 'Game Boy');

-- Pokemon Yellow Version
INSERT INTO Catalog
VALUES ('PRD013', 'Pokemon Yellow Version', 'Pikachu joins you as your partner!', 'Game', 'Used - Good', '10-SEP-1999', 44.99, '5', 'Nintendo', 'Game Boy');

-- Pokemon Gold Version
INSERT INTO Catalog
VALUES ('PRD014', 'Pokemon Gold Version', 'Explore the Johto region with your loyal Cyndaquil!', 'Game', 'New', '21-NOV-1999', 49.99, '20', 'Nintendo', 'Game Boy Color');

-- Pokemon Silver Version
INSERT INTO Catalog
VALUES ('PRD015', 'Pokemon Silver Version', 'Travel through Johto with your courageous Totodile!', 'Game', 'New', '21-NOV-1999', 49.99, '15', 'Nintendo', 'Game Boy Color');

-- Pokemon Crystal Version
INSERT INTO Catalog
VALUES ('PRD016', 'Pokemon Crystal Version', 'Uncover the mysteries of Johto with your energetic Chikorita!', 'Game', 'New', '27-FEB-2000', 49.99, '12', 'Nintendo', 'Game Boy Color');


INSERT INTO catalog (product_id, product_name, product_descr, product_category, product_condition, release_date, price, stock, manufacturer)
VALUES ('CNS001', 'Nintendo Entertainment System (NES)', 'The classic home console that introduced the world to iconic games like Super Mario Bros. and The Legend of Zelda!', 'Console', 'New', '17-AUG-1985', 149.99, '25', 'Nintendo');

INSERT INTO catalog (product_id, product_name, product_descr, product_category, product_condition, release_date, price, stock, manufacturer)
VALUES ('CNS002', 'Super Nintendo Entertainment System (SNES)', 'The successor to the NES, the SNES brought 16-bit graphics and sound to home gaming with classics like Super Mario World and Donkey Kong Country!', 'Console', 'New', '23-AUG-1991', 199.99, '30', 'Nintendo');

INSERT INTO catalog (product_id, product_name, product_descr, product_category, product_condition, release_date, price, stock, manufacturer)
VALUES ('CNS003', 'Sega Genesis', 'The Sega Genesis rivaled the SNES in the 16-bit era, offering a unique gaming experience with titles like Sonic the Hedgehog and Streets of Rage!', 'Console', 'New', '29-OCT-1989', 149.99, '20', 'Sega');

INSERT INTO catalog (product_id, product_name, product_descr, product_category, product_condition, release_date, price, stock, manufacturer)
VALUES ('CNS004', 'Nintendo 64', 'The first home console with 3D graphics, the Nintendo 64 brought new experiences to gaming with titles like Super Mario 64 and The Legend of Zelda: Ocarina of Time!', 'Console', 'New', '26-JUN-1996', 199.99, '15', 'Nintendo');

INSERT INTO catalog (product_id, product_name, product_descr, product_category, product_condition, release_date, price, stock, manufacturer)
VALUES ('CNS005', 'PlayStation', 'The first PlayStation introduced CD-ROM technology to home consoles, expanding game possibilities with titles like Final Fantasy VII and Gran Turismo!', 'Console', 'New', '09-SEP-1995', 199.99, '10', 'Sony');

-- Inserting into payment_info table

INSERT INTO payment_info
VALUES ('PAY001', 'USR001', 'Visa', 'Doe', 'John', '1234567890123456', '2025-12', '123');

INSERT INTO payment_info
VALUES ('PAY002', 'USR002', 'Mastercard', 'Smith', 'Jane', '9876543210987654', '2024-05', '456');

INSERT INTO payment_info
VALUES ('PAY003', 'USR003', 'PayPal', 'Jones', 'Peter', '1234567890123456', '2024-01', '789');

INSERT INTO payment_info
VALUES ('PAY004', 'USR004', 'American Express', 'Brown', 'Mary', '9876543210987654', '2024-03', '101');

INSERT INTO payment_info
VALUES ('PAY005', 'USR005', 'Discover', 'Williams', 'David', '1234567890123456', '2024-08', '121');

INSERT INTO payment_info
VALUES ('PAY006', 'USR006', 'JCB', 'Miller', 'Elizabeth', '9876543210987654', '2024-04', '141');

INSERT INTO payment_info
VALUES ('PAY007', 'USR007', 'Diners Club', 'Anderson', 'James', '1234567890123456', '2025-02', '161');

INSERT INTO payment_info
VALUES ('PAY008', 'USR008', 'UnionPay', 'Thompson', 'Barbara', '9876543210987654', '2025-09', '181');

INSERT INTO payment_info
VALUES ('PAY009', 'USR009', 'Solo', 'Taylor', 'Michael', '1234567890123456', '2024-01', '202');

INSERT INTO payment_info
VALUES ('PAY010', 'USR010', 'Carte Blanche', 'Martinez', 'Susan', '9876543210987654', '2023-11', '222');

-- Insert into orders table

INSERT INTO orders
VALUES ('ORD001', 'USR001', '01-DEC-2023', 'Processing', 'SADD001', 'BADD011', 'Standard Shipping', 39.99, 'Visa', 'Approved');

INSERT INTO orders
VALUES ('ORD002', 'USR002', '24-NOV-2023', 'Shipped', 'SADD002', 'BADD012', 'Expedited Shipping', 69.99, 'Mastercard', 'Processed');

INSERT INTO orders
VALUES ('ORD003', 'USR003', '12-OCT-2023', 'Completed', 'SADD003', 'BADD013', 'Standard Shipping', 59.99, 'PayPal', 'Completed');

INSERT INTO orders
VALUES ('ORD004', 'USR004', '01-SEP-2023', 'Pending', 'SADD004', 'BADD014', 'Expedited Shipping', 79.99, 'American Express', 'Pending');

INSERT INTO orders
VALUES ('ORD005', 'USR005', '30-JUL-2023', 'Shipped', 'SADD005', 'BADD015', 'Standard Shipping', 49.99, 'Discover', 'Processed');

INSERT INTO orders
VALUES ('ORD006', 'USR006', '18-JUN-2023', 'Completed', 'SADD006', 'BADD016', 'Expedited Shipping', 59.99, 'JCB', 'Completed');

INSERT INTO orders
VALUES ('ORD007', 'USR007', '07-MAY-2023', 'Processing', 'SADD007', 'BADD017', 'Standard Shipping', 39.99, 'Diners Club', 'Pending');

INSERT INTO orders
VALUES ('ORD008', 'USR008', '25-APR-2023', 'Completed', 'SADD008', 'BADD018', 'Expedited Shipping', 49.99, 'UnionPay', 'Completed');

INSERT INTO orders
VALUES ('ORD009', 'USR009', '13-MAR-2023', 'Pending', 'SADD009', 'BADD019', 'Standard Shipping', 49.99, 'Solo', 'Pending');

INSERT INTO orders
VALUES ('ORD010', 'USR010', '02-FEB-2023', 'Shipped', 'SADD010', 'BADD020', 'Expedited Shipping', 59.99, 'Carte Blanche', 'Processed');


-- Inserting into subscription orderss

INSERT INTO subscription_order
VALUES ('SOR001', 'SUB001', '29-NOV-2023', 'Shipped', 59.99, 'SADD001', 'BADD011', 'Standard Shipping', 5.99, 'TRACK001');

INSERT INTO subscription_order
VALUES ('SOR002', 'SUB002', '18-NOV-2023', 'Processing', 59.99, 'SADD002', 'BADD012', 'Expedited Shipping', 10.99, 'TRACK002');

INSERT INTO subscription_order
VALUES ('SOR003', 'SUB003', '25-OCT-2023', 'Completed', 49.99, 'SADD003', 'BADD013', 'Standard Shipping', 5.99, 'TRACK003');

INSERT INTO subscription_order
VALUES ('SOR004', 'SUB004', '13-SEP-2023', 'Pending', 59.99, 'SADD004', 'BADD014', 'Expedited Shipping', 10.99, 'TRACK004');

INSERT INTO subscription_order
VALUES ('SOR005', 'SUB005', '04-AUG-2023', 'Shipped', 69.99, 'SADD005', 'BADD015', 'Standard Shipping', 5.99, 'TRACK005');

INSERT INTO subscription_order
VALUES ('SOR006', 'SUB006', '21-JUL-2023', 'Processing', 49.99, 'SADD006', 'BADD016', 'Expedited Shipping', 10.99, 'TRACK006');

INSERT INTO subscription_order
VALUES ('SOR007', 'SUB007', '09-JUN-2023', 'Completed', 49.99, 'SADD007', 'BADD017', 'Standard Shipping', 5.99, 'TRACK007');

INSERT INTO subscription_order
VALUES ('SOR008', 'SUB008', '28-MAY-2023', 'Pending', 69.99, 'SADD008', 'BADD018', 'Expedited Shipping', 10.99, 'TRACK008');

INSERT INTO subscription_order
VALUES ('SOR009', 'SUB009', '16-APR-2023', 'Shipped', 49.99, 'SADD009', 'BADD019', 'Standard Shipping', 5.99, 'TRACK009');

INSERT INTO subscription_order
VALUES ('SOR010', 'SUB010', '04-MAR-2023', 'Processing', 59.99, 'SADD010', 'BADD020', 'Expedited Shipping', 10.99, 'TRACK010');


-- Insert into shipment TABLE

INSERT INTO shipment
VALUES ('SHIP001', 'ORD001', 'SOR001', '01-DEC-2023', 'Standard Shipping', 'TRACK001', 'Shipped', 'UPS', '05-DEC-2023', '07-DEC-2023');

INSERT INTO shipment
VALUES ('SHIP002', 'ORD002', 'SOR002', '29-NOV-2023', 'Expedited Shipping', 'TRACK002', 'Shipped', 'FedEx', '30-NOV-2023', '02-DEC-2023');

INSERT INTO shipment
VALUES ('SHIP003', 'ORD003', 'SOR003', '25-OCT-2023', 'Standard Shipping', 'TRACK003', 'Completed', 'USPS', '29-OCT-2023', '31-OCT-2023');

INSERT INTO shipment
VALUES ('SHIP004', 'ORD004', 'SOR004', '20-SEP-2023', 'Expedited Shipping', 'TRACK004', 'Pending', 'DHL', '21-SEP-2023', '25-SEP-2023');

INSERT INTO shipment
VALUES ('SHIP005', 'ORD005', 'SOR005', '04-AUG-2023', 'Standard Shipping', 'TRACK005', 'Shipped', 'UPS', '08-AUG-2023', '10-AUG-2023');

INSERT INTO shipment
VALUES ('SHIP006', 'ORD006', 'SOR006', '21-JUL-2023', 'Expedited Shipping', 'TRACK006', 'Completed', 'FedEx', '22-JUL-2023', '24-JUL-2023');

INSERT INTO shipment
VALUES ('SHIP007', 'ORD007', 'SOR007', '09-JUN-2023', 'Standard Shipping', 'TRACK007', 'Pending', 'USPS', '10-JUN-2023', '14-JUN-2023');

INSERT INTO shipment
VALUES ('SHIP008', 'ORD008', 'SOR008', '04-MAY-2023', 'Expedited Shipping', 'TRACK008', 'Shipped', 'DHL', '05-MAY-2023', '09-MAY-2023');

INSERT INTO shipment
VALUES ('SHIP009', 'ORD009', 'SOR009', '16-APR-2023', 'Standard Shipping', 'TRACK009', 'Completed', 'UPS', '20-APR-2023', '22-APR-2023');

INSERT INTO shipment
VALUES ('SHIP010', 'ORD010', 'SOR010', '04-MAR-2023', 'Expedited Shipping', 'TRACK010', 'Pending', 'FedEx', '05-MAR-2023', '09-MAR-2023');



-- Insert into customer orders table

INSERT INTO customer_order_history (user_id, order_id)
VALUES ('USR001', 'ORD001');

INSERT INTO customer_order_history (user_id, order_id)
VALUES ('USR002', 'ORD002');

INSERT INTO customer_order_history (user_id, order_id)
VALUES ('USR003', 'ORD003');

INSERT INTO customer_order_history (user_id, order_id)
VALUES ('USR004', 'ORD004');

INSERT INTO customer_order_history (user_id, order_id)
VALUES ('USR005', 'ORD005');

INSERT INTO customer_order_history (user_id, order_id)
VALUES ('USR006', 'ORD006');

INSERT INTO customer_order_history (user_id, order_id)
VALUES ('USR007', 'ORD007');

INSERT INTO customer_order_history (user_id, order_id)
VALUES ('USR008', 'ORD008');

INSERT INTO customer_order_history (user_id, order_id)
VALUES ('USR009', 'ORD009');

INSERT INTO customer_order_history (user_id, order_id)
VALUES ('USR010', 'ORD010');



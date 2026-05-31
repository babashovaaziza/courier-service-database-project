USE Coursework
GO

INSERT INTO Territory (city, district, street, postalCode) VALUES
('Tashkent', 'Yunusabad', 'Amir Temur', '100001'),
('Tashkent', 'Chilonzor', 'Bunyodkor', '100043'),
('Tashkent', 'Mirzo Ulugbek', 'Buyuk Ipak Yo‘li', '100125'),
('Tashkent', 'Sergeli', 'Navbahor', '100181'),
('Samarkand', 'Registan', 'University St', '140100'),
('Bukhara', 'Bukhara Center', 'Gijduvon St', '200100'),
('Namangan', 'Babur', 'Istiqbol', '160100'),
('Andijan', 'Asaka', 'Sharq', '170200'),
('Fergana', 'Quva', 'Furqat', '150200'),
('Nukus', 'Kegeyli', 'Doslik', '230100');

INSERT INTO Carrier (carrierName, startDate, contractStartDate, phone,
                     contactEmployeeName, [servicingPrice(in km)], bankAccountNumber)
VALUES
('ExpressGo', '2020-01-10', '2020-02-01', '998901111111', 'Jahongir', 50000, 'ACC1001'),
('FastDelivery', '2021-03-05', '2021-03-20', '998902222222', 'Aziza', 60000, 'ACC1002'),
('TurboLogistics', '2019-05-15', '2019-06-05', '998903333333', 'Kamola', 45000, 'ACC1003'),
('QuickShip', '2022-07-01', '2022-07-18', '998904444444', 'Rustam', 55000, 'ACC1004'),
('SmartMove', '2021-09-10', '2021-09-25', '998905555555', 'Malika', 52000, 'ACC1005'),
('SpeedLine', '2020-11-12', '2020-11-30', '998906666666', 'Siroj', 48000, 'ACC1006'),
('MegaDelivery', '2018-08-25', '2018-09-05', '998907777777', 'Otabek', 65000, 'ACC1007'),
('EkoTrans', '2023-01-01', '2023-01-12', '998908888888', 'Nigina', 47000, 'ACC1008'),
('ProCarrier', '2019-03-03', '2019-03-15', '998909999999', 'Sherzod', 53000, 'ACC1009'),
('LogistiX', '2024-02-10', '2024-02-20', '998901234567', 'Dilshod', 58000, 'ACC1010');


INSERT INTO Employee (passportNO, firstName, LastName, birthdate, hiredate,
                      position, experience, salary, adress, phone,
                      numberOfChildren, gender, workingBranchNo)
VALUES
('EMP030', 'Dildora', 'Karimova', '1998-05-12', '2023-01-10', 'Manager', 4, 5000, 'Tashkent', '998907777701', 0, 'Female', NULL),
('EMP031', 'Aziz', 'Niyazov', '1995-03-22', '2022-06-01', 'Manager', 3, 3500, 'Tashkent', '998907777702', 1, 'Male', NULL),
('EMP032', 'Malika', 'Olimova', '1999-11-02', '2024-01-15', 'Operator', 2, 3200, 'Samarkand', '998907777703', 0, 'Female', NULL),
('EMP054', 'Jasur', 'Saidov', '1994-07-14', '2021-05-20', 'Driver', 6, 4000, 'Bukhara', '998907777704', 2, 'Male', NULL),
('EMP065', 'Laylo', 'Akbarova', '1997-09-10', '2023-03-11', 'Accountant', 3, 4200, 'Tashkent', '998907777705', 1, 'Female', NULL),
('EMP096', 'Sherzod', 'Mirzaev', '1992-01-05', '2019-09-01', 'Manager', 10, 4800, 'Andijan', '998907777706', 3, 'Male', NULL),
('EMP057', 'Madina', 'Qodirova', '2000-02-19', '2024-04-10', 'Manager', 1, 2800, 'Fergana', '998907777707', 0, 'Female', NULL),
('EMP088', 'Timur', 'Usmanov', '1996-06-30', '2022-02-02', 'Cook', 4, 4500, 'Namangan', '998907777708', 2, 'Male', NULL),
('EMP099', 'Farida', 'Yuldasheva', '1993-10-08', '2020-12-15', 'Manager', 5, 3600, 'Nukus', '998907777709', 1, 'Female', NULL),
('EMP019', 'Kamron', 'Bobojonov', '1991-04-28', '2021-08-21', 'Manager', 7, 5200, 'Tashkent', '998907777710', 2, 'Male', NULL),
('EMP061', 'Aziz', 'Karimov', '1988-04-12', '2018-03-20', 'Manager', 10, 7500, 'Toshkent, Chilonzor', '998901112233', 2, 'Male', NULL),
('EMP022', 'Madina', 'Islomova', '1990-11-05', '2019-07-10', 'Manager', 7, 5200, 'Toshkent, Yunusobod', '998935556677', 1, 'Female', NULL),
('EMP013', 'Javlon', 'Tursunov', '1993-02-18', '2020-01-22', 'Manager', 3, 3500, 'Samarqand, Registon', '998977889900', 0, 'Male', NULL),
('EMP045', 'Laylo', 'Xolmatova', '1995-09-30', '2021-05-13', 'Manager', 2, 3000, 'Buxoro, Gijduvon', '998909998877', 0, 'Female', NULL),
('EMP025', 'Sherzod', 'Rahimov', '1985-06-25', '2018-11-30', 'Cook', 12, 8200, 'Namangan, Chortoq', '998933344455', 3, 'Male', NULL);


INSERT INTO Branch (locationID, startDate, deliveryRadius, phone,
                    managerPassportNO, servicingCarrier)
VALUES
(1, '2023-02-01', 12, '998905551001', 'EMP030', 1),
(2, '2023-03-15', 15, '998905551002', 'EMP031', 2),
(3,'2024-01-20', 10, '998905551003', 'EMP096', 3),
(4, '2022-11-10', 18, '998905551004', 'EMP057', 4),
(10, '2023-07-25', 14, '998905551005', 'EMP099', 5),
(8, '2023-09-01', 11, '998905551006', 'EMP019', 6),
(6, '2024-03-12', 9,  '998905551007', 'EMP061', 7),
(7, '2023-05-19', 20, '998905551008', 'EMP022', 8),
(5, '2022-12-05', 13, '998905551009', 'EMP013', 9),
(9, '2024-04-01', 17, '998905551010', 'EMP045', 10);

UPDATE Employee SET workingBranchNo = 3 WHERE passportNO = 'EMP030';
UPDATE Employee SET workingBranchNo = 4 WHERE passportNO = 'EMP031';
UPDATE Employee SET workingBranchNo = 5 WHERE passportNO = 'EMP032';
UPDATE Employee SET workingBranchNo = 6 WHERE passportNO = 'EMP054';
UPDATE Employee SET workingBranchNo = 7 WHERE passportNO = 'EMP065';
UPDATE Employee SET workingBranchNo = 8 WHERE passportNO = 'EMP096';
UPDATE Employee SET workingBranchNo = 9 WHERE passportNO = 'EMP057';
UPDATE Employee SET workingBranchNo = 10 WHERE passportNO = 'EMP088';
UPDATE Employee SET workingBranchNo = 9 WHERE passportNO = 'EMP099';
UPDATE Employee SET workingBranchNo = 10 WHERE passportNO = 'EMP019';
UPDATE Employee SET workingBranchNo = 8 WHERE passportNO = 'EMP061';
UPDATE Employee SET workingBranchNo = 9 WHERE passportNO = 'EMP022';
UPDATE Employee SET workingBranchNo = 10 WHERE passportNO = 'EMP013';
UPDATE Employee SET workingBranchNo = 1 WHERE passportNO = 'EMP045';
UPDATE Employee SET workingBranchNo = 2 WHERE passportNO = 'EMP025';

INSERT INTO CarrierEmployee (passportNO, firstName, lastName, birthdate,
                             hiredate, phone, vehcileNo, vehcileType,
                             experience, workingCarrierNo)
VALUES
('CEMP001', 'Rustam', 'Aliyev', '1990-03-10', '2021-05-21', '998909000001', '01A001AA', 'Truck', 5, 1),
('CEMP002', 'Bobur', 'Tursunov', '1988-04-18', '2020-07-10', '998909000002', '01B002BB', 'Car', 7, 2),
('CEMP003', 'Kamron', 'Davronov', '1992-08-25', '2022-02-11', '998909000003', '01C003CC', 'Van', 4, 3),
('CEMP004', 'Nigora', 'Khalilova', '1995-01-12', '2021-06-15', '998909000004', '01D004DD', 'Scooter', 3, 4),
('CEMP005', 'Sarvar', 'Karimov', '1987-11-19', '2020-03-20', '998909000005', '01E005EE', 'Truck', 8, 5),
('CEMP006', 'Dilnoza', 'Jumayeva', '1999-02-17', '2023-01-10', '998909000006', '01F006FF', 'Car', 2, 6),
('CEMP007', 'Shohruh', 'Olimov', '1993-05-09', '2022-09-01', '998909000007', '01G007GG', 'Bike', 6, 7),
('CEMP008', 'Madina', 'Sodiqova', '1998-12-30', '2023-04-12', '998909000008', '01H008HH', 'Van', 1, 8),
('CEMP009', 'Ulugbek', 'Qodirov', '1991-09-04', '2021-11-30', '998909000009', '01I009II', 'Car', 4, 9),
('CEMP010', 'Gulnora', 'Umarova', '1996-06-22', '2022-05-15', '998909000010', '01J010JJ', 'Truck', 3, 10);


INSERT INTO OnlineShop (onlineShopName, startDate, NumberofUsers,
                        contractStartDate, phone, ContactEmployeeName,
                        [servicingPrice(in %)], BankAccountNumber)
VALUES
('FoodExpress', '2024-01-01', 30000, '2024-01-10', '998940001001', 'Kamila', 10, 'BANK001'),
('Asaxiy', '2016-05-12', 1500000, '2016-05-12', '+998712001122', 'Jasur Karimov', 5, 'UZ12 0011 0000 5533'),
('ZoodMall', '2017-03-18', 2300000, '2017-03-18', '+998712345678', 'Malika Yoqubova', 7, 'UZ78 0022 1111 9988'),
('Goodzone', '2015-11-01', 850000, '2015-11-01', '+998709876543', 'Shahzod Umarov', 6, 'UZ11 5566 2233 8899'),
('Feedup', '2014-09-22', 1750000, '2014-09-22', '+998712223344', 'Dilshod Rahimov', 4, 'UZ44 9988 6677 1100'),
('Appex', '2018-02-10', 940000, '2018-02-10', '+998710011223', 'Feruza Abduvaliyeva', 5, 'UZ99 1122 3344 5566'),
('Milliy Taomlar', '2020-01-15', 300000, '2020-01-15', '+998933210987', 'Bobur Abdurahmonov', 3, 'UZ66 4433 2211 0099'),
('Sariq Bola', '2019-07-01', 510000, '2019-07-01', '+998946789012', 'Sevinch Karimova', 6, 'UZ33 9900 1122 2200');



INSERT INTO Orderr (orderTime, deliveryTime, paymentMethod, customerPhone,
                     deliveryAdress, [deliveryRouteLen(km)], 
                      acceptingEmployee, carriyngEmployee,
                      orderGivedOnlineShop)
VALUES
('2024-11-12 10:15', '2024-11-12 10:45', 'Card', '998901111001',
 'Yunusabad 12', 5,  'EMP032', 'CEMP001', 1),

('2024-12-12 11:15', '2024-12-12 11:45', 'Cash', '998901111002',
 'Chilonzor 5', 7, 'EMP032', 'CEMP002',  2),

('2024-09-12 10:55', '2024-09-12 11:35', 'Card', '998901111003',
 'Mirzo Ulugbek 45', 9, 'EMP032', 'CEMP003', 3),

('2024-11-22 20:15', '2024-11-22 20:55', 'Click', '998901111004',
 'Sergeli 7', 4,'EMP032', 'CEMP004',  5),

('2024-10-12 15:15', '2024-10-12 15:43', 'Cash', '998901111005',
 'Registan 3', 8,'EMP032', 'CEMP005',  6),

('2024-11-11 13:15','2024-11-11 13:39', 'Card', '998901111006',
 'Bukhara Center 20', 6,'EMP032', 'CEMP006', 1),

('2024-10-12 22:15', '2024-10-12 22:48', 'Card', '998901111007',
 'Fergana Quva 15', 10, 'EMP032', 'CEMP007',  3),

('2024-03-11 10:11', '2024-03-11 10:45', 'Click', '998901111008',
 'Namangan Babur 8', 5,  'EMP032', 'CEMP008', 3),

('2024-12-12 10:45', '2024-12-12 11:18', 'Cash', '998901111009',
 'Nukus Doslik 22', 6, 'EMP032', 'CEMP009',  6),

('2024-11-12 10:35', '2024-11-12 11:09', 'Card', '998901111010',
 'Andijan Asaka 30', 7, 'EMP032', 'CEMP010', 5);


INSERT INTO Category (categoryName, [PreparationTime(min)], [status],
                      [description], shelfLife, [storageTempMax(Celsius)],
                      [storageTempMin(Celsius)])
VALUES
('Bread',          15, 'Active', 'Daily fresh bakery items',          '2 days', 25, 5),
('Cakes',          45, 'Active', 'Sweet bakery cakes & pastries',     '1 day', 20, 2),
('Drinks',         5,  'Active', 'Cold drinks and natural juices',    '7 days', 10, 1),
('Snacks',         10, 'Active', 'Light snacks for quick serving',    '3 days', 22, 4),
('Desserts',       30, 'Active', 'Ice cream and other desserts',      '1 day', 5,  -5),
('Pizza',          20, 'Active', 'Various types of freshly made pizza','1 day', 30, 5),
('Sandwiches',     12, 'Active', 'Fresh sandwiches and baguettes',    '1 day', 18, 3),
('Salads',         8,  'Active', 'Healthy salads and cold dishes',    '1 day', 10, 2),
('Soups',          25, 'Active', 'Hot soups prepared daily',          '1 day', 90, 40),
('Grill',          35, 'Active', 'Grilled meat and chicken dishes',   '1 day', 80, 15);


INSERT INTO Product (name, price, preparedTime, [appweight(gr)], appcalories, inCategory,PreparedBy)
VALUES
('Baguette',         8000,  '2024-11-11 13:15', 250,  600,  2,'EMP088'),  
('Chocolate Cake',  25000,  '2024-01-11 13:15', 500, 1200,  5,'EMP025'),   
('Orange Juice',     7000,  '2024-02-11 13:15', 300,  200,  3,'EMP088'),   
('Potato Chips',     5000,  '2024-03-11 13:15', 150,  450,  4,'EMP025'),   
('Ice Cream',        9000,  '2024-04-11 13:15', 200,  350,  5,'EMP088'),   
('Pepperoni Pizza', 55000,  '2024-05-11 13:15', 600, 1500,  6,'EMP088'),   
('Club Sandwich',   12000,  '2024-06-11 13:15', 350,  700,  7,'EMP025'),   
('Greek Salad',     11000,  '2024-07-11 13:15', 300,  180,  8,'EMP088'),   
('Chicken Soup',    13000,  '2024-08-11 13:15', 400,  250, 9,'EMP025'),   
('BBQ Chicken',     27000,  '2024-09-11 13:15', 450,  900, 10,'EMP088');   


 INSERT INTO OrderDetail (productNo, quantity, orderNo) VALUES
(1,  2, 1),
(2,  1, 2),
(3,  3, 3),
(4,  1, 4),
(5,  2, 5),
(6,  4, 6),
(7,  1, 7),
(8,  2, 8),
(9,  5, 9),
(10, 1, 10);

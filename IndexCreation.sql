CREATE INDEX idx_Orderr_orderTime 
ON Orderr(orderTime);

CREATE INDEX idx_Orderr_onlineShop 
ON Orderr(orderGivedOnlineShop);

CREATE INDEX idx_OrderDetail_orderNo
ON OrderDetail(orderNo);

CREATE INDEX idx_Product_category
ON Product(inCategory);

CREATE INDEX idx_Employee_workingBranch
ON Employee(workingBranchNo);

SELECT o.orderrNo, o.orderTime, o.deliveryAdress,
       os.onlineShopName, p.name AS ProductName, od.quantity
FROM Orderr o
JOIN OrderDetail od ON o.orderrNo = od.orderNo
JOIN Product p ON od.productNo = p.productNO
JOIN OnlineShop os ON o.orderGivedOnlineShop = os.onlineShopNO
WHERE YEAR(o.orderTime) = 2022;
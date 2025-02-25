-- Create Table Orders (
--  OrderID INT UNSIGNED NOT NULL,
--  CustID INT UNSIGNED NOT NULL,
--  OrderDate DATE NOT NULL,
--  TotalAmt INT NOT NULL
-- );

-- INSERT INTO Orders(OrderID, CustID, OrderDate, TotalAmt)
-- VALUES
-- (1, 201, '2023-01-12', 250),
-- (2, 202, '2023-02-14', 300),
-- (3, 203, '2023-03-10', 450),
-- (4, 204, '2023-04-05', 600),
-- (5, 205, '2023-05-20', 150);
-- DROP TABLE Orders;

-- 6. Retrieve all orders placed in the month of March 2023.
-- SELECT *
-- FROM Orders
-- WHERE OrderDate LIKE '2023-03%';

-- 7. Find the average order value.
-- SELECT AVG(TotalAmt)
-- FROM Orders;

-- 8. Get the highest and lowest total order amounts.
-- SELECT MAX(TotalAmt) as maximum, MIN(TotalAmt) as minimum
-- FROM Orders;

-- 9. Count the number of orders placed by each customer.
-- SELECT count(*)
-- FROM Orders
-- GROUP BY CustID;

-- 10. Find customers who placed more than one order.
-- CREATE VIEW cc AS
-- SELECT CustID, COUNT(*) AS c
-- FROM Orders
-- GROUP BY CustID;
-- SELECT CustID
-- FROM cc
-- WHERE c>1;
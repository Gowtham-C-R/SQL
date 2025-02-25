-- Create Table Sales(
-- SaleID int UNSIGNED NOT NULL,
-- ProductID int UNSIGNED NOT NULL,
-- CustomerID int UNSIGNED NOT NULL,
-- SaleDate date,
-- Quantity int UNSIGNED,
-- TotalAmount int UNSIGNED
-- );
-- INSERT INTO Sales(SaleID, ProductID, CustomerID, SaleDate, Quantity, TotalAmount)
-- Values
-- (1, 101, 201, '2023-01-12', 2, 2000),
-- (2, 102, 202, '2023-02-14', 1, 800),
-- (3, 103, 203, '2023-03-10', 3, 150),
-- (4, 104, 204, '2023-04-05', 2, 240),
-- (5, 105, 205, '2023-05-20', 5, 150);

-- Questions:
-- 1. Write a query to get the total sales amount for each product.

-- SELECT ProductID, (TotalAmount*Quantity) as AmountPerProduct
-- FROM Sales;

-- 2. Find the top 2 best-selling products based on quantity.

-- SELECT ProductID
-- FROM Sales
-- ORDER BY Quantity DESC
-- LIMIT 2;

-- 3. Use a CASE statement to categorize sales as "High" if TotalAmount > 1000, "Medium"
-- if between 500 and 1000, and "Low" otherwise.

-- SELECT SaleID, ProductID,
-- CASE
-- 	WHEN TotalAmount > 1000 THEN 'HIGH'
--     WHEN TotalAmount BETWEEN 500 AND 1000 THEN 'MEDIUM'
--     ELSE 'LOW'
-- END AS QualityText
-- FROM Sales;

-- 4. Retrieve the total sales amount for each month.
-- SELECT SUM(TotalAmount)
-- FROM Sales
-- GROUP BY EXTRACT(MONTH FROM SaleDate);
-- 5. Find customers who purchased more than 2 different products.
-- Create View ccount AS
-- (SELECT CustomerID, COUNT(*) as c
-- FROM Sales
-- GROUP BY CustomerID);
-- SELECT CustomerID
-- FROM ccount
-- WHERE c > 2;
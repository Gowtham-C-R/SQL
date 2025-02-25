-- Create Table product(
-- prdid int UNSIGNED NOT NULL,
-- prdname varchar(10),
-- cat varchar(15),
-- price int UNSIGNED NOT NULL,
-- PRIMARY KEY (prdid)
-- );
-- Insert INTO product(prdid, prdname, cat, price)
-- Values
-- (101, 'Laptop', 'Electronics', 1000),
-- (102, 'Phone', 'Electronics', 800),
-- (103, 'Shirt', 'Clothing', 50),
-- (104, 'Shoes', 'Footwear', 120),
-- (105, 'Book', 'Stationery', 30);
-- Questions:
-- 11. Retrieve all products that belong to the "Electronics" category.
-- SELECT prdname
-- FROM product
-- WHERE cat = 'Electronics';

-- 12. Find the most expensive and least expensive product.
-- SELECT prdname as expensive_product
-- FROM product
-- WHERE price = (SELECT MAX(price) FROM product);
-- SELECT prdname as least_expensive_product
-- FROM product
-- WHERE price = (SELECT MIN(price)FROM product);

-- 13. Count the number of products in each category.
-- SELECT COUNT(*)
-- FROM product
-- GROUP BY cat;

-- 14. Display products whose price is between 50 and 500.
-- SELECT prdname
-- FROM product
-- WHERE price BETWEEN 50 AND 500;

-- 15. Write a query to increase the price of all products by 10%.
-- UPDATE product 
-- SET price = (price*1.1)
-- WHERE prdid > 1;

-- SELECT *
-- FROM product;
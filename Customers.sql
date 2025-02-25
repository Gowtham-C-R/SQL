-- CREATE TABLE customers(
-- cid int UNSIGNED NOT NULL,
-- cname varchar(10),
-- city varchar(20),
-- age int unsigned);

-- INSERT INTO customers(cid, cname, city, age)
-- Values
-- (201, 'John', 'New York', 25),
-- (202, 'Sara', 'Los Angeles', 30),
-- (203, 'Mike', 'Chicago', 28),
-- (204, 'Lisa', 'Houston', 22),
-- (205, 'Dave', 'Miami', 35);

-- DROP TABLE customers;
-- Questions:
-- 16. Retrieve all customers who live in "Chicago".
-- SELECT cname
-- FROM customers
-- WHERE city = 'Chicago';

-- 17. Find the average age of customers.
-- SELECT AVG(age) as Average_Age
-- FROM customers;

-- 18. Get customers whose age is greater than 25 and live in "New York".
-- SELECT cname
-- FROM customers
-- WHERE age > 25 and city = "New York";

-- 19. Sort the customer list by age in descending order.
-- SELECT *
-- FROM customers
-- ORDER BY age DESC;

-- 20. Retrieve the top 3 oldest customers.
-- SELECT *
-- FROM customers
-- ORDER BY age DESC
-- LIMIT 3;
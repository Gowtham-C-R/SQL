-- Create Table Transactions(
-- 	TransactionID int unsigned NOT NULL,
-- 	AccountID int unsigned NOT NULL,
-- 	Amount int unsigned,
-- 	TransactionType varchar(6),
-- 	TransactionDate date
-- );
-- INSERT INTO Transactions(TransactionID, AccountID, Amount, TransactionType, TransactionDate)
-- Values
-- (1, 1001, 500, 'Credit', '2023-06-01'),
-- (2, 1002, 200, 'Debit', '2023-06-02'),
-- (3, 1003, 1000, 'Credit', '2023-06-03'),
-- (4, 1004, 750, 'Debit', '2023-06-04'),
-- (5, 1005, 300, 'Credit', '2023-06-05')

-- INSERT INTO Transactions(TransactionID, AccountID, Amount, TransactionType, TransactionDate)
-- Values
-- (6, 1001, 800, 'Credit', '2023-06-02');

-- Questions:
-- 11. Retrieve all transactions that are of type "Credit".

-- SELECT *
-- FROM Transactions
-- WHERE TransactionType = 'Credit';

-- 12. Find the total debit and credit amounts separately.

-- SELECT SUM(AMOUNT), TransactionType
-- FROM Transactions
-- GROUP BY TransactionType;

-- 13. Get the account with the highest transaction amount.

-- CREATE VIEW t as (SELECT AccountID, SUM(Amount) as total FROM Transactions GROUP BY AccountID);
-- SELECT *
-- FROM t
-- ORDER BY total DESC
-- LIMIT 1;

-- SELECT AccountID, SUM(Amount) OVER(Partition By AccountID) as amt
-- FROM Transactions
-- Order BY amt DESC
-- LIMIT 1;

-- 14. Write a query to get the running total of transaction amounts for each account using a window function.

-- SELECT *, SUM(CASE WHEN TransactionType = 'Credit' THEN AMOUNT ELSE -AMOUNT END) OVER (PARTiTION BY AccountID Order BY TransactionID) as Total
-- FROM Transactions;

-- 15. Find accounts where the total debits exceed total credits.

-- With a as (SELECT AccountID, SUM(CASE WHEN TransactionType = 'Credit' THEN Amount ELSE 0 END) as credit, SUM(CASE WHEN TransactionType = 'Debit' THEN Amount ELSE 0 END) as debit
-- FROM Transactions
-- GROUP BY AccountID)

-- SELECT AccountID
-- FROM a
-- WHERE debit > credit
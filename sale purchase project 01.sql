-- Problem: Given a Table of Sales_purchase, Write a query to find the total no.of sales where pruchase is same but on different month and year.

CREATE TABLE `sale_purchase` (
  `id` int(6) unsigned NOT NULL,
  `purchase` int(6) unsigned NOT NULL,
  `sale` int(6) NOT NULL,
  `year` Varchar(100) NOT NULL,
  `month` Varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) DEFAULT CHARSET=utf8;

-- Insert few values into the table
INSERT INTO `sale_purchase` (`id`, `purchase`, `sale`,`year`,`month`)
VALUES
  ('1', '100', '106','2011','Apr'),
  ('2', '110', '114','2011','Mar'),
  ('3', '100', '106','2010','Jan'),
  ('4', '300', '311','2010','Jan'),
  ('5', '350', '351','2008','Oct'),
  ('6', '350', '350','2009','Jun'),
  ('7', '213', '229','2012','July'),
  ('8', '213', '230','2012','July');

CREATE or REPLACE VIEW total AS
SELECT SUM(sale) as t
FROM sale_purchase
WHERE purchase IN (
                  SELECT purchase
                  FROM sale_purchase
                  GROUP BY Purchase 
                  HAVING COUNT(*) >1
                  )
GROUP BY year, month
HAVING COUNT(*) = 1;

SELECT SUM(t)
FROM total;

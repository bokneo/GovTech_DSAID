/* the top 3 car manufacturers that customers bought by sales (quantity) and
the sales number for it in the current month. */

SELECT t.customer_name, SUM(c.price)
FROM transaction AS t, car AS c
WHERE t.salesperson = c.salesperson
AND t.serialnumber = c.serialnumber
AND t.manufacturers = c.manufacturers
GROUP BY t.customer_name
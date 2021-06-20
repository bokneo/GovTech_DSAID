/* The list of our customers and their spending. */

SELECT t.customer_name, SUM(c.price)
FROM transaction AS t, car AS c
WHERE t.salesperson = c.salesperson
GROUP BY t.customer_name
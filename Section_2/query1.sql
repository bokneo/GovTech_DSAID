/* The list of our customers and their spending. */

SELECT c.last_name, c.first_name, SUM(ca.price)
FROM Transaction AS t, Car AS ca, Customer AS c, Salesperson AS s
WHERE c.id = c.customer_id
AND t.serialnumber = ca.serialnumber
GROUP BY t.customer_id, c.last_name, c.first_name
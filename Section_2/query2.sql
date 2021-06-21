/* the top 3 car manufacturers that customers bought by sales (quantity) and
the sales number for it in the current month. */

SELECT ca.manufacturers, count(*) as sales
FROM Transaction AS t, Car AS ca, Customer AS c, Salesperson AS s
WHERE t.serialnumber = ca.serialnumber
AND t.date_bought >= date_trunc('month', CURRENT_DATE)
GROUP BY ca.manufacturers
ORDER BY sales DESC
LIMIT 3
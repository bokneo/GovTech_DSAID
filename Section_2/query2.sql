/* the top 3 car manufacturers that customers bought by sales (quantity) and
the sales number for it in the current month. */

SELECT t.manufacturers, count(*) as sales
FROM transaction AS t
WHERE date_sold >= date_trunc('month', CURRENT_DATE)
GROUP BY t.manufacturers
ORDER BY sales DESC
LIMIT 3
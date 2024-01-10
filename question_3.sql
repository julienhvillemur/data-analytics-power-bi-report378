SELECT
 store_type,
 ROUND(SUM(sale_price * product_quantity)::numeric, 2) AS revenue -- calculate revenue to 2 decimal places
FROM
 forview
WHERE
 dates >= '2022-01-01' AND dates < '2023-01-01' AND
    country = 'Germany' -- isolate 2022 sales in Germany
GROUP BY
 store_type
ORDER BY
 revenue DESC
LIMIT 1; -- isolate store type with highest revenue

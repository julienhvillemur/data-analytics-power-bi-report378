SELECT
 month_name,
 ROUND(SUM(sale_price * product_quantity)::numeric, 2) AS revenue -- calculate revenue to 2 decimal places
FROM
 forview
WHERE
 dates >= '2022-01-01' AND dates < '2023-01-01' -- isolate 2022 sales
GROUP BY
 month_name
ORDER BY
 revenue DESC
LIMIT 1; -- isolate month with highest revenue
SELECT
 full_region,
 category, 
 ROUND(SUM((sale_price - cost_price) * product_quantity)::numeric, 2) AS profit -- calculate profit to 2 decimal places
FROM
 forview
WHERE
 dates >= '2021-01-01' AND dates < '2022-01-01' AND
   full_region = 'Wiltshire, UK' -- isolate 2021 data for Wiltshire only
GROUP BY
 category, full_region 
ORDER BY
 profit DESC
LIMIT 1; -- isolate product category with highest profit
SELECT
 store_type,
 SUM(totalled_sales) AS total_sales,
 SUM(sales_percentage) AS percentage_of_total_sales, 
 SUM(count) as Orders
FROM
 test_store_overviews
GROUP BY
 store_type
ORDER BY
 store_type;
SELECT
 SUM(staff_numbers) as total_uk_staff
FROM
 dim_store
WHERE
 country = 'UK';
SELECT
 SUM(staff_numbers) as total_uk_staff -- total all staff numbers
FROM
 dim_store
WHERE
 country = 'UK'; -- isolate staff from UK only
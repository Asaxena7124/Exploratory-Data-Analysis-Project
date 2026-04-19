-- Find the date of the first and last order 
-- How many years of sales are available
SELECT 
MIN(order_date) AS first_order_date,
MAX(order_date) AS last_order_date,
DATEDIFF(year,MIN(order_date),MAX(order_date)) AS time_span
FROM GOLD.fact_sales

-- Find the yougest and oldest customers 
SELECT 
MIN(birthdate) AS oldest_employee_birthdate,
DATEDIFF(year,MIN(birthdate),GETDATE()) AS oldest_emp_age,
MAX(birthdate) AS youngest_employee_birthdate,
DATEDIFF(year,MAX(birthdate),GETDATE()) AS youngest_emp_age,
DATEDIFF(year,MIN(birthdate),MAX(birthdate)) AS year_gap
FROM gold.dim_customers
-- Check which one is Dimension or Measures

-- Dimension
SELECT DISTINCT 
category
FROM gold.dim_products
-- Measures
SELECT DISTINCT 
sales_amount
FROM gold.fact_sales
-- Dimension
SELECT DISTINCT 
product_name
FROM gold.dim_products
-- Measures
SELECT DISTINCT 
quantity
FROM gold.fact_sales
-- Dimesion
SELECT DISTINCT 
birthdate
FROM gold.dim_customers
-- Measures
SELECT DISTINCT 
DATEDIFF(year,birthdate,GETDATE()) AS Age
FROM gold.dim_customers
-- Dimension
SELECT DISTINCT 
customer_id
FROM gold.dim_customers
-- Find the Total Sales
SELECT 
SUM(sales_amount)
FROM GOLD.fact_sales
-- Find how many items are sold
SELECT 
SUM(sls_quantity)
FROM gold.fact_sales
-- Find the average selling price
SELECT 
AVG(price)
FROM gold.fact_sales
-- Find the Total number of Orders
SELECT
COUNT(DISTINCT order_number)
FROM gold.fact_sales
-- Find the total number of products
SELECT COUNT(product_key)
FROM gold.dim_products
-- Find the total number of customers
SELECT 
COUNT(Customer_key)
FROM gold.dim_customers
-- Find the total number of customers that has placed an order
SELECT 
COUNT(DISTINCT Customer_key)
FROM gold.fact_sales

-- Generate a report that shows all key metrics of the business


SELECT 'Total Sales' AS measure_name, SUM(sales_amount) AS measure_value FROM gold. fact_sales
UNION ALL
SELECT 'Total Quantity', SUM(sls_quantity) FROM gold.fact_sales
UNION ALL
SELECT 'Average Price', AVG(price) FROM gold. fact_sales
UNION ALL
SELECT 'Total Nr. Orders', COUNT(DISTINCT order_number) FROM gold.fact_sales
UNION ALL
SELECT 'Total Nr. Products', COUNT(product_name) FROM gold.dim_products
UNION ALL
SELECT 'Total Nr. Customers', COUNT(customer_key) FROM gold.dim_customers
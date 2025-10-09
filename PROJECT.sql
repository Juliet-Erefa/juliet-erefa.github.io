-- Exploratory Data


CREATE DATABASE Retail_Sales_Project;

Create table retail_sales_staging
like retail_sales_analysis;

select *
from retail_sales_staging;

insert retail_sales_staging
select *
from retail_sales_analysis;

select *
from retail_sales_staging;

SELECT COUNT(*) AS total_records
FROM retail_sales_staging;

SELECT COUNT(DISTINCT customer_id) AS unique_customers
FROM retail_sales_staging;

SELECT DISTINCT category
FROM retail_sales_staging;


SELECT
  SUM(CASE WHEN age IS NULL THEN 1 ELSE 0 END) AS null_age,
  SUM(CASE WHEN quantiy IS NULL THEN 1 ELSE 0 END) AS null_quantity,
  SUM(CASE WHEN price_per_unit IS NULL THEN 1 ELSE 0 END) AS null_price,
  SUM(CASE WHEN cogs IS NULL THEN 1 ELSE 0 END) AS null_cogs,
  SUM(CASE WHEN total_sale IS NULL THEN 1 ELSE 0 END) AS null_total_sale
FROM retail_sales_staging;

DELETE
FROM retail_sales_staging
WHERE age IS NULL
   OR quantiy IS NULL
   OR price_per_unit IS NULL
   OR cogs IS NULL
   OR total_sale IS NULL;

select *
from retail_sales_staging;

-- Data Analyis & Findings

SELECT *
FROM retail_sales_staging
WHERE sale_date = '2022-11-05';


SELECT *
FROM retail_sales_st]aging
WHERE category = 'Clothing'
  AND quantiy > 4
  AND MONTH(sale_date) = 11
  AND YEAR(sale_date) = 2022;
  

SELECT category,
       SUM(total_sale) AS total_sales
FROM retail_sales_staging
GROUP BY category; 


SELECT AVG(age) AS avg_age
FROM retail_sales_staging
WHERE category = 'Beauty';
  
  
SELECT *
FROM retail_sales_staging
WHERE total_sale > 1000;

SELECT *
from retail_sales_staging;

SELECT gender, category,
       COUNT(ï»¿transactions_id) AS total_transactions
FROM retail_sales_staging
GROUP BY gender, category;

SELECT customer_id,
       SUM(total_sale) AS total_sales
FROM retail_sales_staging
GROUP BY customer_id
ORDER BY total_sales DESC
LIMIT 5;

SELECT category,
       COUNT(DISTINCT customer_id) AS unique_customers
FROM retail_sales_staging
GROUP BY category;

SELECT *
FROM retail_sales_staging;
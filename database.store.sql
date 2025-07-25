create database store;
use store;
select * from pizza
1. select sum(total_price) as total_revenue
from pizza
2. select (sum(total_price)/count(distinct order_id)) as average_ordervalue
from pizza
3. select sum(quantity) as total_pizza_sold
from pizza
4. SELECT COUNT(DISTINCT order_id) AS Total_Orders
 FROM pizza
 5. SELECT CAST(CAST(SUM(quantity) AS DECIMAL(10,2)) / 
CAST(COUNT(DISTINCT order_id) AS DECIMAL(10,2)) AS DECIMAL(10,2))
AS Avg_Pizzas_per_order
FROM pizza
6.table1 SELECT 
    DAYNAME(STR_TO_DATE(order_date, '%Y-%m-%d')) AS order_day,
    COUNT(DISTINCT order_id) AS total_orders
FROM 
    pizza
WHERE 
    order_date IS NOT NULL
GROUP BY 
    DAYNAME(STR_TO_DATE(order_date, '%Y-%m-%d'));
7. SELECT 
    MONTHNAME(STR_TO_DATE(order_date,'%Y-%m-%d')) AS Month_Name, 
    COUNT(DISTINCT order_id) AS Total_Orders
FROM 
    pizza
WHERE 
    order_date IS NOT NULL
GROUP BY 
    MONTHNAME(STR_TO_DATE(order_date,'%Y-%m-%d'))
ORDER BY 
    Total_Orders DESC;
8. SELECT pizza_category, CAST(SUM(total_price) AS DECIMAL(10,2)) as total_revenue,
CAST(SUM(total_price) * 100 / (SELECT SUM(total_price) from pizza) AS DECIMAL(10,2)) AS PCT
FROM 
   pizza
GROUP BY
    pizza_category
9.SELECT 
  pizza_size, 
  CAST(SUM(total_price) AS DECIMAL(10,2)) AS total_revenue,
  CAST(SUM(total_price) * 100 / (SELECT SUM(total_price) FROM pizza) AS DECIMAL(10,2)) AS pct
FROM pizza
GROUP BY pizza_size
order by pct desc;
10.SELECT pizza_category, SUM(quantity) AS Total_Quantity_Sold
FROM pizza
WHERE STR_TO_DATE(order_date, '%Y-%m-%d') IS NOT NULL
  AND MONTH(STR_TO_DATE(order_date, '%Y-%m-%d')) = 2
GROUP BY pizza_category
ORDER BY Total_Quantity_Sold DESC;
11. SELECT  pizza_name, SUM(total_price) AS Total_Revenue
FROM pizza
GROUP BY pizza_name
ORDER BY Total_Revenue DESC
LIMIT 5;
12. SELECT  pizza_name, SUM(total_price) AS Total_Revenue
FROM pizza
GROUP BY pizza_name
ORDER BY Total_Revenue asc
LIMIT 5;
13. SELECT  pizza_name, SUM(quantity) AS Total_Pizza_Sold
FROM pizza
GROUP BY pizza_name
ORDER BY Total_Pizza_Sold DESC
limit 5;
14. SELECT  pizza_name, SUM(quantity) AS Total_Pizza_Sold
FROM pizza
GROUP BY pizza_name
ORDER BY Total_Pizza_Sold asc
limit 5;
15. SELECT  pizza_name, count(DISTINCT order_id) AS Total_Orders
FROM pizza
GROUP BY pizza_name
ORDER BY Total_Orders DESC
limit 5;
16.  SELECT  pizza_name, count(DISTINCT order_id) AS Total_Orders
FROM pizza
GROUP BY pizza_name
ORDER BY Total_Orders asc
limit 5;
DESCRIBE pizza;








 
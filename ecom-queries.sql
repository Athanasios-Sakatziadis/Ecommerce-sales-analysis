#Top 5 products based on quantity sold
SELECT product_name, SUM(quantity) AS total_quantity
FROM orders
GROUP BY product_name
ORDER BY total_quantity DESC
LIMIT 5;

#Revenue by region
SELECT region, SUM(total_price) AS total_revenue
FROM orders
GROUP BY region
ORDER BY total_revenue DESC;

#Monthly revenue trends
SELECT DATE_FORMAT(order_date, '%Y-%m') AS month, SUM(total_price) AS monthly_revenue
FROM orders
WHERE YEAR(order_date) = 2023
GROUP BY month
ORDER BY month;

#Top 5 customers by total spending
SELECT customer_id, SUM(total_price) AS total_spent
FROM orders
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 5;

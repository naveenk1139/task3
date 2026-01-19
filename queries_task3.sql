
-- Create Table
CREATE TABLE superstore_sales (
    ship_mode VARCHAR(50),
    segment VARCHAR(50),
    country VARCHAR(50),
    city VARCHAR(100),
    state VARCHAR(100),
    postal_code INT,
    region VARCHAR(50),
    category VARCHAR(50),
    sub_category VARCHAR(50),
    sales DECIMAL(10,2),
    quantity INT,
    discount DECIMAL(4,2),
    profit DECIMAL(10,2)
);

-- Count Records
SELECT COUNT(*) FROM superstore_sales;

-- Filter Technology
SELECT * FROM superstore_sales WHERE category = 'Technology';

-- Top Sales
SELECT * FROM superstore_sales ORDER BY sales DESC LIMIT 10;

-- Aggregation
SELECT category, SUM(sales), AVG(profit), COUNT(*) 
FROM superstore_sales GROUP BY category;

-- HAVING
SELECT category, SUM(sales)
FROM superstore_sales
GROUP BY category
HAVING SUM(sales) > 100000;

-- LIKE Search
SELECT * FROM superstore_sales WHERE city LIKE '%York%';

-- Top 5 Customers (by City used here)
SELECT city, SUM(sales) AS total_spend
FROM superstore_sales
GROUP BY city
ORDER BY total_spend DESC
LIMIT 5;

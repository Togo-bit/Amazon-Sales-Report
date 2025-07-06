-- 1)How many total orders are recorded in the dataset
SELECT COUNT(*) as total_orders
FROM amazon;

-- 2)What are the different order statuses and how many orders fall under each status?
SELECT Status, COUNT(Order_id) as total_orders
FROM amazon
GROUP BY Status;

-- 3)Which cities have the highest number of shipments?
SELECT ship_city, COUNT(ship_service) as total_shipments
FROM amazon
GROUP BY ship_city
ORDER BY total_shipments desc
LIMIT 1;

-- 4)What is the total sales amount?
SELECT SUM(Amount) as 'Total sales(INR)'
FROM amazon;

-- 5)How many unique product SKUs are there?
SELECT DISTINCT COUNT(sku) as "Uniques SKU's"
FROM amazon;

-- 6)Which category has the highest number of units sold?
SELECT Category, MAX(Qty) as total_units
FROM amazon
GROUP BY Category
ORDER BY total_units desc
LIMIT 1;

-- 7)What is the average order amount per order?
SELECT AVG(Amount) as 'Average amount order'
FROM amazon;

-- 8)How many orders were fulfilled by Amazon vs Merchant?
SELECT Fulfilment, COUNT(Order_id) as total
FROM amazon
GROUP BY Fulfilment;

-- 9)How many orders were B2B?
SELECT COUNT(*) as total_order
FROM amazon
WHERE B2B = 'TRUE';

-- 10)Which state generated the highest total revenue?
SELECT ship_state, SUM(Amount) as total_revenue
FROM amazon
GROUP BY ship_state
ORDER BY total_revenue desc
LIMIT 1;

-- 11)What is the trend of daily sales (total amount) over state?
SELECT ship_state, SUM(Amount) as total_sales
FROM amazon
GROUP BY ship_state
ORDER BY total_sales;

-- 12)Which combination of SKU and size has the highest total sales?
SELECT sku, Size, SUM(Amount) as total_sales
FROM amazon
GROUP BY sku, Size
ORDER BY total_sales desc
LIMIT 1;

-- 13)What’s the cancellation rate across the dataset?
SELECT SUM(Amount) as 'Cancelation rates'
FROM amazon
WHERE Status = 'Cancelled';

SELECT * FROM amazon;
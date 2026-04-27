-- Total Sales
SELECT SUM(Sales) AS Total_Sales FROM sales_data;

-- Total Profit
SELECT SUM(Profit) AS Total_Profit FROM sales_data;

-- Sales by Region
SELECT Region, SUM(Sales) AS Total_Sales
FROM sales_data
GROUP BY Region;

-- Sales by Category
SELECT Category, SUM(Sales) AS Total_Sales
FROM sales_data
GROUP BY Category;

-- Monthly Sales Trend
SELECT strftime('%m', "Order Date") AS Month, SUM(Sales) AS Total_Sales
FROM sales_data
GROUP BY Month
ORDER BY Month;

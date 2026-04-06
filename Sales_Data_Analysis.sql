CREATE DATABASE Sales;
USE Sales;


CREATE TABLE Orders
(
 Order_id VARCHAR(50),
 Order_date DATE,
 Customer_ID VARCHAR(50),
 Product_category VARCHAR(50),
 Sales DECIMAL(10,2),
 Quantity INT,
 Profit DECIMAL(10, 2),
 Discount DECIMAL(5,2)
 );
 
CREATE TABLE Customers
(
 Customer_ID VARCHAR(50),
 Customer_name VARCHAR(50),
 Region VARCHAR(50),
 Segment VARCHAR(50)
);

-- 1) Total Sales By Region
SELECT c.Region, SUM(o.Sales) AS Totatl_Sales
FROM Orders o
JOIN Customers c
ON o.Customer_ID = c.Customer_ID
GROUP BY c.Region;


-- 2) Profit Margin by Category
SELECT Product_Category, SUM(Profit)/SUM(Sales) AS Profit_Margin
FROM Orders
GROUP BY Product_Category;


-- 3) Monthly Sales Trend
SELECT MONTH(Order_Date) AS Month, SUM(Sales) AS Monthly_Sales
FROM Orders
GROUP BY Month
ORDER BY Month;


-- 4) Top 5 Customers By Revenue
SELECT c.Customer_Name, SUM(o.Sales) AS Total_Revenue 
FROM Orders o 
JOIN Customers c
ON o.Customer_ID = c.Customer_ID
GROUP BY c.Customer_Name
ORDER BY Total_Revenue DESC
LIMIT 5;
# 📊 Sales Data Analysis & Business Intelligence Project

## 📌 Project Overview

This project focuses on analyzing sales data by combining multiple datasets using **SQL JOIN operations** and creating an interactive dashboard using **Power BI**. The goal is to extract actionable insights and support business decision-making.

---

## 🎯 Objectives

* Merge Orders and Customers data using SQL
* Perform KPI calculations
* Analyze regional and category performance
* Identify valuable customer segments
* Build an interactive BI dashboard

---

## 🛠️ Tools & Technologies

* **SQL** – Data merging (JOIN), querying, analysis
* **Excel** – Data preprocessing
* **Power BI** – Data visualization & dashboard

---

## 🔗 SQL Data Processing

The analysis begins by combining two datasets:

* **Orders Table**
* **Customers Table**

### ✅ SQL JOIN Used:

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
### 📌 Operations Performed:

* Data merging using INNER JOIN
* Aggregations (SUM, COUNT)
* KPI calculations (Sales, Profit, Customers)
* Filtering and grouping

---

## 📊 Key KPIs

* **Total Sales:** 22.64K
* **Total Profit:** 8.40K
* **Total Customers:** 793
* **Profit Margin:** ~37%

---

## 📈 Dashboard Features

* Sales by Region
* Profit by Category
* Monthly Sales Trend
* Segment Distribution
* Top 10 Customers

---

## 🔍 Key Insights

* West region generates highest revenue
* Office Supplies is the most profitable category
* Segment5 is the most valuable customer group
* Sales show strong seasonal trends
* Business maintains healthy profitability

---

## 📁 Project Structure

```
📦 Sales-Data-Analysis-BI-Project
 ┣ 📊 Dashboard.png
 ┣ 📄 Business_Report.pdf
 ┣ 📂 Dataset.xlsx
 ┣ 📄 SQL_Queries.sql
 ┗ 📄 README.md
```

---

## 💡 Business Recommendations

* Expand operations in high-performing regions
* Focus on high-margin product categories
* Target valuable customer segments
* Optimize seasonal sales strategy

---

## 📬 Conclusion

This project demonstrates the use of **SQL for data integration** and **Power BI for visualization**, enabling effective business analysis and decision-making.

---

## 👩‍💻 Author
Riya - Aspiring Data Analyst


# 🚀 SQL Report: Sales Analysis and Performance Comparison 📊
This project analyzes retail sales data using SQL to uncover trends, product performance, and demand. It covers monthly sales from January to December 2019, highlighting top-performing products and comparing sales growth. The goal is to provide insights for data-driven decisions in retail businesses.

## Key Objectives:
1. **Data Extraction and Analysis:**  
   The queries retrieve data from various monthly sales tables in the `sales_database` for January through December 2019. The data includes product details, sales price, quantity ordered, and product performance for each month.

2. **Sales Performance Ranking:**  
   For each month, the queries calculate the total sales (`price each`) for each product, determine the ranking of products based on total sales, and identify the top-performing products. This was achieved using the `RANK()` function over the total sales per product.

3. **Top Products and Sales Order Analysis:**  
   The queries identify the top 10 products with the highest sales volume based on the quantity ordered for each month. The top-performing products are ranked, and their total sales and order count are displayed.

4. **Month-to-Month Comparison:**  
   A significant part of the analysis is the month-to-month performance change. The SQL code calculates the percentage difference in sales between consecutive months (e.g., January to February, February to March) to track the performance change. This is useful for understanding sales trends and identifying significant fluctuations in monthly performance.

5. **Best Performing Month:**  
   The final part of the SQL script ranks the months based on total sales performance from January to December. **December** emerged as the best-performing month based on this ranking, with the highest sales figures compared to all other months.

---
## Detailed Explanation of the SQL Queries:

1. **Month-wise Sales Analysis:**
   Each month's query (`sales_january_2019`, `sales_february_2019`, etc.) retrieves all sales data for that specific month. This includes details such as `product`, `quantity ordered`, `price each`, and other related information. The `SELECT *` query is used to extract all columns from the respective monthly table.

2. **Unique Products:**
   The query `SELECT DISTINCT products` for each month returns the unique products sold during that month, giving insight into the variety of products sold.

3. **Top-Performing Products:**
   The query to rank products by total sales uses the `RANK()` function over the sum of the `price each` column. This helps determine which products brought in the highest revenue for each month. The `ROUND` function is used to round the sales to two decimal places for clarity.

4. **Top 10 Products by Order Volume:**
   For each month, the query `SELECT product, SUM(quantity ordered)` calculates the total number of orders for each product. This query ranks the products based on the quantity ordered, displaying the top 10 products with the most orders.

5. **Month-to-Month Performance Comparison:**
   A series of `SELECT` statements calculate the performance change between each pair of consecutive months (e.g., January to February, February to March). The formula used to calculate the percentage change is:
Performance Change (%) = ((Current Month Sales - Previous Month Sales) / Previous Month Sales) * 100

This gives a percentage value representing the increase or decrease in sales between two months.

6. **Ranking of Months by Sales:**
The final query ranks the months based on their total sales. The `RANK()` function is used to assign a rank to each month, with the highest total sales being ranked first. The total sales for each month are displayed alongside their rank.

---

## Conclusion:

The analysis clearly shows that **December** was the best-performing month in terms of total sales, followed by other months such as November and October. The data highlights trends in product sales, the best-selling products, and overall monthly performance. Users can explore the SQL queries for detailed month-wise and product-wise breakdowns.

For further insights and detailed sales data, refer to the SQL query file provided. The file contains the full analysis for all months, with calculations of top-performing products, monthly comparisons, and rankings.

---

🎉 **December was the Best Performing Month!** 🏆

---

## 🎯 Summary of SQL Performance:
- **📅 Best Month:** December was the top performer based on total sales.
- **📈 Month-to-Month Trend:** Significant fluctuations in sales were analyzed, with December showing a strong performance increase.
- **🔝 Top Products:** The top 10 best-selling products were identified for each month.
- **🔄 Performance Tracking:** Monthly sales performance was tracked and compared across all months.

---

🔥 **Feel free to explore the SQL query file for detailed performance data!** 🔍





   

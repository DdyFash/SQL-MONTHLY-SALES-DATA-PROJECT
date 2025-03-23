-- JANUARY SALES ANALYSIS
SELECT * FROM sales_databse.sales_january_2019;
-- UNIQUE PRODUCTS
SELECT distinct products FROM sales_databse.sales_january_2019;
-- PRODUCT WITH THE MOST SALES AND BEST PERFORMING PRODUCTS
select product, round(sum(`price each`),2) `Total sales`,
 rank() over(order by sum(`price each`)desc)`Product Performance`
 FROM sales_databse.sales_january_2019
 group by product;
-- TOP 10 PRODUCT WITH THE MOST ORDERS
select product, sum(`quantity ordered`) `Total orders`
FROM sales_databse.sales_january_2019
group by product
order by sum(`quantity ordered`)desc
limit 10;

-- FEBRUARY SALES ANALYSIS
SELECT * FROM sales_databse.sales_february_2019;
-- UNIQUE PRODUCTS
SELECT distinct products FROM sales_databse.sales_february_2019;
-- PRODUCT WITH THE MOST SALES AND BEST PERFORMING PRODUCTS
select product, round(sum(`price each`),2) `Total sales`,
 rank() over(order by sum(`price each`)desc)`Product Performance`
 FROM sales_databse.sales_february_2019
 group by product;
-- TOP 10 PRODUCT WITH THE MOST ORDERS
select product, sum(`quantity ordered`) `Total orders`
FROM sales_databse.sales_february_2019
group by product
order by sum(`quantity ordered`)desc
limit 10;

-- MARCH SALES ANALYSIS
SELECT * FROM sales_databse.sales_march_2019;
-- UNIQUE PRODUCTS
SELECT distinct products FROM sales_databse.sales_march_2019;
-- PRODUCT WITH THE MOST SALES AND BEST PERFORMING PRODUCTS
select product, round(sum(`price each`),2) `Total sales`,
 rank() over(order by sum(`price each`)desc)`Product Performance`
 FROM sales_databse.sales_march_2019
 group by product;
-- TOP 10 PRODUCT WITH THE MOST ORDERS
select product, sum(`quantity ordered`) `Total orders`
FROM sales_databse.sales_march_2019
group by product
order by sum(`quantity ordered`)desc
limit 10;

-- APRIL SALES ANALYSIS
SELECT * FROM sales_databse.sales_april_2019;
-- UNIQUE PRODUCTS
SELECT distinct products FROM sales_databse.sales_april_2019;
-- PRODUCT WITH THE MOST SALES AND BEST PERFORMING PRODUCTS
select product, round(sum(`price each`),2) `Total sales`,
 rank() over(order by sum(`price each`)desc)`Product Performance`
 FROM sales_databse.sales_april_2019
 group by product;
-- TOP 10 PRODUCT WITH THE MOST ORDERS
select product, sum(`quantity ordered`) `Total orders`
FROM sales_databse.sales_april_2019
group by product
order by sum(`quantity ordered`)desc
limit 10;

-- MAY SALES ANALYSIS
SELECT * FROM sales_databse.sales_may_2019;
-- UNIQUE PRODUCTS
SELECT distinct products FROM sales_databse.sales_may_2019;
-- PRODUCT WITH THE MOST SALES AND BEST PERFORMING PRODUCTS
select product, round(sum(`price each`),2) `Total sales`,
 rank() over(order by sum(`price each`)desc)`Product Performance`
 FROM sales_databse.sales_may_2019
 group by product;
-- TOP 10 PRODUCT WITH THE MOST ORDERS
select product, sum(`quantity ordered`) `Total orders`
FROM sales_databse.sales_may_2019
group by product
order by sum(`quantity ordered`)desc
limit 10;

-- JUNE SALES ANALYSIS
SELECT * FROM sales_databse.sales_june_2019;
-- UNIQUE PRODUCTS
SELECT distinct products FROM sales_databse.sales_june_2019;
-- PRODUCT WITH THE MOST SALES AND BEST PERFORMING PRODUCTS
select product, round(sum(`price each`),2) `Total sales`,
 rank() over(order by sum(`price each`)desc)`Product Performance`
 FROM sales_databse.sales_june_2019
 group by product;
-- TOP 10 PRODUCT WITH THE MOST ORDERS
select product, sum(`quantity ordered`) `Total orders`
FROM sales_databse.sales_june_2019
group by product
order by sum(`quantity ordered`)desc
limit 10;

-- JULY SALES ANALYSIS
SELECT * FROM sales_databse.sales_july_2019;
-- UNIQUE PRODUCTS
SELECT distinct products FROM sales_databse.sales_july_2019;
-- PRODUCT WITH THE MOST SALES AND BEST PERFORMING PRODUCTS
select product, round(sum(`price each`),2) `Total sales`,
 rank() over(order by sum(`price each`)desc)`Product Performance`
 FROM sales_databse.sales_july_2019
 group by product;
-- TOP 10 PRODUCT WITH THE MOST ORDERS
select product, sum(`quantity ordered`) `Total orders`
FROM sales_databse.sales_july_2019
group by product
order by sum(`quantity ordered`)desc
limit 10;

-- AUSUST SALES ANALYSIS
SELECT * FROM sales_databse.sales_august_2019;
-- UNIQUE PRODUCTS
SELECT distinct products FROM sales_databse.sales_august_2019;
-- PRODUCT WITH THE MOST SALES AND BEST PERFORMING PRODUCTS
select product, round(sum(`price each`),2) `Total sales`,
 rank() over(order by sum(`price each`)desc)`Product Performance`
 FROM sales_databse.sales_august_2019
 group by product;
-- TOP 10 PRODUCT WITH THE MOST ORDERS
select product, sum(`quantity ordered`) `Total orders`
FROM sales_databse.sales_august_2019
group by product
order by sum(`quantity ordered`)desc
limit 10;

-- OCTOBER SALES ANALYSIS
SELECT * FROM sales_databse.sales_october_2019;
-- UNIQUE PRODUCTS
SELECT distinct products FROM sales_databse.sales_october_2019;
-- PRODUCT WITH THE MOST SALES AND BEST PERFORMING PRODUCTS
select product, round(sum(`price each`),2) `Total sales`,
 rank() over(order by sum(`price each`)desc)`Product Performance`
 FROM sales_databse.sales_october_2019
 group by product;
-- TOP 10 PRODUCT WITH THE MOST ORDERS
select product, sum(`quantity ordered`) `Total orders`
FROM sales_databse.sales_october_2019
group by product
order by sum(`quantity ordered`)desc
limit 10;

-- NOVEMBER SALES ANALYSIS
SELECT * FROM sales_databse.sales_november_2019;
-- UNIQUE PRODUCTS
SELECT distinct products FROM sales_databse.sales_november_2019;
-- PRODUCT WITH THE MOST SALES AND BEST PERFORMING PRODUCTS
select product, round(sum(`price each`),2) `Total sales`,
 rank() over(order by sum(`price each`)desc)`Product Performance`
 FROM sales_databse.sales_november_2019
 group by product;
-- TOP 10 PRODUCT WITH THE MOST ORDERS
select product, sum(`quantity ordered`) `Total orders`
FROM sales_databse.sales_november_2019
group by product
order by sum(`quantity ordered`)desc
limit 10;

-- DECEMBER SALES ANALYSIS
SELECT * FROM sales_databse.sales_december_2019;
-- UNIQUE PRODUCTS
SELECT distinct products FROM sales_databse.sales_december_2019;
-- PRODUCT WITH THE MOST SALES AND BEST PERFORMING PRODUCTS
select product, round(sum(`price each`),2) `Total sales`,
 rank() over(order by sum(`price each`)desc)`Product Performance`
 FROM sales_databse.sales_december_2019
 group by product;
-- TOP 10 PRODUCT WITH THE MOST ORDERS
select product, sum(`quantity ordered`) `Total orders`
FROM sales_databse.sales_december_2019
group by product
order by sum(`quantity ordered`)desc
limit 10;

-- SALES DIFFERNCE BETWEEN PREVIOUS AND MONTH AND 1 MONTH AFTER 
SELECT 
    'January to February' AS `Month Comparison`,
    CONCAT(ROUND(((FEB - JAN) / JAN) * 100, 2), '%') AS `Performance Change (%)`
FROM (
    SELECT 
        (SELECT SUM(`price each`) FROM sales_databse.sales_january_2019) AS JAN,
        (SELECT SUM(`price each`) FROM sales_databse.sales_february_2019) AS FEB
) AS Monthly_Totals

UNION ALL

SELECT 
    'February to March',
    CONCAT(ROUND(((MAR - FEB) / FEB) * 100, 2), '%')
FROM (
    SELECT 
        (SELECT SUM(`price each`) FROM sales_databse.sales_february_2019) AS FEB,
        (SELECT SUM(`price each`) FROM sales_databse.sales_march_2019) AS MAR
) AS Monthly_Totals

UNION ALL

SELECT 
    'March to April',
    CONCAT(ROUND(((APR - MAR) / MAR) * 100, 2), '%')
FROM (
    SELECT 
        (SELECT SUM(`price each`) FROM sales_databse.sales_march_2019) AS MAR,
        (SELECT SUM(`price each`) FROM sales_databse.sales_april_2019) AS APR
) AS Monthly_Totals

UNION ALL

SELECT 
    'April to May',
    CONCAT(ROUND(((MAY - APR) / APR) * 100, 2), '%')
FROM (
    SELECT 
        (SELECT SUM(`price each`) FROM sales_databse.sales_april_2019) AS APR,
        (SELECT SUM(`price each`) FROM sales_databse.sales_may_2019) AS MAY
) AS Monthly_Totals

UNION ALL

SELECT 
    'May to June',
    CONCAT(ROUND(((JUN - MAY) / MAY) * 100, 2), '%')
FROM (
    SELECT 
        (SELECT SUM(`price each`) FROM sales_databse.sales_may_2019) AS MAY,
        (SELECT SUM(`price each`) FROM sales_databse.sales_june_2019) AS JUN
) AS Monthly_Totals

UNION ALL

SELECT 
    'June to July',
    CONCAT(ROUND(((JUL - JUN) / JUN) * 100, 2), '%')
FROM (
    SELECT 
        (SELECT SUM(`price each`) FROM sales_databse.sales_june_2019) AS JUN,
        (SELECT SUM(`price each`) FROM sales_databse.sales_july_2019) AS JUL
) AS Monthly_Totals

UNION ALL

SELECT 
    'July to August',
    CONCAT(ROUND(((AUG - JUL) / JUL) * 100, 2), '%')
FROM (
    SELECT 
        (SELECT SUM(`price each`) FROM sales_databse.sales_july_2019) AS JUL,
        (SELECT SUM(`price each`) FROM sales_databse.sales_august_2019) AS AUG
) AS Monthly_Totals

UNION ALL

SELECT 
    'August to September',
    CONCAT(ROUND(((SEP - AUG) / AUG) * 100, 2), '%')
FROM (
    SELECT 
        (SELECT SUM(`price each`) FROM sales_databse.sales_august_2019) AS AUG,
        (SELECT SUM(`price each`) FROM sales_databse.sales_september_2019) AS SEP
) AS Monthly_Totals

UNION ALL

SELECT 
    'September to October',
    CONCAT(ROUND(((OCT - SEP) / SEP) * 100, 2), '%')
FROM (
    SELECT 
        (SELECT SUM(`price each`) FROM sales_databse.sales_september_2019) AS SEP,
        (SELECT SUM(`price each`) FROM sales_databse.sales_october_2019) AS OCT
) AS Monthly_Totals

UNION ALL

SELECT 
    'October to November',
    CONCAT(ROUND(((NOV - OCT) / OCT) * 100, 2), '%')
FROM (
    SELECT 
        (SELECT SUM(`price each`) FROM sales_databse.sales_october_2019) AS OCT,
        (SELECT SUM(`price each`) FROM sales_databse.sales_november_2019) AS NOV
) AS Monthly_Totals

UNION ALL

SELECT 
    'November to December',
    CONCAT(ROUND(((`DEC` - NOV) / NOV) * 100, 2), '%')
FROM (
    SELECT 
        (SELECT SUM(`price each`) FROM sales_databse.sales_november_2019) AS NOV,
        (SELECT SUM(`price each`) FROM sales_databse.sales_december_2019) AS `DEC`
) AS Monthly_Totals;

-- RANK THE MONTHS BY SALES PERFORMANCE
SELECT 
    RANK() OVER (ORDER BY Total_Sales DESC) AS `Rank`,
    Month, 
    CONCAT('$', ROUND(Total_Sales, 2)) AS `Total Sales`
FROM (
    SELECT 'January' AS Month, SUM(`price each`) AS Total_Sales FROM sales_databse.sales_january_2019
    UNION ALL
    SELECT 'February' AS Month, SUM(`price each`) AS Total_Sales FROM sales_databse.sales_february_2019
    UNION ALL
    SELECT 'March' AS Month, SUM(`price each`) AS Total_Sales FROM sales_databse.sales_march_2019
    UNION ALL
    SELECT 'April' AS Month, SUM(`price each`) AS Total_Sales FROM sales_databse.sales_april_2019
    UNION ALL
    SELECT 'May' AS Month, SUM(`price each`) AS Total_Sales FROM sales_databse.sales_may_2019
    UNION ALL
    SELECT 'June' AS Month, SUM(`price each`) AS Total_Sales FROM sales_databse.sales_june_2019
    UNION ALL
    SELECT 'July' AS Month, SUM(`price each`) AS Total_Sales FROM sales_databse.sales_july_2019
    UNION ALL
    SELECT 'August' AS Month, SUM(`price each`) AS Total_Sales FROM sales_databse.sales_august_2019
    UNION ALL
    SELECT 'September' AS Month, SUM(`price each`) AS Total_Sales FROM sales_databse.sales_september_2019
    UNION ALL
    SELECT 'October' AS Month, SUM(`price each`) AS Total_Sales FROM sales_databse.sales_october_2019
    UNION ALL
    SELECT 'November' AS Month, SUM(`price each`) AS Total_Sales FROM sales_databse.sales_november_2019
    UNION ALL
    SELECT 'December' AS Month, SUM(`price each`) AS Total_Sales FROM sales_databse.sales_december_2019
) AS Monthly_Sales
ORDER BY `Rank`;

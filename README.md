# Walmart Sales Data Analysis 
![walmart logo](https://github.com/GAYATRI-SIVANI-SUSARLA/WalmartSalesAnalysis_SQL/blob/main/Walmart%20logo.png)
## Overview
This project explores Walmart Sales data to understand top-performing branches and products, sales trends of different products, and customer behavior. The aim is to study how sales strategies can be improved and optimized. The dataset was obtained from the [Kaggle Walmart Sales Forecasting Competition](https://www.kaggle.com/c/walmart-recruiting-store-sales-forecasting).

## Aim of the Project
The major aim of this project is to gain insight into Walmart's sales data to understand the different factors that affect sales in different branches.

## Data 
The dataset was obtained from the [Kaggle Walmart Sales Forecasting Competition](https://www.kaggle.com/c/walmart-recruiting-store-sales-forecasting). This dataset contains sales transactions from three different branches of Walmart, respectively located in Mandalay, Yangon, and Naypyitaw. Merge all CSV files given in Kaggle dataset into one CSV file containing all unique columns, [WalmartSalesData.csv](https://github.com/GAYATRI-SIVANI-SUSARLA/WalmartSalesAnalysis_SQL/blob/main/WalmartSalesData.csv.csv)

## Analysis List
### 1. Product Analysis 
Analyze the data to understand the different product lines, the product lines performing best, and the product lines that need to be improved.
### 2. Sales Analysis 
This analysis aims to answer the question of the sales trends of product. The result of this can help use measure the effectiveness of each sales strategy the business applies and what modifications are needed to gain more sales.
### 3. Customer Analysis 
This analysis aims to uncover the different customer segments, purchase trends, and the profitability of each customer segment.

## Approach
 **1. Data Wrangling:** This is the first step where inspection of data is done to make sure NULL values and missing values are detected and data replacement methods are used to replace missing or NULL values.
 - Build a database
 - Create a table and insert the data.
 - Select columns with null values in them. There are no null values in our database as in 
   creating the tables, we set NOT NULL for each field, hence null values are filtered out.

**2. Feature Engineering:** This will help use generate some new columns from existing ones.
  - Add a new column named 'time_of_day' to give an insight into sales in the Morning, 
       Afternoon, and Evening. This will help answer the question of which part of the day most 
       sales are made.
  - Add a new column named 'day_name' that contains the extracted days of the week on which the 
     given transaction took place (Mon, Tue, Wed, Thur, Fri). This will help answer the 
     question of which week of the day each branch is busiest.
  - Add a new column named 'month_name' that contains the extracted months of the year on which 
    the given transaction took place (Jan, Feb, Mar). Help determine which month of the year 
    has the most sales and profit.

    ## Business Questions to Answer
    ### Generic Questions
    1. How many unique cities does the data have?
    2. In which city is each branch?

    ### Questions related to Products
    1. How many unique product lines does the data have?
    2. What is the most common payment method?
    3. What is the most selling product line?
    4. What is the total revenue by month?
    5. What month had the largest COGS?
    6. What product line had the largest revenue?
    7. What is the city with the largest revenue?
    8. What product line had the largest VAT?
    9. Which branch sold more products than the average product sold?
    10. What is the most common product line by gender?
    11. What is the average rating of each product line?

    ### Questions related to Sales 
    1. Number of sales made at each time of the day per weekday
    2. Which of the customer types brings the most revenue?
    3. Which city has the largest tax percentage/ VAT (Value Added Tax)?
    4. Which customer type pays the most in VAT?

     ### Questions related to Customers 
    1. How many unique customer types does the data have?
    2. How many unique payment methods does the data have?
    3. What is the most common customer type?
    4. Which customer type buys the most?
    5. What is the gender of most of the customers?
    6. What is the gender distribution per branch?
    7. Which time of the day do customers give the most ratings?
    8. Which time of the day do customers give the most ratings per branch?
    9. Which day of the week has the best average ratings?
    10. Which day of the week has the best average ratings per branch?
   
    ## Revenue & Profit Calculations
    
    $ COGS = unit price * quantity $

$ VAT = 5% * COGS $
VAT is added to the COGS, and this is what is billed to the customer.

$ total(gross_sales) = VAT + COGS $

$ grossProfit(grossIncome) = total(gross_sales) - COGS $

Gross Margin is gross profit expressed in percentage of the total(gross profit/revenue)

## Code
Answers related to all Business questions are coded in SQL.
Software used: [PostgreSQL](https://www.postgresql.org/)
Code : [WalmartSale_SQL_Queries](https://github.com/GAYATRI-SIVANI-SUSARLA/WalmartSalesAnalysis_SQL/blob/main/walmart_sales_sql.sql)

### Conclusion
The analysis reveals the top-performing branches, cities, and product lines driving revenue, while underperforming areas need strategic improvements. Sales trends by month and time highlight seasonal variations and peak periods, aiding in better resource allocation. Customer segmentation shows the most profitable types and gender-specific preferences, enabling targeted marketing strategies. High-rating times and days provide insights to enhance customer satisfaction. Holiday markdowns significantly affect sales, offering opportunities to refine discounting strategies. Overall, the data guides optimizing products, sales strategies, and customer engagement for increased profitability.

       























                  



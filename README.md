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
This analysis aims to answer the question of the sales trends of product. The result of this can help use measure the effectiveness of each sales strategy the business applies and what modificatoins are needed to gain more sales.
### 3. Customer Analysis 
This analysis aims to uncover the different customer segments, purchase trends, and the profitability of each customer segment.

## Approach
 **1.Data Wrangling:** This is the first step where inspection of data is done to make sure NULL values and missing values are detected and data replacement methods are used to replace, missing or NULL values.
 - Build a database
 - Create a table and insert the data.
 - Select columns with null values in them. There are no null values in our database as in 
   creating the tables, we set NOT NULL for each field, hence null values are filtered out.

   **2.Feature Engineering:** This will help use generate some new columns from existing ones.

   
   - 1. Add a new column named time_of_day to give an insight of sales in the Morning, 
       Afternoon,and Evening. This will help answer the question of which part of the day most 
       sales are made.
   - Add a new column named day_name that contains the extracted days of the week on which the 
     given transaction took place (Mon, Tue, Wed, Thur, Fri). This will help answer the 
     question of which week of the day each branch is busiest.
   - Add a new column named month_name that contains the extracted months of the year on which 
    the given transaction took place (Jan, Feb, Mar). Help determine which month of the year 
    has the most sales and profit.























                  



create table sales( 
   invoice_id varchar(30) not null primary key,
   branch varchar(5) not null,
   city varchar(30) not null,
   customer_type varchar(30) not null,
   gender varchar(10) not null,
   product_line varchar(100) not null,
   unit_price decimal(10,2) not null,
   quantity int not null,
   vat decimal(6,4) not null,
   total decimal(12,4) not null,
   date timestamp not null,
   time TIME not null,
   payment_method varchar(15) not null,
   cogs decimal(10,2) not null,
   gross_margin_pct decimal(11,9),
   gross_income decimal(12,4) not null,
   rating numeric(3,1) )

   select * from sales

------------------------------------------------------------------------------------------------

---------------------------------	Feature Engineering -----------------------------------------

--Generating some new columns from existing ones

--time_of_day
select
time,
case
when time between '00:00:00' and '12:00:00' then 'Morning'
when time between '12:01:00' and '16:00:00' then 'Afternoon'
else 'Evening'
end time_of_day
from sales

--add column to the table 
alter table sales add column time_of_day varchar(10)
--Update the column and add data to the column 
update sales
set time_of_day = case
when time between '00:00:00' and '12:00:00' then 'Morning'
when time between '12:01:00' and '16:00:00' then 'Afternoon'
else 'Evening'
end

select * from sales

--day_name(Monday,.......,sunday)

select  
date,
to_char(date,'day') as day_name
from sales

alter table sales add column day_name varchar(10)

update sales
set day_name = to_char(date,'Day') 

--month_name(Jan,...,Dec)

alter table sales add column month_name varchar(12)
update sales
set month_name = to_char(date,'Month')
------------------------------------------------------------------------------------
------------------------------------------------------------------------------------

----------------------GENERIC-------------------------------
--How many unique cities does the data have?
select 
distinct city
from sales

--How many unique branches are there in each city 
select 
distinct branch,
city
from sales 

---------------------------------------------------------------------------------------------
--------------------------  Product  -------------------------------------------------------
-- How many unique product lines does the data have?
select 
count(distinct product_line)
from sales

--What is most common payment method?
select 
payment_method,
count(payment_method) as common
from sales
group by payment_method
order by common desc 

--What is the most selling product line?
select 
product_line,
count(product_line) as common
from sales
group by product_line
order by common desc 

--What is the total revenue by month?
select 
month_name as month,
sum(total) as total_revenue   
from sales
group by month_name
order by total_revenue desc

--What month had the largest COGS?
select 
month_name as month,
sum(cogs) as cogs
from sales
group by month_name
order by cogs desc

-- What product line had the largest revenue?

select 
product_line,
sum(total) as total_revenue 
from sales 
group by product_line
order by total_revenue desc

--What is the city with the largest revenue?
SELECT
city,
branch,
sum(total) as large_revenue
from sales 
group by city,branch
order by large_revenue desc 

--What product line had the largest VAT?
select 
product_line,
avg(vat) as avg_tax
from sales 
group by product_line
order by avg_tax 

--Which branch sold more products than average product sold?
select 
branch,
sum(quantity) as qty
 from sales 
 group by branch
 having sum(quantity)>(select  avg(quantity) from sales)

--What is the most common product line by gender?
select 
gender,
product_line,
count(gender) as total_count
from sales
group by product_line, gender 
order by total_count desc

--What is the average rating of each product line?
select 
round(avg(rating),) as avg_rating,
product_line
from sales
group by product_line
order by avg_rating desc

------------------------------------------------------------------------------------
------------------------- Sales ------------------------------------------------------

--Number of sales made in each time of the day per weekday

SELECT 
time_of_day,
count(*) as total_sales
from sales
---when we want to fetch particular day sales 
where day_name ilike '%sunday%'
group by time_of_day 
order by total_sales desc

select * from sales

--Which of the customer types brings the most revenue?
select 
customer_type,
sum(total) as total_rev
from sales 
group by customer_type
order by total_rev desc

--Which city has the largest tax percent/ VAT (Value Added Tax)?
select 
city,
round(avg(vat),3) as avg_vat
from sales 
group by city
order by avg_vat desc 

--Which customer type pays the most in VAT?
select 
customer_type,
avg(vat) as avg_vat
from sales 
group by customer_type 
order by avg_vat desc


------------------------------------------------------------------------------
-------------------------------  Customers ------------------------------------

--How many unique customer types does the data have?
select 
distinct customer_type 
from sales 

--How many unique payment methods does the data have?
select 
distinct payment_method
from sales  
 
--Which customer type buys the most?
select 
 customer_type,
 count(*) as num
 from sales 
 group by customer_type
 order by num desc 

--What is the gender of most of the customers?
select 
gender,
count(*) as gender_count
from sales
group by gender 
order by gender_count desc 

--What is the gender distribution per branch?
select 
gender,
count(*) as gender_count
from sales
where branch ilike '%b%'
group by gender 
order by gender_count desc 


--Which time of the day do customers give most ratings?
select 
time_of_day,
avg(rating) as most
from sales 
group by time_of_day
order by most desc 

--Which time of the day do customers give most ratings per branch?
select 
time_of_day,
avg(rating) as most
from sales
where branch ilike '%b%'
group by time_of_day
order by most desc 

--Which day fo the week has the best avg ratings?
select 
day_name,
round(avg(rating),2) as avg_rating
from sales 
group by day_name
order by avg_rating desc 

--Which day of the week has the best average ratings per branch?
select 
day_name,
round(avg(rating),2) as avg_rating
from sales 
where branch ilike '%c%'
group by day_name
order by avg_rating desc 














   